Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56217E01217
	for <yocto@yoctoproject.org>; Sun,  5 Feb 2012 15:55:32 -0800 (PST)
Received: by lagw12 with SMTP id w12so3681284lag.35
	for <yocto@yoctoproject.org>; Sun, 05 Feb 2012 15:55:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=H8rM2rjklrFaweeTkcwGNFUPy5BXYi5PaBGYPB20mJ0=;
	b=w/lO1GuK9MzzJMtmjvPcJX1+Wdmn5C/6Ix3mGkaQ2IZuGx0rBRGP+8viEsKsCRJeJa
	njCJA210HxSbCy8sGCKxx32jyHrT7ITcuEjYSbyX3UShUb0+u+hSwaZU+LhST5omcrzL
	AqBenEBh9Tzvwz1fe70BBuLRfGd1w+004cO24=
Received: by 10.152.114.169 with SMTP id jh9mr8186352lab.20.1328486131311;
	Sun, 05 Feb 2012 15:55:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.5.201 with HTTP; Sun, 5 Feb 2012 15:55:01 -0800 (PST)
In-Reply-To: <CAEKp-aZZXm0wjqod-F5ph7Af2R7jUZAaCn_hA85yCc0GrUGjGQ@mail.gmail.com>
References: <000e01cce455$55a1c540$00e54fc0$@sjjmicro.com>
	<CAEKp-aZZXm0wjqod-F5ph7Af2R7jUZAaCn_hA85yCc0GrUGjGQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 5 Feb 2012 15:55:01 -0800
Message-ID: <CAMKF1sotxvdHirDxoXrPDJVkCjZ3un5-MJpCA+sAweKVrYgYcQ@mail.gmail.com>
To: Rudolf Streif <rudolf.streif@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Build Error
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 05 Feb 2012 23:55:32 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 5, 2012 at 3:49 PM, Rudolf Streif <rudolf.streif@gmail.com> wrote:
>
> You are supposed to be using bash. Ubuntu uses dash by default but if you
> were then the sanity checker would flag it the moment you run Bitbake from
> you build environment. Just in case: sudo dpkg-reconfigure bash

Not really. We strive hard to stay off bashism. I use dash all the time

