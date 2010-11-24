Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0355B4C80052
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 02:45:39 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Nov 2010 00:45:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,247,1288594800"; d="scan'208";a="352641679"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 24 Nov 2010 00:45:38 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 24 Nov 2010 16:45:25 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 24 Nov 2010 16:45:25 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 24 Nov 2010 16:45:24 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 24 Nov 2010 16:45:23 +0800
Thread-Topic: [oe] BitBake parallel parsing testing
Thread-Index: AcuLGvF4+cDAdn+RR+y4fATuISnk3wAmCx7g
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A302EA40F@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: FW: [oe] BitBake parallel parsing testing
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
X-List-Received-Date: Wed, 24 Nov 2010 08:45:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

FYI, bitbake parallel parsing is enabled, which can greatly reduce the file=
 parsing time.
There are some data test result in OE's following mails.

Bitbake 1.10: 3m2.185s
parallel-parsing (BB_NUM_PARSE_THREADS=3Dnum_cpu): 1m48.232s parallel-parsi=
ng (BB_NUM_PARSE_THREADS=3D2*num_cpu): 1m1.869s

Thanks,
Dongxiao

Chris Larson wrote:
> Greetings all,
> This is a request for further testers for the parallel parsing branch
> of bitbake, as well as for review of the code. =A0I'm fairly certain
> that the last real issue with it was resolved yesterday, and I
> haven't gotten any reports of problems from those testing it since
> last week, so I'm opening it up to more public testing, so we can be
> absolutely certain that we can merge it to master in the near future
> without risking problems.     =20
>=20
> For code review:
> Either follow the below steps, then git log master..parallel-parsing
> or git diff master..parallel-parsing, or use the web interface at
> https://github.com/kergoth/bitbake/commits/parallel-parsing. =20
>=20
> For testing from scratch:
>=20
> git clone git://github.com/kergoth/bitbake cd bitbake git checkout -b
> parallel-parsing origin/parallel-parsing=20
>=20
> From an existing bitbake repository:
>=20
> git remote add kergoth git://github.com/kergoth/bitbake git remote
> update git checkout -b parallel-parsing kergoth/parallel-parsing=20
>=20
> Thanks for your time, and do let me know what you think, either of
> the code, performance in general, or the new progress bar (shows an
> ETA), or anything else :) =20


