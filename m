Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26A07E00546
	for <yocto@yoctoproject.org>; Fri, 31 Jan 2014 15:34:37 -0800 (PST)
Received: by mail-ie0-f169.google.com with SMTP id to1so4969469ieb.14
	for <yocto@yoctoproject.org>; Fri, 31 Jan 2014 15:34:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=G/7yU7TBM3Z0sJnuc/nqfGcIXE8CU50ec3hyiaJQJfk=;
	b=Qxx0XVahJ0beY4+o5fWncscAZYP2p294PStVEbShlZn4ulVlIaOiZsGFHgjr2YarGZ
	B16Hu6464gKxB/FI1hhNEZM/EOuETN1Iwk/OkHbBDjau8Ti2M35h6iybAcityYLy5T9H
	1VezJ3HKuajstHRSm816cFu+maK4EbP/T5fBtTLMAbuN0dzipt3Xtl/a7+sttbF+v1dk
	FTBVyfBj0+6JruoJYfbRc4buYJkNfG3FuLv6OCvVegfNak2lqNzGw9zk+FU1VKE3Bh4E
	X2vV4ktuUily+MGVDZOfqCVeLW64xOitZhQFyc2FN8pNZcnMIPxCNuHgxXHS0lwPn4cq
	5VYg==
X-Gm-Message-State: ALoCoQl0oVifjpayOgFxKK15hQGVGXb39veGZ4EsFj5exJLEWuOgh/SKHd7RgdYjxMgIYnKZsbYg
X-Received: by 10.50.238.162 with SMTP id vl2mr954581igc.45.1391211276972;
	Fri, 31 Jan 2014 15:34:36 -0800 (PST)
Received: from [192.168.141.83] (69-165-220-158.dsl.teksavvy.com.
	[69.165.220.158])
	by mx.google.com with ESMTPSA id x6sm2164133igb.3.2014.01.31.15.34.36
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 31 Jan 2014 15:34:36 -0800 (PST)
Message-ID: <52EC330A.7080602@linaro.org>
Date: Fri, 31 Jan 2014 18:34:34 -0500
From: Trevor Woerner <trevor.woerner@linaro.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Brian Hutchinson <b.hutchman@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAFZh4h-zi=pDLr5JYgFeEfU72+qMRz2FJZ8iDt-Q3f=P+wVgKA@mail.gmail.com>
In-Reply-To: <CAFZh4h-zi=pDLr5JYgFeEfU72+qMRz2FJZ8iDt-Q3f=P+wVgKA@mail.gmail.com>
Subject: Re: How to get a list of packages (with versions) used to create an image?
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
X-List-Received-Date: Fri, 31 Jan 2014 23:34:38 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 01/23/14 14:35, Brian Hutchinson wrote:
> but for documentation I need to generate this list with package
> version information as well.

I realize this has already been answered a couple different ways, but
(for completeness' sake) if you're using ipk as your package manager you
can also use the following.

Starting from your build directory, assuming you're building on an
x86_64 host, you're building "core-image-minimal", the machine you're
building for is "qemuarm", and your tmp directory (as defined in
conf/local.conf) is "tmp":

$ tmp/sysroots/x86_64-linux/usr/bin/opkg-cl \
    -o tmp/work/qemuarm-oe-linux-gnueabi/core-image-minimal/1.0-r0/rootfs \
    list-installed

