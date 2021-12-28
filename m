Return-Path: <davis.roman84@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E845C433EF
	for <webhook@archiver.kernel.org>; Tue, 28 Dec 2021 22:55:46 +0000 (UTC)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com
 [209.85.219.169])
 by mx.groups.io with SMTP id smtpd.web10.44380.1640732144787784337
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Dec 2021 14:55:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bu30OAPy;
 spf=pass (domain: gmail.com, ip: 209.85.219.169,
 mailfrom: davis.roman84@gmail.com)
Received: by mail-yb1-f169.google.com with SMTP id y130so33272191ybe.8
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Dec 2021 14:55:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=VHDg8xUxd+DEn1pLhhS9/4eN5EBvZMzXT8rOypGSqAM=;
        b=bu30OAPygonuej7e1UaBBjIUQbbfyqHf/Ddk1bfUAu/VJNGWov5PaTWe0a7jsbiiz1
         po1O6118OMJvenxzeKzeES7VRTIAAYfbTvP/o4eh7crriHe6wLH30jCaaG++CbX2CR/7
         JUutzQjKpU+eAnbDKoudkpOflatcBlJ5aR5iQrwWQ+mUFLeJP22kR0CR8DQEwWB3UPVn
         l9Cjf6NWqldmAvywTDo0HphwtRLfsliTHCIySQIAVSM3NYqvebRg2hpojclBo7239wns
         Hb4242uv4XhYygdc77hc20IrF1cH4lT4/TX/zLevYYWsdEZewl0xP0hVKni7+qgJ53Ob
         T18g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=VHDg8xUxd+DEn1pLhhS9/4eN5EBvZMzXT8rOypGSqAM=;
        b=u6o2le/Y6ponf40MIvv4dQitSwFM2fXFUNqzOcUn/qQOdb/X2nNsQbAvHsqmFHNP71
         XIw9X8iUzKOpczShH3RKbsVfGMd2i0c+iuOTpek1SuAt2QGkdme+vgSH9uEIjeY/DdLN
         VoRqt/dqaiCbJkBrgkmNlZfXgviwjEbNdARt1Lt274KWq8Pvn3OpkyZNiZf/BU1CTM1L
         ba9QIEpwVUOEkA+rFt7T67JuDPU3YDqa9VGbj1PXO0iZRFFJvBmYBCr1Pbu75U1g2QG3
         nP4xQlX83i3mHw+ygBXM28fRWtJlxqiK/hzWFUB3RByhpiXt5vqlxPYm7uPmGgHZI/dU
         bbcA==
X-Gm-Message-State: AOAM530tmdNJuz6VafKipL9/kjx/TFIgmGgtKoRDMjqAh+1xM9j0FaNe
	ucd4krWu3i5N9+raY1m7ht1PQE9rvOCTzLu5TgMOiSlHxo9pIA==
X-Google-Smtp-Source: 
 ABdhPJzZQVl6TrHFGp083vtFp9XfCMoz7PxyQ4FwkHz4VnskfRt1sHbeNEDKXw2URdKkTKndWvJw7CjdLMFnhsoQWjE=
X-Received: by 2002:a25:3890:: with SMTP id
 f138mr21612927yba.703.1640732143658;
 Tue, 28 Dec 2021 14:55:43 -0800 (PST)
MIME-Version: 1.0
From: Davis Roman <davis.roman84@gmail.com>
Date: Tue, 28 Dec 2021 17:53:51 -0500
Message-ID: 
 <CACfi_Z0ct76Dv9o+NU_Wf3Hz0Eb7Gcsbbds3AkMuy_1511jhYw@mail.gmail.com>
Subject: building image for Realtek RTS3916N mips SoC using vendor provided
 prebuilt external uClibc toolchain
To: yocto@lists.yoctoproject.org
Cc: song li <ghosty.lee.1984@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Dec 2021 22:55:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55680

Hi all,

I'm working on a project utilizing a Realtek RTS3916N mips SoC and as
part of Realtek's bsp offering, they provide their own fork of
buildroot packaged with their prebuilt binary toolchain.
I would much rather use yocto instead however Realtek made it clear
that no yocto support is available from their end and they have no
plans to provide it in the future.

In theory, I have Realtek's u-boot and kernel source so it should be
possible to build an image so long as poky is instructed to use an
external toolchain. This is where I hit my first road block because
Realtek only supports uClibc and I know the yocto community moved way
from uClibc, in favor of musl, since the Morty release. As a result, I
decided to use Krogoth-15.0.0 (knowing it's EOL) only because it
supports uClibc.

Now that I had picked a specific version of poky, I continued forward
with the EXTERNAL_TOOLCHAIN feature. The documentation references the
meta-sourcery layer as the typical use case. Using a sourcery
toolchain tarball ( 2014.05) I was able to build qemuarm/glibc
therefore as far as I can tell the EXTERNAL_TOOLCHAIN feature works as
documented.

Unfortunately, the issue I have now arises when I use the Realtek
toolchain.  meta-sourcery informs me that building against uClibc is
not allowed as it has been blacklisted. Only glibc appears to be
supported.

I have looked around to see what other projects are similar and the
closest I can find is the creator CI20 however due to the Realtek
toolchain being based on uClibc, I haven't been able to find anything
suitable for my usecase.

I would greatly appreciate any suggestions regarding how to proceed
forward with yocto integration, using a mips uClibc based toolchain.

Is there any other course of action that I can try?

Thank you,

Davis

