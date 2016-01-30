Return-Path: <Jonathan.Haws@sdl.usu.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 217BEE008B4; Sat, 30 Jan 2016 07:24:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from Perses.usurf.usu.edu (unknown [129.123.197.145])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04A7DE006AD
	for <yocto@yoctoproject.org>; Sat, 30 Jan 2016 07:24:29 -0800 (PST)
Received: from EK.usurf.usu.edu (172.31.35.73) by Perses.usurf.usu.edu
	(172.31.35.68) with Microsoft SMTP Server (TLS) id 15.0.1104.5;
	Sat, 30 Jan 2016 08:24:28 -0700
Received: from EK.usurf.usu.edu (172.31.35.73) by Ek.usurf.usu.edu
	(172.31.35.73) with Microsoft SMTP Server (TLS) id 15.0.1104.5;
	Sat, 30 Jan 2016 08:24:25 -0700
Received: from EK.usurf.usu.edu ([172.31.191.13]) by Ek.usurf.usu.edu
	([172.31.191.13]) with mapi id 15.00.1104.000; Sat, 30 Jan 2016 08:24:25
	-0700
From: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
To: Chris Trobridge <christrobridge@hotmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Compiling different version of IGB as a kernel module
Thread-Index: AQHRWveiELk3DI3eMkKIJji46LcBt58Ubo6A///AHbY=
Date: Sat, 30 Jan 2016 15:24:25 +0000
Message-ID: <own7nl2t8yolo4yuihi16vy5.1454167442792@email.android.com>
References: <9e122189105049f0aa35aade046ef260@Ek.usurf.usu.edu>,
	<DUB130-W1777C927DF7657274834B1DADC0@phx.gbl>
In-Reply-To: <DUB130-W1777C927DF7657274834B1DADC0@phx.gbl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
MIME-Version: 1.0
Subject: Re: Compiling different version of IGB as a kernel module
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
X-List-Received-Date: Sat, 30 Jan 2016 15:24:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Chris,

I have, but the problem there is that the driver patch I have apples to ver=
sion 5.3.2 or newer. I'll look into it more, but I'd like to understand wha=
t is going on in the build and why it is falling.

Thanks!
Jon



Sent from my Verizon Wireless 4G LTE smartphone


-------- Original message --------
From: Chris Trobridge <christrobridge@hotmail.com>
Date: 2016/01/30 5:13 AM (GMT-07:00)
To: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>, yocto@yoctoproject.org
Subject: RE: [yocto] Compiling different version of IGB as a kernel module

Hi Jon,

As an alternative, have you considered patching the igb source that already=
 exists within yocto?

Regards,
Chris

From: Jonathan.Haws@sdl.usu.edu
To: yocto@yoctoproject.org
Date: Sat, 30 Jan 2016 00:46:20 +0000
Subject: [yocto] Compiling different version of IGB as a kernel module


Hello all!

I am trying to get the Intel IGB driver compiling as a kernel module
using source downloaded from SF.  I'm doing this because I was given a
patch to enable an external PPS to provide a time source to the PTP
mechanisms in the device.

I've got the recipe setup and it makes it to the do_compile step,
however it fails here with some interesting output.  First, I get a
message from the shell stating that -- is an invalid option.  Second,
cc1 fails with a bad option.  I'm not even sure where to start debugging
this!

I did have to patch the Makefile to get it to find the kernel sources
and build files correctly.  I've attached my recipe and that patch file.

I've also attached the output of do_compile - hopefully someone can look
at this and see what I am doing wrong!

One thing I have tried is I went down into the tmp/work directory where
the IGB driver was being built and tried running the same make command
(without the CC=3D, AR=3D, LD=3D settings, since those are not on my path..=
.)
and it seemed to build just fine, so it seems like it is something to do
with the toolchain, but that's all I can tell.

Thoughts?

Thanks!
Jon


--
Jonathan R. Haws
Embedded Engineer
Space Dynamics Laboratory
(435) 713-3489
jhaws@sdl.usu.edu

-- _______________________________________________ yocto mailing list yocto=
@yoctoproject.org https://lists.yoctoproject.org/listinfo/yocto

