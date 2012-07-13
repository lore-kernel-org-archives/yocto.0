Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20070E0027D
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 13:36:25 -0700 (PDT)
Received: by lboj14 with SMTP id j14so6142026lbo.35
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 13:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=t1KOKytBZ3BThWeHZUJO35fSiRqDJKnuC0+g7OEr520=;
	b=eJ7WARoDg7+IVJl9d/SXQKsa1g0wGNFUWOprR+VzqrYkBN0Fndgx7P/mfh0A3iDghM
	PKREeOipZ+kc8PhHPmLvqepDbpxIxpATp0KmaY104SjWx3ubU7haajCxecHpQLnbJAil
	c/fQrk1pyxCcQjRCD7oZrNqD7l0VYO1eJx5fmoMsG80dOVko3WgHozlxIO7r3sFL7RW7
	yrkhNvVUmzQblmL4M9IxQS/fGiEd6aax9J5RXB9p2FYYPnq0D2zWmJCpCRn77U2kQgmC
	Q7TfQXG//hbGVmCm5alll0GXZfI1+KrheFRNoV8HS8rtW4TgMUoA/G6hkRvotWfHElU6
	z+Ug==
Received: by 10.152.127.98 with SMTP id nf2mr2904038lab.4.1342211784729; Fri,
	13 Jul 2012 13:36:24 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.64.180 with HTTP; Fri, 13 Jul 2012 13:36:04 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A3BF09@ORSMSX101.amr.corp.intel.com>
References: <CAE9DZUR_W2vDPL+UjAqn_5A-2xig7x9GUx_JKQEd_R0HrrRyzQ@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A3BF09@ORSMSX101.amr.corp.intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 13 Jul 2012 13:36:04 -0700
X-Google-Sender-Auth: Vx64vKRRFklKWrvKEN5UTzeVQns
Message-ID: <CABcZAN=F6thT=-fy2U4B6r0cMs=S_0MvPM0AnY=SOborSmxwhA@mail.gmail.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: sysroot / external toolchain
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
X-List-Received-Date: Fri, 13 Jul 2012 20:36:26 -0000
Content-Type: text/plain; charset=UTF-8

> I'm using an external toolchain for my project.  What is the proper
> way to include my external toolchain libc files in the sysroot?

Use an external toolchain recipe which actually installs the files
from the external sysroot into ${D}, the way the known working
external sourcery toolchain recipe does.

> Currently I have
>
> TOOLCHAIN_OPTIONS = " --sysroot=${STAGING_DIR_HOST}"
>
> and
>
> EXTERNAL_TOOLCHAIN_SYSROOT_CMD = "${TARGET_PREFIX}gcc
> ${TARGET_CC_ARCH} -print-sysroot"
> EXTERNAL_TOOLCHAIN_SYSROOT ??= "${@exttc_run(d,
> EXTERNAL_TOOLCHAIN_SYSROOT_CMD)}"

The tcmode sets these already, there's no need to set them explicitly,
just copy the external-sourcery tcmode to your own and set TCMODE
appropriately.

> which resolves to
> /opt/armada-sdk-5.0-64k/armv7-marvell-linux-gnueabi-softfp/arm-marvell-linux-gnueabi/libc/
>
> I also have a recipe for my external toolchain which includes the following:
>
> do_install() {
>         # Use optimized files if available
>         sysroot="${EXTERNAL_TOOLCHAIN_SYSROOT}"
> }

If this is all you have in do_install, it's no wonder you have no
files. do_install has to actually install the files from t he sysroot.
Copy what's in external-sourcery-toolchain, as that actually works.

> The EXTERNAL_TOOLCHAIN_SYSROOT doesn't seem to have any effect.  My
> libc header files are not visible during compilation. It looks like I
> may have to copy them to the staging dir or setup some symlinks.  Is
> this the right approach?

No.
-- 
Christopher Larson

