Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BEB2C636CC
	for <webhook@archiver.kernel.org>; Mon, 20 Feb 2023 17:27:01 +0000 (UTC)
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
 by mx.groups.io with SMTP id smtpd.web11.19569.1676914012686648457
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Feb 2023 09:26:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=H1Bx04dg;
 spf=pass (domain: gmail.com, ip: 209.85.160.43, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-172242a14d4so10202fac.9
        for <yocto@lists.yoctoproject.org>; Mon, 20 Feb 2023 09:26:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TC6Sy21hr1+dvbmfOXwaL5iSImsgvhRXpe6tDI9GxG4=;
        b=H1Bx04dg6SgrKp0TdWWOK7pihXiJP2N35kUgQaTL8T8wVjUctHa+tQhSpqxpZPQgaX
         tAPU9bIBo0w1btcoyBl5ElwIx+noUTFdcWJehLhwOFQjZOsEi4S8dLumb4JQGAj18JFR
         SJCsDtxzZbtTuLosWR1q4Mmsbmquh2mgaDPeSgU9EljsOlpPefLDhHWHGC1A4WfkufSN
         0It/jY5BKEUK/urfBbiLa6QhH5SDPXONPZuDWGBr/AxLBqetoKkrNyNMQbG53eqWofaG
         UCMi27JaC9wVe8Nvs44++8lQIdIaB2+PPj3nU0mwAQH5vNdSpq/ZOkyDsM3pPeADb/x/
         pZFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TC6Sy21hr1+dvbmfOXwaL5iSImsgvhRXpe6tDI9GxG4=;
        b=cEj7FRRJIPSmF38vjPHIBUJcCVgrTBmBBk9HUQxh9PHGtEKA7Dc9dh8eszq7071Ny0
         hy+gBxGeRlmsj8sTH22lvpyU0bLaXJ4i8N26vAE2ZracBek7Ufc7PKqoKgyDe1+edYzb
         ysfp+n4MCutk85EwB/Y1p5Ph9w16MKzPCt8czQFuX5zCxIv1mE3B68v+ClfTpuBjEQa9
         L2wNLK9dbKTY1VHL3shGXb0OByvaYyWhwyfD3wSxtYZb/iEo8CBLOhD6oyNzxqpV4N0z
         BxHhFm4BmAu/Y/Ucqk5jUl5LtPc+eo866lGrKSMBLqEzYMlzcBB+ucGxNUs/tFVbcypq
         ojmg==
X-Gm-Message-State: AO0yUKUZsZDEGY2QsHye6Ove07jldBnhEIpd+GmifBm0rbFoqZy4xmHv
	f1nyG0dVBNY/9ySkLxStqfsRRinGZCH9qwCxOOU=
X-Google-Smtp-Source: AK7set9x3Kw1xdI1Gnmkw0ISjw8xvYeRf2/J2NFdsHKqdM/TLrNFf45Hsdx1pFhwzNThPkJaRr4R2a7CjaHonwtScWE=
X-Received: by 2002:a05:6870:d1c9:b0:163:767b:82cb with SMTP id
 b9-20020a056870d1c900b00163767b82cbmr1045413oac.277.1676914011480; Mon, 20
 Feb 2023 09:26:51 -0800 (PST)
MIME-Version: 1.0
References: <CADBJ=yGzAccChDkYKvf7191p=FT71NwVHQ8y0pqV43mqh1DCEw@mail.gmail.com>
In-Reply-To: <CADBJ=yGzAccChDkYKvf7191p=FT71NwVHQ8y0pqV43mqh1DCEw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 20 Feb 2023 09:26:25 -0800
Message-ID: <CAMKF1sq=PHNJDNvdiu1Jtp69uJq0NDWNwq6iJ9Z_+-v1qi4PaQ@mail.gmail.com>
Subject: Re: [yocto] Can I specify a prebuilt version of toolchain only for
 kernel building?
To: "Y. HB" <sprhawk@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Feb 2023 17:27:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59256

On Mon, Feb 20, 2023 at 7:40 AM Y. HB <sprhawk@gmail.com> wrote:
>
> Hello
>
> I got a board (Rockchip RV1126), whose NPU driver  kernel module is
> distributed in binary form, which requires specific kernel version
> (4.19.111) and toolchain version (gcc 10.3)
>
> ( I built the yocto with the specified kernel version, but using yocto
> shipped gcc 11, when I insmod, the driver reported invalid module
> format, and modprobe reported invalid exec format, I guess that is due
> to gcc version is incompatible )
>
> I'm building the system with yocto kirkstone, which ships gcc 11. Can
> I have some way to just specify using external toolchain with prebuilt
> gcc 10.3 while other system still be built with default yocto shipped
> toolchain?

before we start on that path, perhaps verify that you can run the kernel
that you build with gcc 10.3 externally but manually building it and replacing
it on target
you can use a prebuilt toolchain from
https://toolchains.bootlin.com/releases_aarch64.html

>
> I have seen meta-external-toolchain and meta-soucery, but it seems it
> will replace whole toolchain with this external version. Can I find a
> mean to just specify for building  kernel ?
>
> Thanks
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59255): https://lists.yoctoproject.org/g/yocto/message/59255
> Mute This Topic: https://lists.yoctoproject.org/mt/97088202/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

