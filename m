Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id AEB1B4C8108C
	for <yocto@yoctoproject.org>; Wed, 12 Jan 2011 20:32:54 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 Jan 2011 18:32:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,315,1291622400"; d="scan'208";a="877055733"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 12 Jan 2011 18:32:52 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 13 Jan 2011 10:32:06 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 13 Jan 2011 10:32:06 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 13 Jan 2011 10:32:05 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "rdelaet@mri-inc.net" <rdelaet@mri-inc.net>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 13 Jan 2011 10:32:03 +0800
Thread-Topic: [yocto] Building all packages using the released toolchain
Thread-Index: AcuywEl680ayS47nSEGw7kd2K8+0fQACQ7jg
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D7895E2F4@shsmsx502.ccr.corp.intel.com>
References: <1294881695.3219.20.camel@laptop>
In-Reply-To: <1294881695.3219.20.camel@laptop>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Building all packages using the released toolchain
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
X-List-Received-Date: Thu, 13 Jan 2011 02:32:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Rick De Laet
> Sent: Thursday, January 13, 2011 9:22 AM
>=20
> I am new to yocto, I have installed yacto on Fedora 12.
>=20
> I was trying to follow the steps in the getting started guide and was
> trying a build with "bitbake make-native" and got some build errors in
> "elfutils", but it was using the compiler in my Fedora distribution.  I

The make-native is required on Fedora14. So you don't need that step and
Instead you could directly:
	Bitbake poky-image-sato

Btw, could you post your errors?

For native packages, yes the host compiler from your distribution is expect=
ed btw.

> have also downloaded the toolchain in /opt/poky, and manually reran
> configure in the elfutils to use the compilers in /opt/poky and it built
> fine.
>=20
> What config changes do I have to make so that bitbake builds everything
> using the toolchain compilers rather than the default gcc?  (i.e have it
> run each configure script so that it specifies the toolchain compiler
> rather than use the default compiler)
>=20
> I did run the environment script
>=20
> 	/opt/poky/environment-setup-i586-poky-linux
>=20
> but apparently more is required
>=20

This makes me a bit confused what you're tempting to do. Did you try to bui=
ld
a complete sato image, or want to use pre-built image and downloard toolcha=
in
to develop application? For the former you don't need the later /opt/poky
stuff. For the latter you don't need build any native packages since all th=
e toolchains
are already there.

Thanks
Kevin s

