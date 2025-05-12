Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E8D5C3ABC3
	for <webhook@archiver.kernel.org>; Mon, 12 May 2025 09:48:24 +0000 (UTC)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
 by mx.groups.io with SMTP id smtpd.web10.46436.1747043298917276102
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 May 2025 02:48:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jG4e4mlO;
 spf=pass (domain: gmail.com, ip: 209.85.167.180, mailfrom: alex.kanavin@gmail.com)
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3f8ae3ed8adso3094418b6e.3
        for <yocto@lists.yoctoproject.org>; Mon, 12 May 2025 02:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747043298; x=1747648098; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ecblyYAxcFgxcKai3/IOIy+23ZIg3MPBtNxST2Naxhs=;
        b=jG4e4mlOhg3XBoMyah01uPynHJ5XGz3EHLB+PXiX2aJ8W4n8Mv14kRz7Zl6Y4UjRor
         zJ0cDWfV1LnIWB9Izq0in4euA9a/NE3wdwxSQ6RyHdPZWJ1hn0XdLzMm/O0BYKZqiow0
         Rbdm9cCabT9ZdcIED6sM692YY+2I0S/4M8oSuZFMHR6HbibcDUWG1vqiP1Aq5l7ufYqx
         c/x0INMVB9X+nJJ7gqo/zCWodk3/BC3qH7CU1Hy+8tOVjpvXKFmpR5b9rf1VSAOpEU19
         F/KQ0MLwid/ODgEGRSrQgKJDm6r78JVSCxnLvygDILxj6xyKjyblGxuV0+e392rsbgA0
         TF0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747043298; x=1747648098;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ecblyYAxcFgxcKai3/IOIy+23ZIg3MPBtNxST2Naxhs=;
        b=VSmXPwQ6PgfdrCmJbqIVV+AbqTTa6NfVtSktl/+LxIYT3WWIe1n/sKR9DM4Z0f63+X
         z2ApZenwX8OVcFu/emGBU/enCWXgytvHZUdfAwjBMxwNxcr+K3EQs6x/0lMApEU4+y+U
         8Aysb9kToQN+tTDvpKXQ6+CsJsGBFkJ8kNMAIBfBw6OUlSLPk9JIkU6/y/Rtg9lrvY9d
         lVZSFFNEFG8i+hjLd1UTtxT0+KDeFcLKece1MnpEMivOrqBwutznTBCWkAT/YKFdGCho
         uu2ZxbtJWE37Ouy1C/75CQB6rxTH+hiKNTTSXEtMY5mQG6hfg37fVtT4wczTU30++qAR
         4+qg==
X-Gm-Message-State: AOJu0Yyy7Zd3yfBPEthXcDjSyq/9yj8PDFQW8/DBaG6kg9SbuxfGnxj0
	6/AlkLtOOOYLFibRxWjmy1Z6m61tZc8ZsTmYyBwBZ8my/auNabpkTTR21EqR1iybwO/N49VjRDp
	JaAzCAHk72uy8os/ZIp3y+4R8P1YKPhSx
X-Gm-Gg: ASbGncsMZ4WqhUgZhWythf+DbLQvAK3EvZKy2qsnue5HfZfU14z6jTqEhPfLydUWxI4
	1KRPmDD5XSr1FR3uEqVwF9JIQ/7jBEBXr3yOtIEKcogQk3zGknQ+DrRCQWpZdKngQ3KG2eK302C
	QkuG/lzI1zOdXkLDsSh0Knw/MNz8fwZTyVCw==
X-Google-Smtp-Source: AGHT+IEkXMoKuRj2cKTRCp+lt2Y4mscLkW+Az+VlvlKajcUslxQhvOdpem7CXPEc32QPZMtljK9iAhNA1XU5WAOGfhE=
X-Received: by 2002:a05:6214:300e:b0:6e8:9bcd:bba6 with SMTP id
 6a1803df08f44-6f6e47ba09cmr220031136d6.7.1747043287028; Mon, 12 May 2025
 02:48:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBnjKUfZ4EYtWNq0AxhrEADs3Eb9NXBvEfW7pRdzYcw_cHw@mail.gmail.com>
 <CANNYZj_9p6jcHsmcEaVC4fVNxkqzutf6LNVVZ1unCOww9PmXig@mail.gmail.com>
 <CAPJWBngyka7VtCjaSHbeag0Yno9yTO9Tfk3v=KZyhiAUnT+9nQ@mail.gmail.com>
 <CANNYZj8i4KVmbngNc8p6_hk8HZ6s=tSSpFc1_73pVME2mLuddA@mail.gmail.com> <CAPJWBnjmcyVr_jsZQcETVRRxGPrd+YixEJNeNNdT_ekdgQmJ=g@mail.gmail.com>
In-Reply-To: <CAPJWBnjmcyVr_jsZQcETVRRxGPrd+YixEJNeNNdT_ekdgQmJ=g@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 12 May 2025 11:47:56 +0200
X-Gm-Features: AX0GCFsbWr5BVD45wo6aMc3qua1ttE4wFQj7HeaRMHluuyYSCCWXp_YSkzEJ9Bg
Message-ID: <CANNYZj-ueyYi25EBbg=OjKLsd1GhUFqpqSwipVPjN_d1uDbeyA@mail.gmail.com>
Subject: Re: [yocto] Size of production os image
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 May 2025 09:48:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65312

On Mon, 12 May 2025 at 11:36, MOHAMMED HASSAN <hassanchattarki@gmail.com> wrote:
> Thanks for the update.
> Btw, can you let me know what a production OS image size would be for yocto based devices. Just an average number.

You can set up plain poky master (no other layers, default settings
and target), and build for example core-image-minimal. Or see the
sizes here:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.2/machines/qemu/qemux86-64/

Minimal image is 40 Mb. Full command line image is 350. Sato (x11
graphics) is 500 Mb.

There's no typical average number as such, but it is quite possible
your image does contain something unnecessary and large.

Alex

