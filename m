Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79DD9E002AB
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 11:27:15 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 28 Sep 2012 11:27:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,503,1344236400"; d="scan'208";a="150378537"
Received: from fmsmsx103.amr.corp.intel.com ([10.19.9.34])
	by AZSMGA002.ch.intel.com with ESMTP; 28 Sep 2012 11:27:14 -0700
Received: from fmsmsx151.amr.corp.intel.com ([169.254.6.213]) by
	FMSMSX103.amr.corp.intel.com ([169.254.3.13]) with mapi id
	14.01.0355.002; Fri, 28 Sep 2012 11:27:14 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] The term Package as used in the YP docs
Thread-Index: Ac2dpRsLh9EQgU5BRbiGnRBZQLE+jwAO+xMAAA6cEmA=
Date: Fri, 28 Sep 2012 18:27:13 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A720EB@FMSMSX151.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A720D0@FMSMSX151.amr.corp.intel.com>
	<23679865.otXK9bZ5Ws@helios>
In-Reply-To: <23679865.otXK9bZ5Ws@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: The term Package as used in the YP docs
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
X-List-Received-Date: Fri, 28 Sep 2012 18:27:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Paul,=20

Thanks for the clarification on the host packages.  Maybe I should rewrite =
"The Packages" section to use that term.  That seems best.  I guess the rea=
son I wanted to explain the weird variable names was because they caused me=
 a lot of angst as I tried to figure things out.  Maybe this is not so for =
others.  I certainly don't need to provide a history lesson if I am the min=
ority.

Scott

-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Friday, September 28, 2012 11:23 AM
To: Rifenbark, Scott M
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] The term Package as used in the YP docs

Hi Scott,

On Friday 28 September 2012 18:14:31 Rifenbark, Scott M wrote:
> *         Package: In the context of the Yocto Project, this term refers =
to
> the packaged output from a baked recipe. A package is generally the
> compiled binaries produced from the recipe's sources. You 'bake' somethin=
g
> by running it through BitBake.
>=20
> It is worth noting that the term "package" can, in general, have subtle
> meanings. For example, the packages refered to in the "The
> Packages<http://www.yoctoproject.org/docs/1.3/yocto-project-qs/yocto-proj=
ec
> t-qs.html#packages>" section are compiled binaries that when installed ad=
d
> functionality to your Linux distribution.

The thing is, this is actually the same meaning, we're just talking about=20
packages for your host distribution rather than packages for the custom dis=
tro=20
you're building - the concept is the same. If we do need to clarify it I wo=
uld=20
suggest using the term "host package" or something very similar for package=
s=20
to be installed as pre-requisites on the host system.

> Another point worth noting is that historically within the Yocto Project,
> recipes were referred to as packages - thus, the existence of several
> BitBake variables that are seemingly mis-named, (e.g.
> PR<http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.h=
tm
> l#var-PR>,
> PRINC<http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manua=
l.
> html#var-PRINC>,
> PV<http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.h=
tm
> l#var-PV>, and
> PE<http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.h=
tm
> l#var-PE>).

I have to say, whilst this is an interesting point of history, I'm not sure=
=20
anyone really needs to know this in the manual, particularly if we've repla=
ced=20
all historical use of the word "package" when we mean "recipe" (as I think =
we=20
now have for this release).

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

