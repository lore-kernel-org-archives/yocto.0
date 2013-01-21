Return-Path: <PatrickTurley@gamestop.com>
Received: from gsironport2.gamestop.com (mail2.gamestop.com [12.25.107.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0360AE006DC
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2013 15:16:13 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.84,510,1355119200"; 
   d="scan'208";a="7327252"
Received: from unknown (HELO GV1HQPEX01.babgsetc.pvt) ([172.22.1.244])
	by gsironport2.gamestop.com with ESMTP; 21 Jan 2013 17:16:12 -0600
Received: from GV1HQPEX03.babgsetc.pvt ([169.254.1.225]) by
	GV1HQPEX01.babgsetc.pvt ([172.22.1.191]) with mapi id 14.02.0318.004;
	Mon, 21 Jan 2013 17:16:11 -0600
From: Patrick Turley <PatrickTurley@gamestop.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Thread-Topic: Adding ALSA to the Yocto SDK
Thread-Index: AQHN+B4WLsv3IxjS3EyIVDhGEOlyI5hUXhPQgABw34A=
Date: Mon, 21 Jan 2013 23:16:11 +0000
Message-ID: <5BEFD653CA8A8D47AA194ED30AB5968C36F004@GV1HQPEX03.babgsetc.pvt>
References: <5BEFD653CA8A8D47AA194ED30AB5968C36D6FA@GV1HQPEX03.babgsetc.pvt>
	<C6510F6D410BB64A8C15398EDC6B847C57DD5B1F@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C57DD5B1F@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.1.244]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 21 Jan 2013 23:16:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <7043C6CD734C22469CEC187A6440036B@gamestop.com>
Content-Transfer-Encoding: quoted-printable

On Jan 21, 2013, at 4:35 PM, "Zhang, Jessica" <jessica.zhang@intel.com> wro=
te:

> Hi Patrick,
>=20
> Since you're able to add the dev packages to images, just do bitbake your=
imagewithALSA -c populate_sdk, that should generate a SDK contains ALSA.  B=
y default, meta-toolchain-sdk is predefined unless you use "-c populate_sdk=
" to enforce the SDK sysroot to match your rootfs.


All the clues rolling in are starting to knit together.

At first, I regarded the "populate_sdk" task as a hack, since it seemed to =
be expressing something that was naturally a "target" -- not a "task."

Now I see that it is a way to connect an image to a corresponding SDK. That=
 makes a *lot* more sense.


