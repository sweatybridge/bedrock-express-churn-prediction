// Refer to https://docs.basis-ai.com/getting-started/writing-files/bedrock.hcl for more details.
version = "1.0"

serve {
    image = "basisai/express-flask:v0.0.3"
    install = [
        "pip install -r requirements.txt",
    ]
    script = [
        {sh = [
            "/app/entrypoint.sh"
        ]}
    ]

    parameters {
        // This should be the name of python module that has a subclass of BaseModel https://github.com/basisai/bedrock-express#creating-a-model-server
        BEDROCK_SERVER = "serve"
    }
}