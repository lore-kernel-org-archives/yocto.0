Return-Path: <prvs=22116a6d0=Mikko.Rapeli@bmw.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1356E00B0B; Thu, 21 Nov 2019 01:48:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [68.232.133.201 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Thu, 21 Nov 2019 01:48:25 PST
Received: from esa1.bmw.c3s2.iphmx.com (esa1.bmw.c3s2.iphmx.com
	[68.232.133.201])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2140E0085D
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 01:48:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
	t=1574329706; x=1605865706;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=iR5y1KZVOpcA4A//BqyvmAKaR5uFnFQofNOviQ2/LUU=;
	b=b2UQgAy5mcznSQUGCcXsIO3V3kP2ySymUKKukpSbEBr9qi89tsU984Rt
	tb53V1a9LN3tI99no0YLS/Ew5DWBNQ7/0zLcHB+BD5w63GkPDrsvzwDvd
	0VB31qigDIWUaxILByoUb+Ko9uaq5mc13gd5b51BH3WUWLd0qyeIfwGPB k=;
IronPort-SDR: XoUXHonZJjHc0HydDrK4jBcXz7TPM1o1zzI/klX/UiAtzeGfvYqrNa+TVOB291Q7E5qcn3QTDn
	Me0bPrP05QD4FcscMUlEDs+oEDdFt2G/VGUUQmscz4hocUwgRLQlX32y9nrxbBy2cQlvZ3yfd9
	tWG4oxM70gv5NXd2YN51++enCasTlaxlyN4wu6ENVu6seFT3c2NHQpN/1Xdnqh+ztc6wEasoRl
	NHfvoYc04oPc2rkTae+LzaMdJOYBeRFWP6zSsexGRUojai2gnOYVgM/t+V4FLU2kEYoG6DGDw2
	edw=
Received: from esagw6.bmwgroup.com (HELO esagw6.muc) ([160.46.252.49]) by
	esa1.bmw.c3s2.iphmx.com with ESMTP/TLS; 21 Nov 2019 10:47:22 +0100
Received: from esabb4.muc ([160.50.100.33])  by esagw6.muc with ESMTP/TLS;
	21 Nov 2019 10:47:22 +0100
Received: from smucm10j.bmwgroup.net (HELO smucm10j.europe.bmw.corp)
	([160.48.96.46])
	by esabb4.muc with ESMTP/TLS; 21 Nov 2019 10:47:21 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by
	smucm10j.europe.bmw.corp
	(160.48.96.46) with Microsoft SMTP Server (TLS;
	Thu, 21 Nov 2019 10:47:18 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
	smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005;
	Thu, 21 Nov 2019 10:47:18 +0100
From: <Mikko.Rapeli@bmw.de>
To: <r.barrass@bassettelectronics.com>
Thread-Topic: [yocto] Is Yocto the right fit for my project?
Thread-Index: AdWfo0hjh9hszpdJTWy+L85dmCuwRAApP7SA
Date: Thu, 21 Nov 2019 09:47:18 +0000
Message-ID: <20191121094717.GF3527@hiutale>
References: <LO3P265MB1833034A1F2816101F2B3F1E9C4F0@LO3P265MB1833.GBRP265.PROD.OUTLOOK.COM>
In-Reply-To: <LO3P265MB1833034A1F2816101F2B3F1E9C4F0@LO3P265MB1833.GBRP265.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Is Yocto the right fit for my project?
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
X-List-Received-Date: Thu, 21 Nov 2019 09:48:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <C1D99BB42011224E8E58B238C7B145C9@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 20, 2019 at 01:12:52PM +0000, Richard Barrass wrote:
> Hello,
>=20
> I am a lead engineer on project where we run a well-known Linux distribut=
ion on-top of a SBC (Intel Quad Pentium processor based) driving a 27" disp=
lay. We have a 32GB SSD to run from, which we partition with multiple EXT4 =
partitions to help with potential corruption mitigation if the device is sw=
itched off 'hard'.
>=20
> But, with the well-known Linux distribution comes a lot of things we don'=
t need, plus the potential ability to 'break' in to our application which i=
s running full-screen.
>=20
> We basically need
>=20
> QT 5.12 runtime (our application)
> SSH
> OpenVPN
> Wifi
> Ethernet
> Modem (via Telit modem)
> USB-ACM
> USB-Memory stick
>=20
> Is this something I should be looking to the yocto project for, or should=
 I be looking at a more 'traditional' custom linux distro.
>=20
> The only other aspect, is that we have future plans to cost reduce the ap=
plication to be running on a Pi based, 10" display system ...
>=20
> Any thoughts and ideas would be appreciated.

Sounds like yocto could fit to your needs well. My personal experiences sum=
marized:

Pros with yocto:
 * configuration of everything is possible
 * BSP support available for various SoC's and boards
 * optimization for size and disabling not-needed functionality is relative=
ly easy
 * BSP, OS vendor and community support is available
 * licensing policies can be configured for the build, e.g. avoid GPLv3
 * test tooling and infrastructure is provided, ptests and selftests, which=
 can
   be reused for product specific ones
 * documentation is good, mega manual
 * fast moving and following latest open source component releases

Cons with yocto:
 * steep learning curve with bitbake and yocto distro configuration
 * need to recompile everything
 * everything needs to be configured, defaults may not be available
 * long term support not available from community directly, yet at least,
   though OS vendors do provide this for a fee
 * BSP support quality varies and may conflict with non-HW specific SW part=
s
 * fast moving and following latest open source component releases

Pros with well known Linux distros:
 * default configurations quite often work out of the box
 * no need to recompile everything
 * minimal BSP binaries usually available
 * long term support quite often available
 * large package collection enable fast prototyping
 * larger developer base compared to yocto

Cons with well known Linux distros:
 * dependencies are complex and images larger than needed for product
 * recompiling and customizing large set of packages may be difficult
 * cross compiling may be trickier
 * BSP deliveries may be outdated
 * licensing policies may be hard to implement, e.g. avoid GPLv3 in product=
 images
 * integrated test tooling may not be available

In short I would say, with yocto you need to configure and optimize
and figure out how to maintain. With well known Linux distro you will
struggle to configure and optimize but long term maintenance will be
covered by an LTS.

"With enough thrust any pig will fly" :)

Hope this helps,

-Mikko=

