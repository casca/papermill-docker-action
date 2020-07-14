#!/bin/sh -l

whoami
cd /github/workspace
papermill $1 $1
