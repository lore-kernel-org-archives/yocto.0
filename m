Return-Path: <osama.abdelkader@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB66D0EE22
	for <webhook@archiver.kernel.org>; Tue, 25 Nov 2025 20:15:39 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.3388.1764101737704658718
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Nov 2025 12:15:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WnNs8+oN;
 spf=pass (domain: gmail.com, ip: 209.85.128.42, mailfrom: osama.abdelkader@gmail.com)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47755de027eso32070835e9.0
        for <yocto@lists.yoctoproject.org>; Tue, 25 Nov 2025 12:15:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764101736; x=1764706536; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=B/ajuzIoEZBr9d69arPz3m/iHMyMbmnwNsLsK+C9nkc=;
        b=WnNs8+oNw0kZrKfeXL9qgnfob0C/2Fk/YG+P6QwVhibdlZP8qIhasPbNT1YkVNDJ8G
         EeEY6QKJhBaCmk01qGqShvKTlcXnbcl7OJpEljGeht7Ny/QZsViuvd/pHOsspIZ10NjN
         p6w+UlLr9wS9G4Ln4lm2l/gld7GPjc5ekzs9HWGpEvPV0WqriYdZh3MHVYgptL9AScmL
         cg+LDR26BIqxhWfbKhMmBXLwW1JE1dr/ooCiY0mGd0WVfL0Zw0slHoRwzBBRuIe3//U6
         5Q7PboZlLt2JXF3av62Bd9h8OofQ+652OegiC5EsyVOwAUNJsmJ8yxJPcpExSI9HmSjO
         yLcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764101736; x=1764706536;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B/ajuzIoEZBr9d69arPz3m/iHMyMbmnwNsLsK+C9nkc=;
        b=hSb0vVe86czVMVN0MXWLVt4cLGXygYiuSF0z33xqc1nOPKYXLEkWVzFJ9R62wOAekh
         j+qI921SRAQDi//IntLxStne+tyHtSCw61YdSVnEgzs+jFP4mUoJXUKebbX5kZwOFRw4
         PyPW6iWWTX/Cw5pijvY7oOCnuBUrSg5lw5KyQ2Ly8wmI03N/conACRqR7WWxJWKLxnfp
         AVWvvbOT0gyolyg+Kb7RxzBE3sT6DCW+dQyoRE5nkIJNSVJdIVsVrTx0Q416IE/x2VKp
         zxSSlCHfG7+lxmQXNNXTIoqyqr2FUWBeL/t7naTZP5xA+NZ5yi7Jp1HuFM00Vv5J2PQW
         skbw==
X-Gm-Message-State: AOJu0Yweow5STTq74xbBthGVQrtpJWMZMq3oU2S1qmyVDRYI8blOIqco
	+YgYWaU/iQRx/nMyos0Egl9W1g+tDZgTTanJg67wO7AcKXo4tvkG2nDr
X-Gm-Gg: ASbGncsARN+06kglJSXs3IeoF6wIQp7+JwTO6/xQht7x0Fa947DgpoqJl+5SHq1oz9P
	v2I58bbsTX2WeSJfRoo6KRxEtJ2YvXOpwLP2YMdwSyvgrZ5Z2OgRbDIDbAotDXh3BEiPvY8EXAB
	EArh9M14WOYgUQLKGLf0yi6PMzsDX2UjKqI4zxK/TbWroT4BFmLlMY/9yIl1grVq8dCL5gnWNxF
	Mnqc2fsMoxGtKZG2JMF7PZtec7j3kv0mu9sIA2OkYCgDTgSSBw5KqP7zyQPyfLF56GoeoKIlFij
	kZfCF+m+O+FEIbs8JjvypTwVR7Bv2I5EVDswkqssdo5Pv4RJnxJ5pZ7/v1BZski/zAvYozWciGG
	Af58uHXuI8+M8AA4EnQluhvw3W3gB9ERVgEt+oWoCOVLhRrh4GQr7L+/erVLWIAvDjGEIZl40l2
	sRXhE6GWW6xn0=
X-Google-Smtp-Source: AGHT+IGpYYeAkXAlsHdGwcmJQQDm+COxGICyoZZpSgpYayVfhwHMeeYpm2pOtGU9tF8FF6mKt5fPZw==
X-Received: by 2002:a05:600c:c8c:b0:471:1435:b0ea with SMTP id 5b1f17b1804b1-47904b242eemr50794325e9.24.1764101735866;
        Tue, 25 Nov 2025 12:15:35 -0800 (PST)
Received: from osama ([197.46.139.116])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47903c7360fsm28222045e9.0.2025.11.25.12.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 12:15:35 -0800 (PST)
Date: Tue, 25 Nov 2025 22:15:30 +0200
From: Osama Abdelkader <osama.abdelkader@gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org, bitbake-devel@lists.openembedded.org
Subject: Re: [bitbake-devel] [RFC] Proposal: New tool to display recipe
 dependency trees
Message-ID: <aSYOYgiB4gtFMB85@osama>
References: <aSSUtHYFQlychNQk@osama>
 <CANNYZj85vK7o4KVDUtJ_DkW73bxs7UMA-bM6K2VRada-yCFpfA@mail.gmail.com>
 <aSSnE0X9kycDc60G@osama>
 <CANNYZj9ieQUQUEEjxV7bAznc3=A0rESOSr_+hy=RFragEA1Y1A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CANNYZj9ieQUQUEEjxV7bAznc3=A0rESOSr_+hy=RFragEA1Y1A@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Nov 2025 20:15:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66066

On Mon, Nov 24, 2025 at 07:53:52PM +0100, Alexander Kanavin wrote:
> On Mon, 24 Nov 2025 at 19:42, Osama Abdelkader
> <osama.abdelkader@gmail.com> wrote:
> 
> > My motivation actually was so simple, to know why a certain package is needed in an image.
> > The simple way now AFAIK is to exclude it, then bitbake prints backtrace e.g.
> >
> > dnf
> >  ├── libdnf
> >  │    ├── libsolv
> >  │    └── json-c
> >  └── sqlite3
> >
> > dnf -> libdnf -> libsolv
> >
> > libsolv is needed for dnf. so would be good to have a query command or simple tool to show that?
> > something like apt-rdepends output.
> 
> Yes, absolutely, and this is missing. You can deduce it from 'bitbake
> -g', but it requires look at dependencies of particular tasks
> (package_write_* if memory serves) and ignoring all other task
> dependencies, and then making a mental dependency chain in your head
> if the dependency is indirect. This could probably be post-processed
> with some filtering tool to only make a tree of those dependencies,
> and present it in a human friendly tree format.
> 
> One other idea is to add a task to image recipes that would produce a
> tree of package dependencies. E.g. instead of making a package repo
> and then constructing a root filesystem from it with a package
> manager, it would use the repo to write out a tree of their
> dependencies - unrolling the top level packages that the image
> specifies to install. Probably it could use package managers like
> dnf/apt/opkg to assist with that.
> 
> Alex

Thanks Alex for the feedback, I'm going to work on that soon.

BR,
Osama

