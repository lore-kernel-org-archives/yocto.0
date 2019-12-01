Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web11.4689.1575242880230098728
 for <yocto@lists.yoctoproject.org>;
 Sun, 01 Dec 2019 15:28:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@openavr-org.20150623.gappssmtp.com header.s=20150623 header.b=c3wd6tMI;
 spf=none, err=permanent DNS error (domain: openavr.org, ip: 209.85.221.43, mailfrom: troth@openavr.org)
Received: by mail-wr1-f43.google.com with SMTP id w15so10983164wru.4
        for <yocto@lists.yoctoproject.org>; Sun, 01 Dec 2019 15:27:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=openavr-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=xPctz3kpzqwf0KxMNxfnA9LWDomm7uPjfsnI9waPdpo=;
        b=c3wd6tMI20kLC9zVungt7wYBS7QfktTxNRtSFwcAWIc/wIYgR2dU1zmoF1sBBcni6k
         cY3nygS8nsFatlK8VxrFiCxMyPvb/+bRZ/vOMCgWU3TaNMfbEB1gxyufCxPX3R8XcJde
         f9x48ff62VdR3gEWCtjvZsMrkkHWSCPTiX5yx2PZpZuFK60c19X8iZyaVNLQLEt5ChNW
         fd32J05DLWhHQ9BtgXPzN0fWs2bLBxVeA52DQZ1MpJv2rFzHd5PtMYDapiy02GHp8XCz
         BGizlURqN/0nmbNN9DoX2CLrAlNIvhJYBKv11Bd/6HM6n8tmITr8mZTYXbsMJWJN4JN/
         DEeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=xPctz3kpzqwf0KxMNxfnA9LWDomm7uPjfsnI9waPdpo=;
        b=KRWHQDjXgRrxjJXKXF3MFXNQs/ftGvnbcnt6sqP6MqYjQO8nrt+gC8a0ETInvRT6Sp
         dHpPb8AfIRXIDUxldtJns8vuiKJSJYLb/cvJ6JnrQdOzenondQxpbq5ycr+QJstjPtmb
         5H8mvRRlboM4xhthC/MCDCD3/QyFclaD21rBhY17tkQ1KhcU619DPGbHu00uXdh5lAxg
         47gerjUVajop3ZJXl4mR4jqFhQa4Kn6CPas9jlgouZloHhbyFdubNvizSGndRkU+JgS/
         ho60VQevHfPqGwF0aSqQ0cjoggl8MfA9X8AH+lruKKaFpAoR10DsQ8yXh9aToHwxaS5C
         HA/g==
X-Gm-Message-State: APjAAAUPF2rlh3oxIv8NxKqWkzplKiXo+C0T3mIeyXU2lP8CcxCQ+2bU
	fF4vHWWwoSrHjsKPAcE66Kf+hgX6nzvRHqSkZQAzl+cFAGk=
X-Google-Smtp-Source: APXvYqwxs839dBaFWczjishiopyUj/CZGr0FNTY8z+2yhrq4SJOpY9jSFHOKUdKHBFFnlmCKrX2qGN10RikDcnW30Pk=
X-Received: by 2002:adf:f311:: with SMTP id i17mr4811834wro.81.1575242878422;
 Sun, 01 Dec 2019 15:27:58 -0800 (PST)
MIME-Version: 1.0
From: "Theodore A. Roth" <troth@openavr.org>
Date: Sun, 1 Dec 2019 16:27:47 -0700
Message-ID: <CAFMvBt16xVQ5WTBcwDmADjszo4hP9DyaKKG3ufv-yRyK9jKumg@mail.gmail.com>
Subject: trying to use ext4 rootfs image in a wic image (dependency issues)
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm trying to create a wic image that contains an ext4 partition image
file in the /boot partition . I've set the following:

    IMAGE_FSTYPES = "tar.xz ext4 wic wic.bmap"
    IMAGE_BOOT_FILES += "${IMAGE_BASENAME}-${MACHINE}.ext4;rootfs.ext4"

I'm using "beaglebone-yocto" for MACHINE and the above overrides what
is set in the "beaglebone-yocto.conf" machine configuration.

When I run "bitbake myimage", the do_image_wic task fails to find the
""${IMAGE_BASENAME}-${MACHINE}.ext4" because the do_image_wic task is
run before the do_image_complete task copies the files from DEPLOYDIR
into DEPLOY_DIR_IMAGE. Since the do_image_wic task is looking in
DEPLOY_DIR_IMAGE and is run before the do_image_complete task due to
dependencies, the creation of the wic image fails.

I tried to work around this with the following:

    do_image_wic[recrdeptask] += "do_image_ext4"

but I quickly discovered that does not work due do_image_complete
copying of files (as discussed above).

If I remove "wic*" from IMAGE_FSTYPES, build myimage and then run wic
manually, all is good, but I lose the automating of wic image creation
when building the image recipe and also lose the ability to have other
image recipes inherit (via "include") and extend the base image (thus
inheriting the wic creation rules).

The end goal is to have an initramfs which loopback mounts the ext4
rootfs partition readonly from the /boot partition.

Any suggestions on how to get do_image_ext4 generated files available
to do_image_wic?

Ted Roth
