Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77B44C5478C
	for <webhook@archiver.kernel.org>; Wed, 28 Feb 2024 13:25:44 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web11.12953.1709126740962178294
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Feb 2024 05:25:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iW9NCRQK;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-512bd533be0so6593676e87.0
        for <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 05:25:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709126739; x=1709731539; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=85JNurS4ne9E2uwF/Nep9iCS2lt8s/Th6yn95cWw4G0=;
        b=iW9NCRQKiQ66xCw3WmauzORqNhdirix3nPA7v5YJtg6PNLjNf90xvnet+Y4U3J61zZ
         PCr/kcMzcaTSRnpB8IHbhxTHIBPAVWmHtdD9Pqht4GMh+OYaWVidLHQrhU0sIysTG12w
         CoUlcfkvzCfEcWFi62Y7THV1ZwruvFQTMqyisWk1u7wPvloJSx791gwa/fxBSOpzRaZx
         aO6uN66w2ZFqvcCrYKOiGuLMC9VJD8a58BlD+mJ8JN3lvVgdl12XZt1Cy0VtmtH1IujL
         GIZha3PwW5YTC4Al6tQCOJOCaShTjrIFbT+wGBdZn2JRGnF7u5gKgv/bqluGlb/fsdDm
         pL1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709126739; x=1709731539;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=85JNurS4ne9E2uwF/Nep9iCS2lt8s/Th6yn95cWw4G0=;
        b=hTelrYTkHaxzjIiD4Il7q7mpUSRuLPp/oywrXcqGFOGXGPNfLUgNBf6rKGlJWZbNUH
         J0JIjq2URreMflHJ++j5bLTS4ZwBNi1YzUcw95rWIotSI2UmpRHYBOeQqUv5iRbrMs+O
         xqeKRhqa2NLwbCa5J2XFV5y/Bt/HhtU6myjOMROvCPd2Fr0IaxgVMdk3Df0PVsAFf9ty
         WPRUk+brWMTCPh/l+FY1OpcZriHn/e/fEU9wphNYhapG5wIvXxAj3Tg+zAIGxiWGA84Q
         yqDXC9l+BYS7QAHMN0xgJtgF5ROs0hciKIEK2Jy2bvjA/TCONA53cug4Na9/MRS72+XP
         EVEA==
X-Gm-Message-State: AOJu0YxNn8+XOxrdYAdO/aAKCT4mMrqk6at4ZY12npKYpDXP+M+UOcnD
	FzLz3vEP94rEfqUNAIpxCrh4eRYOaCxiHVWEkaoI/k6z7t4amcWHJ7Z0mbsz7KCqwxi3+8Elmfh
	ZHM3zqXWTejeS142LHA/tv4EIHwA=
X-Google-Smtp-Source: AGHT+IHY7P3ce34pKx3A0kLZD+iNNSnOg8P7uhvXojngFJ/bW1o7pt8pqQu+oXnpiRpvtgsbqdnFyg6rSWjK+ehzOwE=
X-Received: by 2002:a05:6512:94d:b0:512:e85f:175b with SMTP id
 u13-20020a056512094d00b00512e85f175bmr7373924lft.16.1709126738891; Wed, 28
 Feb 2024 05:25:38 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj9rFXDjEUY6yzePKnVzwOA3YUPytYoZhORb8zae1nBjfw@mail.gmail.com>
 <31790.1709126255869582131@lists.yoctoproject.org>
In-Reply-To: <31790.1709126255869582131@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 28 Feb 2024 14:25:27 +0100
Message-ID: <CANNYZj9cRM0-MsC9+Dda1+4fatmRDYVOm5t=gATfO=_+W7V2QQ@mail.gmail.com>
Subject: Re: [yocto] dnf/libsolv vs. package feed with commit hashes in
 version strings
To: patrick.huesmann@desy.de
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 13:25:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62636

You can check if existing recipes in oe-core get correct PKGV into
package files, there's plenty of them, e.g. xinput-calibrator, or any
other that adds +git to PV (without zero at the end).

Alex

On Wed, 28 Feb 2024 at 14:17, <patrick.huesmann@desy.de> wrote:
>
> Great! This was exactly the bit of information I was missing.
>
> The recipe in question puts a hardcoded "git0" there; I have to make it interact with PRSERV somehow.
>
> Thanks,
> Patrick

