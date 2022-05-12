Return-Path: <jupiter.hce@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B149AC433FE
	for <webhook@archiver.kernel.org>; Thu, 12 May 2022 09:34:22 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
 [209.85.167.182])
 by mx.groups.io with SMTP id smtpd.web10.2195.1652348054822864481
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 02:34:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=MB+gxHwE;
 spf=pass (domain: gmail.com, ip: 209.85.167.182,
 mailfrom: jupiter.hce@gmail.com)
Received: by mail-oi1-f182.google.com with SMTP id q10so5714300oia.9
        for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 02:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=5H5MeCLez0TuvonYwAR8+W2d9dTfnkMEMxASTpkMbDs=;
        b=MB+gxHwEno918w9OXYG4vPaqoUEtxdnjjccntFPbvZy+sgcw04jo86rnDtapmDc5kT
         RZrQQrrwZasbjAD8YKOrTUsAG5/ui6SKZELJ3WbmikBp8OIK8IhxITsmno+SsDk/1E9F
         5OXtVnwZHawPgJAc0be7xfQf2G90uWeEhQQeI9QZ0Bu/nJAEYvz18gUWKy1lkVxzflV4
         FOWN7csRw+asiVeOjexNTpm3O/mmW+ISKuyRYJvYUe3PuZHeF5xyOtN+m1HD0ntghM5r
         bUDRh4vG+gygcrzZQYVf3SbAmEqivz4G/QxO3ScSHvrFidxHKQwslr5MC84vMzFCZyFu
         X0ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=5H5MeCLez0TuvonYwAR8+W2d9dTfnkMEMxASTpkMbDs=;
        b=YfoYmAo5u6qy1opuvyipvxLMAA5wUzIq/4NThWi4Bu51NvcR9jvHo+8rHGqB0m/2w0
         +zNrkLhog/Jih69bzHy+VFxZkSpAHOlOkJB/MX0suaDLH4L7akg80EvTGroZotvwbk5r
         OafOd3JuqjUaGhoVRc56Kcm+/qBliNi5qwlFWNXX80L1p4PKlV2G1yeG+Olj93wFwF24
         kc/Um4k4cUcphttPLNWuRLWtrI54pQnZ0aNIrZawOb4v/rw8jQbrJubVt5HK4TCJzXZg
         dcz0aolew/xPf9y5lPBjpFB9MEeG5ChHn27oTxV4tZLZO5lWzAXoFk1aZVaLnFxU0l9G
         VZuw==
X-Gm-Message-State: AOAM530NcUXxnhxOO8EWUcHLZv24TqoNa/uuxgXCF5knEUMXNSmQ0vaA
	hRBtmlqsKp161B7CLBIxZdEH8eic7DUrKNZEZ1A=
X-Google-Smtp-Source: 
 ABdhPJyNoL1O8eSJFzWLwfHZEHcVKdxWBjM1wn2cZ9WrMPpPQHzGMQmPadm6yerwTWDYTfAcFRRyUsGyEvVvfScXP+M=
X-Received: by 2002:a05:6808:124c:b0:2f9:c7cf:146 with SMTP id
 o12-20020a056808124c00b002f9c7cf0146mr4678916oiv.54.1652348054073; Thu, 12
 May 2022 02:34:14 -0700 (PDT)
MIME-Version: 1.0
From: Jupiter <jupiter.hce@gmail.com>
Date: Thu, 12 May 2022 19:33:37 +1000
Message-ID: 
 <CAA=hcWQ3U2fpcC_H-C=rKwXs_CPW=KAKQ_rQyw5nXdpSCOh13A@mail.gmail.com>
Subject: kernel bbappend files failed to triggler build updated in kirkstone
 branch, could be bugs?
To: openembedded-devel <openembedded-devel@lists.openembedded.org>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 May 2022 09:34:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57064

Hi,

I have a kernel bbappend file which can update patch files but cannot
not update a defconfig file when the files are changed.

FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = "file://0001_wifi.patch \
                  file://0001-kernel-mtd.patch \
                  file://defconfig \
                  "

All files are in files directory, if I change a patch file, it can
trigger the build, but if I change the defconfig file, it could not
trigger the new build. Is it a bug in the kirkstone branch?

Thank you.

Kind regards,

jupiter

