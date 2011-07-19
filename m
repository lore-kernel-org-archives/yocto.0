Return-Path: <david.c.stewart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D0B2A4C8009D
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 11:03:26 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Jul 2011 09:03:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,229,1309762800"; d="scan'208";a="27644479"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 19 Jul 2011 09:03:26 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.226.128) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 19 Jul 2011 09:03:25 -0700
Received: from orsmsx501.amr.corp.intel.com ([10.22.226.209]) by
	orsmsx606.amr.corp.intel.com ([10.22.226.128]) with mapi;
	Tue, 19 Jul 2011 09:03:25 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: 'Andre Haupt' <andre@bitwigglers.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Tue, 19 Jul 2011 09:03:24 -0700
Thread-Topic: [yocto] building crownbay images
Thread-Index: AcxF/PCUZrB0bpRqT4SX2KOof+4B+AALQnXw
Message-ID: <B27EBC40D200ED48A3F4CC2EBEABAE0B260B53A446@orsmsx501.amr.corp.intel.com>
References: <20110719101547.GA18149@localhost.localdomain>
In-Reply-To: <20110719101547.GA18149@localhost.localdomain>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: building crownbay images
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
X-List-Received-Date: Tue, 19 Jul 2011 16:03:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Andre Haupt
>=20
> Hi all,
>=20
> I am new to Yocto and to Distro work in general.
>=20
> I want to use Yocto on the Kontron nanoETXexpressTT boards.
> (http://de.kontron.com/products/computeronmodules/com+express/com+
> express+ultra/nanoetxexpresstt.html)
>=20
> These boards are based on the Intel Atom E6xx and the EG20T platform
> controller hub, so i think it is a good idea to start with the crownbay B=
SP.
>=20
> What would be the best, known to work, way to produce crownbay-noemgd
> images for poky bernard?
> Should i use git? Which branches should i use (the docs are contraditing =
at
> least in parts)?

Hi Andre - Tom is on holiday this week, so let me take a stab at this.=20

"Known to be good" - I try to make sure that the tarballs on the project we=
bsite are a good way to go. These are on www.yoctoproject.org/download and =
then click "BSP Downloads". You can also get them from a git branch, but I =
don't know for sure which it is.

> I read somewhere, that i should install Yocto to /usr/local/src/yocto.
> Is this really necessary?

I don't. I just create a subdirectory in my home dir and untar the release =
there.=20

If you create and use the App Developer Tools, installing the cross tools i=
n /opt/ is common.

> Thanks for any hints.
>=20
> regards,
>=20
> Andre
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

