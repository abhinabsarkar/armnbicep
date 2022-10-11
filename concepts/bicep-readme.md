# Bicep
* [Bicep - github documentation](https://github.com/Azure/bicep)
    * [Releases](https://github.com/Azure/bicep/releases)
* [Bicep - Microsoft documentation](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/)

Bicep is a domain-specific language (DSL) that uses declarative syntax to deploy Azure resources. Bicep file is automatically converted to an ARM template during deployment. Bicep files compile to JSON, and that JSON is sent to Azure for deployment.

![alt txt](/images/bicep.png)

Bicep provides concise syntax, reliable type safety, and support for code reuse.

![alt txt](/images/bicep-intellisense.gif)

## Bicep vs ARM
[Bicep syntax vs ARM template - Microsoft documentation](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/compare-template-syntax)

![alt txt](/images/side-by-side.png)

* Bicep learning path 
    * [Fundamentals of Bicep](https://learn.microsoft.com/en-us/training/paths/fundamentals-bicep/)
    * [Intermediate Bicep](https://learn.microsoft.com/en-us/training/paths/intermediate-bicep/)
    * [Advanced Bicep](https://learn.microsoft.com/en-us/training/paths/advanced-bicep/)
* [Azure Resource Definition - Microsoft documentation](https://learn.microsoft.com/en-us/azure/templates/)

## Migrate to Bicep
* [Migration workflow - Microsoft documentation](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/migrate)
* [Decompile ARM template JSON to Bicep - - Microsoft documentation](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/decompile?tabs=azure-cli)
    ```bash
    az bicep decompile --file main.json
    ```

    > Decompilation attempts to convert the file, but there is no guaranteed mapping from ARM template JSON to Bicep. You may need to fix warnings and errors in the generated Bicep file. Or, decompilation can fail if an accurate conversion isn't possible.

## Basic Bicep concepts
* [Structure & syntax of a Bicep file - Microsoft documentation](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/file)
    * Variables, Parameters (inline/json file), [Functions](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/bicep-functions) (e.g. uniqueString), [Decorators](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/file#parameter-decorators) (e.g. allowed values), output, [Resource](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/file#resources), [Modules](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/modules)

