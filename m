Return-Path: <corneliux.stoicescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6559EE004D9; Mon, 21 Jul 2014 06:37:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14BE4E003D6
	for <yocto@yoctoproject.org>; Mon, 21 Jul 2014 06:37:31 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Jul 2014 06:31:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,701,1400050800"; d="scan'208";a="576437921"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by orsmga002.jf.intel.com with ESMTP; 21 Jul 2014 06:37:23 -0700
Received: from irsmsx153.ger.corp.intel.com (163.33.192.75) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 21 Jul 2014 14:35:30 +0100
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.62]) by
	IRSMSX153.ger.corp.intel.com ([169.254.9.233]) with mapi id
	14.03.0123.003; Mon, 21 Jul 2014 14:35:30 +0100
From: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>
To: Robert Berger <gmane@reliableembeddedsystems.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] automated hardware testing
Thread-Index: AQHPm1kUdnh9EkosyUiwOTlebcwXJpuqmEIA
Date: Mon, 21 Jul 2014 13:35:29 +0000
Message-ID: <33115ABC4887814E8A92A08FBC93416B23BF9E53@IRSMSX103.ger.corp.intel.com>
References: <53BD0C5B.3090506@reliableembeddedsystems.com>
In-Reply-To: <53BD0C5B.3090506@reliableembeddedsystems.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: automated hardware testing
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
X-List-Received-Date: Mon, 21 Jul 2014 13:37:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Robert,

Sorry for the late reply, I missed this mail.

We do have an almost fully automated way of doing what you need. First of a=
ll, how do you want to run the automated tests? From the autobuilder as a b=
uild step OR from another machine (this will imply publishing the images on=
 a http server).

To give you more info to chew on, what you have to do is http://www.yoctopr=
oject.org/docs/current/dev-manual/dev-manual.html#performing-automated-runt=
ime-testing . The TEST_TARGET would have to be set to BeagleBoneTarget and =
other fields like TEST_SERIALCONTROL_CMD will also have to be set.

Regards,
Corneliu

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Robert Berger
> Sent: Wednesday, July 09, 2014 12:33 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] automated hardware testing
>=20
> Hi,
>=20
> I just noticed this [1] and there are rumors that in the next release har=
dware
> testing will also work with yocto-autobuilder.
>=20
> I do have a couple of boards deployer in my lab and build with autobuilde=
r
> images for them.
>=20
> The consoles of my boards are connected via conservers to ethernet and I
> can also remotely switch on/off power.
>=20
> For the beagle bone white the setup is more complex in order to press the
> reset button remotely and turn on/off the power over the USB cable
> remotely.
>=20
> My goal would be to build something with autobuilder, deploy to a board a=
nd
> run some tests.
>=20
> Is this feasible with my current infrastructure?
> Can someone please guide me in the right directions.
>=20
> Regards,
>=20
> Robert
>=20
> [1]
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-yocto-
> bsp/lib/oeqa/controllers/beaglebonetarget.py...I
> read the system requirements label on a software package recently. It sai=
d
> "requires Windows NT or better". So I installed Unix. -- from a FAQ
>=20
> My public pgp key is available,at:
> http://pgp.mit.edu:11371/pks/lookup?op=3Dget&search=3D0x90320BF1
>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

