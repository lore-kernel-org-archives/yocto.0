Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C53EC433FE
	for <webhook@archiver.kernel.org>; Thu, 20 Oct 2022 09:09:35 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web10.7603.1666256971421903983
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Oct 2022 02:09:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=CPTjGEPy;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id r14so32446406lfm.2
        for <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 02:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CDXVZ+2VgtAvv6BNipL4j0n+7QWQT8qiW5aknkpxKbE=;
        b=CPTjGEPyVSKZtE2yWk+7hAj6mN2cN8IqZ7OumXPIxLze6T5Sm977kjKfW/Ym35yLOW
         ca1QKelyw7/P5HE2NAAjFs9lf8EpLB9qP4nYloscne3wUbjEDVFyNc5YsDFMVCRbd4Nx
         mf2cuJ8IQMoBcRzqkEHS13QvC37sCduIvoxxHpz6pHkBWuf+q3M7/0XxBWSEuSwJC90y
         IFxxwwUoAJFAIcGOr1geGvOfb+hKU839fahGwXIWM/A/8ekLmafQ4hwHQVaarMvmHH15
         SNuodo6HJEca+68ZGb1x0v1gRALrRCFkAL477qwV4vz65WbDrPvQZgogaZTUmkoGCMG1
         Dxrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CDXVZ+2VgtAvv6BNipL4j0n+7QWQT8qiW5aknkpxKbE=;
        b=2czTtooXxC7Z7gWEWjzox+3mIvOitYgZ4q6l4u7d1S1MfKlyuVu2rw8x4GWJ6MVkWz
         FDOvnAia/Li1Nze7rBPS+cbinhABcYH3a9AhxvTopoldoT0A6cQHCJ5ZsVm9VdISBUII
         gyem6P3eLod0oi+RRsERdoRVmCkYA6AysZcR35sQcs0rVNmQmcpZY0Z3hFxH5mwNE6GR
         5oEB8OrFZEhJZGqa9Rxd6M9l5pdeQcxzaUjkRXtqkNKXaCyc7jHrwQWFwwVCw8cryThe
         yYoI3EKLPjgOlEF3EhklRZKdLhM+w02y4/yZlI7yKg/81tBq8Cx1ZLecl/JGFHhz/Se7
         fLaA==
X-Gm-Message-State: ACrzQf3VjpESL4EZJuVAuR6ig0nOLjJFNnl2L6vZu81bJuZrsKZ8jeSb
	HiIREuULV6yPGziqc5H0TneadVS00k0zi2p1rnw=
X-Google-Smtp-Source: AMsMyM6o8tttcZqOkhA7ynbl5k0dMC2i8MpZSKZUCP+vTJIUz052a4EssZg+c7gB71NoPs0Cf20AFYHlEBdQnZg3T/8=
X-Received: by 2002:ac2:51bc:0:b0:4a4:712d:1b83 with SMTP id
 f28-20020ac251bc000000b004a4712d1b83mr4170473lfk.345.1666256969369; Thu, 20
 Oct 2022 02:09:29 -0700 (PDT)
MIME-Version: 1.0
References: <75ec6ceef6ad49b59ab966d928753cc6@amazon.de>
In-Reply-To: <75ec6ceef6ad49b59ab966d928753cc6@amazon.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 20 Oct 2022 11:09:17 +0200
Message-ID: <CANNYZj8+-s74wUnpuMVv93opbuoA1M5GzCNMjd6auJTsrg61Ww@mail.gmail.com>
Subject: Re: [yocto] devtool upgrade multiple architectures possible?
To: throos@amazon.de
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 09:09:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58371

This would be a much welcome feature. I suspect however that devtool
relies on the current target, and won't be easily convinced to update
other targets.

Alex

On Thu, 20 Oct 2022 at 10:51, Thomas Roos via lists.yoctoproject.org
<throos=amazon.de@lists.yoctoproject.org> wrote:
>
> Hi,
> wondering if it's possible when doing a "devtool upgrade" for a binary recipe to upgrade SRC rev for all architectures in that recipe. Or is this a missing feature?
> E.g. here do an "aarch64.sha256sum" as well when running devtool upgrade and not only "x86-64.sha256sum"
>
> SRC_URI[x86-64.sha256sum] = "aeec1a4fb34ffabbac931ba430601807133659a4bd02703c33044e80c925bed2"
> SRC_URI[aarch64.sha256sum] = "69aa5a95b3f9030e1fef5b5886e4c97f75fffa7534dc2c98e59ef402a819a0aa"
>
> Full file: https://github.com/aws4embeddedlinux/meta-aws/blob/942651026c7a91b9703609d7658bd1649350acaf/recipes-devtools/amazon-corretto/corretto-17-bin_17.0.5.8.1.bb
>
> If this is not currently possible, I can create a bugzilla feature request, but wanted to ask first.
>
> Cheers,
> Thomas
>
>
>
>
> Amazon Web Services EMEA SARL
> 38 avenue John F. Kennedy, L-1855 Luxembourg
> Sitz der Gesellschaft: L-1855 Luxemburg
> eingetragen im Luxemburgischen Handelsregister unter R.C.S. B186284
>
> Amazon Web Services EMEA SARL, Niederlassung Deutschland
> Marcel-Breuer-Str. 12, D-80807 Muenchen
> Sitz der Zweigniederlassung: Muenchen
> eingetragen im Handelsregister des Amtsgerichts Muenchen unter HRB 242240, USt-ID DE317013094
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58370): https://lists.yoctoproject.org/g/yocto/message/58370
> Mute This Topic: https://lists.yoctoproject.org/mt/94449752/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

