Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D05EAE00C84; Thu, 30 Nov 2017 09:11:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93144E00AF2
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 09:11:45 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id 64so13704368wme.3
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 09:11:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=afsjWhx4mfJ91D0PAbul41jz30hyl4dmnMF32kFmaiI=;
	b=LCR48URnh1893/kcPkJeo6oIbg+rVNEYfveH0C5eiOdJc3jyTrCipZQ+S0LgJ6WQi6
	7OjQE16uq0ikxLa1hJNDhLeeMPrFdHwA7REBYUNLcqiJJAOLkhrzy6y57hACo3uKusSy
	+mbrQC9U2I37wQYUTEWAWeNkgVNLsMhPr+8N8pPjf0heSBsCHLOn18YZp3k2C+uUOFU7
	KZxQP5Xl8IGKIhkAWDTUmQ9hx2yfRqlK1+CSUFlYNV1oWlyD0rl7XO8ncJ/pdp/KDRXj
	yQ2Gg3DQ7k3ZY2CVz3iTrthF84pbYKWjXE6NZTf4rjgq9jBLfSbfK0ReXiats+8rPzub
	47ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=afsjWhx4mfJ91D0PAbul41jz30hyl4dmnMF32kFmaiI=;
	b=MzyDM+QVDEvbNLkGujvQN4mQTIH/nU2rmGJVyXrjJelyOz+klHxf9kt6FzvnukKVWV
	kAVihQzljuiOk0Yse8G1fOVANgRHdlZ9t6VbvKHx8ay5QthqVSsMLfACWOkDhNsQlYX0
	fp6BOIYgUsmCR9nI4Yi38tHtEMWld6CHcmDXje94ph1WNeM8aByqmYdaf4PjmJcKYHSa
	41fdJjuJp80za8nj7j2+DUo3GONR/Nv7DBrin+Yw1dqN6A3Nz54D1pLZztLLtRapnjsH
	u0MH459AlVAglUGVSf7+f1kBf4NqI9vpTCk9nHB2LF3uHUstuMBoBl4ihfl03wqkFAeI
	IdQQ==
X-Gm-Message-State: AJaThX7QuR1rzjmdaAYL7Y2ESJ8PHdvXfiIs/rhHh289QydCRjCg+VLD
	rZWK2BgP9lOi/XwnEoX1kpzMRIhiwtp1TqzNI7aloY6v
X-Google-Smtp-Source: AGs4zMbfKO5DTfaL7CDGnmFRwELTjDURx7yrOEG7Q5I8LwTMBlRBLkxg/OQVV1LaQQUGiAuXAGPcx8CCQTjbGS9NVSM=
X-Received: by 10.28.156.23 with SMTP id f23mr1325190wme.128.1512061904285;
	Thu, 30 Nov 2017 09:11:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.199.199 with HTTP; Thu, 30 Nov 2017 09:11:43 -0800 (PST)
In-Reply-To: <1511833693-177790-1-git-send-email-dengke.du@windriver.com>
References: <1511833693-177790-1-git-send-email-dengke.du@windriver.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Thu, 30 Nov 2017 17:11:43 +0000
Message-ID: <CAPyrkgztW6nHWX_V0r1r1U_YCS4dcsjmBveaMt9ULmWOhWbMQw@mail.gmail.com>
To: Dengke Du <dengke.du@windriver.com>
Cc: yocto <yocto@yoctoproject.org>, andrei@gherzan.com
Subject: Re: [[meta-raspberrypi]][PATCH] bluepy: add it
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 30 Nov 2017 17:11:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 28, 2017 at 1:48 AM, Dengke Du <dengke.du@windriver.com> wrote:
> The bluepy can let us programming bluetooth le application in python.
>
> Signed-off-by: Dengke Du <dengke.du@windriver.com>
> ---
>  recipes-devtools/bluepy/bluepy_git.bb              | 48 ++++++++++++++++=
++++++
>  ...compiling-get-the-cross-compiler-from-env.patch | 28 +++++++++++++
>  2 files changed, 76 insertions(+)
>  create mode 100644 recipes-devtools/bluepy/bluepy_git.bb
>  create mode 100644 recipes-devtools/bluepy/files/0001-When-cross-compili=
ng-get-the-cross-compiler-from-env.patch
>
> diff --git a/recipes-devtools/bluepy/bluepy_git.bb b/recipes-devtools/blu=
epy/bluepy_git.bb
> new file mode 100644
> index 0000000..3e2e7de
> --- /dev/null
> +++ b/recipes-devtools/bluepy/bluepy_git.bb
> @@ -0,0 +1,48 @@
> +SUMMARY =3D "Python module for interfacing with BLE devices through Blue=
z"
> +HOMEPAGE =3D "https://github.com/IanHarvey/bluepy"
> +# WARNING: the following LICENSE and LIC_FILES_CHKSUM values are best gu=
esses - it is
> +# your responsibility to verify that the values are complete and correct=
.
> +#
> +# The following license files were not able to be identified and are
> +# represented as "Unknown" below, you will need to check them yourself:
> +#   LICENSE.txt
> +#   bluez-5.29/COPYING.LIB
> +#
> +# NOTE: multiple licenses have been detected; they have been separated w=
ith &
> +# in the LICENSE value for now since it is a reasonable assumption that =
all
> +# of the licenses apply. If instead there is a choice between the multip=
le
> +# licenses then you should change the value to separate the licenses wit=
h |
> +# instead of &. If there is any doubt, check the accompanying documentat=
ion
> +# to determine which situation is applicable.
> +LICENSE =3D "Unknown & GPLv2"

