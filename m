Return-Path: <PatrickTurley@gamestop.com>
Received: from gsironport1.gamestop.com (mail1.gamestop.com [12.25.107.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EED4E00348
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2013 13:27:19 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.84,508,1355119200"; 
   d="scan'208";a="7075454"
Received: from unknown (HELO GV1HQPEX02.babgsetc.pvt) ([172.22.1.244])
	by gsironport1.gamestop.com with ESMTP; 21 Jan 2013 15:27:19 -0600
Received: from GV1HQPEX03.babgsetc.pvt ([169.254.1.225]) by
	GV1HQPEX02.babgsetc.pvt ([172.22.1.192]) with mapi id 14.02.0318.004;
	Mon, 21 Jan 2013 15:27:19 -0600
From: Patrick Turley <PatrickTurley@gamestop.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Adding ALSA to the Yocto SDK
Thread-Index: AQHN+B4WLsv3IxjS3EyIVDhGEOlyIw==
Date: Mon, 21 Jan 2013 21:27:17 +0000
Message-ID: <5BEFD653CA8A8D47AA194ED30AB5968C36D6FA@GV1HQPEX03.babgsetc.pvt>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.1.244]
MIME-Version: 1.0
Subject: Adding ALSA to the Yocto SDK
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
X-List-Received-Date: Mon, 21 Jan 2013 21:27:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <FF0C20CD4710C74E84B3519C9F631572@gamestop.com>
Content-Transfer-Encoding: quoted-printable

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


Other items of note=85

-- Executing "bitbake alsa-lib" *did* put the expected files within our sys=
root (under tmp/sysroots). Even so (as we intuitively expected) executing "=
bitbake meta-toolchain-sdk" afterward did *not* put them into the SDK. We c=
onclude that having a package built and available for the SDK doesn't neces=
sarily get it into the SDK.

-- Adding ALSA to our image also caused the correct files to end up in our =
sysroot but, again, nothing appeared in the SDK. We conclude that the conte=
nts of the image do *not* dictate the contents of the SDK.


