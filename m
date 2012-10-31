Return-Path: <PatrickTurley@gamestop.com>
Received: from gsironport1.gamestop.com (mail1.gamestop.com [12.25.107.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2112E006C1
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 09:16:13 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.80,687,1344229200"; 
   d="scan'208";a="1224607"
Received: from unknown (HELO GV1HQPEX01.babgsetc.pvt) ([172.22.1.244])
	by gsironport1.gamestop.com with ESMTP; 31 Oct 2012 11:16:13 -0500
Received: from GV1HQPEX03.babgsetc.pvt ([169.254.1.67]) by
	GV1HQPEX01.babgsetc.pvt ([172.22.1.191]) with mapi id 14.02.0318.004;
	Wed, 31 Oct 2012 11:16:12 -0500
From: Patrick Turley <PatrickTurley@gamestop.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Disguising Yocto sysroot as Code Sourcery tool chain
Thread-Index: AQHNt4ML+jnOLWyRFUemHs69rygu8A==
Date: Wed, 31 Oct 2012 16:16:12 +0000
Message-ID: <5BEFD653CA8A8D47AA194ED30AB5968C301C85@GV1HQPEX03.babgsetc.pvt>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.1.244]
MIME-Version: 1.0
Subject: Disguising Yocto sysroot as Code Sourcery tool chain
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
X-List-Received-Date: Wed, 31 Oct 2012 16:16:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <FD04A206CA0BDF4997B10061E80A6B36@gamestop.com>
Content-Transfer-Encoding: quoted-printable

We have a piece of software that is normally built with a Code Sourcery too=
l chain. We want to build it with a Yocto-produced tool chain instead.

The shortest (though admittedly "hackiest") path to success may be to creat=
e a file tree that *looks* like a Code Sourcery tool chain, but is actually=
 populated with executables and other files from a Yocto sysroot.

I thought it worthwhile to ask this mailing list and see if anyone else has=
 done anything similar (Google turned up nothing).

If you have anything to share about your experiences, I would be very grate=
ful.


