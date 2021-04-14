Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web10.13415.1618408648071182945
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Apr 2021 06:57:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UYDQEZbf;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id x21-20020a17090a5315b029012c4a622e4aso10879484pjh.2
        for <yocto@lists.yoctoproject.org>; Wed, 14 Apr 2021 06:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=MUSPlyLuRW6AI+QSlMYOyWXgUnbPha4wsgNW5qJ2QyQ=;
        b=UYDQEZbfH86WaopiBfYeCtEfHZoAqD06XZoobOSJ0Z2xPgITmvgV0c+HTBerkqfz/t
         uwCKzBbL1Sns6wEqJbip8z1FNbxNdP1t3TTBcncbs2VQHH32FO3z2URfSlYi+o2P6g6J
         PxHPr7uGZ1+2CoJVw698IHLYXFQ4hHt62SMVVdGYhy/684LF5W9P9bka47gETA+u1Hf7
         nvnUbNKLDCuN/4+44O7RTRB2HzMp9CSZ+GNfdwRhm5ZOX15edHbsDdknqSvQ9FgUmSMY
         uCCxPa75KMiuBYfUwdLLKVstkpcQuuiCgj6Tsmg6qA3ighG9B+Sm3Z9XS+agLJ2/UY4b
         shIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=MUSPlyLuRW6AI+QSlMYOyWXgUnbPha4wsgNW5qJ2QyQ=;
        b=ppEBb0vRYkVTt6ftk4hZs8HRucf+cvlFa+eZRjV6qdw6wmzrLuzUJqhqmf2ciZEsD/
         VulUr7rTU0i11E6PWsDcXcS4pCfGoVdqct+scY1MtrJkzb8bh4hDth/pbCXyv9mzwVnH
         r0kErCaAx4Ml567f1BfSQ4aXaMAMptJraKQCwbrrzxN8vLAO6PC/kvkCanRNaD2HSDXQ
         A25LXDeDHrx/7q1fk8Bd10sjY+9QODYdwY+WqlxrGuN95MHE/b0kWsMYoWdbygFVjG4f
         6idPbZDWCG1+wv0Ky+3L0OHJSN29p/o72slz0iV8LC2keNDQhJmfvonFHrJo2d0Yt5uT
         IeNg==
X-Gm-Message-State: AOAM531Fi+Fsu4zZmAuLqO0rp1yhsPkwhRknQ7cHHTIe1IGDvBy2rnBr
	wB/cmb9cBGrBEKFVMu07sDPTGzoXyEcQSg==
X-Google-Smtp-Source: ABdhPJwSQGgYxNfVDP6DxKfxy2Ge7vfO4ulOAdkjYzDjE4Ku+KUWaeG4+aurqiYDELS8Ziof+Ca2aQ==
X-Received: by 2002:a17:902:d507:b029:e7:370d:b3c2 with SMTP id b7-20020a170902d507b02900e7370db3c2mr38477154plg.73.1618408647009;
        Wed, 14 Apr 2021 06:57:27 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:2d0c:893d:5593:863c? ([2601:202:4180:a5c0:2d0c:893d:5593:863c])
        by smtp.gmail.com with ESMTPSA id w189sm1581166pfc.31.2021.04.14.06.57.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 06:57:26 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH 1/2] Add meta-parsec layer into meta-security.
To: Anton Antonov <anton.antonov@arm.com>, yocto@lists.yoctoproject.org
References: <20210409111408.31628-1-Anton.Antonov@arm.com>
From: "Armin Kuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <66bb6ab0-71b7-11ad-fbe0-d942a6ae9acc@gmail.com>
Date: Wed, 14 Apr 2021 06:57:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210409111408.31628-1-Anton.Antonov@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Merged,

Thanks

