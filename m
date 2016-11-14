Return-Path: <mert.ergun@mikro-tasarim.com.tr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3A42E00C9D; Mon, 14 Nov 2016 06:10:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 575 seconds by postgrey-1.32 at yocto-www;
	Mon, 14 Nov 2016 06:10:55 PST
Received: from mt-00.mikro-tasarim.com.tr (mt-00.mikro-tasarim.com.tr
	[213.74.121.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CE4FE00C98
	for <yocto@yoctoproject.org>; Mon, 14 Nov 2016 06:10:55 -0800 (PST)
Received: from mail.mikro-tasarim.com.tr (mt-00.mikro-tasarim.com.tr
	[127.0.0.1])
	by mt-00.mikro-tasarim.com.tr (Postfix) with ESMTP id 0F0F87821F
	for <yocto@yoctoproject.org>; Mon, 14 Nov 2016 17:01:50 +0200 (EET)
Received: from 95.9.197.169 (SquirrelMail authenticated user mcergun)
	by mail.mikro-tasarim.com.tr with HTTP;
	Mon, 14 Nov 2016 17:01:50 +0200 (EET)
Message-ID: <8a556f5733a5ed58345b4d907f7b5cbb.squirrel@mail.mikro-tasarim.com.tr>
Date: Mon, 14 Nov 2016 17:01:50 +0200 (EET)
From: "Mert Can Ergun" <mert.ergun@mikro-tasarim.com.tr>
To: yocto@yoctoproject.org
User-Agent: SquirrelMail/1.4.15
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Subject: Correct way to build patched kernel modules
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: mert.ergun@mikro-tasarim.com.tr
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 14 Nov 2016 14:10:59 -0000
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit

Hi!

I am currently using a kernel bbappend file to build my kernel and kernel
modules. My bbappend file looks like this:

linux-imx_%.bbappend
SUMMARY = "Patches applied to Freescale kernel"
DESCRIPTION = "blank"

FILESPATH_prepend := "${THISDIR}/patches:"

SRC_URI += " \
	file://defconfig-mt \
	**patches for kernel modules appear here**
"

do_configure_prepend() {
            cp ${WORKDIR}/defconfig-mt ${WORKDIR}/defconfig
}

However, this approach doesn't feel right and I want to seperate kernel
and its modules from each other at build.

What I tried to do is remove patches from the bbappend file and keep
defconfig file intact. Create a new bb file and put patches inside there
instead. So new architecture looks like this:

linux-imx_%.bbappend
SUMMARY = "Patches applied to Freescale kernel"
DESCRIPTION = "MT6415CA"

FILESPATH_prepend := "${THISDIR}/patches:"

SRC_URI += " \
	file://defconfig-mt \
"

do_configure_prepend() {
            cp ${WORKDIR}/defconfig-mt ${WORKDIR}/defconfig
}

mt-module_0.1.bb
SUMMARY = "Patches applied to Freescale kernel"
DESCRIPTION = "blank"
LICENSE = "GPLv2"

inherit module

FILESPATH_prepend := "${THISDIR}/patches:"

SRC_URI += " \
	**patches appear here**
"

Now my kernel append module doesn't even apply defconfig changes and new
bb file doesn't do anything either. What's the right way to do this?

-------------------------------
Mert Can Ergun
Yazilim Gelistirme Muhendisi

Mikro-Tasarim Ltd.
ODTU-Teknokent ODTU-MET Alani
A-1 Blok 4. Bolum Ofis 3/A
TR-06530 Ankara
T: +90 312 286 0103
F: +90 312 286 0104
U: www.mikro-tasarim.com.tr
E: mert.ergun@mikro-tasarim.com.tr
-------------------------------


