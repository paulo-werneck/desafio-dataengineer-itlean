from logger import config_logger
import duckdb
import os
import sys


log = config_logger()

INPUT_DATASET = os.getenv("SALES_DATASET", "/home/werneck/Downloads/vendas.csv")
TABLE_NAME = "tb_sales"
ANALYTIC_QUERIES = [
    "queries/most_sale_product.sql",
    "queries/most_sale_product_per_channel.sql",
    "queries/amount_sales_per_region.sql",
    "queries/avg_sales_month.sql"
]


def read_file_query(path: str):
    with open(path, "r") as f:
        return f.read()


def execute_query(sql_file: str, table: str):
    log.info(f"Executing query file: \n{sql_file}")
    sql_query = read_file_query(sql_file)
    result_query = tb_sales.query(virtual_table_name=table, sql_query=sql_query)
    print(result_query)


tb_sales = duckdb.read_csv(
    path_or_buffer=INPUT_DATASET,
    header=True,
    normalize_names=True
)


if __name__ == "__main__":

    for qp in ANALYTIC_QUERIES:
        execute_query(sql_file=qp, table=TABLE_NAME)
