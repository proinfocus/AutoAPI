# AutoAPI
C# library to dynamically expose API end-points without creating them. This works with <b>MS SQL Server</b> databases at the moment. 

### Note:
Currently this returns only the results for GET HttpMethod and other operations will be updated soon.

## Setup
1. Create a ASP.Net Empty WebForms project, preferrably .Net Framework Ver 4.0 and above.
2. Add reference to <b>Proinfocus.AutoAPI.dll</b> in your project.
3. Add a <b>Global.asax</b>, <b>Web.config</b> and a <b>Default.aspx</b> empty page.
4. Copy contents as available in this repository to the respective pages.
5. Run the project. That's it.

## Sample End-points
The end-points are basically your SQL Server database tablenames. For eg. if your table name is <b>Products</b>, then the end-point will be <b><code>https://localhost:12345/api/products</code></b>, which will list all the records in this table.

If you want to get a particular item by <b>Id</b>, you can execute: <b><code>https://localhost:12345/api/products/1</code></b>.

You can also define the fields you require in the output by using the following example:
<b><code>https://localhost:12345/api/products/1/Id,ProductName,Price</code></b>

The above query to the end-point will fetch the the Product having Id=1 and the output will by just Id, ProductName and Price.
If you want to get all products, but just the Id, ProductName and Price, just replace the <b>Id=1</b> to <b>Id=0</b>, which instructs the api to get all the products.

## Restrict End-points
Sometimes it is required that there are some important information in certain Tables, which you want the service to ignore querying for. It is possible, just by adding them to the ProtectEndPoints collection, as mentioned in the <b>Global.asax</b> file's <b>Application_Start</b> method.
