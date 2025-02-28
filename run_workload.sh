#!/bin/bash

trace-cmd record -p function_graph -g ext4_mb_new_blocks

trace-cmd report --profile

trace-cmd report --profile > trace_profile

trace-cmd report  > trace_report