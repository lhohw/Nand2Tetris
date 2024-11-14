# Makefile

# 기본 옵션 설정
utils ?= writeText

.PHONY: all run node

# all은 기본 타겟으로, make 명령어를 실행하면 이 타겟을 실행
all: run

# hardware-simulator 실행
run:
	@echo "simulator is running..."
	@sh tools/HardwareSimulator.sh

# js 파일 실행
node:
	@echo "node is running...\n"
	@node projects/node --utils=${utils}