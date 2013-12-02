Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A78A0E007B3
	for <yocto@yoctoproject.org>; Mon,  2 Dec 2013 04:11:33 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Dec 2013 04:07:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,810,1378882800"; d="scan'208";a="417897229"
Received: from pmcgurk-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.184])
	by orsmga001.jf.intel.com with ESMTP; 02 Dec 2013 04:11:32 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
Date: Mon, 02 Dec 2013 12:11:31 +0000
Message-ID: <1971535.rBCaI2xdmC@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <8575983.IvbszYPS8i@koontz>
References: <22354788.5R15oKMmSW@koontz> <11848834.gRVeh0UGRN@helios>
	<8575983.IvbszYPS8i@koontz>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto .gitignore
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
X-List-Received-Date: Mon, 02 Dec 2013 12:11:35 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Monday 02 December 2013 13:02:21 S=F8ren Holm wrote:
> Mandag den 2. december 2013 11:57:35 skrev Paul Eggleton:
> > I presume you mean the .gitignore in the poky repository. Any addit=
ional
> > custom layers shouldn't be part of the poky repository, they should=
 be in
> > separate repositories.
>=20
> That's right. But how would you put "build/*" and my own "meta-*" in =
a
> seperate repo. Pulling them in as submodules seems painfull and havin=
g the
> yocto-repo included as a submodule in another repo seems backwards to=
o.
>=20
> Do you have a proposed "best-practice"-way of maintaining own layers?=


There are a number of different options:

* submodules
* repo [1]
* combo-layer [2] (what we use for Poky)
* or, just keep the repositories separate

Re build/, you shouldn't need to keep that under version control. If yo=
u are
setting a large number of variables in local.conf that you want to pres=
erve,
that is a sign that you should move these to a custom distro configurat=
ion file
[3].

Cheers,
Paul

[1] http://code.google.com/p/git-repo/
[2] https://wiki.yoctoproject.org/wiki/Combo-layer
[3] http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html=
#creating-your-own-distribution

--=20

Paul Eggleton
Intel Open Source Technology Centre

