Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90321E00AD5; Sat,  1 Jul 2017 18:07:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.64 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-curtail.atl.sa.earthlink.net
	(elasmtp-curtail.atl.sa.earthlink.net [209.86.89.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC1C3E009A0
	for <yocto@yoctoproject.org>; Sat,  1 Jul 2017 18:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1498957666; bh=QkQIIYuUM7RCZE+LctkaXz5oOcrIDV0j7JvE
	UL1thB0=; h=Received:From:To:References:In-Reply-To:Subject:Date:
	Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:
	X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP; b=O
	NnWLdtmMRiB2CGRvsGnHMbtbksnj5R8gJYj7eYdnAEICLOrshM8UfBbDfCTo0gWEPLA
	6BeWXe347ATvybcvZSfo08wnqg6m6hEa02AlcVIL2nYJ/59UF8nIZpKU3yk5B1ip2nB
	WhQdU/lJS2ExCRPpN0NcPzvEe16hn9TX6nQ1OOLq+TNLSiBTQCXQA/qBJeZrH0D1Gmk
	9MFW7FWHVGmNwal/vUPwGtA2BLKkbtEq7sVzLdYlBecmmnOy+EZr4sKkABQC2wEssIQ
	cInbs7GUYFnT4JjycnGVSdvThDu44cQOI3FyL8M0DymNJDo1+i+YguHu9/Ep8ehaZon
	tM+gEg==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=C4sF4Ego+BzYB7RuxfrJ6cwVRETmNHyJ2Voreuaw3PqqCVVqo+VeW24OK1v24AYrfUSnfGwwHEs2jliVX2AxD2z+4w8H4bFXpLkaD9hv8t+xv5bLMMB/QzUipNqjZDgs1hyZhS10V/ew3cmIUFtFYVdAKqiq2MXyLJOih2K+u+83dm/0+U+t8ZiSBKxhYW1VmM9m+zNDiA2QnmKpihxl+cHaBTHkB7gGC0AeP8sBMrHQFGxbJoyL80f6/Mtrd4Gf5VHell4yVjybGaBS2/bf3DymWrLB541kH2oaU1Rredl3cO4y5RVXZgU9V9r2FatTBDTU9PAyOTfykV0DutZAdw==;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-curtail.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1dRTMW-0007Qw-AP; Sat, 01 Jul 2017 21:07:44 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Andrea Galbusera'" <gizero@gmail.com>,
	<yocto@yoctoproject.org>
References: <FF02D819682A44949D09718D69202477@PAULD>
	<CAC+thW12U7RCZsSS7tuSVWis+bycbDo6t-oFiOpePoQ9nJ3qSA@mail.gmail.com>
In-Reply-To: <CAC+thW12U7RCZsSS7tuSVWis+bycbDo6t-oFiOpePoQ9nJ3qSA@mail.gmail.com>
Date: Sat, 1 Jul 2017 18:07:43 -0700
Message-ID: <753516A24CD045AAB7E6E2F13BD1C99D@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
Thread-Index: AdLxctRyx1PBR/qUSVyVtPeH2ECL7wBLOl+Q
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688991411f373794229b80cbae90cfecc98350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Re: RPi app built with SDK won't load
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
X-List-Received-Date: Sun, 02 Jul 2017 01:07:47 -0000
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> From: Andrea Galbusera [mailto:gizero@gmail.com]=20
>=20
> Could you please post the exact source code of your test=20
> program and the steps you take to (a) build the SDK and (b)=20
> build your test executable? Is your running image a pretty=20
> standard one (core-image-minimal, rpi-test-image or so) or do=20
> your own with custom features?=20

It did have some custom features, so I did a plain build of =
core-image-minimal using raspberrypi3 as the MACHINE. I also did a =
populate_sdk for it, and installed the SDK in /opt/poky/2.2.1-a32 by =
running the install script.

The test program test.c is just "int main(void) { return 0; }". I =
normally use Eclipse CDT to compile native programs, so I set up a cross =
project using the SDK, which involves a few manual settings, including =
telling it the tools are in =
/opt/poky/2.2.1-a32/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux,=
 and adding a --sysroot to the command lines. The compiler command line =
came out as:

arm-poky-linux-gcc =
--sysroot=3D/opt/poky/2.2.1-a32/sysroots/cortexa7hf-neon-vfpv4-poky-linux=
-gnueabi -O3 -Wall -c -mfloat-abi=3Dhard -MMD -MP -MF"test.d" =
-MT"test.o" -o "test.o" "../test.c"

(without the line breaks). I had to add "-mfloat-abi-hard" to get it to =
link. The link command line was:

arm-poky-linux-gcc =
--sysroot=3D/opt/poky/2.2.1-a32/sysroots/cortexa7hf-neon-vfpv4-poky-linux=
-gnueabi -s -o "test" ./test.o  =20

(again, without the line breaks). After dd-ing the image to my SD card, =
I mounted it and manually copied the "test" program into its rootfs. =
When I stuck it in the RPi3 and ran it, I got

    -sh: ./test: not found

The shell in this case is busybox, so the error message is slightly =
different from bash.

I rechecked everything I had described before, analyzing the executable =
and comparing it to some working executable from the rootfs. There must =
be SOMETHING in my executable that the loader is barfing on, after it's =
successfully opened the file but before it starts looking for libraries. =
But it's an awfully small executable, so it's hard to imaging where that =
something is hiding.

--=20

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


