Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web10.3196.1610725428392328681
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Jan 2021 07:43:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=cEOnNSGS;
 spf=softfail (domain: sidebranch.com, ip: 209.85.160.180, mailfrom: leon@sidebranch.com)
Received: by mail-qt1-f180.google.com with SMTP id d15so841407qtw.12
        for <yocto@lists.yoctoproject.org>; Fri, 15 Jan 2021 07:43:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ybMDT7Gbk0seq3eaqAi+N8rdweVPd2Y2iY/X0CLE+1Q=;
        b=cEOnNSGSj7ZzO3mUZWPk2J2h5Mp2IjdnevXef5kLsQ+OLe17zsDEWnrjkERPeMu1u7
         X750WpWYzaRoBkdy8Ch2jGwXe9Fv966JtdSzrxInr2FT7tpj5V+t4pcqex89tdiU0yI8
         bfT2OyuLXCsMYGHZ0ZnASjR01BwUswAKVcsgiagxpOs2DnxXd3zVZ7/tNOAVIm6iLbTJ
         qsQSnsZGosUKBwZqBFcXs1VvuOB8DRtgrRS8PM2eMzlrtNuUO4kgYB5JMFiJKuhObr7t
         AupwmYRN0sJthv4ovtt+yfjuU+VaIa1wR4rCbHWcJxvrjwdlsIoA5EiMnBVZqYCg9yt2
         5R3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ybMDT7Gbk0seq3eaqAi+N8rdweVPd2Y2iY/X0CLE+1Q=;
        b=TkrRpWva4ScdQZarzOdneXf7I4EqjhHQcXTNlc6DaGVgzIa/eL6Wz6FNeHwBuzcHka
         FoypYFXKRAa0MQKNHZPc5DjVUHrOIvCRgllXaV7QKk3Lf6bRzk5byCGcPqgu8UaYzpHL
         yz18egA0U+rsxBLonsXAEjH5/9u6TogEhq6/UOL2vxGehgsaQGuirJUx+QmFadYfsUH2
         MO+q+datsahOLZC8g92Xx7VCxqoFlxq2W/d8hV8RmPvfIfs/hjn/ah7mFXPO88NZAWVM
         z7E5yN/YUiXJkDCk+M5d8IoROaJ92mTE6GyYk1uJzFHzRjrMq6/NXGle+4bTlXyNsiVg
         P0Ow==
X-Gm-Message-State: AOAM532yKDiLedylL0W1nmCCJcafNC5dKAaKIR8cnzGlcNz7SG4PDba0
	lZlx7JXWpX6k/pWUOfjF7e9ktEYjd9FjPNbWOO1LGg==
X-Google-Smtp-Source: ABdhPJwmvr3wPlkkNJuvGZ+sWIsMLZIdEMyR6k/21Kfz62td5Kyx3/D9diaXsEKdBm39u0Rxn0P8FaQTLM1a3fFMYog=
X-Received: by 2002:ac8:5d45:: with SMTP id g5mr12396241qtx.247.1610725427426;
 Fri, 15 Jan 2021 07:43:47 -0800 (PST)
MIME-Version: 1.0
References: <CA+FhBv-OVqNQ=SoPVGABBxyOHxuXxoJAkJ=bccg+Su6FQOasLw@mail.gmail.com>
In-Reply-To: <CA+FhBv-OVqNQ=SoPVGABBxyOHxuXxoJAkJ=bccg+Su6FQOasLw@mail.gmail.com>
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Fri, 15 Jan 2021 16:43:36 +0100
Message-ID: <CAMjhiJj+ZVY-iHvpAJWd83A6zO_JJFYk7rbj_6yVbMm7hSkkTA@mail.gmail.com>
Subject: Re: [yocto] cpio issues
To: Damien LEFEVRE <lefevre.da@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hello Damien,

On Fri, Jan 15, 2021 at 3:48 PM Damien LEFEVRE <lefevre.da@gmail.com> wrote:
>
> How can I keep the initramfs with cpio, but disable cpio archiving for the rootfs which I don't need or use for anything?
>
I have this in my local.conf:

IMAGE_FSTYPES = "tar ext4"
INITRAMFS_FSTYPES = "cpio.xz"

It does depend a bit on your image recipes and classes if this works for you.

Regards,

Leon.
