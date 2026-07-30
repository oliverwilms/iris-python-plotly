import pandas as pd
import plotly.express as px
from dash import Dash, dcc, html
import sqlalchemy

# Database connection (replace with your credentials)
engine = sqlalchemy.create_engine("mysql+pymysql://user:password@localhost/finance_db")

# SQL query to get monthly totals by category
query = """
SELECT 
    DATE_FORMAT(`date`, '%Y-%m') AS month,
    category,
    SUM(amount) AS total_amount
FROM transactions
GROUP BY DATE_FORMAT(`date`, '%Y-%m'), category
ORDER BY month, category;
"""

# Load data into DataFrame
df = pd.read_sql(query, engine)

# Create interactive bar chart
fig = px.bar(
    df,
    x="month",
    y="total_amount",
    color="category",
    title="Monthly Totals by Category",
    labels={"total_amount": "Total Amount", "month": "Month"},
    barmode="group"
)

# Build Dash app
app = Dash(__name__)
app.layout = html.Div([
    html.H1("Financial Dashboard"),
    dcc.Graph(figure=fig)
])

if __name__ == "__main__":
    app.run_server(debug=True)
