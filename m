Return-Path: <eric@eukrea.com>
Received: from mo4.mail-out.ovh.net (1.mo4.mail-out.ovh.net [178.33.248.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 899C7E01458
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2012 09:23:25 -0800 (PST)
Received: from mail247.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 21246104EC24
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2012 18:32:08 +0100 (CET)
Received: from b0.ovh.net (HELO queueout) (213.186.33.50)
	by b0.ovh.net with SMTP; 21 Dec 2012 19:23:23 +0200
Received: from pac33-2-82-240-38-71.fbx.proxad.net (HELO eb-e6520)
	(eric%eukrea.com@82.240.38.71)
	by ns0.ovh.net with SMTP; 21 Dec 2012 19:23:21 +0200
Date: Fri, 21 Dec 2012 18:23:20 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
To: GOPIKRISHNAN S <gopikrishnans@pec.edu>
X-Ovh-Mailout: 178.32.228.4 (mo4.mail-out.ovh.net)
Message-ID: <20121221182320.0698db75@eb-e6520>
In-Reply-To: <CAOkC3RaLxgZVNQOB_-o-HKJ=CiS_J8whpAF6gZzk+pYuhoCz=w@mail.gmail.com>
References: <CAOkC3RaLxgZVNQOB_-o-HKJ=CiS_J8whpAF6gZzk+pYuhoCz=w@mail.gmail.com>
Organization: =?ISO-8859-1?B?RXVrculh?= Electromatique
X-Mailer: Claws Mail 3.9.0 (GTK+ 2.24.8; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
X-Ovh-Tracer-Id: 11171460351947025893
X-Ovh-Remote: 82.240.38.71 (pac33-2-82-240-38-71.fbx.proxad.net)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: -100
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeehledrtdekucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfhrhhomhepgfhrihgtuceurohnrghrugcuoegvrhhitgesvghukhhrvggrrdgtohhmqeenucffohhmrghinhepohhpvghnvghmsggvugguvggurdhorhhgnecujfgurhepfffhvffukfgjfhhoofggtgfgsehtqhertdertddu
X-Spam-Check: DONE|U 0.504427/N
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeehledrtdekucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfhrhhomhepgfhrihgtuceurohnrghrugcuoegvrhhitgesvghukhhrvggrrdgtohhmqeenucffohhmrghinhepohhpvghnvghmsggvugguvggurdhorhhgnecujfgurhepfffhvffukfgjfhhoofggtgfgsehtqhertdertddu
Cc: meta-freescale@yoctoproject.org, yocto@yoctoproject.org
Subject: Re: [meta-freescale] hiawatha-8.6 using Yocto
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
X-List-Received-Date: Fri, 21 Dec 2012 17:23:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,

Le Fri, 21 Dec 2012 21:41:38 +0530,
GOPIKRISHNAN S <gopikrishnans@pec.edu> a =E9crit :
> I was trying to install hiawatha on my freescale p2041rdb. But it is using
> cmake to configure and install.
> How to write recipe for this with cmake. I have writted recipe for packag=
es
> with autotools, and make file.
> Any Idea???

by using meta-openembedded/meta-webserver you can get hiawatha running
in a few minutes :
http://cgit.openembedded.org/meta-openembedded/tree/meta-webserver/recipes-=
httpd/hiawatha

Best regards
Eric

