Return-Path: <alexis.lothore@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AB3AE00AF6; Tue, 25 Apr 2017 12:01:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alexis.lothore[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98C53E00B21
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 12:01:40 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id y10so16483599wmh.0
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 12:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:in-reply-to:message-id:references
	:user-agent:mime-version;
	bh=8Yw52Y0EJzw9tbUUA286nmwxqEF9iTz0yOyw4dmnh/0=;
	b=jnrUFs+ZRSKHXMTUaW2JFmHCPqQtlFsbyXYlPOJ+mcJPQOV6XWuIv2VWNVe5tkZLCH
	s7TMTzGyi9XYjBW/gsPM/ruvaMwoSBcDJTZB/flb5iUVcx8OJ1RNKnpj6DmM5I6UTZLT
	j5zgamP5JNe5nj5f5I47oh7u320Os72icFDU+/ceqjVPmtwkmMfV/iJrVCnb/WAnhvVA
	MFyRueYzcs+9zsWUZxhlxp4osn8FnxqWp0iVzqaM8sA4UipyuXIuUir6eneNjd4zB54k
	po0j8p7upeQQ0GFIA7F8Y0c8qDRLi7O2lZgjABQ1umpjnZLlJhMCYWfroifnvuQafuNT
	8wIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
	:references:user-agent:mime-version;
	bh=8Yw52Y0EJzw9tbUUA286nmwxqEF9iTz0yOyw4dmnh/0=;
	b=gCcd8OnKrAF6uWV4XOAj48yzDgQvnv+1MBg9DKQOmm3LNiAUHgfW70nPjM+sUBs4xe
	9saYULYSrEFKGKzaaILjgdfO9lq3+hWji6H+Bz+wlvawFB4dFt7uPQUXoBOcbwi59yb/
	qGRw0c9hpkA7+kt+cZu5Vw8PazePbWo2nKdgKYOm3qhbAt0N3zUnnbNcXxWbFms/5gTH
	kFOxHzFTKRWstR/wqWw0eRk87fHWo1cm9Mq4Xb9//BMkjpJbXJ+SaCmx36NI4SHBc70I
	gzTDJcHmt72oBxMdyXMAC3Qo2d5NWenCPsBQ96QGFrBuMAvE9bnXY2qkrrY+UAN3nvFH
	cBYA==
X-Gm-Message-State: AN3rC/7uyN/bE3p4NzpT+W8EroEbwPLe1FzDe9y5YykTZxh41cqWqE+j
	ojxF/XSfNrv1KQ==
X-Received: by 10.28.46.5 with SMTP id u5mr3266230wmu.83.1493146897369;
	Tue, 25 Apr 2017 12:01:37 -0700 (PDT)
Received: from [192.168.0.10] (6.167.141.77.rev.sfr.net. [77.141.167.6])
	by smtp.gmail.com with ESMTPSA id
	184sm5218383wmr.30.2017.04.25.12.01.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 25 Apr 2017 12:01:36 -0700 (PDT)
From: alexis.lothore@gmail.com
X-Google-Original-From: alexis@gmail.com
Date: Tue, 25 Apr 2017 21:01:37 +0200 (CEST)
X-X-Sender: alexis@debian
To: Paul Barker <pbarker@toganlabs.com>
In-Reply-To: <CAPyrkgxrdCVB8pFSJ-AYoXqxwuHiPHUBo98izvCKMM-5h_5mVw@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1.1704252058100.16188@debian>
References: <alpine.DEB.2.21.1.1704242008400.4869@debian>
	<CAPyrkgxrdCVB8pFSJ-AYoXqxwuHiPHUBo98izvCKMM-5h_5mVw@mail.gmail.com>
User-Agent: Alpine 2.21.1 (DEB 209 2017-03-23)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Raspberry Pi 3 build issue
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
X-List-Received-Date: Tue, 25 Apr 2017 19:01:46 -0000
Content-Type: multipart/mixed; boundary="8323329-594847644-1493146900=:16188"

--8323329-594847644-1493146900=:16188
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

Hello Paul,
thanks for the try. It should means that there is a detail on my setup 
which prevents the build from being done. I encounter the error on the 
commits id your provided too. I also tried being on last tag on poky 
project for morty branch, without success. I also suspected my python 
configuration/version so I resintalled it completely, but It made no 
change to the error.

On Tue, 25 Apr 2017, Paul Barker wrote:

> On Mon, Apr 24, 2017 at 7:25 PM,  <alexis.lothore@gmail.com> wrote:
> > Hello,
> > I am currently encountering an issue with meta-raspberry and more
> > specifically Raspberry Pi 3 build. Since I was not sure the problem was
> > not my fault, I cloned a fresh copy of poky and meta-raspberrypi (both
> > checked out on morty, and meta dependencies on morty too), but the problem
> > is still appearing, trying to build the image rpi-hwup-image with BDISTRO
> > poky for MACHINE
> > raspberrypi3 :
> >
> > ➜ build git:(morty) bitbake rpi-hwup-image
> > Loading cache: 100%
> > |#########################################################################################################################################################################################################|
> > Time: 0:00:00
> > Loaded 2 entries from dependency cache.
> > WARNING:
> > /home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.9.bb:
> > Exception during build_dependencies for PKG_kernel-image | ETA: --:--:--
> > WARNING:
> > /home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.9.bb:
> > Error during finalise of
> > /home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> > WARNING:
> > /home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.4.bb:
> > Exception during build_dependencies for PKG_kernel-image
> > WARNING:
> > /home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.4.bb:
> > Error during finalise of
> > /home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> > ERROR: ExpansionError during parsing
> > /home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> > Traceback (most recent call last):
> > bb.data_smart.ExpansionError: Failure expanding variable PKG_kernel-image,
> > expression was
> > kernel-image-${@legitimize_package_name('${@get_kernelversion_headers('/home/alexis/Projets/poky/build/tmp/work/raspberrypi3-poky-linux-gnueabi/linux-raspberrypi/1_4.9.21+git${SRCPV}-r0/linux-raspberrypi3-standard-build')}')}
> > which triggered exception SyntaxError: invalid syntax (PKG_kernel-image,
> > line 1)
> > Summary: There were 4 WARNING messages shown.
> > Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> >
> > I am executing the build on an x86 machine with Debian 8.
> >
> > Unfortunately, since the problem seems to appear right at parsing, I
> > cannot get the exact variable expansion with bitbake -e. Apparently my
> > Yocto setup does not encounter the issue if I try the build for another
> > RPI target, like raspberrypi0. Any advice on how to troubleshoot this
> > issue ?
> > --
> 
> I've just tried to reproduce this using a fresh clone of poky and
> meta-raspberrypi on the morty branch. I edited bblayers.conf to add
> the meta-raspberrypi layer and then edited local.conf to set MACHINE =
> "raspberrypi3", those were my only changes. I then ran "bitbake
> rpi-hwup-image" and it's correctly parsed all the recipes and started
> the build.
> 
> Which exact commits of poky and meta-raspberrypi are you using? I have
> the following:
> 
> meta
> meta-poky
> meta-yocto-bsp    = "morty:924e576b8930fd2268d85f0b151e5f68a3c2afce"
> meta-raspberrypi  = "morty:28d4404f89eb59d406b4976c0e3f5ca19137ba74"
> 
> Thanks,
> 
> -- 
> Paul Barker
> Co-Founder & Principal Engineer
> Togán Labs Ltd
> 

--8323329-594847644-1493146900=:16188--
