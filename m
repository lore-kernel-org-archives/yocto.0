Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BBF0E009BC; Thu, 12 Apr 2018 21:20:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.158.101 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Thu, 12 Apr 2018 21:20:55 PDT
Received: from smtpcmd02101.aruba.it (smtpcmd02101.aruba.it [62.149.158.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48288E00857
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 21:20:55 -0700 (PDT)
Received: from [192.168.24.108] ([81.174.11.230])
	by smtpcmd02.ad.aruba.it with bizsmtp
	id ZgKi1x00n4xoAL101gKq9o; Fri, 13 Apr 2018 06:19:50 +0200
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <229102f0-f056-b246-a5ff-7f1f1653b8df@faresoftware.it>
Date: Fri, 13 Apr 2018 06:19:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1523593190; bh=7bttjLHBRoCgFSbQ+tHAUV8NVpqyKiKoUQvQSqh38Ro=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=RXQDc0WT6bsdHG7KrA6Ew/DCgSisIv5b6/zjUcTW5inryNq6J2s5ZsMjT6Y7PScTJ
	ShwV8IZWt3xXLYVOuVlkTO7x6HWm2x68V2vFyMJpHQqHzyN+8JEL9PMr982gtxAuAP
	KA4GYmcZQrfCu3i7PO3gyV8gyxdhLz/utRM/wUV4xStqvV/1u8TlHzlI0Cozk4A4gl
	XMWni97cjFie4G0Bp0vBYrrRk7dac0sIHEYQ7DRoJaV8xALblRh7Ovc02LudtO2HWw
	CtJp7vfRfTbbbMDIiQzX2XofCaiJuPvZGl4FPtOQf8U71ueyN09OtuuKD+fBtL/2WY
	gbRefsNtd8xHw==
Subject: Which recipe produce that file?
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
X-List-Received-Date: Fri, 13 Apr 2018 04:20:57 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

My name's Mauro and I write from Parma, Italy.


I'm in trouble because recently I get a collision error.

It seems that more than one recipes try to install the same file in the 
same path in populate_sdk task

This is an example

--------------

ERROR: xcb-util-0.4.0-r0 do_populate_sysroot: The recipe xcb-util is 
trying to install files into a shared area when those files already 
exist. Those files and their manifest location are:
/media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/lib/libxcb-util.la
  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/lib/libxcb-util.so
  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/lib/libxcb-util.so.1.0.0
  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/lib/libxcb-util.a
  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/lib/libxcb-util.so.1
  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/lib/pkgconfig/xcb-event.pc
  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/lib/pkgconfig/xcb-util.pc
  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/lib/pkgconfig/xcb-aux.pc
  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/lib/pkgconfig/xcb-atom.pc
  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/include/xcb/xcb_event.h
  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/include/xcb/xcb_util.h
  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/include/xcb/xcb_aux.h
  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/include/xcb/xcb_atom.h
  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/sysroot-providers/xcb-util
--------------


I'm working with a Jethro distro

How can I solve this problem?


Best regards,

   MZ


