Return-Path: <PatrickTurley@gamestop.com>
Received: from gsironport1.gamestop.com (mail1.gamestop.com [12.25.107.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36451E01480
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 08:43:54 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.84,515,1355119200"; 
   d="scan'208";a="7120490"
Received: from unknown (HELO GV1HQPEX02.babgsetc.pvt) ([172.22.1.244])
	by gsironport1.gamestop.com with ESMTP; 22 Jan 2013 10:43:53 -0600
Received: from GV1HQPEX03.babgsetc.pvt ([169.254.1.225]) by
	GV1HQPEX02.babgsetc.pvt ([172.22.1.192]) with mapi id 14.02.0318.004;
	Tue, 22 Jan 2013 10:43:53 -0600
From: Patrick Turley <PatrickTurley@gamestop.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Adding ALSA to the Yocto SDK
Thread-Index: AQHN+B4WLsv3IxjS3EyIVDhGEOlyI5hUXhPQgABw34CAASS4AA==
Date: Tue, 22 Jan 2013 16:43:52 +0000
Message-ID: <5BEFD653CA8A8D47AA194ED30AB5968C36FA44@GV1HQPEX03.babgsetc.pvt>
References: <5BEFD653CA8A8D47AA194ED30AB5968C36D6FA@GV1HQPEX03.babgsetc.pvt>
	<C6510F6D410BB64A8C15398EDC6B847C57DD5B1F@ORSMSX101.amr.corp.intel.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C36F004@GV1HQPEX03.babgsetc.pvt>
In-Reply-To: <5BEFD653CA8A8D47AA194ED30AB5968C36F004@GV1HQPEX03.babgsetc.pvt>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.1.244]
MIME-Version: 1.0
Subject: Re: Adding ALSA to the Yocto SDK
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 22 Jan 2013 16:43:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <91D4EA3819AEE04B91B2A7B847D6ABB8@gamestop.com>
Content-Transfer-Encoding: quoted-printable


On Jan 21, 2013, at 5:16 PM, Patrick Turley <PatrickTurley@gamestop.com> wr=
ote:

> On Jan 21, 2013, at 4:35 PM, "Zhang, Jessica" <jessica.zhang@intel.com> w=
rote:
>=20
>> Hi Patrick,
>>=20
>> Since you're able to add the dev packages to images, just do bitbake you=
rimagewithALSA -c populate_sdk, that should generate a SDK contains ALSA.  =
By default, meta-toolchain-sdk is predefined unless you use "-c populate_sd=
k" to enforce the SDK sysroot to match your rootfs.
>=20
>=20
> All the clues rolling in are starting to knit together.
>=20
> At first, I regarded the "populate_sdk" task as a hack, since it seemed t=
o be expressing something that was naturally a "target" -- not a "task."
>=20
> Now I see that it is a way to connect an image to a corresponding SDK. Th=
at makes a *lot* more sense.

One of my colleagues did some research on this and I believe we've found th=
e best way for *us* to do this.

We tried using a single image recipe. We tried both bitbake'ing this recipe=
 directly *and* using the "populate_sdk" task with it. This gave us the SDK=
 we needed, but it resulted in development header files appearing in the ta=
rget root file system.

Like core-image-sato and core-image-sato-sdk, we'll have have two images:

1) A target image recipe.
We will bitbake this recipe directly to produce the target image. We will *=
never* use the "populate_sdk" task with this recipe.

2) An SDK image recipe.
This recipe "require's" the target image recipe and adds various developmen=
t packages to it. We will *never* bitbake this recipe directly because we h=
ave no interest in the root file system it would produce. We will *only* us=
e the "populate_sdk" task with this recipe.

This gives us the clean target root file system we need *and* the SDK we ne=
ed.

The disadvantage is that we have to keep two recipe files in sync with each=
 other. Fortunately, these are low-frequency and low-volume changes, so we =
think this is a reasonable trade-off.


