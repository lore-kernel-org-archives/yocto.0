Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2A92E011ED
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2013 14:35:26 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 21 Jan 2013 14:35:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,508,1355126400"; d="scan'208";a="276671955"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga001.fm.intel.com with ESMTP; 21 Jan 2013 14:35:26 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.50]) with mapi id
	14.01.0355.002; Mon, 21 Jan 2013 14:35:26 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Patrick Turley <PatrickTurley@gamestop.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Adding ALSA to the Yocto SDK
Thread-Index: AQHN+B4WLsv3IxjS3EyIVDhGEOlyI5hUXhPQ
Date: Mon, 21 Jan 2013 22:35:25 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C57DD5B1F@ORSMSX101.amr.corp.intel.com>
References: <5BEFD653CA8A8D47AA194ED30AB5968C36D6FA@GV1HQPEX03.babgsetc.pvt>
In-Reply-To: <5BEFD653CA8A8D47AA194ED30AB5968C36D6FA@GV1HQPEX03.babgsetc.pvt>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
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
X-List-Received-Date: Mon, 21 Jan 2013 22:35:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Patrick,

Since you're able to add the dev packages to images, just do bitbake yourim=
agewithALSA -c populate_sdk, that should generate a SDK contains ALSA.  By =
default, meta-toolchain-sdk is predefined unless you use "-c populate_sdk" =
to enforce the SDK sysroot to match your rootfs.

Cheers,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Patrick Turley
Sent: Monday, January 21, 2013 1:27 PM
To: yocto@yoctoproject.org
Subject: [yocto] Adding ALSA to the Yocto SDK

I've been working on re-targeting some code from a vendor's board to our ow=
n board.

For libraries and other low-level code, everything's been fine. For test ap=
plications, I'm running into a dependency on the header file alsa/asoundlib=
.h, which is obviously part of ALSA.

I've been building our SDK with:

    bitbake meta-toolchain-sdk

This gives us most everything we need, but it does *not* include header fil=
es and libraries for ALSA. That actually seems perfectly reasonable to me -=
- not everyone needs ALSA support in their applications, so the *default* S=
DK shouldn't be burdened with that.

We *do* need it. As I see it, there are two possibilities:

1) There's something I can do that will cause OE/Yocto to include ALSA head=
er files in the SDK I produce. If that's the case, can you tell me what I n=
eed to do?

2) The ALSA header files aren't *supposed* to be in the SDK -- I'm supposed=
 to be delivering them to the compilation process in another way. If that's=
 the case, can you tell me what I need to do?


Other items of note...

-- Executing "bitbake alsa-lib" *did* put the expected files within our sys=
root (under tmp/sysroots). Even so (as we intuitively expected) executing "=
bitbake meta-toolchain-sdk" afterward did *not* put them into the SDK. We c=
onclude that having a package built and available for the SDK doesn't neces=
sarily get it into the SDK.

-- Adding ALSA to our image also caused the correct files to end up in our =
sysroot but, again, nothing appeared in the SDK. We conclude that the conte=
nts of the image do *not* dictate the contents of the SDK.

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

