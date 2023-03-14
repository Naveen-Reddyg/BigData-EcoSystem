from pyspark.sql.functions import udf
from pyspark.sql.types import StringType, IntegerType

def square(x):
    return x**2

square_udf = udf(lambda x: square(x), IntegerType())

from pyspark.sql import SparkSession

spark = SparkSession.builder.appName("pyspark UDF").getOrCreate()

data = [(1,2),(3,4),(4,5)]
df = spark.createDataFrame(data,["a","b"])
df.withColumn("square_a", square_udf(df["a"])).show()  
