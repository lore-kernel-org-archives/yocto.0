Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E8B8E00BD0; Sat, 19 Dec 2015 01:25:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 430 seconds by postgrey-1.32 at yocto-www;
	Sat, 19 Dec 2015 01:25:23 PST
Received: from mailout09.t-online.de (mailout09.t-online.de [194.25.134.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DCF1E007B4
	for <yocto@yoctoproject.org>; Sat, 19 Dec 2015 01:25:23 -0800 (PST)
Received: from fwd29.aul.t-online.de (fwd29.aul.t-online.de [172.20.26.134])
	by mailout09.t-online.de (Postfix) with SMTP id 7935E3C5291
	for <yocto@yoctoproject.org>; Sat, 19 Dec 2015 10:18:12 +0100 (CET)
Received: from [192.168.2.113]
	(TWKhvwZHwh+Ezvf2yqjiU66vzLHqJVdcPzMzww6qq3oro2PPA-Hiu3ptN5Pn8ibwAJ@[79.199.35.32])
	by fwd29.t-online.de with (TLSv1:ECDHE-RSA-AES256-SHA encrypted)
	esmtp id 1aADeW-1d9nTk0; Sat, 19 Dec 2015 10:18:12 +0100
From: Markus Volk <f_l_k@t-online.de>
Message-Id: <0E803250-E909-436A-88B9-BB90C2C6FBAF@t-online.de>
Date: Sat, 19 Dec 2015 10:18:11 +0100
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Mailer: Apple Mail (2.3112)
X-ID: TWKhvwZHwh+Ezvf2yqjiU66vzLHqJVdcPzMzww6qq3oro2PPA-Hiu3ptN5Pn8ibwAJ
X-TOI-MSGID: 5472c897-fd74-462d-9546-841fbf72f8b1
Subject: uclibc
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
X-List-Received-Date: Sat, 19 Dec 2015 09:25:27 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

i=C2=B4m trying to build an image using the poky master branch and i=C2=B4=
m stuck right at the beginning with this error message:

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'nativesdk-glibc' (but =
/home/flk/yocto/poky/meta/recipes-core/meta/uninative-tarball.bb =
RDEPENDS on or otherwise requires it)
ERROR: nativesdk-glibc was skipped: =
PREFERRED_PROVIDER_virtual/nativesdk-x86_64-oesdk-linux-libc-for-gcc set =
to nativesdk-uclibc, not nativesdk-glibc
NOTE: Runtime target 'nativesdk-glibc' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['nativesdk-glibc']
ERROR: Required build target 'neutrino-image' has no buildable =
providers.
Missing or unbuildable dependency chain was: ['neutrino-image', =
'uninative-tarball', 'nativesdk-glibc']

Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.

Building the image with TCLIBC =3D =E2=80=9Eglibc=E2=80=9C just works =
fine. i=C2=B4m also capable to build an uclibc image with poky using the =
jethro branch without errors

any ideas,

Markus Volk=

