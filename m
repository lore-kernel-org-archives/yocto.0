Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09A6C5478C
	for <webhook@archiver.kernel.org>; Tue, 27 Feb 2024 09:09:59 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web10.8626.1709024991874083889
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Feb 2024 01:09:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=klcdj1p/;
 spf=pass (domain: gmail.com, ip: 209.85.167.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-512e568607aso4091458e87.1
        for <yocto@lists.yoctoproject.org>; Tue, 27 Feb 2024 01:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709024990; x=1709629790; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VsVM923c6gTntNhQ2X87890NEsXXaPdSLJqxlyKyWmQ=;
        b=klcdj1p/S+jZiukSy/4Zy/mPPXawD1zUpiRy8169jtNbZAx6V3ijgusXiZes2DRYXE
         Vf62VQDCKh09/5qk0u8p5CEU/UXGrkmu5Zd2dKHguSYXstU9E0OCW7Jh5rx55/XkH+nq
         /Slh76/8wF6AMP7Y7uCT4LFM5uDLKhTSwZIPJdqE9BDTC2DI3425g0AlI5dKVhW7+Fql
         B6qbGy8ANdk6uVLHDH8PnTe9UbkfsaMxLNReuqHTY2UbzfMprXcnFrTfXJ+7tMRHoM7t
         6g2381OEYK7Yft6zZzzlBq0XWYo+/dmtYY73LwrBVw/kJtTTrrnkvLNfwwNGU6nB4peW
         rhoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709024990; x=1709629790;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VsVM923c6gTntNhQ2X87890NEsXXaPdSLJqxlyKyWmQ=;
        b=kQp0RcnjtSF6Wqqif0ptYrXVZxpOCIuwd4LbSHSaDQljnyyicQut2qe5S05y04ANOc
         GmQipOqFBXXH3oQnLRdIvcOUXZftO3MRggscj7k2aRnowelhwxmGmp67esJ2mMVXDI8s
         g3LR/zZihkJwnRuljLK0RmI2j+hcC4mkImpGgrNBUlqmSTP0+0qsxVAWD1YiIXBzcSeY
         SPMN53z0khHrsmqlAHnjeJkBMNIl4Ihw3fclUyZX10HAdbxNXDPYugo9UghqsmojlAxs
         y8xPOm5N02hBLb75Utn9LCr+FlOLFIqpe2a7Hb/Ycu4/jFS9/avYbDYmVCYK21ITXI/Q
         0COQ==
X-Gm-Message-State: AOJu0Ywwlg3DZwQIGPbwq88qsD7cmG++rHkjxQUczFm63uvUE48oyI78
	IzYzhQheaG1j5jDo8Vbxse2Fx94RuX8qqqyvbVwIa0yL+VgIqu6Ku6phGnnuKrlyB8fOWNQMtXK
	rwIRFE2B5oWJoo8R7sFmAwtQO1MjSMLR5
X-Google-Smtp-Source: AGHT+IGxHO/7i7aTtW/EwUsfzrxgwTZ2f+7ARIaOJYtCLzs7PBYdviok3sNJzFx5hujG1rwL115QC4pFyHBc007+HPM=
X-Received: by 2002:a05:6512:3e24:b0:512:f7fd:e9e2 with SMTP id
 i36-20020a0565123e2400b00512f7fde9e2mr4581192lfv.1.1709024989756; Tue, 27 Feb
 2024 01:09:49 -0800 (PST)
MIME-Version: 1.0
References: <1599BD52-3B26-4688-A82A-F1AC31369B67@arm.com> <21276.1709018408156858522@lists.yoctoproject.org>
In-Reply-To: <21276.1709018408156858522@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 27 Feb 2024 10:09:37 +0100
Message-ID: <CANNYZj8e4dDDdW+2wpPtr1XcOXssz=ihpgePmzuqko6ZU_4iMQ@mail.gmail.com>
Subject: Re: [yocto] Yocto Kirkstone VPP compilation
To: yocto@lists.yoctoproject.org, miriam.rico@enigmedia.es
Cc: Ross Burton <ross.burton@arm.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Feb 2024 09:09:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62619

On Tue, 27 Feb 2024 at 08:20, <miriam.rico@enigmedia.es> wrote:
> Thank you for your reply. I already tried to use cmake instead of autotools but the error I got was that there was no CMakeLists for the compilation.
>
> Then I tried to set:
>
>
> OECMAKE_GENERATOR = "Unix Makefiles"
>
> But another error appears:
>
> Error: Unsupported flag --build=x86_64-linux
>
> I think the only option is to use autotools and see if the problems can be solved.

If you don't follow the advice you get, and do something else, and
that something else fails, then people will stop responding to you.

So please. I'll say this only once: do what Ross suggested, and if you
get an error, then provide the complete recipe at that point (so we
can verify what you did), and a full copy-paste of the error. That's
the only way we can help, and make progress.

Alex

