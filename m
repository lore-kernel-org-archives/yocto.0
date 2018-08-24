Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B680E0079D; Fri, 24 Aug 2018 01:30:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1E9EE00720
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2018 01:30:25 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 41xZGm5FrQz1qxQJ;
	Fri, 24 Aug 2018 10:30:24 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 41xZGm54bFz1r1KD;
	Fri, 24 Aug 2018 10:30:24 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id 9i9jHP7SC3VX; Fri, 24 Aug 2018 10:30:23 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPS;
	Fri, 24 Aug 2018 10:30:23 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 9282645403BD;
	Fri, 24 Aug 2018 10:30:22 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([IPv6:::1])
	by localhost (mail.babic.homelinux.org [IPv6:::1]) (amavisd-new,
	port 10024)
	with ESMTP id VeKB02AAMHGd; Fri, 24 Aug 2018 10:30:19 +0200 (CEST)
Received: from [192.168.178.132] (papero.fritz.box [192.168.178.132])
	by babic.homelinux.org (Postfix) with ESMTP id 7333D45402B2;
	Fri, 24 Aug 2018 10:30:19 +0200 (CEST)
To: Albert-Miquel <wuampabaluba@gmail.com>, yocto@yoctoproject.org
References: <CAC6N2P9EsYUDO=Zr=CVLpDnHFKnG0L0q0HBRGzNC=wbz7kO1aw@mail.gmail.com>
From: Stefano Babic <sbabic@denx.de>
Openpgp: preference=signencrypt
Autocrypt: addr=sbabic@denx.de; prefer-encrypt=mutual; keydata=
	xsDiBEKMnA0RBACY1yNuS5KTLHVKv9FULwpSIlBiyE6IxLuyn49A5B+RGhsLoE/se+Bl/FEs
	L90Px+JVjPB0eFQsGOYa2DHJT1ezR4bepgL30I1Ldk6wbAT/cfsrGxJa79qeGNW5CHlpfLFJ
	74vR2DRIFdwPkFv7G0U+lsJvyWkERlUE+LdkmV4U5wCgpq79w8zb9CXApDyN2rwByWMf/Y0D
	/jK7rOiUPtN2vf9lK23nxudza+FHHJKpz/Xqc8CVePQL9+sWQD/h9+CHUk1DPjlrGPKDocTs
	VuBnjX2ErBVvoh+89T81JFHBtgR5BP4q8L9LFSS5tRZDNOdRkgkqVibHbdPw0MRYDRNpxRwa
	pLr8qYikO6aT1DPa3ONqV1tuGIiTA/4vKj6VMUBEm6pcQk2EJ8/WdLkjUx56iFVpA9HL/qZ+
	bu9sWtfHpia39GFFYZb+6LGqUF+rGkl5SQIAW1IWDJhI1vWdZf7x9dc/Ol9WCcWbcVxpcmrV
	fCdqbg5XHr6LsRZsuR3clLW3lS4eypAkre7bafQMUZN9IttVBgpljc3bp80xc3RlZmFubyBi
	YWJpYyA8c3RlZmFuby5iYWJpY0BiYWJpYy5ob21lbGludXgub3JnPsJeBBMRAgAeBgsJCAcD
	AgMVAgMDFgIBAh4BAheABQJP113uAhkBAAoJEFlz8hZVgU3ej9YAmwbgjSgCY2rXzDgc93Su
	riFEXrKdAJ0TTkoP4nTG3xjDJlBGFaIZfFXPPs6NBFi647sBBADPAJmzqPjGwlMUC6K9jkw2
	yBk+TsTG5uRnUDU/QNSuvNqChR1J89XugtKFuv8dSUnkgGsnjfBS4lkHUDKXgjdg3KJM1J0m
	PnDyY7gt2CVeYNbCZw6kVnmAk1/PPebof9Lz9nuHwhckxBnzyCsOsE6glCCtsugO36l7qXRs
	Zd4oIwARAQABwkkEGBECAAkFAli647sCGwwACgkQWXPyFlWBTd5TGgCgniZ9Klkcqf+PmXvR
	jsEr7oKTuf0An0XoiWfwqAj7rUAoBvfGvlTfM5jM
Message-ID: <73fa8e2e-074d-bdd5-c73f-a383419a7d6f@denx.de>
Date: Fri, 24 Aug 2018 10:30:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAC6N2P9EsYUDO=Zr=CVLpDnHFKnG0L0q0HBRGzNC=wbz7kO1aw@mail.gmail.com>
Subject: Re: Generation of an image of an edited Ubuntu rootfs
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
X-List-Received-Date: Fri, 24 Aug 2018 08:30:27 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: 8bit

Hi Albert,

On 23/08/2018 15:42, Albert-Miquel wrote:
> Hello all,
> 
> I'm mainly a VHDL developer, although in our last project I've started
> working with an embedded Linux installed in a ZYNQ from Xilinx that
> combines logic with several processors.
> 
> Due to my lack of knowledge, I started using the rootfs of an embedded
> ubuntu to develop the software (as described here
> <https://medium.com/developments-and-implementations-on-zynq-7000-ap/install-ubuntu-16-04-lts-on-zynq-zc702-using-petalinux-2016-4-e1da902eaff7>),
> since it was easier for me to install the necessary packages, while the
> BOOT and other files were created with Petalinux (I did not know about
> Yocto at the beginning). To sum up, the ZYNQ is running Ubuntu on one of
> the processors (while the baremetal code that controls the firmware is
> run on the other one).

Well, it looks like we are OT here..

> Everything is currently (and temporarily) running
> from the SD card, so that the SD has two partitions, one called BOOT
> (containing the files BOOT.BIN, image.ub and system.dtb), and another
> one with the rootfs tree. I have been working with this scheme for a
> while, installing several packages and developing some applications.
> Thus, rootfs has far evolved from the initial one.
> 
> My intention now is to set SWUpdate
> <https://sbabic.github.io/swupdate/swupdate.html> to remotely update all
> the software everytime a new version is released, so that I should
> generate an image of each of the two partitions. The problem is that I
> do not know which should be the right steps to generate these images. As
> I understood, Yocto can provide a clean rootfs, but I've not been able
> to find the way to integrate your own rootfs.

Considering all of these, it looks like you won't use Yocto. You can
build a debian package from SWUpdate sources (check in debian directory
and in the documentation) and you can add it to your rootfs.

> Considering the situation
> described here, is there any tutorial/web/anything that could be used as
> a guide (for dummies) to suitable generate the images using Yocto? Any
> help will be greatly welcome.

Image generation is supported via the additional meta-swupdate layer,
but this works until you are in a OE environment. Outside this, you have
to generate images on your own.

Example how to build the image is here:

http://sbabic.github.io/swupdate/swupdate.html#building-a-single-image

Best regards,
Stefano Babic

-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

