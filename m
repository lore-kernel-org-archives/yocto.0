Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5447FE01665; Tue, 12 Jun 2018 02:12:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mirza.krak[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E0C4E013CA
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 02:12:06 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id c22-v6so11353763pfi.2
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 02:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Cq1qP8vftGHnhVfUAD288dXeRu9Dqpe6l8hPvjw1SEI=;
	b=h3swO+4jg+v1SOJGNoeknWmvlmr6GkAW+a5HSmX5u2nyhQsuCp4goE4TW3RLUUSNOP
	AawgyXhuwuKhD+0IpZHzEj02hWXXhNJMa+DHnYdyTz8yFZPiuiTWo/+Ty0GJlwEacnRK
	mPmf3z49XASjpExMBQ3qLilwa1ac/lC8Q7zowg2jKS6i+9i5E3gHobBh2NZVEAvDy3K/
	GrCOeA8c1CEK2Iz5RXCJDAd17ASKf6wPJrdQjuVuCIU2pqS7hJzHNiYgr5CqI5hQHXmF
	Vum6bQzGEongpCu2aS45xTmJWg9q1HGdMb1ZSEkYYCcfAGIq9RfExYQZSpE3Odt3DD7h
	70UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Cq1qP8vftGHnhVfUAD288dXeRu9Dqpe6l8hPvjw1SEI=;
	b=MUZqSUf94FKcSe88AJssZSwtMXGlBMykhqVepsswmyAQe6cVPXbsDa5y985LC36bcb
	gzYvRpvCbOZ1+tmrqLjN4d/+AygphlsxD/TneFXLapOjt0LSsVUeaLCulKJhicYQhPdL
	mrd4nd6aYYE8ANK0EyNwRNWYhqDHP1dW1ogaDWiZ2A4fnfYEWZrcDXzdVl5dtGlN2u/K
	gUQcI9a3LmmwNMkYVHA3hR8DwYzttuSN8xjQW1yFCJbo28fJnmf5X1JrGr/oEB90duPR
	Bf29hNV43EZAyRySX2PCF/pW8fzM/MpWMzQba2DGBr1CpO/dNlx3AfSIt0ZFVb8tkNgN
	5PeA==
X-Gm-Message-State: APt69E0chitI6ZzDROGZGPNYTbIxQYQgRxwP488DL0s7TNeZiXGdh093
	eYCrbz3GxuF/39y5PsKfyi3wdPFozqvWHIXWn/a6vw==
X-Google-Smtp-Source: ADUXVKKhJIUtZZgeS/rXYjd5p25Q8JYhzC5jE4VJ1pjJWmptvecEgqMgUgXjGZ6R9/Cz5tMQ1PvxCjIZS7U+SEgezhI=
X-Received: by 2002:a65:63cb:: with SMTP id
	n11-v6mr2439767pgv.185.1528794726310; 
	Tue, 12 Jun 2018 02:12:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:bf8b:0:0:0:0 with HTTP; Tue, 12 Jun 2018 02:12:05
	-0700 (PDT)
In-Reply-To: <CAGAf8LybGizfPXzhNyqY4BdJ2rxWiMs2n+EDuam_n6n_6XPrdg@mail.gmail.com>
References: <CAGAf8LybGizfPXzhNyqY4BdJ2rxWiMs2n+EDuam_n6n_6XPrdg@mail.gmail.com>
From: Mirza Krak <mirza.krak@gmail.com>
Date: Tue, 12 Jun 2018 11:12:05 +0200
Message-ID: <CALw8SCU7PcJnQR=yXzdbZ5McghNUWY5+5fB6=e7O3BNunEtj-g@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: YOCTO kernel PF_CAN feature set and socketCAN layer of the shelf?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 12 Jun 2018 09:12:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 6 June 2018 at 11:35, Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
> Hello to YOCTO community,
>
> I am looking into the new CAN FD (CAN Flexible Data rate) protocol. It
> is very similar to classical CAN.
>
> I am wondering the following (I'll ask very basic questions, just to
> see if I am on the right tracks):
> [1] Do YOCTO kernels have CAN drivers left as mandatory drivers in the
> drivers/ tree (CAN drivers exist on kernel.org kernels)?
> [2] If YES, are these drivers enabled by default, or I need to enable
> them? Anybody to quickly refresh me how to manipulate make menuconfig
> in YOCTO tree?

SocketCAN is very hardware specific and you do not mention which
hardware you are using.

>
> I also need the feature called: SocketCAN. The following questions arise:
> [3] Do we have in the socket I/Fs added PF_CAN protocol family handling?
>      https://en.wikipedia.org/wiki/SocketCAN
> [4] Does added SocketCAN layer exist, which covers this topic? It'll
> be layer on the top of the YOCTO-BSP layer, my best guess. Any
> examples, using such a layer? Or any Open Source example(s) of such a
> layer?

I am not aware of any layers and I do not believe that there is any.
SocketCAN is a Linux kernel feature and there are a set of utils to
use SocketCAN [1] and there seems to be a recipe for can-utils in
meta-oe [2] which should be enough to get you started.

[1]. https://github.com/linux-can/can-utils
[2]. http://layers.openembedded.org/layerindex/recipe/24252/

--=20
Med V=C3=A4nliga H=C3=A4lsningar / Best Regards

Mirza Krak

