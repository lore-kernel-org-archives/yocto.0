Return-Path: <toyonembedded@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 014C7C43334
	for <webhook@archiver.kernel.org>; Mon, 11 Jul 2022 20:46:05 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web12.969.1657572362078305622
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Jul 2022 13:46:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IAQDaOb4;
 spf=pass (domain: gmail.com, ip: 209.85.222.179,
 mailfrom: toyonembedded@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id p22so4813012qkj.4
        for <yocto@lists.yoctoproject.org>;
 Mon, 11 Jul 2022 13:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=EmS9eiqmeSXyg9aEtmLwSgd8TzQw7hb6JTKNWSY2n7M=;
        b=IAQDaOb4jYfOe4otuCKnvXQPPtefod/63X+L9db+t03JfecQ3gMbim4h7bg51RYK9+
         86GiQowBxWWw8kHIOiPxywVeugQYIWPBkRwdSMyc/WEJDdaQLcEwZPApLNgg7r9lAJSE
         sXwIlbQo6K1WBbSI8T61jHVwUJ+oqzVjYfzLeQsaM/U9Gy7lO7Xlpu9QhE5M5DKU2Qzq
         N3crL6Lywl7WA3DFc0PWMrZW2mPMriWSLa+9U2PzEjQilvG+kfL8w8yKhGOrWgKwluW/
         3AD5BAI8nfLNXy1BLxKUVDXJ3AfkMq7YxiD34ftO5mMyetlDzr2+HqKg2DJoehvRW5j5
         QJmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=EmS9eiqmeSXyg9aEtmLwSgd8TzQw7hb6JTKNWSY2n7M=;
        b=H6FEchrUIyCf0AGXvpTFdEp/rN+D+r62QiYOBE6j2ybM7oPd8MoDC24paTRMQ16t2W
         sbKO2C2yV1658GutHXAzlQ4MCKzI7o4QWpqq9WClKdGaG8Qw0lwNACaWxXb4AqsiskUt
         1/x3+kR3etRk+PIFhjPGPh0Ar9ppHdlJNopQmcc823M7j5/EA4czLskF7aVvPm+2PxK2
         b163Tpk6ZL+fl0iKlfw7+5c92ZoVcjZf87Z9KXhROitiWUxgCZvgWfrkebbj3KF5L1l7
         vdqoJAnfs0ALjCGdvHf1aJmXpK/0TrpjsUvhbvYy+eiHTK/VxlCuouOEPTIgnGWvMppu
         UakA==
X-Gm-Message-State: AJIora+u4VaGc57DpHKqoQY2bNjyXYcaIEhtOcqkFbV4m4dmzhKfrp0y
	W/3MYwFBQ9jpOqcE3BZ+HLqWXTgtrDXZq0+zhwaMCUDjZXs=
X-Google-Smtp-Source: 
 AGRyM1vVgucesfR2qvcbabZRVBpH7TSheWRSsRNwaXE610SAAEjfpis/cUj2cfIWsFZ7xyS03qaD/uwyrb4M9D7TLRs=
X-Received: by 2002:a05:620a:f04:b0:6b5:473d:d47 with SMTP id
 v4-20020a05620a0f0400b006b5473d0d47mr13095709qkl.577.1657572361003; Mon, 11
 Jul 2022 13:46:01 -0700 (PDT)
MIME-Version: 1.0
From: Embedded 1 <toyonembedded@gmail.com>
Date: Mon, 11 Jul 2022 13:45:50 -0700
Message-ID: 
 <CA+4rcE6C5o8UEKJGHgN6Jftk-cqVoMog6ckMm=sicvkzRfcpeg@mail.gmail.com>
Subject: missing cgroups when trying to re-mount rootfs from initramfs busybox
 image
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Jul 2022 20:46:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57496

I have busybox with an initramfs. When I try to re-mount the rootfs I
see this. This is with Yocto. Do I need to include systemd in my
initramfs image?

sh-5.0# exec switch_root /root /sbin/init
switch_root: failed to mount moving /run to /root/run: Invalid argument
switch_root: forcing unmount of /run
[  339.929584] systemd[1]: System time before build time, advancing clock.
[  339.974784] systemd[1]: Module 'autofs4' is built in
[  339.980811] systemd[1]: Failed to mount tmpfs at /sys/fs/cgroup: No such file
 or directory
[  339.989411] systemd[1]: Failed to mount cgroup at /sys/fs/cgroup/systemd: No
such file or directory
[!!!!!!] Failed to mount API filesystems.
[  340.024657] systemd[1]: Freezing execution.

