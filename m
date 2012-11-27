Return-Path: <eric@eukrea.com>
Received: from mo2.mail-out.ovh.net (mo2.mail-out.ovh.net [178.32.228.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F203AE0033F
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 02:40:01 -0800 (PST)
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id 7DDF8DC81AD
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 11:47:54 +0100 (CET)
Received: from b0.ovh.net (HELO queueout) (213.186.33.50)
	by b0.ovh.net with SMTP; 27 Nov 2012 12:39:55 +0200
Received: from pac33-2-82-240-38-71.fbx.proxad.net (HELO eb-e6520)
	(eric%eukrea.com@82.240.38.71)
	by ns0.ovh.net with SMTP; 27 Nov 2012 12:39:53 +0200
Date: Tue, 27 Nov 2012 11:39:52 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Ovh-Mailout: 178.32.228.2 (mo2.mail-out.ovh.net)
Message-ID: <20121127113952.06050a25@eb-e6520>
In-Reply-To: <CAHUNapSUN1iAh1ijxby6XW=DZuXA=_KCFLwfm9nYpgpKuE-V8w@mail.gmail.com>
References: <CAHUNapSSawC9WwpdoNdg4vHBY6Yh3UycqYgOyX_pbTNw3S0Etg@mail.gmail.com>
	<CAHUNapSVRuxDxn9L=oHg6aO-RKso2VNF6Mczaf2zwgxHn2zzBw@mail.gmail.com>
	<20121126190407.GA69689@gmail.com>
	<CAHUNapRZ2Fg_=G5gv7SGE0__3n7PjKk0R362V_w1nST5AuQpGQ@mail.gmail.com>
	<CAHUNapSUN1iAh1ijxby6XW=DZuXA=_KCFLwfm9nYpgpKuE-V8w@mail.gmail.com>
Organization: =?ISO-8859-1?B?RXVrculh?= Electromatique
X-Mailer: Claws Mail 3.8.1 (GTK+ 2.24.8; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
X-Ovh-Tracer-Id: 10986812767762951630
X-Ovh-Remote: 82.240.38.71 (pac33-2-82-240-38-71.fbx.proxad.net)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: -100
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeehhedrtdduucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfhrhhomhepgfhrihgtuceurohnrghrugcuoegvrhhitgesvghukhhrvggrrdgtohhmqeenucfjughrpeffhffvuffkjghfohfogggtgfesthhqredtredtud
X-Spam-Check: DONE|U 0.5/N
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeehhedrtdduucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfhrhhomhepgfhrihgtuceurohnrghrugcuoegvrhhitgesvghukhhrvggrrdgtohhmqeenucfjughrpeffhffvuffkjghfohfogggtgfesthhqredtredtud
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: IMAGE_INSTALL_append workflow
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
X-List-Received-Date: Tue, 27 Nov 2012 10:40:02 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Trevor,

Le Mon, 26 Nov 2012 21:20:30 -0500,
Trevor Woerner <twoerner@gmail.com> a =E9crit :

> On Mon, Nov 26, 2012 at 6:52 PM, Trevor Woerner <twoerner@gmail.com> wrot=
e:
> > I haven't yet figured out if the "PREFERRED_PROVIDER_virtual/kernel =3D
> > "linux-yocto-rt"" line might be the culprit.
>=20
> No, it is not related, this problem doesn't need any fancy
> configuration features. This problem is reproducible
> with just the plain qemux86 machine and the core-image-minimal image.
> Also, before my latest tests I pulled
> the latest git repo.
>=20
> To reproduce this problem:
>=20
> - use the latest git repositories
> - run "source poky/oe-init-build-env qemux86"
> - make no modifications to conf/bblayers.conf
> - make no changes to conf/local.conf
> - run "bitbake core-image-minimal"
>=20
> After that completes successfully add the following line to your
> conf/local.conf:
>=20
> IMAGE_INSTALL_append =3D " trace-cmd"
>=20
> - re-run the build "bitbake core-image-minimal"
>=20
> This should complete successfully. When it does, modify the last line
> of conf/local.conf to be:
>=20
> IMAGE_INSTALL_append =3D " trace-cmd bash"
>=20
> - try re-running the build now "bitbake core-image-minimal". It fails
> for me as I have detailed in my previous emails.
>=20
> If I manually do:
>=20
> $ bitbake bash
> $ bitbake core-image-minimal
>=20
> everything succeeds and my image contains 'bash'. But something tells
> me there's a bug in there somewhere.

I confirm the problem when following this procedure step by step.

with bitbake -e we see that bash is in RDEPENDS and in IMAGE_INSTALL
with bitbake -g we see that bash is not present in any of the
*depends.dot files

Eric

