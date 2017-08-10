# lftp-docker-alpine

A simple Docker image to run lftp on Alpine Linux. Alpine's apk has a newer version of lftp than yum and apt-get do.

Thanks to [Marcelo Bartsch](https://github.com/mbartsch). This repo was forked from [mbartsch/lftp](https://github.com/mbartsch/lftp).

Automatically builds at [chromatixau/lftp-docker-alpine](https://hub.docker.com/r/chromatixau/lftp-docker-alpine) on Docker Hub.

## Examples of use

Simple use example:

    docker run --rm -v /download_folder:/mnt chromatixau/lftp-docker-alpine

Reverse mirroring example:

    export LFTP_USERNAME=your_username
    export LFTP_PASSWORD=your_password
    export LFTP_HOSTNAME=example.com
    export LFTP_DIRECTORY=public_html
    docker run --rm -v "${PWD}":/var/upload -e LFTP_USERNAME="${LFTP_USERNAME}" -e LFTP_PASSWORD="${LFTP_PASSWORD}" -e LFTP_HOSTNAME="${LFTP_HOSTNAME}" -e LFTP_DIRECTORY="${LFTP_DIRECTORY}" chromatixau/lftp-docker-alpine -c "open -u \"${LFTP_USERNAME}\" --env-password \"${LFTP_HOSTNAME}\"; mkdir -p \"${LFTP_DIRECTORY}\"; cd \"${LFTP_DIRECTORY}\"; mirror -vvv --reverse --delete --only-newer /var/upload .;"

See the [lftp man page](https://lftp.yar.ru/lftp-man.html) for further help.

## See also

* [ChromatixAU/lftp-docker-centos](https://github.com/ChromatixAU/lftp-docker-centos)
