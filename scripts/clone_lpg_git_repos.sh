#!/usr/bin/env bash

# Replace with user's path
localCodeDir="${HOME}/tmp/"

# Identify repos for CSL
declare -a remoteRepos=("lpg-services"
                "lpg-management"
                "identity-service"
                "lpg-learner-record"
                "lpg-learning-catalogue"
                "civil-servant-registry-service"
                "lpg-report-service"
                "notification-service"
                "identity-management"
                "data-transchiver"
                "lpg-terraform-paas"
                "azure-jmeter-tests-csl"
                "lpg-local-dev"
                )

# Loop through defined repos and if not present, clone into directory.
for repo in "${remoteRepos[@]}"
do
  echo -e "Processing $repo"
  localRepoDir=$(echo ${localCodeDir}${repo}|cut -d'.' -f1)
  if [ -d ${localRepoDir} ]; then
		echo -e "Directory $localRepoDir already exits, skipping...\n"
	else
		cloneCmd="git clone https://github.com/Civil-Service-Human-Resources/$repo.git"
		cloneCmd="$cloneCmd $localRepoDir"

		cloneCmdRun=$($cloneCmd 2>&1)

		echo -e "Running: \n$ $cloneCmd" ${localRepoDir}
		echo -e "${cloneCmdRun}\n\n"
	fi
done

echo -e "Download of repos complete!"
