#!/bin/sh -l

cd /github/workspace
papermill $1 $1
