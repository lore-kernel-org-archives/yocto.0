Return-Path: <jupiter.hce@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C81A8C433F5
	for <webhook@archiver.kernel.org>; Wed, 19 Jan 2022 08:15:36 +0000 (UTC)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com
 [209.85.221.179])
 by mx.groups.io with SMTP id smtpd.web08.3815.1642580135573057301
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Jan 2022 00:15:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=i8SOH5xE;
 spf=pass (domain: gmail.com, ip: 209.85.221.179,
 mailfrom: jupiter.hce@gmail.com)
Received: by mail-vk1-f179.google.com with SMTP id d189so1031193vkg.3
        for <yocto@lists.yoctoproject.org>;
 Wed, 19 Jan 2022 00:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oiXkeDpPCf+YsrJNyI+dMQgrppLAB9Rp9I5MR13jKxM=;
        b=i8SOH5xEkGyB7vRJZGcu/iosIFM7E0HXMmgKWRAPwW2z/mQCk+1gMV86JV8XHRFwa4
         0tgyss4X68r0lr0YJkAhL2O3GOTuVYWfNRuctp6Av4LY9va2XAye5TNxwyVLBoj0awBa
         em28X+l0KGLdQugtriXOA3/+Iqz3DE7750cr2W+mTZrP0QxgujY7e5nhxmMfLO77R0gy
         xi3Uom5pgzjTOx5GITx3+ZIYOVv2YXd9/HiSZ8Pugg5fzdsM1MZ8QtLIh/jFMIby4V8B
         Z0QnNG6XHKF6UBOt0OUiVXDKWtLBrYnLSH71BVF+07NjT9jeMAzbdq12TrQ1xQ+Q6iSj
         uvsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oiXkeDpPCf+YsrJNyI+dMQgrppLAB9Rp9I5MR13jKxM=;
        b=R3EUpO2xq5T0tK43j1/9HlEVL8avr9EnJny/xvgNf/yQ+M0VqIp/CXgCpMlG+HVcnS
         B6wIST3kqRFvAIzPbMmtZ3iAh6Pjk+Vj5nkufXXSFH8ebp7wB6ab3TnOBcnxz3BcoRNl
         tp05B7Z6wi2s519XZzkgdkFagqIWWCThoZ20l/KXY2N3y/vupykk3hS0/ZA8y2Z99n3f
         2DaRCfckmpsISf0pRfe2jPEyv6osQYyAtDNJ7dNJPm+NyNzfKPYbnDijqJBiPjrJY5vg
         M1QrX/IWwQFU2FhOyk61N7fTX+lonaEi4OgNSOTXQpnTZ5xFv4ncoW7taqQ3/uZxbSHl
         5eFQ==
X-Gm-Message-State: AOAM532O881RtkkMSkC6ktDQCKkfeXPhaEZdC6JnqlN+zM/mRC8z75ar
	NYlV9yZWMW0sP+poSFkRagt+hyoyxX1HD9NtIJy69OL3
X-Google-Smtp-Source: 
 ABdhPJxz71luEh+4+q+wFoQNiJjF59Er6oGvX4tPgut+pkC3FiTKJuxj9u59bxNv0zBuwmQzL5jh3FAwU/McCgtR6wc=
X-Received: by 2002:a05:6122:d84:: with SMTP id
 bc4mr11474958vkb.22.1642580134612;
 Wed, 19 Jan 2022 00:15:34 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAA=hcWQM-eZicZGUt0gNQWoC0Ui5D2=08KgLyPs34Pw5Z-ZZwQ@mail.gmail.com>
 <414.1642571736890055031@lists.yoctoproject.org>
In-Reply-To: <414.1642571736890055031@lists.yoctoproject.org>
From: Jupiter <jupiter.hce@gmail.com>
Date: Wed, 19 Jan 2022 19:14:58 +1100
Message-ID: 
 <CAA=hcWRq75O-D-d+a30zg1AZRZvYd=wpUdGTK4GnhSeYsAVhaQ@mail.gmail.com>
Subject: Re: [yocto] Honister broken WiFi communication
To: tomzy <tomasz.zyjewski@3mdeb.com>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Jan 2022 08:15:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55908

Hi Tomasz,

Thanks for your response.

> Are you using custom Linux kernel / custom device tree? Maybe there is
> some issue there?

Yes, but the Zeus build image uses the same device tree that could run
WiFi connection without any issues, I am comparing the same source and
configuration between Zeus and Honister, the only difference is the
two different OE Yocto versions.

Thank you.

Kind regards,

- jh

