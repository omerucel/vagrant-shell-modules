#! /bin/bash

function runModules {
	for module in "$@"
	do
		echo "============================= START ::: ${module} ==============================="
		sh "${SHELL_SCRIPT_MODULE_PATH}/${module}/init.sh"
		echo "============================= END   ::: ${module} ==============================="
	done
}