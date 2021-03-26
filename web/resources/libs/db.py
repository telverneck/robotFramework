import psycopg2

def delete_customer_by_cpf(cpf):
    cpf_format = cpf[:3] + "." + cpf[3:6] + "." + cpf[6:9] + "-" + cpf[9:]
    # Connect to your postgres DB
    conn = psycopg2.connect(
        host='zepalheta-postgres',
        database='zepalheta',
        user='postgres',
        password='qaninja'
    )

    # Open a cursor to perform database operations
    cur = conn.cursor()
    query = f"delete from public.customers where cpf = '{cpf_format}';"

    # Execute a query
    cur.execute(query)

    conn.commit()

    cur.close()
    conn.close()