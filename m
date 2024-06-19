Return-Path: <mehmet.fide@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07184C27C53
	for <webhook@archiver.kernel.org>; Wed, 19 Jun 2024 17:04:35 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web10.26629.1718816664677599502
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Jun 2024 10:04:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ruc+TvkI;
 spf=pass (domain: gmail.com, ip: 209.85.221.47, mailfrom: mehmet.fide@gmail.com)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-361b376236fso4537f8f.3
        for <yocto@lists.yoctoproject.org>; Wed, 19 Jun 2024 10:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718816663; x=1719421463; darn=lists.yoctoproject.org;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:to:from
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tqKg2hUofH/1NV0M+SVuthJk8xTh7/Ogn64pY/yNWZ0=;
        b=Ruc+TvkIGhe2sRf1nJHNsjbjSYccw7NZI2ySRlq5G3KLz8PA6cVK1R42p+TL1XXDmN
         4i26qAP7f4mY+FodlDgP0zxmWvi/XyWaIsfosgiSCLcn5dLFZLH5sGUuFc6yiRJkX6LT
         mD+UWFKZUZoT2IBO5nnNiNrbHSua4b1+2O254Jf9oyPsMOET04bB0xIwzVsB3A7tMG1H
         oLnaR+s2Uqe9TozafsipURf2yWfpmmWMc/5kbUYuCrQrysp+9ty+5Tv8aqGtHChBYadb
         TJCzgc1zkOVJDvsYYwwOi5k1WYMQpduQaG9k0HlmQInpg9kt5gjf8elXzdR4PnrEdVhZ
         iGXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718816663; x=1719421463;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tqKg2hUofH/1NV0M+SVuthJk8xTh7/Ogn64pY/yNWZ0=;
        b=CRCaptPOwWYWYZFOM/f5Lztmq281XTC2WfbQUR7Zx5XwGcWXBEBgnKzFJIBiXuWfMK
         bFOXCoguuCnq3w37rOZq/sEHZJ0bRnSEmu6+9183wQo6BOmP7bCUeughw+aj4lOGcOUq
         I5rKR5mv9ReHXYpDnPSAfNE9Xqvl6Yh3b3Obk2K25a5wAuDX8msluLvtKgr8+Lo7G266
         Sj8iqp6cYu0nNXmkyfuCp49FOkStha3q/6H/9NJc12OisXqh6Zt1VWFZP2ZQIqd/PHqb
         ypnzg3IjdmIvP9IlPAhYlQQqqvsYCAqxGoKC3+sMrCTD/zqDM3gXwEe5Ifm/E3QYUuih
         juEA==
X-Forwarded-Encrypted: i=1; AJvYcCVSLX41o1ptmaolxG7H2VdjcDLgooMnlPWNSiBVvxcL5HruabFFuHjgpeEg/moAP0CvLfEjIYQHqo9d6SF5A4M6UtN8wM7BGKelo08I
X-Gm-Message-State: AOJu0YxC9PsZgBOyN0Of7EfHylRI/IFxPHagn3ZGMb8sgw68xU9zOpxJ
	Tbqcn8gEUD2ks1zPeqdn4p0vYfnETaJRX62zn4NoabdtKKV05t6u
X-Google-Smtp-Source: AGHT+IH5M/erferEL4cUann3HM6HdobMWP6gEvTEWK6icjXA+bXViOXpgBhR3ZbfpVMaVk9cttXBYg==
X-Received: by 2002:a5d:6443:0:b0:360:73b0:e58e with SMTP id ffacd0b85a97d-363178982bfmr2298782f8f.26.1718816662792;
        Wed, 19 Jun 2024 10:04:22 -0700 (PDT)
Received: from fidepc ([2a04:ee41:3:736a:5dbe:ad5d:edf1:b583])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-362e90f2322sm3609044f8f.9.2024.06.19.10.04.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Jun 2024 10:04:22 -0700 (PDT)
From: <mehmet.fide@gmail.com>
To: "'Alexander Kanavin'" <alex.kanavin@gmail.com>,
	<yocto@lists.yoctoproject.org>
References: <CAA7J33X=Zydis3=9AMxgA4vWOKYhgySq8tPoYwPhT0vh7WMYDQ@mail.gmail.com> <CANNYZj9w8tQSWCLERavC2NXMdS5i=QrimoZ1vGoF=8LNP0wVdw@mail.gmail.com>
In-Reply-To: <CANNYZj9w8tQSWCLERavC2NXMdS5i=QrimoZ1vGoF=8LNP0wVdw@mail.gmail.com>
Subject: RE: [yocto] Dropbear and deprecated ssh-rsa issue
Date: Wed, 19 Jun 2024 19:04:22 +0200
Message-ID: <000001dac26a$bbe3a070$33aae150$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGklZGG090QSihqIQYjKCOtrzCPAgH2vsvysivywxA=
Content-Language: en-ch
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Jun 2024 17:04:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63366

Yes, I believe I can do that. But there are couple of options, I'm not =
sure which one to be followed:
1. Replace rsa key with ecdsa and continue with ecdsa support only. =
(this disables rsa mode)
2. Keep rsa mode on and also activate ecdsa key next to it therefore =
they can work side by side simultaneously
3. ??

Thanks.


-----Original Message-----
From: Alexander Kanavin <alex.kanavin@gmail.com>=20
Sent: Thursday, June 13, 2024 3:28 PM
To: yocto@lists.yoctoproject.org; mehmet.fide@gmail.com
Subject: Re: [yocto] Dropbear and deprecated ssh-rsa issue

On Thu, 13 Jun 2024 at 13:20, Mehmet Fide via lists.yoctoproject.org =
<mehmet.fide=3Dgmail.com@lists.yoctoproject.org> wrote:
> I was silently following the email list for a while.
>
> Today I have a question regarding dropbear and its default recipe =
provided in poky/meta/recipes-core/dropbear.
>
> It has been 4 years since ssh-rsa is deprecated by openssh followed by =
Linux distros and Visual Studio 2022 as of 17.10.
>
> As I checked today, the dropbear recipe with the master poky still =
uses ssh-rsa instead of ecdsa mode which is widely accepted today.
>
> Don't you think that it would be appropriate to change the recipe =
content to use ecdsa instead of ssh-rsa one?

Yes that would be much welcome. Can you work on that?

Alex


