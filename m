Return-Path: <dean.saridakis@baesystems.com>
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
	[149.32.232.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B75DE014F3
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 05:56:14 -0700 (PDT)
X-SENDER-IP: 10.37.225.66
X-SENDER-REPUTATION: None
X-IronPort-AV: E=Sophos;i="4.87,526,1363132800"; 
   d="scan'208";a="5712540"
Received: from rfc1918.na.baesystems.com (HELO cascms99802.na.baesystems.com)
	([10.37.225.66])
	by dmzms99801.na.baesystems.com with ESMTP/TLS/RC4-SHA;
	22 Apr 2013 12:56:12 +0000
X-SENDER-IP: 10.37.194.19
X-SENDER-REPUTATION: None
X-IronPort-AV: E=Sophos;i="4.87,526,1363132800"; 
   d="scan'208";a="3907725"
X-IPAS-Result: AqEEALQydVEKJcIT/2dsb2JhbABPgzzAfoEddIIfAQEBAQIBAQEBNzQLEAIBCCIUECcBCiUCBA4FCIgGErwEBI8OMQeCZmEDk0cDgQmWaIIo
Received: from GLDMS99984.goldlnk.rootlnka.net (10.37.199.133) by
	gldms99919.goldlnk.rootlnka.net (10.37.194.19) with Microsoft SMTP
	Server (TLS) id 8.3.279.5; Mon, 22 Apr 2013 08:56:11 -0400
Received: from GLDMS85003.goldlnk.rootlnka.net (10.37.161.195) by
	gldms99984.goldlnk.rootlnka.net (10.37.199.133) with Microsoft SMTP
	Server (TLS) id 14.2.318.4; Mon, 22 Apr 2013 08:56:11 -0400
Received: from GLDMS85001.goldlnk.rootlnka.net ([fe80::136:899e:bab0:2587]) by
	GLDMS85003.goldlnk.rootlnka.net ([172.16.0.147]) with mapi id
	14.02.0318.004; Mon, 22 Apr 2013 08:56:10 -0400
From: "Saridakis, Dean   (US SSA)" <dean.saridakis@baesystems.com>
To: Kevin Strasser <kevin.strasser@linux.intel.com>
Thread-Topic: [yocto] Trouble patching a package
Thread-Index: AQHOPVUm/If97J35cUuWEEaKiyMafJjiMxIQ
Date: Mon, 22 Apr 2013 12:56:10 +0000
Message-ID: <B98BBFB67D89184E8E876F332BDBC3E0A27FDD@GLDMS85001.goldlnk.rootlnka.net>
References: <20130419230440.DCDE7E0146E@yocto-www.yoctoproject.org>
	<20130419232226.GB941@wrk>
In-Reply-To: <20130419232226.GB941@wrk>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.37.161.240]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trouble patching a package
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
X-List-Received-Date: Mon, 22 Apr 2013 12:56:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> > Seems like this ought to be pretty easy based on the docs - Not sure
> > what I've got wrong. I've added an append to my layer w/
> >
> > FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> >
> > SRC_URI +=3D "0001-yada-yada.patch"
> >
> > # Comment out while debugging
> > #PRINC :=3D "${@int(PRINC) + 1}"
> >
> > The append file is in BBFILES. The patch file is in the same dir as
> > the append file (using a files sub-dir didn't help). Been doing
> > "bitbake -c patch -f pkg" to test/debug. (pkg is canutils, which is
> > autconf based)
>=20
> Based on the path you're using, the patch needs to be in a subdir relativ=
e to
> your append file. Specifically, the subdir needs to have the same name as=
 the
> package.
>=20
> -Kevin

I've also tried just "${THISDIR}:" with the same results.

A lot of this stuff is still magic to me & I'm not sure how to go about dem=
ystifying it -- do I have to dig into the underlying classes?
E.g., what magic is required to pick up & apply a patch file? Anything name=
d *.patch?=20

> >
> > Ran into a couple thing I didn't understand trying to debug. I tried
> > adding
> >
> > do_patch_append() {
> >     bbnote "Got here "
> > }
> >
> > to log my append file was getting picked up, but the parse failed.
> >
> > Didn't get errors if the patch file name was wrong. The log only has a =
git ls-
> remote (which seems a little odd).
> >
> > Any help would be appreciated.
> >
> > Dean
> >
>=20
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto


