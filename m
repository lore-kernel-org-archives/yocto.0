Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22E7FE009CB; Thu, 23 Apr 2015 20:08:00 -0700 (PDT)
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
	*      [209.85.220.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D22A0E0098D
	for <yocto@yoctoproject.org>; Thu, 23 Apr 2015 20:07:46 -0700 (PDT)
Received: by pabtp1 with SMTP id tp1so35554733pab.2
	for <yocto@yoctoproject.org>; Thu, 23 Apr 2015 20:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=+IUNFvUBvpclddeiQDD3MbQO43SmVkjDf5OnPXqNHoI=;
	b=bn8I6nOH898lGOHWBysFokVxDYdOhZZcieKBjCNkKUEdvBwNs0MNUjNYS5tvEasQcd
	+PbUHo+6wT70D2bP1WyEFHh37tUqcALCfpciqgSU9bDgas8b934VlngJklXRXJ2shlS2
	6uoy6MHasiskJ4rxdGXKJyx3G4cClskbl9LFH4fK40VM/xCgCfnz/sfqU4WuTJ4hWRbH
	Jin+wMNbHI82hywqK8G8ccrZZTBpUB0CgCd73ktV//MCQRn0feGv0FkwJPT9ZNA1bZwF
	q1h/ikABpnS6RiNHZzz4JWB6o/3WNcMBpZd5Ox+KkP26rpdl4p4vBMChUY2EPmAxZnq2
	Rywg==
X-Received: by 10.66.55.98 with SMTP id r2mr10861297pap.22.1429844866000;
	Thu, 23 Apr 2015 20:07:46 -0700 (PDT)
Received: from [192.168.0.13] (c-76-103-142-85.hsd1.ca.comcast.net.
	[76.103.142.85])
	by mx.google.com with ESMTPSA id iz2sm9389723pbc.37.2015.04.23.20.07.45
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 23 Apr 2015 20:07:45 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A402227F4FA51D@IR-CENTRAL.corp.innerrange.com>
Date: Thu, 23 Apr 2015 20:07:42 -0700
Message-Id: <8D682CA4-2F11-4E3E-8AAD-BEC830D026D1@gmail.com>
References: <5500469A22567C4BAF673A6E86AFA3A402227F4FA51D@IR-CENTRAL.corp.innerrange.com>
To: Craig McQueen <craig.mcqueen@innerrange.com>
X-Mailer: Apple Mail (2.2098)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Deploy rootfs image within another rootfs image
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
X-List-Received-Date: Fri, 24 Apr 2015 03:08:00 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Apr 23, 2015, at 4:44 PM, Craig McQueen =
<craig.mcqueen@innerrange.com> wrote:
>=20
> I've got two scenarios where I want to put a rootfs image within =
another rootfs image.
>=20
> One scenario is for factory programming: My target is a BeagleBone =
Black type of system. I want to make a simple programmer to boot from SD =
card, which will partition and format the on-board eMMC and then write =
the bootloaders onto one partitions, and a rootfs image onto the other =
partition. So I want to make a recipe to build the programmer image, =
which contains another previously-built rootfs image at say =
/lib/firmware/rootfs.tar.gz.=20
>=20
> Another scenario is to implement firmware upgrade in-the-field. I am =
considering making a rootfs as a read-only SquashFS image. That image =
would then be put into a writable ext4 filesystem. An initramfs would =
use OverlayFS to mount the writable ext4 filesystem over the SquashFS =
image that is loop-back mounted.
>=20
> What is necessary to make a Yocto recipe to make an image, that will =
build another image, and then copy its deployed .tar.gz image into its =
own rootfs image?


looks into initramfs support. start here =
http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-CON=
FIG_INITRAMFS_SOURCE
and google will find you more examples.
>=20
> --=20
> Craig McQueen
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


