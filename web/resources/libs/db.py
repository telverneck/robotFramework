import psycopg2

def execute_query(query):

    # Connect to your postgres DB
    conn = psycopg2.connect(
        host='zepalheta-postgres',
        database='zepalheta',
        user='postgres',
        password='qaninja'
    )
    # Open a cursor to perform database operations
    cur = conn.cursor()

    # Execute a query
    cur.execute(query)
    conn.commit()

    cur.close()
    conn.close()

def format_cpf(cpf):
     return cpf[:3] + "." + cpf[3:6] + "." + cpf[6:9] + "-" + cpf[9:]

def insert_customer(name, cpf, address, phone):
    cpf_format = format_cpf(cpf)
    query = f"insert into public.customers(name,cpf,address, phone_number) values ('{name}','{cpf_format}','{address}','{phone}');"
    execute_query(query)

def delete_customer_by_cpf(cpf):
    cpf_format = format_cpf(cpf)   
    query = f"delete from public.customers where cpf = '{cpf_format}';"

    execute_query(query)