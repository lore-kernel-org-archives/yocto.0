Return-Path: <eric@eukrea.com>
Received: from mo1.mail-out.ovh.net (20.mo1.mail-out.ovh.net [188.165.45.168])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43695E0047F
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 09:21:12 -0800 (PST)
Received: from mail94.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo1.mail-out.ovh.net (Postfix) with SMTP id D259DFF94F1
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 18:35:08 +0100 (CET)
Received: from b0.ovh.net (HELO queueout) (213.186.33.50)
	by b0.ovh.net with SMTP; 15 Jan 2013 19:21:09 +0200
Received: from tal33-3-82-233-81-124.fbx.proxad.net (HELO e6520eb)
	(eric%eukrea.com@82.233.81.124)
	by ns0.ovh.net with SMTP; 15 Jan 2013 19:21:08 +0200
Date: Tue, 15 Jan 2013 18:21:07 +0100
From: Eric =?UTF-8?B?QsOpbmFyZA==?= <eric@eukrea.com>
To: Patrick Turley <PatrickTurley@gamestop.com>
X-Ovh-Mailout: 178.32.228.1 (mo1.mail-out.ovh.net)
Message-ID: <20130115182107.2d466d89@e6520eb>
In-Reply-To: <5BEFD653CA8A8D47AA194ED30AB5968C35D457@GV1HQPEX03.babgsetc.pvt>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35D457@GV1HQPEX03.babgsetc.pvt>
Organization: =?UTF-8?B?RXVrcsOpYQ==?= Electromatique
X-Mailer: Claws Mail 3.9.0 (GTK+ 2.24.13; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
X-Ovh-Tracer-Id: 10377419442911423937
X-Ovh-Remote: 82.233.81.124 (tal33-3-82-233-81-124.fbx.proxad.net)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: -100
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeehledrheekucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-Spam-Check: DONE|U 0.507847/N
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeehledrheekucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 15 Jan 2013 17:21:12 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Patrick,

Le Tue, 15 Jan 2013 16:52:14 +0000,
Patrick Turley <PatrickTurley@gamestop.com> a =C3=A9crit :
> 1) Has anyone else run into this before?
>=20
> 2) If so, how did you resolve it?
>=20
> 3) Since the Yocto kernel build is *not* failing, I infer that it is *not=
* using the ld options the SDK gives me. So, the Yocto kernel build has its=
 own pathway through which it computes its value for LDFLAGS. Why would Yoc=
to use its own SDK in a way that no user is expected to?
>=20
to build a kernel using the SDK (so outside Yocto) you need to unset
LDFLAGS like :
LDFLAGS=3D"" CROSS_COMPILE=3Darm-oe-linux-gnueabi- ARCH=3Darm make

When building the kernel inside oe-core that's done in
kernel.bbclass :
	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS MACHINE

Eric

