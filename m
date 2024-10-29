Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8901D2AB26
	for <webhook@archiver.kernel.org>; Tue, 29 Oct 2024 11:53:51 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web10.17354.1730202822637198638
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Oct 2024 04:53:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hg3RUtrG;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2fc968b3545so51821291fa.2
        for <yocto@lists.yoctoproject.org>; Tue, 29 Oct 2024 04:53:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730202821; x=1730807621; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8Isxqvny4UwFNUPqnvbuHAZF2cyAxUmussxyYcP0TY4=;
        b=hg3RUtrGflUF2RfIlGAXBiiWWD/FfNWFdQ7nMZyjN5nS2GgwgdcWVyh8zjE/vlN1BH
         JaN5+sazrK4/rnaiiTKW/uJJDsGimxDxGnor46Ih5flGwseR1Iv2PVVtbR0mTy7dAgbb
         8UDQYANJDfdhAGYLqfnMixlZytafSjl99fo82va2LP6uvt8xlpYYb4NuxpRqESgGt0rX
         a/YdYFAy2ta8cM+bYrXEKGLwebC5zyREFNVD86TcfXg36ZmvmtKvf3usg3YKhIY++FpN
         BrhcfSMIhbj1nXjqfnTHoDfLRs6GIXqHl1lHN6iUIXBkS0x9MH+z+FFmEachxw/iX6xO
         8a1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730202821; x=1730807621;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8Isxqvny4UwFNUPqnvbuHAZF2cyAxUmussxyYcP0TY4=;
        b=U6xuTe1kikVuTYzm+9YIcLrmilohLU0KD5aDVSUru2s9NYtk6s5hhsRUUk80mdIjJg
         349UUvXouNJYiIjlgo99uG4lwidjDONcNaXjCr//eQc1SkuqF5Hrvp7o3ysmCvKVwl9w
         EkODctkw0/iQ8WL+5Y5Rrabtf/KHC+S1iB5cEFh8qw84uFRW9iCM8a2ysnufPoBS6kO4
         LxowM2mNron6cGtD8UuDD5csCatGVQQTKjv7gksiL3m7d0EqMNri1uUAivvfu40ZkCfJ
         Pw1mr5OxqUWVDPtkVsfpWraFwwglKAVZ1PM4NLOd5WCFc0Yx3d7vvyz6VMsKcW4WOAEv
         8nug==
X-Gm-Message-State: AOJu0YzLqaAsauOHhF64Dl0OsLQ+aFR2RTZaCEwXDCGt67FdTOa2k42r
	uHsM2Q9/jYas4MjLuWhm8aKUiAKTVGLK4WXNg6Q6mmGQbDejW5XZrgL3G8Tu6Y1cVGz3/yMNi36
	LC97a+ZemjPfPeSws4ztLg3UeM2lAFg==
X-Google-Smtp-Source: AGHT+IHamAIb0kP/58QUsXyytvhup9ZNMRF+enfyXJHv6XSpAn2qBhFbL85jtVyL5gZ9GZWhX0PIsx1LRSoPW0ZDE9o=
X-Received: by 2002:a05:651c:1049:b0:2fc:ba7a:c97c with SMTP id
 38308e7fff4ca-2fcbe095f32mr40904821fa.37.1730202820401; Tue, 29 Oct 2024
 04:53:40 -0700 (PDT)
MIME-Version: 1.0
References: <P18L.1730202521303663000.RHHQ@lists.yoctoproject.org>
In-Reply-To: <P18L.1730202521303663000.RHHQ@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 29 Oct 2024 12:53:28 +0100
Message-ID: <CANNYZj_Au_rJn9rvTJit984CvYtRzOmY38P=JJ_E-fiEJi1jjA@mail.gmail.com>
Subject: Re: [yocto] Building SDK fails after update to scarthgap
To: yocto@lists.yoctoproject.org, freddy.boman@bastec.se
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Oct 2024 11:53:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64167

You first need to find out why it is enabled in qemu build config, as
it's an option that can be switched on or off.

Alex

On Tue, 29 Oct 2024 at 12:48, freddy.boman via lists.yoctoproject.org
<freddy.boman=bastec.se@lists.yoctoproject.org> wrote:
>
> Hello everyone.
> After updating our internal distro to scarthgap I am encountering the following when trying to build the sdk.
>
>  nativesdk-qemu-8.2.2.imx-r0 do_compile: oe_runmake failed
> .
> .
>  [87/4472] Compiling C object libcommon.fa.p/hw_display_virtio-gpu.c.o
> | FAILED: libcommon.fa.p/hw_display_virtio-gpu.c.o
> .
> .
>  ../hw/display/virtio-gpu.c:36:10: fatal error: virglrenderer.h: No such file or directory
> |    36 | #include <virglrenderer.h>
> |       |          ^~~~~~~~~~~~~~~~~
> | compilation terminated.
>
>
> Building the image as normal (not populate_sdk) works fine.
> Tried adding libvirglrenderer-dev on host but that made no difference.
> Building on jammy.
>
> I have no actual need for virgl so removing that from qemu would be a simple solution.
> So if anyone knows how to either fix the problem och get rid of virgl totally I would be most grateful.
>
> /Freddy
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64166): https://lists.yoctoproject.org/g/yocto/message/64166
> Mute This Topic: https://lists.yoctoproject.org/mt/109275322/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