On 4/9/21 4:14 AM, Anton Antonov wrote:
> From: Anton Antonov <anton.antonov@arm.com>
>
> The layer contains recipes for Parsec service version 0.7.0 and parsec-tool version 0.3.0. The Parsec service is built with all supported providers and deployed with the MbedCrypto provider enabled. Both systemd and sysv-init are supported.
>
> Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
> ---
>  meta-parsec/README.md                         | 186 ++++++++++++++++++
>  meta-parsec/conf/layer.conf                   |  14 ++
>  .../parsec-service/files/cryptoki.patch       |  18 ++
>  .../parsec-service/files/parsec-tmpfiles.conf |   2 +
>  .../parsec-service/files/parsec_init          |  63 ++++++
>  .../parsec-service/files/systemd.patch        |  19 ++
>  .../parsec-service/parsec-service_0.7.0.bb    |  67 +++++++
>  .../parsec-service/parsec-service_0.7.0.inc   | 147 ++++++++++++++
>  .../parsec-tool/parsec-tool_0.3.0.bb          |  18 ++
>  .../parsec-tool/parsec-tool_0.3.0.inc         | 127 ++++++++++++
>  10 files changed, 661 insertions(+)
>  create mode 100644 meta-parsec/README.md
>  create mode 100644 meta-parsec/conf/layer.conf
>  create mode 100644 meta-parsec/recipes-parsec/parsec-service/files/cryptoki.patch
>  create mode 100644 meta-parsec/recipes-parsec/parsec-service/files/parsec-tmpfiles.conf
>  create mode 100755 meta-parsec/recipes-parsec/parsec-service/files/parsec_init
>  create mode 100644 meta-parsec/recipes-parsec/parsec-service/files/systemd.patch
>  create mode 100644 meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb
>  create mode 100644 meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.inc
>  create mode 100644 meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb
>  create mode 100644 meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.inc
>
> diff --git a/meta-parsec/README.md b/meta-parsec/README.md
> new file mode 100644
> index 0000000..a2736b6
> --- /dev/null
> +++ b/meta-parsec/README.md
> @@ -0,0 +1,186 @@
> +meta-parsec layer
> +==============
> +
> +This layer contains recipes for the Parsec service with Mbed-Crypto,
> +Pkcs11 and TPM providers and parsec tools.
> +
> +Dependencies
> +============
> +
> +This layer depends on:
> +
> +    URI: git://git.openembedded.org/meta-openembedded
> +    branch: master
> +    revision: HEAD
> +    prio: default
> +
> +    URI git://git.yoctoproject.org/meta-security
> +    branch: master
> +    revision: HEAD
> +    prio: default
> +
> +    URI https://github.com/meta-rust/meta-rust.git
> +    branch: master
> +    revision: HEAD
> +    prio: default
> +
> +    URI https://github.com/kraj/meta-clang.git
> +    branch: master
> +    revision: HEAD
> +    prio: default
> +
> +Adding the meta-parsec layer to your build
> +==========================================
> +
> +In order to use this layer, you need to make the build system aware of it.
> +
> +You can add it to the build system by adding the
> +location of the meta-parsec layer to bblayers.conf, along with any
> +other layers needed. e.g.:
> +
> +    BBLAYERS ?= " \
> +      /path/to/yocto/meta \
> +      /path/to/yocto/meta-yocto \
> +      /path/to/yocto/meta-yocto-bsp \
> +      /path/to/meta-openembedded/meta-oe \
> +      /path/to/meta-openembedded/meta-python \
> +      /path/to/meta-rust \
> +      /path/to/meta-clang \
> +      /path/to/meta-security/meta-tpm \
> +      /path/to/meta-security/meta-parsec \
> +      "
> +
> +To include the Parsec service into your image add following into the
> +local.conf:
> +
> +    IMAGE_INSTALL_append = " parsec-service"
> +
> +  The Parsec service will be deployed into the image built with all the supported
> +providers and with the default config file from the Parsec repository:
> +https://github.com/parallaxsecond/parsec/blob/main/config.toml
> +  The default Parsec service config file contains the MbedCrypto provider
> +enabled. The config file needs to be updated to use the Parsec service
> +with other providers like TPM or PKCS11. The required procedures are
> +covered in Parsec documentation.
> +https://parallaxsecond.github.io/parsec-book/
> +
> +Updating recipes
> +================
> +
> +  The parsec-service and parsec-tool recipes use include files with lists
> +of all rust crates required. This allows bitbake to fetch all the necessary
> +dependent crates, as well as a pegged version of the crates.io index,
> +to ensure maximum reproducibility.
> +  It's recommended to use cargo-bitbake to generate include files for new
> +versions of parsec recipes.
> +https://github.com/meta-rust/cargo-bitbake
> +
> +  When you have crago-bitbake built:
> +1. Checkout the required version of parsec repository.
> +2. Run cargo-bitbake inside the repository. It will produce a BB file.
> +3. Create a new include file with SRC_URI and LIC_FILES_CHKSUM from the BB file.
> +
> +Manual testing with runqemu
> +===========================
> +
> +  This layer also contains a recipe for pasec-tool which can be used for
> +manual testing of the Parsec service:
> +
> +    IMAGE_INSTALL_append += " parsec-tools"
> +
> +  There are a series of Parsec Demo videos showing how to use parsec-tool
> +to test the Parsec service base functionality:
> +https://www.youtube.com/watch?v=ido0CyUdMHM&list=PLKjl7IFAwc4S7WQqqphCsyy6DPDxJ2Skg&index=4
> +
> +  You can use runqemu to start a VM with a built image file and run
> +manual tests with parsec-tool.
> +
> +1. MbedCrypto provider
> +  The default Parsec service config file contains the MbedCrypto provider
> +enabled. No changes required for manual testing.
> +
> +2. PKCS11 provider
> +  The Software HSM can be used for manual testing of the provider by
> +including it into your test image:
> +
> +    IMAGE_INSTALL_append += " softhsm"
> +
> +Inside the running VM:
> +- Stop Parsec
> +```bash
> +systemctl stop parsec
> +```
> +- Initialise a token and notice the result slot number
> +```bash
> +softhsm2-util --init-token --slot 0 --label "Parsec Service" --pin 123456 --so-pin 123456
> +```
> +- Change the token ownership:
> +```bash
> +for d in /var/lib/softhsm/tokens/*; do chown -R parsec $d; done
> +```
> +- Enable the PKCS11 provider and update its parameters in the Parsec config file
> +/etc/parsec/config.toml
> +```
> +library_path = "/usr/lib/softhsm/libsofthsm2.so"
> +slot_number = <slot number>
> +user_pin = "123456"
> +```
> +- Start Parsec
> +```bash
> +systemctl start parsec
> +```
> +
> +3. TPM provider
> +  The IBM Software TPM service can be used for manual testing of the provider by
> +including it into your test image:
> +
> +    IMAGE_INSTALL_append += " ibmswtpm2 tpm2-tools libtss2 libtss2-tcti-mssim"
> +
> +Inside the running VM:
> +- Stop Parsec
> +```bash
> +systemctl stop parsec
> +```
> +- Start and configure the Software TPM server
> +```bash
> +   /usr/bin/tpm_server &
> +   sleep 5
> +   /usr/bin/tpm2_startup -c -T mssim
> +   /usr/bin/tpm2_changeauth -c owner tpm_pass
> +```
> +- Enable the TPM provider and update its parameters in the Parsec config file
> +/etc/parsec/config.toml
> +```
> +tcti = "mssim"
> +owner_hierarchy_auth = "hex:74706d5f70617373"
> +```
> +- Start Parsec
> +```bash
> +systemctl start parsec
> +```
> +
> +Maintenance
> +-----------
> +
> +Send pull requests, patches, comments or questions to yocto@yoctoproject.org
> +
> +When sending single patches, please using something like:
> +'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-parsec][PATCH'
> +
> +These values can be set as defaults for this repository:
> +
> +$ git config sendemail.to yocto@yoctoproject.org
> +$ git config format.subjectPrefix meta-parsec][PATCH
> +
> +Now you can just do 'git send-email origin/master' to send all local patches.
> +
> +Maintainers:    Anton Antonov <Anton.Antonov@arm.com>
> +                Armin Kuster <akuster808@gmail.com>
> +
> +
> +License
> +=======
> +
> +All metadata is MIT licensed unless otherwise stated. Source code included
> +in tree for individual recipes is under the LICENSE stated in each recipe
> +(.bb file) unless otherwise stated.
> diff --git a/meta-parsec/conf/layer.conf b/meta-parsec/conf/layer.conf
> new file mode 100644
> index 0000000..2d4aa12
> --- /dev/null
> +++ b/meta-parsec/conf/layer.conf
> @@ -0,0 +1,14 @@
> +# We have a conf and classes directory, add to BBPATH
> +BBPATH .= ":${LAYERDIR}"
> +
> +# We have a recipes directory, add to BBFILES
> +BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend"
> +
> +BBFILE_COLLECTIONS += "parsec-layer"
> +BBFILE_PATTERN_parsec-layer = "^${LAYERDIR}/"
> +BBFILE_PRIORITY_parsec-layer = "5"
> +
> +LAYERSERIES_COMPAT_parsec-layer = "hardknott gatesgarth"
> +
> +LAYERDEPENDS_parsec-layer = "core rust-layer clang-layer tpm-layer"
> +BBLAYERS_LAYERINDEX_NAME_parsec-layer = "meta-parsec"
> diff --git a/meta-parsec/recipes-parsec/parsec-service/files/cryptoki.patch b/meta-parsec/recipes-parsec/parsec-service/files/cryptoki.patch
> new file mode 100644
> index 0000000..c234479
> --- /dev/null
> +++ b/meta-parsec/recipes-parsec/parsec-service/files/cryptoki.patch
> @@ -0,0 +1,18 @@
> +
> +Use cryptoki v0.1.1 which supports the "generate-bindings" feature
> +required for building Parsec service 0.7.0 in Yocto.
> +
> +Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
> +Upstream-Status: Submitted
> +
> +--- a/Cargo.toml	2021-04-01 10:29:50.333687763 +0100
> ++++ b/Cargo.toml	2021-04-01 10:27:13.051860002 +0100
> +@@ -37,7 +37,7 @@
> + version = "1.3.1"
> + 
> + [dependencies.cryptoki]
> +-version = "0.1.0"
> ++version = "0.1.1"
> + features = ["psa-crypto-conversions"]
> + optional = true
> + 
> diff --git a/meta-parsec/recipes-parsec/parsec-service/files/parsec-tmpfiles.conf b/meta-parsec/recipes-parsec/parsec-service/files/parsec-tmpfiles.conf
> new file mode 100644
> index 0000000..fe576a2
> --- /dev/null
> +++ b/meta-parsec/recipes-parsec/parsec-service/files/parsec-tmpfiles.conf
> @@ -0,0 +1,2 @@
> +#Type   Path            Mode    User    Group   Age     Argument
> +d       /run/parsec     755     parsec  parsec  -       -
> diff --git a/meta-parsec/recipes-parsec/parsec-service/files/parsec_init b/meta-parsec/recipes-parsec/parsec-service/files/parsec_init
> new file mode 100755
> index 0000000..58a2897
> --- /dev/null
> +++ b/meta-parsec/recipes-parsec/parsec-service/files/parsec_init
> @@ -0,0 +1,63 @@
> +#! /bin/sh -e
> +
> +# ------------------------------------------------------------------------------
> +# Copyright (c) 2021, Arm Limited, All Rights Reserved
> +# SPDX-License-Identifier: Apache-2.0
> +#
> +# Licensed under the Apache License, Version 2.0 (the "License"); you may
> +# not use this file except in compliance with the License.
> +# You may obtain a copy of the License at
> +#
> +#          http://www.apache.org/licenses/LICENSE-2.0
> +#
> +# Unless required by applicable law or agreed to in writing, software
> +# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
> +# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
> +# See the License for the specific language governing permissions and
> +# limitations under the License.
> +# ------------------------------------------------------------------------------
> +
> +# Parsec Service SysV init script
> +
> +test -x /usr/libexec/parsec/parsec || exit 0
> +
> +case "$1" in
> +  start)
> +    echo -n "Starting Parsec daemon: "
> +    if [ ! -f /etc/parsec/config.toml ]; then
> +        echo "There is no Parsec service configuration file."
> +    else
> +        if [ ! -d /run/parsec ]; then
> +            mkdir /run/parsec
> +            chown parsec:parsec /run/parsec
> +            chmod 755 /run/parsec
> +        fi
> +        # start-stop-daemon used in poky busybox doesn't support
> +        # '--chdir' parameter. So, let's do it manually
> +        cd /var/lib/parsec
> +        RUST_LOG=info start-stop-daemon --oknodo --start --background \
> +                --chuid parsec:parsec --exec /usr/libexec/parsec/parsec \
> +                -- --config /etc/parsec/config.toml
> +        echo "parsec."
> +    fi
> +    ;;
> +  stop)
> +    echo -n "Stopping Parsec daemon: "
> +    start-stop-daemon --oknodo --stop --exec /usr/libexec/parsec/parsec
> +    echo "parsec."
> +    ;;
> +  reload)
> +    echo -n "Reloading Parsec daemon: "
> +    start-stop-daemon --stop --signal SIGHUP --exec /usr/libexec/parsec/parsec
> +    echo "parsec."
> +    ;;
> +  restart|force-reload)
> +    $0 stop
> +    $0 start
> +    ;;
> +  *)
> +    echo "Usage: /etc/init.d/parsec {start|stop|restart|reload|force-reload}"
> +    exit 1
> +esac
> +
> +exit 0
> diff --git a/meta-parsec/recipes-parsec/parsec-service/files/systemd.patch b/meta-parsec/recipes-parsec/parsec-service/files/systemd.patch
> new file mode 100644
> index 0000000..c01ff06
> --- /dev/null
> +++ b/meta-parsec/recipes-parsec/parsec-service/files/systemd.patch
> @@ -0,0 +1,19 @@
> +
> +Run the Parsec service as parsec user in /var/lib/parsec/ working directory.
> +
> +Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
> +Upstream-Status: Inappropriate [deployment configuration]
> +
> +--- a/systemd-daemon/parsec.service	2021-03-28 18:34:18.703196235 +0100
> ++++ b/systemd-daemon/parsec.service	2021-03-28 18:35:14.279830299 +0100
> +@@ -3,7 +3,9 @@
> + Documentation=https://parallaxsecond.github.io/parsec-book/parsec_service/install_parsec_linux.html
> + 
> + [Service]
> +-WorkingDirectory=/home/parsec/
> ++User=parsec
> ++Group=parsec
> ++WorkingDirectory=/var/lib/parsec/
> + ExecStart=/usr/libexec/parsec/parsec --config /etc/parsec/config.toml
> + 
> + [Install]
> diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb
> new file mode 100644
> index 0000000..b3f7b21
> --- /dev/null
> +++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb
> @@ -0,0 +1,67 @@
> +SUMMARY = "Platform AbstRaction for SECurity Daemon"
> +HOMEPAGE = "https://github.com/parallaxsecond/parsec"
> +LICENSE = "Apache-2.0"
> +
> +inherit cargo
> +
> +SRC_URI += "crate://crates.io/parsec-service/${PV} \
> +            file://parsec_init \
> +            file://systemd.patch \
> +            file://parsec-tmpfiles.conf \
> +"
> +
> +DEPENDS = "clang-native tpm2-tss"
> +INSANE_SKIP_${PN} += "dev-deps"
> +
> +CARGO_BUILD_FLAGS += " --features all-providers,cryptoki/generate-bindings,tss-esapi/generate-bindings"
> +
> +inherit systemd
> +SYSTEMD_SERVICE_${PN} = "parsec.service"
> +
> +inherit update-rc.d
> +INITSCRIPT_NAME = "parsec"
> +
> +# A local file can be defined in build/local.conf
> +# The file should also be included into SRC_URI then
> +PARSEC_CONFIG ?= "${S}/config.toml"
> +
> +do_install_append () {
> +    # Binaries
> +    install -d -m 700 -o parsec -g parsec "${D}${libexecdir}/parsec"
> +    install -m 700 -o parsec -g parsec "${WORKDIR}/build/target/${CARGO_TARGET_SUBDIR}/parsec" ${D}${libexecdir}/parsec/parsec
> +
> +    # Config file
> +    install -d -m 700 -o parsec -g parsec "${D}${sysconfdir}/parsec"
> +    install -m 400 -o parsec -g parsec "${PARSEC_CONFIG}" ${D}${sysconfdir}/parsec/config.toml
> +
> +    # Data dir
> +    install -d -m 700 -o parsec -g parsec "${D}${localstatedir}/lib/parsec"
> +
> +    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
> +        install -d ${D}${systemd_unitdir}/system
> +        install -m 644 ${S}/systemd-daemon/parsec.service ${D}${systemd_unitdir}/system
> +
> +        install -d ${D}${libdir}/tmpfiles.d
> +        install -m 644 ${WORKDIR}/parsec-tmpfiles.conf ${D}${libdir}/tmpfiles.d
> +    fi
> +
> +    if ${@bb.utils.contains('DISTRO_FEATURES', 'sysvinit', 'true', 'false', d)}; then
> +        install -d ${D}${sysconfdir}/init.d
> +        install -m 755 ${WORKDIR}/parsec_init ${D}${sysconfdir}/init.d/parsec
> +    fi
> +}
> +
> +inherit useradd
> +USERADD_PACKAGES = "${PN}"
> +USERADD_PARAM_${PN} = "-r -g parsec -s /bin/false -d ${localstatedir}/lib/parsec parsec"
> +GROUPADD_PARAM_${PN} = "-r parsec"
> +
> +FILES_${PN} += " \
> +    ${sysconfdir}/parsec/config.toml \
> +    ${libexecdir}/parsec/parsec \
> +    ${systemd_unitdir}/system/parsec.service \
> +    ${libdir}/tmpfiles.d/parsec-tmpfiles.conf \
> +    ${sysconfdir}/init.d/parsec \
> +"
> +
> +require parsec-service_${PV}.inc
> diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.inc b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.inc
> new file mode 100644
> index 0000000..59a47f9
> --- /dev/null
> +++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.inc
> @@ -0,0 +1,147 @@
> +# This file is created from parsec-service repository Cargo.lock using cargo-bitbake tool
> +
> +SRC_URI += " \
> +    crate://crates.io/aho-corasick/0.7.15 \
> +    crate://crates.io/ansi_term/0.11.0 \
> +    crate://crates.io/anyhow/1.0.38 \
> +    crate://crates.io/atty/0.2.14 \
> +    crate://crates.io/autocfg/1.0.1 \
> +    crate://crates.io/base64/0.12.3 \
> +    crate://crates.io/base64/0.13.0 \
> +    crate://crates.io/bincode/1.3.2 \
> +    crate://crates.io/bindgen/0.56.0 \
> +    crate://crates.io/bindgen/0.57.0 \
> +    crate://crates.io/bitfield/0.13.2 \
> +    crate://crates.io/bitflags/1.2.1 \
> +    crate://crates.io/byteorder/1.3.4 \
> +    crate://crates.io/bytes/0.5.6 \
> +    crate://crates.io/bytes/1.0.1 \
> +    crate://crates.io/cc/1.0.67 \
> +    crate://crates.io/cexpr/0.4.0 \
> +    crate://crates.io/cfg-if/1.0.0 \
> +    crate://crates.io/clang-sys/1.1.1 \
> +    crate://crates.io/clap/2.33.3 \
> +    crate://crates.io/cmake/0.1.45 \
> +    crate://crates.io/cryptoauthlib-sys/0.1.0 \
> +    crate://crates.io/cryptoki-sys/0.1.1 \
> +    crate://crates.io/cryptoki/0.1.1 \
> +    crate://crates.io/derivative/2.2.0 \
> +    crate://crates.io/either/1.6.1 \
> +    crate://crates.io/enumflags2/0.6.4 \
> +    crate://crates.io/enumflags2_derive/0.6.4 \
> +    crate://crates.io/env_logger/0.8.3 \
> +    crate://crates.io/fixedbitset/0.2.0 \
> +    crate://crates.io/getrandom/0.2.2 \
> +    crate://crates.io/glob/0.3.0 \
> +    crate://crates.io/hashbrown/0.9.1 \
> +    crate://crates.io/heck/0.3.2 \
> +    crate://crates.io/hermit-abi/0.1.18 \
> +    crate://crates.io/hex/0.4.3 \
> +    crate://crates.io/hostname-validator/1.0.0 \
> +    crate://crates.io/humantime/2.1.0 \
> +    crate://crates.io/indexmap/1.6.2 \
> +    crate://crates.io/itertools/0.8.2 \
> +    crate://crates.io/itertools/0.9.0 \
> +    crate://crates.io/lazy_static/1.4.0 \
> +    crate://crates.io/lazycell/1.3.0 \
> +    crate://crates.io/libc/0.2.89 \
> +    crate://crates.io/libloading/0.7.0 \
> +    crate://crates.io/log/0.4.14 \
> +    crate://crates.io/mbox/0.5.0 \
> +    crate://crates.io/memchr/2.3.4 \
> +    crate://crates.io/multimap/0.8.3 \
> +    crate://crates.io/nom/5.1.2 \
> +    crate://crates.io/num-bigint/0.3.2 \
> +    crate://crates.io/num-complex/0.3.1 \
> +    crate://crates.io/num-derive/0.3.3 \
> +    crate://crates.io/num-integer/0.1.44 \
> +    crate://crates.io/num-iter/0.1.42 \
> +    crate://crates.io/num-rational/0.3.2 \
> +    crate://crates.io/num-traits/0.2.14 \
> +    crate://crates.io/num/0.3.1 \
> +    crate://crates.io/num_cpus/1.13.0 \
> +    crate://crates.io/oid/0.1.1 \
> +    crate://crates.io/parsec-interface/0.24.0 \
> +    crate://crates.io/peeking_take_while/0.1.2 \
> +    crate://crates.io/petgraph/0.5.1 \
> +    crate://crates.io/picky-asn1-der/0.2.4 \
> +    crate://crates.io/picky-asn1-x509/0.4.0 \
> +    crate://crates.io/picky-asn1/0.3.1 \
> +    crate://crates.io/pkg-config/0.3.19 \
> +    crate://crates.io/ppv-lite86/0.2.10 \
> +    crate://crates.io/proc-macro-error-attr/1.0.4 \
> +    crate://crates.io/proc-macro-error/1.0.4 \
> +    crate://crates.io/proc-macro2/1.0.24 \
> +    crate://crates.io/prost-build/0.6.1 \
> +    crate://crates.io/prost-build/0.7.0 \
> +    crate://crates.io/prost-derive/0.6.1 \
> +    crate://crates.io/prost-derive/0.7.0 \
> +    crate://crates.io/prost-types/0.6.1 \
> +    crate://crates.io/prost-types/0.7.0 \
> +    crate://crates.io/prost/0.6.1 \
> +    crate://crates.io/prost/0.7.0 \
> +    crate://crates.io/psa-crypto-sys/0.8.0 \
> +    crate://crates.io/psa-crypto/0.8.0 \
> +    crate://crates.io/quote/1.0.9 \
> +    crate://crates.io/rand/0.8.3 \
> +    crate://crates.io/rand_chacha/0.3.0 \
> +    crate://crates.io/rand_core/0.6.2 \
> +    crate://crates.io/rand_hc/0.3.0 \
> +    crate://crates.io/redox_syscall/0.2.5 \
> +    crate://crates.io/regex-syntax/0.6.23 \
> +    crate://crates.io/regex/1.4.5 \
> +    crate://crates.io/remove_dir_all/0.5.3 \
> +    crate://crates.io/rust-cryptoauthlib/0.1.0 \
> +    crate://crates.io/rustc-hash/1.1.0 \
> +    crate://crates.io/rustc_version/0.2.3 \
> +    crate://crates.io/same-file/1.0.6 \
> +    crate://crates.io/sd-notify/0.2.0 \
> +    crate://crates.io/secrecy/0.7.0 \
> +    crate://crates.io/semver-parser/0.7.0 \
> +    crate://crates.io/semver/0.9.0 \
> +    crate://crates.io/serde/1.0.124 \
> +    crate://crates.io/serde_bytes/0.11.5 \
> +    crate://crates.io/serde_derive/1.0.124 \
> +    crate://crates.io/shlex/0.1.1 \
> +    crate://crates.io/signal-hook-registry/1.3.0 \
> +    crate://crates.io/signal-hook/0.3.7 \
> +    crate://crates.io/stable_deref_trait/1.2.0 \
> +    crate://crates.io/strsim/0.8.0 \
> +    crate://crates.io/structopt-derive/0.4.14 \
> +    crate://crates.io/structopt/0.3.21 \
> +    crate://crates.io/strum_macros/0.19.4 \
> +    crate://crates.io/syn/1.0.64 \
> +    crate://crates.io/synstructure/0.12.4 \
> +    crate://crates.io/tempfile/3.2.0 \
> +    crate://crates.io/termcolor/1.1.2 \
> +    crate://crates.io/textwrap/0.11.0 \
> +    crate://crates.io/thiserror-impl/1.0.24 \
> +    crate://crates.io/thiserror/1.0.24 \
> +    crate://crates.io/threadpool/1.8.1 \
> +    crate://crates.io/toml/0.5.8 \
> +    crate://crates.io/tss-esapi-sys/0.1.0 \
> +    crate://crates.io/tss-esapi/5.0.0 \
> +    crate://crates.io/unicode-segmentation/1.7.1 \
> +    crate://crates.io/unicode-width/0.1.8 \
> +    crate://crates.io/unicode-xid/0.2.1 \
> +    crate://crates.io/users/0.11.0 \
> +    crate://crates.io/uuid/0.8.2 \
> +    crate://crates.io/vec_map/0.8.2 \
> +    crate://crates.io/version/3.0.0 \
> +    crate://crates.io/version_check/0.9.3 \
> +    crate://crates.io/walkdir/2.3.1 \
> +    crate://crates.io/wasi/0.10.2+wasi-snapshot-preview1 \
> +    crate://crates.io/which/3.1.1 \
> +    crate://crates.io/which/4.0.2 \
> +    crate://crates.io/winapi-i686-pc-windows-gnu/0.4.0 \
> +    crate://crates.io/winapi-util/0.1.5 \
> +    crate://crates.io/winapi-x86_64-pc-windows-gnu/0.4.0 \
> +    crate://crates.io/winapi/0.3.9 \
> +    crate://crates.io/zeroize/1.2.0 \
> +    crate://crates.io/zeroize_derive/1.0.1 \
> +    file://cryptoki.patch \
> +"
> +
> +LIC_FILES_CHKSUM = " \
> +    file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57 \
> +"
> diff --git a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb
> new file mode 100644
> index 0000000..939e771
> --- /dev/null
> +++ b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb
> @@ -0,0 +1,18 @@
> +SUMMARY = "Parsec Command Line Interface"
> +HOMEPAGE = "https://github.com/parallaxsecond/parsec-tool"
> +LICENSE = "Apache-2.0"
> +
> +inherit cargo
> +
> +SRC_URI += "crate://crates.io/parsec-tool/${PV} \
> +"
> +
> +DEPENDS = "clang-native"
> +INSANE_SKIP_${PN} += "dev-deps"
> +
> +do_install() {
> +  install -d ${D}/${bindir}
> +  install -m 755 "${B}/target/${TARGET_SYS}/release/parsec-tool" "${D}${bindir}/parsec-tool"
> +}
> +
> +require parsec-tool_${PV}.inc
> diff --git a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.inc b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.inc
> new file mode 100644
> index 0000000..9560dcf
> --- /dev/null
> +++ b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.inc
> @@ -0,0 +1,127 @@
> +# This file is created from parsec-tool repository Cargo.lock using cargo-bitbake tool
> +
> +SRC_URI += " \
> +    crate://crates.io/aho-corasick/0.7.15 \
> +    crate://crates.io/ansi_term/0.11.0 \
> +    crate://crates.io/ansi_term/0.12.1 \
> +    crate://crates.io/anyhow/1.0.38 \
> +    crate://crates.io/atty/0.2.14 \
> +    crate://crates.io/autocfg/1.0.1 \
> +    crate://crates.io/base64/0.13.0 \
> +    crate://crates.io/bincode/1.3.1 \
> +    crate://crates.io/bitflags/1.2.1 \
> +    crate://crates.io/block-buffer/0.9.0 \
> +    crate://crates.io/byteorder/1.4.2 \
> +    crate://crates.io/bytes/0.5.6 \
> +    crate://crates.io/cc/1.0.66 \
> +    crate://crates.io/cfg-if/1.0.0 \
> +    crate://crates.io/clap/2.33.3 \
> +    crate://crates.io/clap/3.0.0-beta.2 \
> +    crate://crates.io/clap_derive/3.0.0-beta.2 \
> +    crate://crates.io/cmake/0.1.45 \
> +    crate://crates.io/cpuid-bool/0.1.2 \
> +    crate://crates.io/derivative/2.2.0 \
> +    crate://crates.io/digest/0.9.0 \
> +    crate://crates.io/either/1.6.1 \
> +    crate://crates.io/env_logger/0.8.3 \
> +    crate://crates.io/fixedbitset/0.2.0 \
> +    crate://crates.io/form_urlencoded/1.0.0 \
> +    crate://crates.io/generic-array/0.14.4 \
> +    crate://crates.io/getrandom/0.2.2 \
> +    crate://crates.io/hashbrown/0.9.1 \
> +    crate://crates.io/heck/0.3.2 \
> +    crate://crates.io/hermit-abi/0.1.18 \
> +    crate://crates.io/humantime/2.1.0 \
> +    crate://crates.io/idna/0.2.1 \
> +    crate://crates.io/indexmap/1.6.1 \
> +    crate://crates.io/itertools/0.8.2 \
> +    crate://crates.io/lazy_static/1.4.0 \
> +    crate://crates.io/libc/0.2.86 \
> +    crate://crates.io/log/0.4.14 \
> +    crate://crates.io/matches/0.1.8 \
> +    crate://crates.io/memchr/2.3.4 \
> +    crate://crates.io/multimap/0.8.2 \
> +    crate://crates.io/num-bigint/0.3.1 \
> +    crate://crates.io/num-complex/0.3.1 \
> +    crate://crates.io/num-derive/0.3.3 \
> +    crate://crates.io/num-integer/0.1.44 \
> +    crate://crates.io/num-iter/0.1.42 \
> +    crate://crates.io/num-rational/0.3.2 \
> +    crate://crates.io/num-traits/0.2.14 \
> +    crate://crates.io/num/0.3.1 \
> +    crate://crates.io/oid/0.1.1 \
> +    crate://crates.io/once_cell/1.5.2 \
> +    crate://crates.io/opaque-debug/0.3.0 \
> +    crate://crates.io/os_str_bytes/2.4.0 \
> +    crate://crates.io/parsec-client/0.12.0 \
> +    crate://crates.io/parsec-interface/0.24.0 \
> +    crate://crates.io/pem/0.8.3 \
> +    crate://crates.io/percent-encoding/2.1.0 \
> +    crate://crates.io/petgraph/0.5.1 \
> +    crate://crates.io/picky-asn1-der/0.2.4 \
> +    crate://crates.io/picky-asn1/0.3.1 \
> +    crate://crates.io/ppv-lite86/0.2.10 \
> +    crate://crates.io/proc-macro-error-attr/1.0.4 \
> +    crate://crates.io/proc-macro-error/1.0.4 \
> +    crate://crates.io/proc-macro2/1.0.24 \
> +    crate://crates.io/prost-build/0.6.1 \
> +    crate://crates.io/prost-derive/0.6.1 \
> +    crate://crates.io/prost-types/0.6.1 \
> +    crate://crates.io/prost/0.6.1 \
> +    crate://crates.io/psa-crypto-sys/0.8.0 \
> +    crate://crates.io/psa-crypto/0.8.0 \
> +    crate://crates.io/quote/1.0.9 \
> +    crate://crates.io/rand/0.8.3 \
> +    crate://crates.io/rand_chacha/0.3.0 \
> +    crate://crates.io/rand_core/0.6.2 \
> +    crate://crates.io/rand_hc/0.3.0 \
> +    crate://crates.io/redox_syscall/0.2.5 \
> +    crate://crates.io/regex-syntax/0.6.22 \
> +    crate://crates.io/regex/1.4.3 \
> +    crate://crates.io/remove_dir_all/0.5.3 \
> +    crate://crates.io/same-file/1.0.6 \
> +    crate://crates.io/secrecy/0.7.0 \
> +    crate://crates.io/serde/1.0.123 \
> +    crate://crates.io/serde_bytes/0.11.5 \
> +    crate://crates.io/serde_derive/1.0.123 \
> +    crate://crates.io/sha2/0.9.3 \
> +    crate://crates.io/strsim/0.10.0 \
> +    crate://crates.io/strsim/0.8.0 \
> +    crate://crates.io/structopt-derive/0.4.14 \
> +    crate://crates.io/structopt/0.3.21 \
> +    crate://crates.io/syn/1.0.60 \
> +    crate://crates.io/synstructure/0.12.4 \
> +    crate://crates.io/tempfile/3.2.0 \
> +    crate://crates.io/termcolor/1.1.2 \
> +    crate://crates.io/textwrap/0.11.0 \
> +    crate://crates.io/textwrap/0.12.1 \
> +    crate://crates.io/thiserror-impl/1.0.23 \
> +    crate://crates.io/thiserror/1.0.23 \
> +    crate://crates.io/thread_local/1.1.3 \
> +    crate://crates.io/tinyvec/1.1.1 \
> +    crate://crates.io/tinyvec_macros/0.1.0 \
> +    crate://crates.io/typenum/1.12.0 \
> +    crate://crates.io/unicode-bidi/0.3.4 \
> +    crate://crates.io/unicode-normalization/0.1.17 \
> +    crate://crates.io/unicode-segmentation/1.7.1 \
> +    crate://crates.io/unicode-width/0.1.8 \
> +    crate://crates.io/unicode-xid/0.2.1 \
> +    crate://crates.io/url/2.2.0 \
> +    crate://crates.io/users/0.10.0 \
> +    crate://crates.io/uuid/0.8.2 \
> +    crate://crates.io/vec_map/0.8.2 \
> +    crate://crates.io/version_check/0.9.2 \
> +    crate://crates.io/walkdir/2.3.1 \
> +    crate://crates.io/wasi/0.10.2+wasi-snapshot-preview1 \
> +    crate://crates.io/which/3.1.1 \
> +    crate://crates.io/winapi-i686-pc-windows-gnu/0.4.0 \
> +    crate://crates.io/winapi-util/0.1.5 \
> +    crate://crates.io/winapi-x86_64-pc-windows-gnu/0.4.0 \
> +    crate://crates.io/winapi/0.3.9 \
> +    crate://crates.io/zeroize/1.2.0 \
> +    crate://crates.io/zeroize_derive/1.0.1 \
> +"
> +
> +LIC_FILES_CHKSUM = " \
> +    file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57 \
> +"
>
> 
>

