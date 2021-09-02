Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.web12.4096.1630570247858246702
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Sep 2021 01:10:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=AciRC404;
 spf=pass (domain: gmail.com, ip: 209.85.208.50, mailfrom: ivriabtsov@gmail.com)
Received: by mail-ed1-f50.google.com with SMTP id n11so1573822edv.11
        for <yocto@lists.yoctoproject.org>; Thu, 02 Sep 2021 01:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=l8Alrh0jTNI/XDTrZtYyihUqayEHCayB5rJtsvbda1U=;
        b=AciRC4047xaovbIT6+GfEIVA1r61+KmknnmcqLtw5pxNRaszlPywIHv2ORvw7Bl9DK
         egu9Df/OXqbY/WWVCxslcJ67ChvyS+CcBagBivORIQ1ZhhVnu4riXLiaJEFfxj1YDhcf
         rO8pCsxQ03EnB4b2zfIZmTu/cqBXTvIChQuxGhYemRvXHbfVIXQU6+IMCC/zaZz4HgWv
         pc+WPwo6IUqkwbWZO0PGyku9B7wY9XV4e5GXfIiT++4+abplYUZ54iLve78xy0/GhLWP
         RJ5daWm+V6ezFKzvdE5h5xZZ9RSoqbCuUJOFydnyHOy8n6rcbPxoacXRjGpwyaf5LHsE
         5/YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=l8Alrh0jTNI/XDTrZtYyihUqayEHCayB5rJtsvbda1U=;
        b=NgneEwdxBqdB2UT1hXOFMUVWigXgtTe4T54pneVHz/dQsxaKf77gQqoi3gRr/cTalm
         qtOYei0FQjmzhuIaJFuGAY5gYvv++4nBD4yF1iLWVmciu9La13K+3y/tSd1wEqIEA3+4
         6mCvnwtDpQTzjsp4X4G2RzpE8g8GaC7NkkCngrj6XzWve+oe4iMbljqg0dX46ZHe+rcB
         wm9Oyp7NR3EgyrlgVI6KRIvAEfDYE2xqzhavikVW15vdmhdtKSpSV9diD11H9ZlmBOd3
         4hhknwIYynBxPwrpG68giidCFZLhVJqx2JjGoDy4GAlQBKSgN5GstaDRrCTnFQPVmxMl
         dTUg==
X-Gm-Message-State: AOAM533VT2l6VLUBZEcJ++Oixro2xvuqNtz+ofp5c5UD1TWEwhM6TM+K
	d2i8mhQtWTPpcrOlgNQo5+9vdtdoYT4rIibZScGOGSUyCqc=
X-Google-Smtp-Source: ABdhPJwwfY+hVBphxvTK08FlREP7xmPwuowT3eKe8WziBY2vxRmgSFxEwzw9A2ukH04cg/dIAuQlJyKev6Bu+1Y+hkk=
X-Received: by 2002:a05:6402:16d8:: with SMTP id r24mr2392640edx.124.1630570245870;
 Thu, 02 Sep 2021 01:10:45 -0700 (PDT)
MIME-Version: 1.0
From: "Ivan Riabtsov" <ivriabtsov@gmail.com>
Date: Thu, 2 Sep 2021 11:10:35 +0300
Message-ID: <CAKAnv4HcU4L5Ve7Q+RVizE=iK+sPLiDpEByF5SUo1pGLaS0OYA@mail.gmail.com>
Subject: task do_patch does not exist
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hello. I created a recipe with the following command:

$ devtool add  mosquitto
https://mosquitto.org/files/source/mosquitto-2.0.11.tar.gz

i got the file:

ivr@home-machine:~/work/yocto/build
$ cat workspace/recipes/mosquitto/mosquitto_2.0.11.bb
# Recipe created by recipetool
# This is the basis of a recipe and may need further editing in order
to be fully functional.
# (Feel free to remove these comments when editing.)

# WARNING: the following LICENSE and LIC_FILES_CHKSUM values are best
guesses - it is
# your responsibility to verify that the values are complete and correct.
#
# The following license files were not able to be identified and are
# represented as "Unknown" below, you will need to check them yourself:
#   LICENSE.txt
#
LICENSE = "Unknown"
LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=ca9a8f366c6babf593e374d0d7d58749"


SRC_URI = "https://mosquitto.org/files/source/mosquitto-${PV}.tar.gz"
SRC_URI[md5sum] = "638d801e6aac611b41de76d030951612"
SRC_URI[sha256sum] =
"7b36a7198bce85cf31b132f5c6ee36dcf5dadf86fb768501eb1e11ce95d4f78a"
SRC_URI += " file://0001-arch-makefile-variable.patch"

# NOTE: unable to map the following CMake package dependencies: cJSON
libwebsockets
# NOTE: the following library dependencies are unknown, ignoring: systemd
#       (this is based on recipes that have previously been built and packaged)
DEPENDS = "openssl"

inherit cmake pkgconfig

# Specify any options you want to pass to cmake using EXTRA_OECMAKE:
EXTRA_OECMAKE = ""

do_patch() {
    patch -p1 -d ${WORKDIR} < ${WORKDIR}/0001-arch-makefile-variable.patch
}

i added the line:
SRC_URI += " file://0001-arch-makefile-variable.patch"
and i try to run bitbake -c patch mosquitto
i got the ERROR: Task do_patch does not exist for target mosquitto
I added the lines:
do_patch() {
    patch -p1 -d ${WORKDIR} < ${WORKDIR}/0001-arch-makefile-variable.patch
}

but i got the same error.

Please tell me what I am doing wrong? Before, when I created recipes
by hand, it was enough for me to add the line SRC_URI + =
"file://some-patch.patch" and the do_patch task itself appeared and
was executed
