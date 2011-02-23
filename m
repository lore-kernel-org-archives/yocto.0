Return-Path: <liping.ke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 41A8B4C80049
	for <yocto@yoctoproject.org>; Tue, 22 Feb 2011 20:33:20 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 Feb 2011 18:33:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,209,1297065600"; d="scan'208";a="605546231"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 22 Feb 2011 18:32:56 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 23 Feb 2011 10:31:04 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 23 Feb 2011 10:31:03 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "Lu, Lianhao"
	<lianhao.lu@intel.com>
Date: Wed, 23 Feb 2011 10:31:01 +0800
Thread-Topic: about the repo
Thread-Index: AcvRdsGQxYYvAz0WRvS3d8BYE2W91gA1SVEgAAW7vOAAENqU4AAW0hLg
Message-ID: <789F9655DD1B8F43B48D77C5D306597332D34942@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D306597332D33DD0@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA95151D7F93@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D306597332D34617@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA95151D802E@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA95151D802E@orsmsx504.amr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: about the repo
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
X-List-Received-Date: Wed, 23 Feb 2011 02:33:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>=20
> > Path 2: ADT installer (Not ready yet). Most code should be reused for
> > the above two path. I think.
> The symlinks are created.
>=20
> One gotcha for ADT installer testing is,  please completely delete the
> toolchain that installed from the toolchain tar ball under /opt/poky.
> Since
> the toolchain tarball contains the target sysroot, which can hide some
> issues for the ADT installer installed toolchain using against
> customized
> toolchain...
>=20
> >

Hi, jessica

Yes, for clean testing, I choose to clean all installed materials before
Starting testing, including installed material under /opt/poky, all compile=
d
test project. Everything is newly untared in the new round test.

Thanks& Regards,
criping

