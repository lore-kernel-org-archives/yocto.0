Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA297E00A61; Mon, 21 Nov 2016 22:14:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50032E009CA
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 22:14:45 -0800 (PST)
Received: from nbhjo (1-160-241-187.dynamic.hinet.net [1.160.241.187])
	by msfrf2606.sfr.fr (SMTP Server) with ESMTP id A31D81C000409;
	Tue, 22 Nov 2016 07:14:42 +0100 (CET)
Received: from nbhjo (1-160-241-187.dynamic.hinet.net [1.160.241.187])	(using
	TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2606.sfr.fr (SMTP Server) with ESMTPSA;
	Tue, 22 Nov 2016 07:14:40 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Trevor Woerner' <twoerner@gmail.com>, 'Khem Raj' <raj.khem@gmail.com>
References: <002d01d24304$32aa08a0$97fe19e0$@neuf.fr>
	<CAMKF1sqt2cA5DbPDAwo2=SNUqPuPatavhtQYpOnecQ=i+wc45w@mail.gmail.com>
	<20161121230726.GA14157@openSUSE-i7.site>
	<5e81cb71-ff35-4525-0e53-ded77e59dad2@gmail.com>
	<20161122053929.GB16570@openSUSE-i7.site>
In-Reply-To: <20161122053929.GB16570@openSUSE-i7.site>
Date: Tue, 22 Nov 2016 07:14:36 +0100
Message-ID: <002401d24487$b6930d90$23b928b0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
thread-index: AQIawOVK57tZwul4C/g88Qpk1LABwwIQejinAyX3C2YB+KZgQQIT+5PBoAlz97A=
X-sfr-mailing: LEGIT
Cc: yocto@yoctoproject.org
Subject: Re: [raspberrypi] raspi3 vs raspi2
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
X-List-Received-Date: Tue, 22 Nov 2016 06:14:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Trevor,

I've never tried with 4.8, but I sent patches to the list that add 64 =
bits support for 4.7.10 - and this one, I tested and it is working.
It's probably possible to port 64 bits to 4.4 as well, but I'm not sure =
if it's worth the effort.
I have 4.7 covered, there is some "built-in" level of support in 4.8 =
(but I don't know what's working or not there), and I'll sure work it =
for 4.9 soon.

Herve

-----Original Message-----
From: Trevor Woerner [mailto:twoerner@gmail.com]=20
Sent: mardi 22 novembre 2016 06:39
To: Khem Raj <raj.khem@gmail.com>
Cc: Herve Jourdain <herve.jourdain@neuf.fr>; yocto@yoctoproject.org
Subject: Re: [yocto] [raspberrypi] raspi3 vs raspi2

On Mon 2016-11-21 @ 04:09:50 PM, Khem Raj wrote:
> 4.4 does not support 64-bit pi3, do you set the PREFERRED_VERSION in=20
> local conf metadata ?

Yes, my conf/local.conf contains:

	PREFERRED_VERSION_linux-raspberrypi =3D "4.8%"

If you clone git://github.com/raspberrypi/linux.git and checkout the =
4.8.y branch, you'll see that there's no commit
ea6eeaff07c4881e6287fe3e7ea58fc30e5569d7 anywhere in that branch. In =
fact there is no such commit anywhere in that repository:

	$ git branch --contains ea6eeaff07c4881e6287fe3e7ea58fc30e5569d7
	error: no such commit ea6eeaff07c4881e6287fe3e7ea58fc30e5569d7

>=20
> On 11/21/16 3:07 PM, Trevor Woerner wrote:
> > On Sun 2016-11-20 @ 11:28:48 AM, Khem Raj wrote:
> >> I gave a whirl at building and looking closely at them. As it seems =

> >> the OE core patch is not needed since for armv8 we want to keep it=20
> >> like x86 ( common ) I have therefore made changes to your patches=20
> >> and staged them here.
> >>
> >> https://github.com/kraj/meta-raspberrypi/commits/kraj/master
> >>
> >> Which should work without any change in OE-Core, secondly I have=20
> >> further divided them and also fixed 4.8 to compile arm64.
> >=20
> > I tried giving this a whirl.
> >=20
> > Maybe the order of my layers in bblayers isn't correct, but by=20
> > default my build uses 4.4% instead of 4.8%.
> >=20
> > conf/machine/raspberrypi3-64.conf includes:
> > 	...
> > 	include conf/machine/include/rpi-base.inc
> > 	...
> > 	PREFERRED_VERSION_linux-raspberrypi ?=3D "4.8.%"
> >=20
> > conf/machine/include/rpi-base.inc contains:
> > 	...
> > 	include conf/machine/include/rpi-default-versions.inc
> > 	...
> >=20
> > conf/machine/include/rpi-default-versions.inc contains:
> > 	...
> > 	PREFERRED_VERSION_linux-raspberrypi ?=3D "4.4.%"
> >=20
> > In any case when I try building with 4.4 I get:
> >=20
> > 	ERROR: linux-raspberrypi-1_4.4.28+gitAUTOINC+5afda48c34-r0 =
do_kernel_configme: No default configuration for raspberrypi3-64 / =
bcmrpi3_defconfig available.
> > 	ERROR: linux-raspberrypi-1_4.4.28+gitAUTOINC+5afda48c34-r0=20
> > do_kernel_configme: Function failed: do_kernel_configme (log file is =

> > located at=20
> > /z/layerindex-master/raspi3-64/tmp-glibc/work/raspberrypi3_64-oe-lin
> > ux/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_k
> > ernel_configme.15498)
> >=20
> > When I switch to 4.8 explicitly in my conf/local.conf I get:
> >=20
> > 	ERROR: linux-raspberrypi-1_4.8.8+gitAUTOINC+ea6eeaff07-r0 do_fetch: =
Fetcher failure: Unable to find revision =
ea6eeaff07c4881e6287fe3e7ea58fc30e5569d7 in branch rpi-4.8.y even from =
upstream
> > 	ERROR: linux-raspberrypi-1_4.8.8+gitAUTOINC+ea6eeaff07-r0 do_fetch: =
Fetcher failure for URL: =
'git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-4.8.y=
'. Unable to fetch URL from any source.
> >=20
> > My build configuration is:
> > 	Build Configuration:
> > 	BB_VERSION        =3D "1.32.0"
> > 	BUILD_SYS         =3D "x86_64-linux"
> > 	NATIVELSBSTRING   =3D "opensuse-42.1"
> > 	TARGET_SYS        =3D "aarch64-oe-linux"
> > 	MACHINE           =3D "raspberrypi3-64"
> > 	DISTRO            =3D "nodistro"
> > 	DISTRO_VERSION    =3D "nodistro.0"
> > 	TUNE_FEATURES     =3D "aarch64"
> > 	TARGET_FPU        =3D ""
> > 	meta-raspberrypi__kraj =3D =
"kraj/master:4735e7cde210b2b0b855bca1eb90ef4adca8019b"
> > 	meta              =3D =
"master:a675b2c89e477af088faee9b3be96eae19a85f0b"
> > 	meta-oe          =20
> > 	meta-gnome        =3D =
"master:7f8915a6ecdd5c4b03c7e5b5f1fa903f89c2d560"
> >=20
>=20



