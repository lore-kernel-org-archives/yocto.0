Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BE7C433F5
	for <webhook@archiver.kernel.org>; Mon, 20 Dec 2021 09:44:59 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.3544.1639993498230946264
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Dec 2021 01:44:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112
 header.b=LZVmXofa;
 spf=pass (domain: burtonini.com, ip: 209.85.128.44,
 mailfrom: ross@burtonini.com)
Received: by mail-wm1-f44.google.com with SMTP id
 p27-20020a05600c1d9b00b0033bf8532855so6232636wms.3
        for <yocto@lists.yoctoproject.org>;
 Mon, 20 Dec 2021 01:44:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=801hGIR5oCrbE6TBcKjvHUx8W0x5+8mTZwsmYw8cV50=;
        b=LZVmXofao7nHfwgTYF7/ljeP/p62sf1meFEKVva5F+FsfrVn3itXCLC8ZnHi9q2gEn
         Ea7WWBUppb0Hjs07vdk7TyDwIclibITXrPkOzYL/EELLqVHMPEmSY/mcjxQBq+weuMm1
         pEIpTyIFRC3Eq3itB+ZJGty/U222V/Jg1/R7LG7ZoxzSEkD/N4X4BNQE0KKPBcoSjzZo
         ZTuh+8ta6WFFHvxvZJA1kJlVbvTHPHbOl8pN0WQmULHHizThSqsa37z9Fso+yOqnkUSl
         ZT+kRbQREBIwThabyngxsoSEmcXV73baheLK0xROhkezEjc8ZDowKt4RMFPZTytUOePG
         9TKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=801hGIR5oCrbE6TBcKjvHUx8W0x5+8mTZwsmYw8cV50=;
        b=C8kAwIU/ukWMUcLMbFQ7GgoLUd5MwcCWn0pkRfnRWmFS/IFejLy1xjkhgm+D33jB+b
         6xWBg8qQwr1Jtr1QbnmfYrnb2yJ/i91GtPPx50ew7nCbNGyEs3rz6A82LaWVamxJxHq6
         Ll27EFtNzOhMAV/Gl2rJyZHdU3EAUbkpmbyA9IqAr8/7b1ioBJwBdAVzOEEMG/JNnGdP
         WWhd46jXVihhnDUDerq5lA0T1+0uvVGkUbOOC8VXq6bvtt08aFa1d/xuKVCxb2q1ecc6
         x3jxWQse+hPXBuBdginxW+QUUVmWwSHGjnYXSwwTslCGUj+WT75ws9WWe7lBpZEqUIHD
         lXPQ==
X-Gm-Message-State: AOAM530kdA9YCy6DVsiCU4avwb74/YKkcePmuL7no9U4MesyNndQewH9
	by4fI5yhuBDvnQB9S/SwT+furmi1v3j44hoR23vFoA==
X-Google-Smtp-Source: 
 ABdhPJwAwobfd3A2u65PDhKS68dWaouEpWxw2gv4pwY92QLn6gqcqiJcPzqcO5A1Wo1OKNe7/BIR1C52xjk8ZfupQSw=
X-Received: by 2002:a05:600c:4fcc:: with SMTP id
 o12mr2077957wmq.184.1639993496395;
 Mon, 20 Dec 2021 01:44:56 -0800 (PST)
MIME-Version: 1.0
References: <JYAK.1639861968198864101.2cCQ@lists.yoctoproject.org>
In-Reply-To: <JYAK.1639861968198864101.2cCQ@lists.yoctoproject.org>
From: Ross Burton <ross@burtonini.com>
Date: Mon, 20 Dec 2021 09:44:45 +0000
Message-ID: 
 <CAAnfSTuNYheK-XA10HMLGtzA=bHP1+w+v-Yt+=e_xjbX4exPiw@mail.gmail.com>
Subject: Re: [yocto] Software Port
To: rashmipisal@yahoo.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Dec 2021 09:44:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55623

On Sat, 18 Dec 2021 at 21:12, rashmi pisal via lists.yoctoproject.org
<rashmipisal=yahoo.com@lists.yoctoproject.org> wrote:
> We are planning to use an IMX8 processor and wondering if I can modify the existing embedded Linux distribution created using YoctoProject to accommodate the new hardware changes, or I will have to make the latest image from scratch?

It depends on how much RPi-specific software is being used, but
changing MACHINE from raspberrypi3 to the relevant BSP for your IMX8
board would be a start.  It's entirely possibly that is all you need
to change.

Ross

