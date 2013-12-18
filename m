Return-Path: <brad@evidence.com>
Received: from email.taser.com (email.taser.com [74.206.119.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE251E0080B
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 17:29:28 -0800 (PST)
X-ASG-Debug-ID: 1387330167-0499bf7ce34179d0001-yzSStA
Received: from LOKI.atmoss (loki.atmoss [10.10.20.113]) by email.taser.com
	with ESMTP id QSQFSsBN7ldQ4rCn; Tue, 17 Dec 2013 18:29:27 -0700 (MST)
X-Barracuda-Envelope-From: brad@evidence.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.113
Received: from TI-ODIN.tasernet.com (172.16.1.112) by email.taser.com
	(10.10.20.113) with Microsoft SMTP Server (TLS) id 14.2.347.0;
	Tue, 17 Dec 2013 18:29:27 -0700
Received: from TI-THOR.tasernet.com ([fe80::7c49:ae21:6650:2789]) by
	TI-ODIN.tasernet.com ([fe80::64ff:7320:e6e7:27c8%20]) with mapi id
	14.02.0347.000; Tue, 17 Dec 2013 18:29:26 -0700
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.113
From: Brad Litterell <brad@evidence.com>
X-Barracuda-BWL-IP: fe80::7c49:ae21:6650:2789
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Setting PV dynamically in a recipe
X-ASG-Orig-Subj: RE: [yocto] Setting PV dynamically in a recipe
Thread-Index: Ac77ABx4gKdRGDzAQM+tn2QPKyJSdwADABHAABQZYuMAEQsKAP//uBv8
Date: Wed, 18 Dec 2013 01:29:25 +0000
Message-ID: <E51394554A503C4E852F9BEE46B03E8D019AC9AE@TI-THOR.tasernet.com>
References: <E51394554A503C4E852F9BEE46B03E8D019AC4B3@TI-THOR.tasernet.com>
	<ad9adfd66f224dd98d4ec05596eaaa8e@DM2PR03MB399.namprd03.prod.outlook.com>
	<E51394554A503C4E852F9BEE46B03E8D019AC7CA@TI-THOR.tasernet.com>,
	<14453943.1Qpn4azGq8@helios>
In-Reply-To: <14453943.1Qpn4azGq8@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.1.103]
MIME-Version: 1.0
X-Barracuda-Connect: loki.atmoss[10.10.20.113]
X-Barracuda-Start-Time: 1387330167
X-Barracuda-URL: http://10.10.20.59:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at taser.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.2.143184
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Setting PV dynamically in a recipe
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
X-List-Received-Date: Wed, 18 Dec 2013 01:29:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul,=0A=
=0A=
Thanks for that tip.  For my private packages I don't build directly from g=
it, but from a tarball (in turn created from my working directory) because =
I want to be able to build the source I'm working on without committing it =
to git.  =0A=
=0A=
In an ideal world, I'd like to to be able to build in two modes: dev & rele=
ase.  Release mode would use the git-based solution (and enforce building f=
rom git), and in the dev mode, build from something like externalsrc.  (The=
 reason I don't use externalsrc directly is because it didn't detect change=
s in the underlying external source, so I created a script that does and up=
dates the tarball.)=0A=
=0A=
What is the best way to switch recipes between dev & test modes like that. =
 It appears debug-tweaks is only used in image recipes, so I don't know whe=
ther I should (or could) use something like this in a package recipe:=0A=
=0A=
SRC_URI +=3D '${@base_contains("EXTRA_IMAGE_FEATURES", "debug-tweaks", "...=
tarball...", "...git..."}'=0A=
=0A=
or whether something like that is asking for trouble.  My current solution =
is manual - edit the recipe, but that feels kinda lame.=0A=
=0A=
It seems like most of the yocto build tools assume building directly from g=
it (or with external-src but without dependency checking).=0A=
=0A=
Any suggestions?=0A=
=0A=
Thanks,=0A=
Brad=0A=
________________________________________=0A=
From: Paul Eggleton [paul.eggleton@linux.intel.com]=0A=
Sent: Tuesday, December 17, 2013 12:24 PM=0A=
To: Brad Litterell=0A=
Cc: zhenhua.luo@freescale.com; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] Setting PV dynamically in a recipe=0A=
=0A=
Hi Brad,=0A=
=0A=
On Tuesday 17 December 2013 19:46:11 Brad Litterell wrote:=0A=
> Thank you for the reply.  However, That's not what I'm looking for.  I=0A=
> already get the latest version of the source code.=0A=
>=0A=
> What I'm really after is the ability to generate output packages that hav=
e=0A=
> increasing version numbers so I can use the package manager to update the=
m.=0A=
>=0A=
> I think Martin's subsequent reply is the secret to use PKGV.  I didn't kn=
ow=0A=
> about that variable.=0A=
=0A=
You don't need to use any special classes to get this behaviour. Put this i=
n=0A=
your recipe (replacing 1.2.3 with the appropriate base version you are=0A=
building):=0A=
=0A=
PV =3D "1.2.3+git${SRCPV}"=0A=
=0A=
and enable the PR service, which will ensure SRCREV changes always incremen=
t=0A=
the version properly:=0A=
=0A=
http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#working=
-with-a-pr-service=0A=
=0A=
Cheers,=0A=
Paul=0A=
=0A=
--=0A=
=0A=
Paul Eggleton=0A=
Intel Open Source Technology Centre=0A=

