Return-Path: <jiajun.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 024244C811F6
	for <yocto@yoctoproject.org>; Wed,  8 Dec 2010 02:33:08 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Dec 2010 00:33:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,315,1288594800"; d="scan'208";a="581682303"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 08 Dec 2010 00:33:07 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 8 Dec 2010 16:32:51 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Wed, 8 Dec 2010
	16:32:50 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 8 Dec 2010 16:32:49 +0800
Thread-Topic: [yocto] [Bug 552] autobuild missing the non-x86 realboard images
Thread-Index: AcuWWjCeBF58mPT3TjKEk+73gGE1eAAVjuJQ
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A314F2B1F@shsmsx501.ccr.corp.intel.com>
References: <bug-552-84@http.bugzilla.pokylinux.org/>
	<20101207212853.4282620F48496@mail.opensource.intel.com>
	<4CFEAE72.1030401@intel.com>
In-Reply-To: <4CFEAE72.1030401@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Harry Ciao <qingtao.cao@windriver.com>
Subject: Re: [Bug 552] autobuild missing the non-x86 realboard images
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
X-List-Received-Date: Wed, 08 Dec 2010 08:33:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>=20
> I wanted to give people a heads up about the addition of a few more
> targets to the nightly build and how they'll effect the nightly (and our =
overall efficency).
>=20
> This bug asks for the addition of a few targets:
>=20
> arm: beagleboard: poky-image-sato, poky-image-minimal, poky-image-sdk
> powerpc: mpc8315e-rdb: poky-image-minimal
> mips: routerstationpro: poky-image-minimal
>=20

Hi Beth,
Could you also build sdk images for mpc8315e-rdb and routerstationpro? We w=
ill have testing for them from M2.

> I'm going to put these into nightly after the current build is done,
> but I want to make people aware of a few things.
>=20
> First, our build times have been between 26 and 31 hours over the past mo=
nth.
> Adding these builds will increase that time. Depending on how long
> this extends the total build time will depend on how big of an effect it =
has.
>=20
> It may also introduce new failures to the nightly which will need to
> be dealt with. I know it doesn't mean much for stability since the
> targets already are in master and just aren't build built, but what it
> does mean is that someone needs to QA these targets.
>=20
> So, like I said, I'll have this in when our next nightly kicks off. If
> folks have any concerns over this, let me know before #141 finishes up.
>=20
> -b
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Best Regards,
Jiajun



