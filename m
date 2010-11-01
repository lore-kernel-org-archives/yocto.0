Return-Path: <jiajun.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 504D04C80A74
	for <yocto@yoctoproject.org>; Mon,  1 Nov 2010 10:46:37 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Nov 2010 08:46:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,274,1286175600"; d="scan'208";a="673020837"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga001.jf.intel.com with ESMTP; 01 Nov 2010 08:46:36 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 1 Nov 2010 23:46:35 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Mon, 1 Nov 2010
	23:46:34 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "Garman, Scott A" <scott.a.garman@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Mon, 1 Nov 2010 23:46:32 +0800
Thread-Topic: [yocto] nightly-release takes more than 24 hours to build.
Thread-Index: Act5qIdG/oCuwe6HTNiArEhD0ZU6jAAMSRfA
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A300B6EBC@shsmsx501.ccr.corp.intel.com>
References: <4CCE8A82.7070000@intel.com>
In-Reply-To: <4CCE8A82.7070000@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: nightly-release takes more than 24 hours to build.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 01 Nov 2010 15:46:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> Hello,
>=20
> Leading up to our 0.9 release, our autobuilder has been building an
> increasing number of targets for our nightly-release buildset. We've
> now reached the point that the nightly build takes more than 24 hours
> to run (> 26 hours, in fact)
> - which is clearly a problem on a build that we'd like to generate on
> a daily basis.
>=20
> The following is a list of everything which is built within nightly-relea=
se:
>=20
> The following targets are built for qemux86, qemux86-64, qemuarm,
> qemumips, and qemuppc:
>=20
> * poky-image-minimal
> * poky-image-sato
> * poky-image-lsb
> * poky-image-sdk
> * meta-toolchain-sdk (SDKMACHINE=3Di586 and also x86_64)
>=20
> For emenlow and atom-pc, we build:
>=20
> * poky-image-minimal-live
> * poky-image-sato-live
> * poky-image-sdk-live
> * meta-toolchain-sdk (SDKMACHINE=3Di586 and also x86_64)
>=20
> Finally, we also build the Eclipse plugin, and copy the shared state
> prebuilds and RPM output at the end of the build.
>=20
> I was going to post build times for some of these targets for
> reference, but it would be misleading as we build the targets in
> succession (e.g, we start with poky-image-sdk which takes the bulk of
> the time, and then the other targets can largely rely on the shared state=
 builds).
>=20
> Ideally I think our nightly build should take much less than 24 hours
> to build. The question is what we can move out of the nightly build
> and do on perhaps a weekly basis instead?
>=20

How about customizing the nightly build to build part of targets for every =
day? For example, x86/x86_64 for Monday, atom-pc/emenlow for Tuesday..... e=
tc.
And we can schedule a new build task for weekly, which is only triggered on=
 Wednesday(or maybe Tuesday night) for QA weekly testing and with all targe=
ts built out.

> Our buildserver hardware is a dual quad-core Xeon server with 12 GB of RA=
M.
> Throwing hardware at the problem is another solution, but not an
> inexpensive one (we'd be looking at a 4-socket machine filled with
> quad-cores and 32 GB of RAM).
>=20
> I'm open to ideas on how to address this issue. QA will be driving a
> lot of the requirements and I'm especially interested to hear your though=
ts.
>=20
> Scott
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.pokylinux.org/listinfo/yocto

Best Regards,
Jiajun


