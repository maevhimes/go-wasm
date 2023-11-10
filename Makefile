# Makefile for compiling WebAssembly with TinyGo

# 设置你的项目名称
PROJECT_NAME := go-wasm

# 设置你的源文件
SOURCE_FILE := main.go

# 设置输出路径
OUTPUT_PATH := ./assest

# 设置输出文件名
OUTPUT_FILE := $(OUTPUT_PATH)/$(PROJECT_NAME).wasm

# 设置 TinyGo 编译器路径
TINYGOC := tinygo

# 设置 TinyGo 编译器目标为 WebAssembly
TINYGOC_FLAGS := -target wasm

# 默认目标
all: build

# 编译目标
build:
	$(TINYGOC) build $(TINYGOC_FLAGS) -o $(OUTPUT_FILE) $(SOURCE_FILE)

# 清理目标
clean:
	rm -f $(OUTPUT_FILE)

# 运行一个简单的 HTTP 服务器，用于在浏览器中测试 Wasm 文件
dev:
	@echo "Open your browser and navigate to http://localhost:8787"
	@wrangler dev

# deploy

# 默认目标
.DEFAULT_GOAL := all
