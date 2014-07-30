Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6DBDE006F1; Tue, 29 Jul 2014 23:00:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CAB3E003FA
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 23:00:29 -0700 (PDT)
Received: by mail-ig0-f172.google.com with SMTP id h15so6712082igd.5
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 23:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Pr9wGI/o6ZoJO+ab4ttVHmSjyZF8CdspxLeTjulhr80=;
	b=HOtzw93NSOuGx3caqE3xHkzlVIsjitEV4u7lkBmK4b7B6+Ov7L0aifybNTrXJm5JfW
	wL7NbHtlppRy8ok2/s7j90DO7QmeYGg0ZMohDx/akqe2hdTMvuy81i7DMlZg1jnmCAdr
	O0sdKpIO1yrpxNNILbH7PoiOqmEI92QsyZrZUrGsj1TB6DYL9KOSFhGCC9lXWLSuUPIM
	yMZzSC4JpA+tcHu8afw/gOfVZXAZfZ25c+rsx0I2ekjir1Jyo3z3viVIAwJx9nGw9nck
	kp5S/P/TUHiaOF7rDwvKD+Q5DqL/F1mf/RLw5HYk+iDucZJg+NZbesyHFguAGaDX1G0A
	HVhQ==
X-Received: by 10.50.134.136 with SMTP id pk8mr50779290igb.20.1406700028976;
	Tue, 29 Jul 2014 23:00:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Tue, 29 Jul 2014 22:59:58 -0700 (PDT)
In-Reply-To: <53D7BA1E.2000301@laposte.net>
References: <53D7BA1E.2000301@laposte.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 29 Jul 2014 22:59:58 -0700
Message-ID: <CAMKF1sqAj8WQWea8xJSkGTswN5uACafcDVfs+kvN2hckSKt+4Q@mail.gmail.com>
To: Marc Gilet <pw.marcus@laposte.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Waiting for removable media ...
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
X-List-Received-Date: Wed, 30 Jul 2014 06:00:41 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jul 29, 2014 at 8:13 AM, Marc Gilet <pw.marcus@laposte.net> wrote:
> Hello,
> I'd like to use Yocto with a thinclient (Fujitsu siemens Futro B100)
> I've created a BSP for this platform, and configured the kernel for this
> machine.
> I've built an initramfs and a kernel to boot the thinclient via a PXE
> server, it boots, but the boot process
> hangs with this massage:" Waiting for removable media ..."
>
> Here's what I did:
>
> $ git clone git://git.yoctoproject.org/poky
> $ cd poky/
> $ source oe-init-build-env
> $ created the BSP with the "yocto-bsp" script
> $ bitbake linux-yocto -c menuconfig (the kernel is configured with
> "CONFIG_DEVTMPFS=y" and "CONFIG_DEVTMPFS_MOUNT=y")
> $ bitbake -k core-image-minimal-initramfs
>
> Does anybody knows where it could come from ?

This is in initramfs startup script see,
recipes-core/initrdscripts/files/init-live.sh
that script is meant for live boot from media. You have to retool it
to fit your boot
environment and method

> Cheers
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

