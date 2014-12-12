Return-Path: <yannick.koehler@hp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABA83E009A1; Fri, 12 Dec 2014 06:15:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.217.128.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from g2t2354.austin.hp.com (g2t2354.austin.hp.com [15.217.128.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7152E00993
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 06:15:16 -0800 (PST)
Received: from G2W4316.americas.hpqcorp.net (g2w4316.austin.hp.com
	[16.197.9.73]) (using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by g2t2354.austin.hp.com (Postfix) with ESMTPS id A79FA249
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 14:15:15 +0000 (UTC)
Received: from G2W4311.americas.hpqcorp.net (16.197.24.199) by
	G2W4316.americas.hpqcorp.net (16.197.9.73) with Microsoft SMTP Server
	(TLS) id 14.3.169.1; Fri, 12 Dec 2014 14:13:28 +0000
Received: from G1W3650.americas.hpqcorp.net ([169.254.8.62]) by
	G2W4311.americas.hpqcorp.net ([16.197.24.199]) with mapi id
	14.03.0169.001; Fri, 12 Dec 2014 14:13:28 +0000
From: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Package Feature compile/runtime dependency
Thread-Index: AdAWFKKSHC++2dC8TnGwUpfjMDBWtQ==
Date: Fri, 12 Dec 2014 14:13:28 +0000
Message-ID: <95CF81BBD42FB348A182716C4D4310A80548C44C@G1W3650.americas.hpqcorp.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [16.193.232.25]
MIME-Version: 1.0
Subject: Package Feature compile/runtime dependency
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
X-List-Received-Date: Fri, 12 Dec 2014 14:15:27 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I played with the system yesterday and find Yocto to be great.  Being a Gen=
too user, I love the approach taken and see lots of enhancements made.  The=
 biggest one is that fact that some packages, like the kernel and glibc got=
 break down in a set of feature that can be better controlled than manually=
 setting their configuration.  But, this added flexibility create a new lev=
el of inter-dependencies, which I think Yocto would gain to add support for=
.  Here is an example, if I add system to poky-tiny, it won't compile, and =
once I fix that, it won't boot.  The reason is that systemd package depends=
 not only on other user-space package, but also on kernel features as well =
as glibc feature just to compile.  There is also other dependency at runtim=
e for certain functionality as well.

Yocto already has a package dependency mechanism with DEPEND and RDEPEND, i=
t would be great if we could somehow tie this with feature as well:

	DEPENDS=3D"package:feature"
	RDEPENDS=3D"package:feature"

This would allow to provide better error indication to the Yocto end-user w=
hen playing with distro/image and new combination. I could see system depen=
dency added like this:

 	DEPENDS=3D"linux-yocto-tiny:fhandle,autofs4,ipv6?,devtmpfs,libc:ftraverse=
,posix-clang-wchar,spawn,utmpx"

Etc...  Disregard the syntax as it is simply an idea/example and not intend=
ed as a specification.

Anyway, I am just sharing because I feel this system is really well done, a=
nd see this as an opportunity to get it to another level.

--
Yannick Koehler



