import pyspark
from pyspark.sql import SparkSession

def main():
    spark = spark_start("My_first_Spark_ETL_job")
    df = list_data_frame(spark)
    df.show()

def spark_start(app_name):
    spark = SparkSession.builder.appName(app_name).getOrCreate()
    
    return spark

def list_data_frame(spark):
    data = [("shiva","","krishna","36636","M",60000),
        ("Michael","Rose","","40288","M",70000),
        ("Robert","","Williams","42114","",400000),
        ("Maria","Anne","Jones","39192","F",500000),
        ("Jen","Mary","Brown","","F",0)]
    columns = ["first_name","middle_name","last_name","dob","gender","salary"]
    df = spark.createDataFrame(data = data, schema = columns)
    
    return df


if __name__ == '__main__':
    main()

