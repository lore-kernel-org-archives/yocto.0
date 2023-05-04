Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB7D9C77B7C
	for <webhook@archiver.kernel.org>; Thu,  4 May 2023 05:29:24 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web11.42727.1683178163951652473
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 May 2023 22:29:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=h/b1reOd;
 spf=pass (domain: gmail.com, ip: 209.85.167.50, mailfrom: marek.belisko@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-4f0108a7d20so42024e87.3
        for <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 22:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683178162; x=1685770162;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MBc4DkqmH5QTTl33PhyioatZwCk4WbhQU7YO1D3CTi0=;
        b=h/b1reOdRsCYFAZ/jgOlxj65mJk38vxsQ4Qgl+t37JpSHJ5dS8vta3IAphIizxRBN7
         HY45gFJmkIHv7RcGzUjWkTwWsRrpz4ZluRxCB84xDrPztfUXq48zoLj1eXQ82IvXdWnG
         wI1iSlV02DQeT6S9qUOJcYINvcNnacSxzEfr2GFwOEmcVmlp/O+b0ov9A45i/hOeaPko
         CF65oprVcV4sMChW4BjTQNeodKlMgbhKsnvXysxfixg5UWoIeGtQtWFot+N5twOMaj8+
         9qcvaZ0YWxScF5g3/fmdNP+coMtd3BnfQt9CbpQZWYi4Wx4VniPG0omwmxzfLhJ40Q6E
         HSpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683178162; x=1685770162;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MBc4DkqmH5QTTl33PhyioatZwCk4WbhQU7YO1D3CTi0=;
        b=cG/84lIYm4vB9sB4FEK7T79lm6gLjqpo1X3+jCD37bNDnkT7h2bqMMDIW7eHidRLvE
         6kvGzCZJbiFyKcDzxSdv6UihDVkWFzG5oWGAqYqcchJ6qFFqoAHvkDgRxkwJ2d+xVrWJ
         hvevH0NL8LOEXr98mhUtTEeeDnIUyEgOQMyJNFDio2VRtnFUCso0Tt2XnyGx71xUgkxN
         OJl3yt/csaysdrabGolH3OzMkSQacGiNWvS6HI6RdlwwVpVQYpI3Q5GOtJVtZh0TF5fH
         mbFh2Bdnf2m3yk5YQ2BqTy8Mkn7rPX0/Jcl/shRyxrPO+m06ICQo2a5RnDnF3BJh7c22
         NKdg==
X-Gm-Message-State: AC+VfDw8549QP4we99GwR2iMveAUsTcxTCYrGMMuVYuD6Lf9DR4B7RWD
	5O6O0XDPqCvlt8XuUld2IkGU+4iIFtnavUcpKvGaOocblJI=
X-Google-Smtp-Source: ACHHUZ5we+CgYAXgIAXyKHmo8W0aG+3cO7vLK9KaWJP90oS7I+nPJOmiuhvIrA7a24at7qdOO7eSISNVonX66QtQN3o=
X-Received: by 2002:a19:7414:0:b0:4f0:1a32:d51f with SMTP id
 v20-20020a197414000000b004f01a32d51fmr1306930lfe.23.1683178161290; Wed, 03
 May 2023 22:29:21 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 4 May 2023 07:29:09 +0200
Message-ID: <CAAfyv37E7d_maOHLbgnN0D14B8qwZ803r8BQHESm2eQk8HMyAQ@mail.gmail.com>
Subject: make journal logs persistent
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 05:29:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59863

Hi,

I'm building an image using a kirkstone release for a banana pi m2
board. I've created wic file with 2 partitions one for rootfs and
second for storage. Storage partition if mounted to /opt/storage and
resized to then end of the SD card.
wks snippet:
part /opt/storage --source rootfs
--rootfs-dir=${IMAGE_ROOTFS}/opt/storage --ondisk mmcblk0
--fstype=ext4 --fsoptions="defaults,x-systemd.growfs" --align 2048
--fixed-size=10M

This works fine. I've also added custom systemd-conf file for
journal.conf which set logs to persistent like:
[Journal]
Storage=persistent
ForwardToSyslog=yes
RuntimeMaxUse=100M

In local.conf I've added: VOLATILE_LOG_DIR = "no" which makes /var/log
non volatile.

When image is build I've added following:

persist_logs() {
        mkdir -p ${IMAGE_ROOTFS}/opt/storage/journal
        mv ${IMAGE_ROOTFS}/var/log ${IMAGE_ROOTFS}/opt/storage/journal
        ln -sf /opt//storage/journal ${IMAGE_ROOTFS}/var/log
}

# Create persistent logs
ROOTFS_POSTPROCESS_COMMAND += "persist_logs; "

But even after all those changes, the journal is saved in /run/var ...

Any ideas what I'm doing wrong?

Thanks and BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

