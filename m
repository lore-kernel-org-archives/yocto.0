Return-Path: <tamas.nagy.001@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CCD7C7EE23
	for <webhook@archiver.kernel.org>; Mon,  5 Jun 2023 12:49:03 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
 by mx.groups.io with SMTP id smtpd.web10.6632.1685969342596711203
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Jun 2023 05:49:02 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=fSY6fn40;
 spf=pass (domain: gmail.com, ip: 209.85.128.177, mailfrom: tamas.nagy.001@gmail.com)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-568bb833462so54744997b3.1
        for <yocto@lists.yoctoproject.org>; Mon, 05 Jun 2023 05:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685969341; x=1688561341;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zAWywGGcd5AI+PGmnuJN5bL2DUtFPFaOlVMohVSYAzM=;
        b=fSY6fn40jZYTctdRYXxUcrkYNNwqnK0aujYGZnGh7sjjkCl9qGpZdXG/KYrRZCbZbM
         Ksm//Qbk1ONiNPXYQmIiCsm7KNu3i5CmgYqm1mnKVKk3dY7mZV1S06tfZEAGpps84xL7
         L8ZKu1UVevrbX+pIYuCgNU9QeLWDyugPtUIO/Ii2SbS+Tkq4hx2kcC5whdUkMZqQCM7+
         /zlgGV6lJ9FjwGXlh1xC3T2qBFnHT6r6OsjjZ++zG7C8Ka7HkwNAUk+FVb7wv8WmwALr
         ILnDReZ+vA4sv/2xoFegBdHAiHtOZAbG5jYrKbs0RevA+9ClGMUTYCALv034nNrol2UF
         dJ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685969341; x=1688561341;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zAWywGGcd5AI+PGmnuJN5bL2DUtFPFaOlVMohVSYAzM=;
        b=eJVildSJGsNnGphUCU+ahbFQ0xCJITJdDv+0/is/npPSANeEBvdYBUV66VJlX46gCf
         BW0sQuZxIjfwsTom63E+x83k6nQ1Dzz+SuAMhJJ7UcNyzk9oNXJ2M2v7ZpgHQQ3E/U5N
         Ityf2XBBd7sKgbmhInBUOZPJAShAW165ndJJ3tZRVc1Y4m2xsXeL1VuQ5LPSnXDZFVkL
         Q0SSEZ6BE7brbiB7dfpxviy9+vlHK0vLH6TlcyrwYrC2tIjfXrz3EkyLbvV6A5FJdi0G
         sRzQ5WxQJA8kMgVzjiV4dLQ4VbWCQ3XzpkPfC6dVOYqWtLl5pxSuow5m2HnoGuKpYD52
         HW3A==
X-Gm-Message-State: AC+VfDzvw8bPlveaRvU0XI8tOcCDZ924XIy2yK5g2ZQQEsO1a1Go1S09
	3ZJ1k66CrYMlF+TVUM/5rH/fQ9CqveuJGHPqZqA1ZjPCCAo=
X-Google-Smtp-Source: ACHHUZ79m4YLpwqvu3nVRbUMQoo0jeY2iD/+eeuMHWy1wAk1Mgw0aDO7fm0MrdfdxMHc7AWr/nnjOneRtX0502X1VPs=
X-Received: by 2002:a0d:e2cb:0:b0:55a:c89c:69c0 with SMTP id
 l194-20020a0de2cb000000b0055ac89c69c0mr9962821ywe.12.1685969341541; Mon, 05
 Jun 2023 05:49:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAL+GPkVCWbYw93GaLsiAGVxjARer=GD4TxnRrqGou2Ff-wtXEw@mail.gmail.com>
In-Reply-To: <CAL+GPkVCWbYw93GaLsiAGVxjARer=GD4TxnRrqGou2Ff-wtXEw@mail.gmail.com>
From: =?UTF-8?Q?Tam=C3=A1s_Nagy?= <tamas.nagy.001@gmail.com>
Date: Mon, 5 Jun 2023 14:48:50 +0200
Message-ID: <CAL+GPkXNGONMcnqwkF91VtMvCyS_LPTGrSLb0Myv6ZiDz873=A@mail.gmail.com>
Subject: Copying a logo.pnm doesn't work at all from a dir to another dir.
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Jun 2023 12:49:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60181

Hi,

I would like to copy a file (logo.pnm) from the
yocto/uboot/sources/meta-fsos-jetson/recipes-kernel/linux/linux-tegra/
  using the linux-tegra_%.bbappend to the

yocto/uboot/build-jetson/tmp/work-shared/jetson-nano-emmc/kernel-source/drivers/video/logo

It is necessary that the file is copied every time if the build is
rerun with the . yoctoWF.sh && compile_kernel. It resets the
directories to default before every rerun.

Contents of the linux-tegra_%.bbappend:

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append = " \
                                    file://logo.pnm
                                    file://logo_custom.patch" \
                                   .... \"
do_unpack_append() {
     os.system("/bin/cp -rf logo.pnm" ${S}/drivers/video/logo")
}

do_install_append() {
     install -m 644 {B}/logo.pnm ${D}/drivers/video/logo/
}

The problem is that it doesn't work, it copies nothing there and there
are also no error messages. I tried to include logging, but the
standard .bb doesn't include it and that is
why I can't use it in the .bbappend. As I know I can use some kind of
${WORKDIR}, but
I don't know how.

Tamas

