Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FB25E00CAD; Sun, 17 Feb 2019 06:37:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [81.236.60.154 listed in list.dnswl.org]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from v-smtpout1.han.skanova.net (v-smtpout1.han.skanova.net
	[81.236.60.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8149CE00C50
	for <yocto@yoctoproject.org>; Sun, 17 Feb 2019 06:37:04 -0800 (PST)
Received: from [10.175.196.108] ([37.123.169.62]) by cmsmtp with ESMTPA
	id vNZ0gdYuGcCEovNZ0g0zwV; Sun, 17 Feb 2019 15:37:03 +0100
Mime-Version: 1.0 (1.0)
From: Ulf Samuelsson <yocto@emagii.com>
X-Mailer: iPad Mail (15F79)
In-Reply-To: <CAJxG=fn_Ev42cWFupLf3ayU4-+GYkW8cSMrCw73qTd9TJn=2wA@mail.gmail.com>
Date: Sun, 17 Feb 2019 15:37:02 +0100
Message-Id: <2A077813-ADBB-492C-B4A6-3CC623CB160A@emagii.com>
References: <CAJxG=fn_Ev42cWFupLf3ayU4-+GYkW8cSMrCw73qTd9TJn=2wA@mail.gmail.com>
To: Russell Peterson <peterson.russell@gmail.com>
X-CMAE-Envelope: MS4wfGGeVgKIvGxEUtM2lc1GeaojHYMAtQU7c63YoXrMwRWic0HKSgUAwH/TrisHN/r9NF9mIGq76kNXTXjZw/sDngiDzfwHDuPR2mAWc3WgWXTi10Oh/Cc6
	tLYk2nqVQqBEgpLWRO/bgLqabdlXChQLGFIpktqm+iST2FvPD3TbjI1udG6UhjMHaV+n/kmFnNXTqxcPxOA+74Gyc0ucRitrtRw=
Cc: yocto@yoctoproject.org
Subject: Re: kernel module override
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
X-List-Received-Date: Sun, 17 Feb 2019 14:37:07 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable




> 17 feb. 2019 kl. 14:57 skrev Russell Peterson <peterson.russell@gmail.com>=
:
>=20
> Hello,
>=20
> I have what I would think is an unusual requirement regarding a kernel mod=
ule and could use some advice.
>=20
> I have a kernel module that has been heavily modified... to the point wher=
e we have a separate recipe for it and treat it as an out-of-tree module.  T=
his works by not setting the kernel config file to build that module and our=
 meta layer builds and installs the module.  No problem... works fine for us=
.
>=20
> The problem is that we now want to enable another module that relies on th=
e module we build out of tree.  The issue is that the check config sees we h=
ave not enabled our out of tree module and thus the sanitized config does no=
t contain this module that we want to enable.  If we enable the modified mod=
ule in the config file there is, of course, a package conflict.
>=20
> I have tried using "virtual/mymodule" preferred provider but that fails si=
nce it seems to have a recipe "granularity" and we still need virtual/kernel=
.  I have also messed around with KERNEL_MODULE_PACKAGE_PREFIX and KERNEL_MO=
DULES_RDEPENDS_BLACKLIST but I get the sense I'm trying to put a square peg i=
n a round hole.
>=20
> I do realize this is an unusual situation and the question "why don't you j=
ust patch the existing driver in the kernel?" is obvious.  We do have our re=
asons that I won't go into. =20
>=20
> Is there any obvious way we can simply "eclipse" an existing kernel module=
 with an out-of-tree module?  Is there a way I could add a config fragment t=
hat doesn't get validated/sanitized, for example?
>=20
> Regards,
>=20
> Russell
>=20
>=20
Rename your out of tree module to something else.
Patch the module that you want to replace so it does not do anything.
Enable it and build it.

You can also remove the dependency by patching the Kconfig files.

Ulf Samuelsson
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


