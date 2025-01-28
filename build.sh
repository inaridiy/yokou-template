#!/bin/bash

# Build Docker image if it doesn't exist
docker build -t resume-builder .

# Run Docker container to generate PDF
docker run --rm -v $(pwd):/workspace resume-builder

echo "PDFの生成が完了しました。" 