import pandas as pd
import plotly.express as px
from dash import Dash, dcc, html, Input, Output
import sqlalchemy
from datetime import date

# -----------------------------
# 1. Database connection
# -----------------------------
# Replace with your DB credentials
engine = sqlalchemy.create_engine("mysql+pymysql://user:password@localhost/finance_db")

# -----------------------------
# 2. Load initial data
# -----------------------------
def load_data():
    query = """
    SELECT 
        DATE(`date`) AS txn_date,
        category,
        amount
    FROM transactions
    """
    return pd.read_sql(query, engine)

df = load_data()

# -----------------------------
# 3. Prepare filter options
# -----------------------------
categories = sorted(df['category'].dropna().unique())
min_date = df['txn_date'].min()
max_date = df['txn_date'].max()

# -----------------------------
# 4. Build Dash app
# -----------------------------
app = Dash(__name__)
app.title = "Financial Dashboard"

app.layout = html.Div([
    html.H1("📊 Monthly Financial Dashboard", style={"textAlign": "center"}),

    # Filters
    html.Div([
        html.Label("Select Category:"),
        dcc.Dropdown(
            id="category_filter",
            options=[{"label": c, "value": c} for c in categories],
            value=categories,  # default: all categories
            multi=True
        ),
        html.Br(),
        html.Label("Select Date Range:"),
        dcc.DatePickerRange(
            id="date_filter",
            min_date_allowed=min_date,
            max_date_allowed=max_date,
            start_date=min_date,
            end_date=max_date
        )
    ], style={"width": "30%", "display": "inline-block", "verticalAlign": "top", "padding": "20px"}),

    # Chart
    html.Div([
        dcc.Graph(id="monthly_chart")
    ], style={"width": "65%", "display": "inline-block", "padding": "20px"})
])

# -----------------------------
# 5. Callbacks for interactivity
# -----------------------------
@app.callback(
    Output("monthly_chart", "figure"),
    Input("category_filter", "value"),
    Input("date_filter", "start_date"),
    Input("date_filter", "end_date")
)
def update_chart(selected_categories, start_date, end_date):
    # Filter data
    filtered_df = df[
        (df['category'].isin(selected_categories)) &
        (df['txn_date'] >= pd.to_datetime(start_date)) &
        (df['txn_date'] <= pd.to_datetime(end_date))
    ]

    # Aggregate by month & category
    filtered_df['month'] = filtered_df['txn_date'].dt.to_period('M').astype(str)
    monthly_totals = (
        filtered_df.groupby(['month', 'category'], as_index=False)['amount']
        .sum()
        .sort_values('month')
    )

    # Create chart
    fig = px.bar(
        monthly_totals,
        x="month",
        y="amount",
        color="category",
        barmode="group",
        title="Monthly Totals by Category",
        labels={"amount": "Total Amount", "month": "Month"}
    )
    fig.update_layout(xaxis={'type': 'category'})
    return fig

# -----------------------------
# 6. Run app
# -----------------------------
if __name__ == "__main__":
    app.run_server(debug=True)
