import pyspark
from pyspark.sql import SparkSession
from pyspark.sql.types import StructType,StructField, StringType, IntegerType
from pyspark.sql.functions import expr,concat,lit

def main():
    spark = spark_start("My_first_Spark_ETL_job")
    spark.sparkContext.setLogLevel('WARN')
    df = list_data_frame(spark)
    #See the data
    df.show()
    #Alias
    df.select(expr(" first_name ||', '|| last_name").alias("Full_name")).show()
    #Sort the data frame by first_name asc
    df.sort(df.first_name.asc()).show()
    #Check the schema of the dataframe
    df.printSchema()
    #Change the data type of the column in a dataframe
    df.select(df.first_name,df.id.cast("int")).printSchema()
    #filter data in the dataframe
    df.filter(df.id.between(40000,45000)).show()

    #check the first name exist in the dataframe
    df.filter(df.first_name.contains("shiva")).show()

    #check the starts with & ends with a character in dataframe
    df.filter(df.first_name.startswith("M")).show()
    df.filter(df.first_name.endswith("a")).show()

    #check if a dataframe column is null
    df.filter(df.last_name.isNull()).show()
    df.filter(df.last_name.isNotNull()).show()

    print("check like a in a column in dataframe")
    df.select("*").filter(df.first_name.like("%hi%")).show()

    print("withColumn to create a new column")
    df.withColumn("full_name", concat(df.first_name,lit(" ") ,df.middle_name,lit(" "),df.last_name)).show()



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
    schema = StructType([\
        StructField("first_name",StringType(),True),\
        StructField("middle_name",StringType(),True),\
        StructField("last_name",StringType(),True),\
        StructField("id",StringType(),True),\
        StructField("Gender",StringType(),True),\
        StructField("salary",IntegerType(), True)])
    df = spark.createDataFrame(data = data, schema = schema)
    
    return df


if __name__ == '__main__':
    main()

