Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 636BFE011CC
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 07:53:10 -0800 (PST)
Received: by mail-pb0-f48.google.com with SMTP id rq13so666919pbb.35
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 07:53:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=2gac3zOaGRnc3xwejG/OHb4178YG0KEu4+nat7cvKng=;
	b=Z2MVPvbuYdtUXOa1JI3VS9184f82iE14VYOIrUs2xT9gB+S078y/ZFlic3WYElzDQa
	yL4Ol0Ch/00MIgT7SP7iXWuWGmkUcs0OUuHLL+Mm9qCszs+jUYjb6WT6NCCGHcWtG8Hk
	iOBc4pRp9uuigxXvL3OVKfLYi+XKFfEyaMjO1CVLGTWBfTtEAocixe21kZ5d8epMlDyx
	S87HvGZ/VnkG7LaBvoAGhG+bJXLeJXqa145Q/d+T+WWuEaruHOEHzBOrvEHuJskvPpQ+
	G672LkgpYgb/xpcJzsj+XUcANUI4z76JRyDk+WiNVjQyd6G9TPTdaMt676eCgPSex5cH
	J1dA==
Received: by 10.66.73.102 with SMTP id k6mr3698742pav.22.1355327590214;
	Wed, 12 Dec 2012 07:53:10 -0800 (PST)
Received: from [192.168.1.100] ([94.205.106.4])
	by mx.google.com with ESMTPS id i1sm16001945pav.35.2012.12.12.07.53.08
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 12 Dec 2012 07:53:09 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAKS01okkz7ntkzUAxb1oLfNAt4RXYW7jgBAHqBpLksVSU=O7qg@mail.gmail.com>
Date: Wed, 12 Dec 2012 19:53:03 +0400
Message-Id: <A9E0D1F5-A62D-4BA9-8682-19ADBC5A47F3@gmail.com>
References: <CAKS01o=9sWAg3OhZAf-S+GRyWtv4QxktWKEmtZ7LaXK3vJQoCQ@mail.gmail.com>
	<92408E63-2CBD-4806-9B71-14BECF354896@gmail.com>
	<CAKS01okkz7ntkzUAxb1oLfNAt4RXYW7jgBAHqBpLksVSU=O7qg@mail.gmail.com>
To: Anup Kini <akini@synapticon.com>
X-Mailer: Apple Mail (2.1499)
Cc: yocto@yoctoproject.org
Subject: Re: building for ZYNQ ZC702 SoC
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
X-List-Received-Date: Wed, 12 Dec 2012 15:53:10 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Anup,

On Dec 12, 2012, at 7:32 PM, Anup Kini <akini@synapticon.com> wrote:

> I could not find where the arm gcc was included in this build.
> I was checking the build process and took the gcc.4.4.6 while building =
the core-image-minimal.
>=20
> Hence i wanted to confirm if the arm-gcc can be integrated and steps =
to do it.

Two things to keep in mind here:

a. Yocto will generate a cross compiler for you. It will be called =
arm-poky-linux-gcc , and will be located in the =
poky/build/tmp/sysroots/x86_64-linux/usr/bin folder

This won't appear in your path, unless you explicitly specify it.

You can use this to build u-boot, the linux kernel and the root =
filesystem for the ZC702.

b. The cross compiler generated from yocto has some issues building the =
Xilinx SDK sources, for compiling the bsp and fsbl sources. Hence, you =
can use the default xilinx supplied compiler, which is already setup =
with Xilinx SDK, to build the bsp and fsbl binaries. You only need the =
Xilinx supplied gcc toolchain for these tasks, as well as for bare-metal =
applications using StandAlone OS or XilKernel.

For the rest, yocto gives you an easy way to build a fully working image =
for the ZC702.

Best regards,

Elvis Dowson


