Return-Path: <eric@eukrea.com>
Received: from mo2.mail-out.ovh.net (4.mo2.mail-out.ovh.net [87.98.172.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE865E002AB
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 06:04:25 -0800 (PST)
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id 4AF1DDC7F1F
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 15:12:22 +0100 (CET)
Received: from b0.ovh.net (HELO queueout) (213.186.33.50)
	by b0.ovh.net with SMTP; 27 Nov 2012 16:04:23 +0200
Received: from pac33-2-82-240-38-71.fbx.proxad.net (HELO eb-e6520)
	(eric%eukrea.com@82.240.38.71)
	by ns0.ovh.net with SMTP; 27 Nov 2012 16:04:18 +0200
Date: Tue, 27 Nov 2012 15:04:17 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
To: Jonas Jonsson L <jonas.l.jonsson@ericsson.com>
X-Ovh-Mailout: 178.32.228.2 (mo2.mail-out.ovh.net)
Message-ID: <20121127150417.4e18a339@eb-e6520>
In-Reply-To: <0342A6AD36648742A199353A51DDC7030275E8@ESESSMB305.ericsson.se>
References: <CAHUNapSSawC9WwpdoNdg4vHBY6Yh3UycqYgOyX_pbTNw3S0Etg@mail.gmail.com>
	<CAHUNapSVRuxDxn9L=oHg6aO-RKso2VNF6Mczaf2zwgxHn2zzBw@mail.gmail.com>
	<20121126190407.GA69689@gmail.com>
	<CAHUNapRZ2Fg_=G5gv7SGE0__3n7PjKk0R362V_w1nST5AuQpGQ@mail.gmail.com>
	<CAHUNapSUN1iAh1ijxby6XW=DZuXA=_KCFLwfm9nYpgpKuE-V8w@mail.gmail.com>
	<0342A6AD36648742A199353A51DDC7030275E8@ESESSMB305.ericsson.se>
Organization: =?ISO-8859-1?B?RXVrculh?= Electromatique
X-Mailer: Claws Mail 3.8.1 (GTK+ 2.24.8; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
X-Ovh-Tracer-Id: 14438821881050869089
X-Ovh-Remote: 82.240.38.71 (pac33-2-82-240-38-71.fbx.proxad.net)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: -100
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeehhedrtdduucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfhrhhomhepgfhrihgtuceurohnrghrugcuoegvrhhitgesvghukhhrvggrrdgtohhmqeenucfjughrpeffhffvuffkjghfohfogggtgfesthhqredtredtud
X-Spam-Check: DONE|U 0.500383/N
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeehhedrtdduucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfhrhhomhepgfhrihgtuceurohnrghrugcuoegvrhhitgesvghukhhrvggrrdgtohhmqeenucfjughrpeffhffvuffkjghfohfogggtgfesthhqredtredtud
Cc: "Yocto Mailinglist \(yocto@yoctoproject.org\)" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 27 Nov 2012 14:04:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Le Tue, 27 Nov 2012 14:00:34 +0000,
Jonas Jonsson L <jonas.l.jonsson@ericsson.com> a =E9crit :

> I can also confirm this.
>=20
> A package (I've tried with diffutils & bash) must be built separately bef=
ore it's added to an image via IMAGE_INSTALL_append.
>=20
that seems to work the first time you add something using
IMAGE_INSTALL_append.
Then it fails when you add packages later (bitbake wants to install
the package in the image but doesn't trigger the build of the package
before).

Eric

