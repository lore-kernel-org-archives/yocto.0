Return-Path: <yegorslists@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1605FE00D8A; Wed, 27 Apr 2016 02:01:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yegorslists[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f67.google.com (mail-qg0-f67.google.com
	[209.85.192.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE787E00D88
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 02:01:21 -0700 (PDT)
Received: by mail-qg0-f67.google.com with SMTP id b14so2667774qge.2
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 02:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=HsxMBJ9Xefoy356kglu65W2+T45ZSkyypmVew4Sc3Ws=;
	b=gRgxStgOF+JRWGgaYYdtSgfqg2gxBPlglUEh4OzFTlGBTeRVsYogfxafnH6J/9cj+j
	eHWrPt0f1EBcDTsBvIJ86NDsnR1r3X0zBHU4Fh7EOiZPFSwNBHIO9ISMgdQLgcH4EjmL
	S2y9y5FB9SF+Caqf7iOb+E/t1INSsQPEHLVbQGS7CAxuw1S0BJaU+TdgK6NZrcHoJSSf
	Hwf+UVTGHzS5B1+Y8Gl0E9PQo09CmwpmrFCy5jfaJMCUV6m1FyNfedntczAq+jFdGDui
	ItFXoN+LLy+wLW3HyuR1fLPUGg99DsTcpOXvnD1pD7q/cjkb7SsL1J3LYjzXoeBtiecf
	cCxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=HsxMBJ9Xefoy356kglu65W2+T45ZSkyypmVew4Sc3Ws=;
	b=W6IT8RYwJ4XUSxugRgGGtlwcRfUGA3z+jv1FKUDouna+aBjk/yikxLMMEuptdW4S3L
	+e837Oz/2JqPol7Mb4P4Nnsw3UIY2JJq4XTOSdy/2q9m1Vf200sYItICK2tTrC8dSMxp
	zeWICbN78R62AKSWFy3n+yqoBvqRU9OfuPd+Igx0qz9ET4EQspMmBBt/d6iTpzLI0NjJ
	jZf/drvuNRVCcBO/jWFXW8gbi69WFot+++wFagx5PgZCMtWQR1MQLzPN7d1lZ5i3Oa0t
	xmDAZw9mGKrsRH/94frOl2bMBhNFCaTU7dJe3EttpWHbjMUn4ki0yAZQQGncq2jkWFmv
	C5CA==
X-Gm-Message-State: AOPr4FUi/j0bSkh2zQWYfSBcOZ/rZLwxql06BEDK7l07+LlrPvRE9DFxAuQhzqWAIUltNfT5zv+lTfTs2hn5qw==
X-Received: by 10.140.91.194 with SMTP id z60mr6935010qgd.70.1461747680655;
	Wed, 27 Apr 2016 02:01:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.101.142 with HTTP; Wed, 27 Apr 2016 02:01:01 -0700 (PDT)
In-Reply-To: <57207CC3.3020905@mlbassoc.com>
References: <57207CC3.3020905@mlbassoc.com>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Wed, 27 Apr 2016 11:01:01 +0200
Message-ID: <CAGm1_kuWD1BVMMTfZ9v3F5VzvD80Y43SoROA61KD9cF82isPDQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: eudev hwdb?
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
X-List-Received-Date: Wed, 27 Apr 2016 09:01:50 -0000
Content-Type: text/plain; charset=UTF-8

Hi Gary,

On Wed, Apr 27, 2016 at 10:48 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> I see that the replacement for udev (eudev) in OE-core takes nearly
> 12MB on my i.MX6 (ARM CortexA7).  This is nearly 25% of my total
> storage space (64MB NAND)!
>
> # ls -lR /etc/udev
> /etc/udev:
> total 6520
> -rw-r--r-- 1 root root    1600 Jan  1  1970 cache.data
> -r--r--r-- 1 root root 6660476 Apr 26 13:08 hwdb.bin
> drwxr-xr-x 2 root root    1296 Apr 26 11:34 hwdb.d
> -rw-r--r-- 1 root root      51 Apr 26 11:31 mount.blacklist
> drwxr-xr-x 2 root root     160 Apr 26 11:35 mount.blacklist.d
> drwxr-xr-x 2 root root     608 Apr 26 13:08 rules.d
> drwxr-xr-x 2 root root     304 Apr 26 11:35 scripts
> -rw-r--r-- 1 root root      49 Apr 26 11:34 udev.conf
>
> /etc/udev/hwdb.d:
> total 5224
> -rw-r--r-- 1 root root 1292931 Apr 26 11:34 20-OUI.hwdb
> -rw-r--r-- 1 root root  126596 Apr 26 11:34 20-acpi-vendor.hwdb
> -rw-r--r-- 1 root root   41289 Apr 26 11:34 20-bluetooth-vendor-product.hwdb
> -rw-r--r-- 1 root root     111 Apr 26 11:34 20-net-ifname.hwdb
> -rw-r--r-- 1 root root   13710 Apr 26 11:34 20-pci-classes.hwdb
> -rw-r--r-- 1 root root 2648842 Apr 26 11:34 20-pci-vendor-model.hwdb
> -rw-r--r-- 1 root root     783 Apr 26 11:34 20-sdio-classes.hwdb
> -rw-r--r-- 1 root root    4067 Apr 26 11:34 20-sdio-vendor-model.hwdb
> -rw-r--r-- 1 root root    8070 Apr 26 11:34 20-usb-classes.hwdb
> -rw-r--r-- 1 root root 1113001 Apr 26 11:34 20-usb-vendor-model.hwdb
> -rw-r--r-- 1 root root    3702 Apr 26 11:34 60-evdev.hwdb
> -rw-r--r-- 1 root root   52967 Apr 26 11:34 60-keyboard.hwdb
> -rw-r--r-- 1 root root   14217 Apr 26 11:34 70-mouse.hwdb
> -rw-r--r-- 1 root root    4627 Apr 26 11:34 70-pointingstick.hwdb
>
> /etc/udev/mount.blacklist.d:
> total 0
>
> /etc/udev/rules.d:
> total 20
> -rw-r--r-- 1 root root 1449 Apr 26 11:31 10-imx.rules
> -rw-r--r-- 1 root root    0 Apr 26 11:34 80-net-name-slot.rules
> -rw-r--r-- 1 root root  847 Apr 26 11:31 automount.rules
> -rw-r--r-- 1 root root  757 Apr 26 11:31 autonet.rules
> -rw-r--r-- 1 root root  885 Apr 26 11:34 local.rules
> -rw-r--r-- 1 root root  843 Apr 26 11:31 localextra.rules
>
> /etc/udev/scripts:
> total 8
> -rwxr-xr-x 1 root root 2469 Apr 26 11:31 mount.sh
> -rwxr-xr-x 1 root root 1402 Apr 26 11:31 network.sh
>
> Is there any way to not have both the hwdb.bin (which I assume
> is a binary version of the hardware databases) and /etc/udev/hwdb.d?
> Perhaps there is some way to only use one?
>
> Or maybe there is a better choice, such as mdev?  I'm not sure about
> this (no experience) but my system needs to handle plug&play devices
> which the current eudev does well.  It's just a huge "price" to pay.
>
> Any ideas or pointers would be great

eudev provides following configure option:

 --enable-hwdb  install hwdb.d files

this way you can omit hwdb.d installation by providing:

--disable-hwdb

Yegor

