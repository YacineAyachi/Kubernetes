from fastapi import FastAPI, HTTPException
import requests

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello World"}

@app.get("/version")
async def version():
    return {"version": "0.3.0"}


@app.get("/another-feature")
async def new_feature():
    return {"feature": "This is a another feature!"} 