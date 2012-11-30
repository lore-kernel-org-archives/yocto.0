Return-Path: <eric@eukrea.com>
Received: from mo1.mail-out.ovh.net (4.mo1.mail-out.ovh.net [46.105.76.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C7F2E00655
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2012 07:34:25 -0800 (PST)
Received: from mail645.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo1.mail-out.ovh.net (Postfix) with SMTP id 10BB0FFA35D
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2012 16:46:08 +0100 (CET)
Received: from b0.ovh.net (HELO queueout) (213.186.33.50)
	by b0.ovh.net with SMTP; 30 Nov 2012 17:42:21 +0200
Received: from pac33-2-82-240-38-71.fbx.proxad.net (HELO eb-e6520)
	(eric%eukrea.com@82.240.38.71)
	by ns0.ovh.net with SMTP; 30 Nov 2012 17:42:20 +0200
Date: Fri, 30 Nov 2012 16:34:19 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Ovh-Mailout: 178.32.228.1 (mo1.mail-out.ovh.net)
Message-ID: <20121130163419.6cff9aa0@eb-e6520>
In-Reply-To: <alpine.DEB.2.02.1211300848590.1918@oneiric>
References: <alpine.DEB.2.02.1211291032530.27333@oneiric>
	<50B7AE45.1070301@am.sony.com>
	<alpine.DEB.2.02.1211300848590.1918@oneiric>
Organization: =?ISO-8859-1?B?RXVrculh?= Electromatique
X-Mailer: Claws Mail 3.8.1 (GTK+ 2.24.8; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
X-Ovh-Tracer-Id: 15266076837473922463
X-Ovh-Remote: 82.240.38.71 (pac33-2-82-240-38-71.fbx.proxad.net)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: -100
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeehiedrtdehucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfhrhhomhepgfhrihgtuceurohnrghrugcuoegvrhhitgesvghukhhrvggrrdgtohhmqeenucffohhmrghinhepvghlihhnuhigrdhorhhgnecujfgurhepfffhvffukfgjfhhoofggtgfgsehtqhertdertddu
X-Spam-Check: DONE|U 0.5/N
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeehiedrtdehucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfhrhhomhepgfhrihgtuceurohnrghrugcuoegvrhhitgesvghukhhrvggrrdgtohhmqeenucffohhmrghinhepvghlihhnuhigrdhorhhgnecujfgurhepfffhvffukfgjfhhoofggtgfgsehtqhertdertddu
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: chris larson's cool "bitbake-env" utility
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
X-List-Received-Date: Fri, 30 Nov 2012 15:34:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Le Fri, 30 Nov 2012 08:53:35 -0500 (EST),
"Robert P. J. Day" <rpjday@crashcourse.ca> a =E9crit :

> On Thu, 29 Nov 2012, Tim Bird wrote:
>=20
> > I put a link to your page on my bitbake cheat sheet page at:
> > http://elinux.org/Bitbake_Cheat_Sheet
>=20
>   as someone who has never bothered to play with any of the UIs and is
> thus asking from a position of total ignorance, i have a couple
> questions about the "User interfaces" section of that cheat sheet.
>=20
>   using stock oe-core, i followed your cheat sheet and tried this:
>=20
> $ bitbake
>=20
> and got:
>=20
> ERROR: Timeout while attempting to communicate with bitbake server
>=20
> so i need to start the server?  should that be mentioned there?
>=20
what would you expect to get when launching bitbake without any
argument ?

>   i then tried:
>=20
> $ bitbake -u knotty2
> FATAL: Invalid user interface 'knotty2' specified.
> Valid interfaces: depexp, goggle, ncurses, hob, knotty [default].
> $
>=20
this is valid in denzil and no more in danny and up because of this
commit :
commit b97d50618b2187bcfd7d25f64d1444482ca62ef7
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Wed Aug 15 17:50:22 2012 +0100

    knotty: Fold knotty2 into knotty and make it the default

Eric

