Return-Path: <irish_guy@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DEC5E009E5; Fri, 17 Jul 2015 08:19:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (irish_guy[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Fri, 17 Jul 2015 08:19:30 PDT
Received: from DUB004-OMC3S4.hotmail.com (dub004-omc3s4.hotmail.com
	[157.55.2.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9837E009C3
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 08:19:30 -0700 (PDT)
Received: from DUB116-W136 ([157.55.2.9]) by DUB004-OMC3S4.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Fri, 17 Jul 2015 08:18:26 -0700
X-TMN: [Hrra81s6OYIQtUxdedAF3WmOrt1QhQXJ]
X-Originating-Email: [irish_guy@hotmail.com]
Message-ID: <DUB116-W136650FCAAE16AB02294C4E92980@phx.gbl>
From: Louis Ryan <irish_guy@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 17 Jul 2015 16:18:25 +0100
Importance: Normal
In-Reply-To: <10D57FBA9FD7C14FB49EE17590E1AF9453C901C3@svr-exc-03.intern.wipotec.de>
References: <10D57FBA9FD7C14FB49EE17590E1AF9453C901C3@svr-exc-03.intern.wipotec.de>
MIME-Version: 1.0
X-OriginalArrivalTime: 17 Jul 2015 15:18:26.0354 (UTC)
	FILETIME=[D40C9120:01D0C0A3]
Subject: Kernel header files missing
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: irish_guy@hotmail.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 17 Jul 2015 15:19:33 -0000
Content-Type: multipart/alternative;
	boundary="_0849bd99-a673-4646-b78a-f8f4ae49300a_"

--_0849bd99-a673-4646-b78a-f8f4ae49300a_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi=2C

I am trying to do loadable kernel module development using the yocto produc=
ed sdk.

I can create the sdk and it works fine for application development.

There appears to be some header files missing for kernel module development=
.

These are the steps I went through ( I am using Beaglebone Black )

mkdir bb-yocto
cd bb-yocto
git clone -b daisy git://git.yoctoproject.org/poky.git
cd poky
source oe-init-build-env build

vi conf/local.conf
MACHINE ?=3D "beaglebone"

bitbake core-image-minimal

bitbake core-image-minimal -c populate_sdk

cd tmp/deploy/sdk

./poky-eglibc-x86_64-core-image-minimal-cortexa8hf-vfp-neon-toolchain-1.6.3=
.sh

some header files I want to use fro kernel module development like kernel.h=
=2C kdev_t.h appear in=20

/opt/poky/bb-linux/sysroots/cortexa8hf-vfp-neon-poky-linux-gnueabi/usr/incl=
ude/linux

but some are missing like=2C module.h=2C device.h=2C cdev.h=2Cuaccess.h.


Is there something else I need to do to get the missing files?

Thanks
Louis
 		 	   		  =

--_0849bd99-a673-4646-b78a-f8f4ae49300a_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>Hi=2C<br><br>I am trying to do l=
oadable kernel module development using the yocto produced sdk.<br><br>I ca=
n create the sdk and it works fine for application development.<br><br>Ther=
e appears to be some header files missing for kernel module development.<br=
><br>These are the steps I went through ( I am using Beaglebone Black )<br>=
<br>mkdir bb-yocto<br>cd bb-yocto<br>git clone -b daisy git://git.yoctoproj=
ect.org/poky.git<br>cd poky<br>source oe-init-build-env build<br><br>vi con=
f/local.conf<br>MACHINE ?=3D "beaglebone"<br><br>bitbake core-image-minimal=
<br><br>bitbake core-image-minimal -c populate_sdk<br><br>cd tmp/deploy/sdk=
<br><br>./poky-eglibc-x86_64-core-image-minimal-cortexa8hf-vfp-neon-toolcha=
in-1.6.3.sh<br><br>some header files I want to use fro kernel module develo=
pment like kernel.h=2C kdev_t.h appear in <br><br>/opt/poky/bb-linux/sysroo=
ts/cortexa8hf-vfp-neon-poky-linux-gnueabi/usr/include/linux<br><br>but some=
 are missing like=2C module.h=2C device.h=2C cdev.h=2Cuaccess.h.<br><br><br=
>Is there something else I need to do to get the missing files?<br><br>Than=
ks<br>Louis<br> 		 	   		  </div></body>
</html>=

--_0849bd99-a673-4646-b78a-f8f4ae49300a_--
