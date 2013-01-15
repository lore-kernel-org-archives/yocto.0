Return-Path: <eric@eukrea.com>
Received: from mo1.mail-out.ovh.net (1.mo1.mail-out.ovh.net [178.32.127.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BE99E0047F
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 10:21:36 -0800 (PST)
Received: from mail94.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo1.mail-out.ovh.net (Postfix) with SMTP id CAE23FF9468
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 19:35:32 +0100 (CET)
Received: from b0.ovh.net (HELO queueout) (213.186.33.50)
	by b0.ovh.net with SMTP; 15 Jan 2013 20:21:33 +0200
Received: from tal33-3-82-233-81-124.fbx.proxad.net (HELO e6520eb)
	(eric%eukrea.com@82.233.81.124)
	by ns0.ovh.net with SMTP; 15 Jan 2013 20:21:30 +0200
Date: Tue, 15 Jan 2013 19:21:29 +0100
From: Eric =?UTF-8?B?QsOpbmFyZA==?= <eric@eukrea.com>
To: Patrick Turley <PatrickTurley@gamestop.com>
X-Ovh-Mailout: 178.32.228.1 (mo1.mail-out.ovh.net)
Message-ID: <20130115192129.3ac2c16c@e6520eb>
In-Reply-To: <5BEFD653CA8A8D47AA194ED30AB5968C35D76D@GV1HQPEX03.babgsetc.pvt>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35D457@GV1HQPEX03.babgsetc.pvt>
	<1358271523.2479.14.camel@omclinuxballt.devnet.ordermatic.net>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D76D@GV1HQPEX03.babgsetc.pvt>
Organization: =?UTF-8?B?RXVrcsOpYQ==?= Electromatique
X-Mailer: Claws Mail 3.9.0 (GTK+ 2.24.13; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
X-Ovh-Tracer-Id: 11396921807502552513
X-Ovh-Remote: 82.233.81.124 (tal33-3-82-233-81-124.fbx.proxad.net)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: -100
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeehledrheekucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-Spam-Check: DONE|U 0.5/N
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeehledrheekucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Brian Lloyd <blloyd@familyhonor.net>
Subject: Re: SDK environment LDFLAGS problem?
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
X-List-Received-Date: Tue, 15 Jan 2013 18:21:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Le Tue, 15 Jan 2013 17:59:10 +0000,
Patrick Turley <PatrickTurley@gamestop.com> a =C3=A9crit :
> Yes, it's clear to me that, in this one respect, the SDK is unsuitable fo=
r building kernels or kernel modules.
>=20
> My point is that this is a problem, and it might be reasonable to fix it.
>=20
set LDFLAGS=3D"" and you can build kernel and/or modules with the SDK.

Eric