You'll need to fix this as explained in the comment above (which the
recipe generator has added) and then drop the comment.

> +LIC_FILES_CHKSUM =3D "file://LICENSE.txt;md5=3D59e0d45ea684dda215889aa1b=
5acd001 \
> +                    file://bluez-5.29/COPYING;md5=3D12f884d2ae1ff87c09e5=
b7ccc2c4ca7e \
> +                    file://bluez-5.29/COPYING.LIB;md5=3Dfb504b67c50331fc=
78734fed90fb0e09"
> +
> +SRC_URI =3D "git://github.com/IanHarvey/bluepy.git;protocol=3Dhttps \
> +           file://0001-When-cross-compiling-get-the-cross-compiler-from-=
env.patch \
> +"
> +
> +# Modify these as desired

You can drop this comment.

> +PV =3D "1.1.2+git${SRCPV}"
> +SRCREV =3D "b1178fba2729692532e02d95e7368c742814f725"

Is there any reason for using this commit from git rather than the
latest version on pypi (https://pypi.python.org/pypi/bluepy)? You can
look at the recipe for rpi-gpio to see how to use the pypi bbclass to
simplify fetching from pypi.

> +
> +S =3D "${WORKDIR}/git"
> +
> +inherit setuptools
> +
> +DEPENDS +=3D " glib-2.0"
> +
> +# WARNING: the following rdepends are determined through basic analysis =
of the
> +# python sources, and might not be 100% accurate.

You can drop this comment if you've checked the RDEPENDS.

> +RDEPENDS_${PN} +=3D "python-argparse python-core python-io python-json p=
ython-subprocess"
> +
> +# WARNING: We were unable to map the following python package/module
> +# dependencies to the bitbake packages which include them:
> +#    bluepy
> +#    bluepy.btle
> +#    bs4
> +#    requests

You can drop this comment if you've reviewed those modules and ensured
that whatever provides them is in the dependencies.

> +
> +INHIBIT_PACKAGE_STRIP =3D "1"
> +INSANE_SKIP_${PN} +=3D "ldflags"

It's probably worth adding a couple of comments to say why these 2
lines are needed.

> diff --git a/recipes-devtools/bluepy/files/0001-When-cross-compiling-get-=
the-cross-compiler-from-env.patch b/recipes-devtools/bluepy/files/0001-When=
-cross-compiling-get-the-cross-compiler-from-env.patch
> new file mode 100644
> index 0000000..8799058
> --- /dev/null
> +++ b/recipes-devtools/bluepy/files/0001-When-cross-compiling-get-the-cro=
ss-compiler-from-env.patch
> @@ -0,0 +1,28 @@
> +From abf880ff4c276134564e1f1e63a3b6699060da7f Mon Sep 17 00:00:00 2001
> +From: Dengke Du <dengke.du@windriver.com>
> +Date: Mon, 27 Nov 2017 03:48:16 -0500
> +Subject: [PATCH] When cross compiling, get the cross compiler from envir=
onment
> +
> +Signed-off-by: Dengke Du <dengke.du@windriver.com>

Please include an "Upstream-status" line as described in
https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines#Patch_Hea=
der_Recommendations.

> +---
> + bluepy/Makefile | 4 ++--
> + 1 file changed, 2 insertions(+), 2 deletions(-)
> +
> +diff --git a/bluepy/Makefile b/bluepy/Makefile
> +index 76bafec..42f145b 100644
> +--- a/bluepy/Makefile
> ++++ b/bluepy/Makefile
> +@@ -9,8 +9,8 @@ BLUEZ_SRCS +=3D src/shared/io-glib.c src/shared/timeout-=
glib.c
> + IMPORT_SRCS =3D $(addprefix $(BLUEZ_PATH)/, $(BLUEZ_SRCS))
> + LOCAL_SRCS  =3D bluepy-helper.c
> +
> +-CC =3D gcc
> +-CFLAGS =3D -Os -g -Wall # -Werror
> ++CC ?=3D gcc
> ++CFLAGS ?=3D -Os -g -Wall # -Werror
> +
> + CPPFLAGS =3D -DHAVE_CONFIG_H
> + ifneq ($(DEBUGGING),)
> +--
> +2.8.1
> +

You might not need this patch. You can pass extra arguments to make by
giving an EXTRA_OEMAKE value in the recipe - see the recipe for
wiringpi for an example of how this can be used. I can't exactly
remember the details of make assignment precedence so I'm not
guaranteeing that will work, if it does work it would be the preferred
approach though.

Once you've addressed these comments you'll need to submit this as a
pull request on github (https://github.com/agherzan/meta-raspberrypi).

Thanks,

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

