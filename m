Return-Path: <jiajun.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 327A2E006AB
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 18:59:26 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Aug 2011 18:59:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,273,1312182000"; d="scan'208";a="43597594"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2011 18:59:25 -0700
Received: from pgsmsx104.gar.corp.intel.com (10.221.44.91) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 24 Aug 2011 09:59:09 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX104.gar.corp.intel.com (10.221.44.91) with Microsoft SMTP Server
	(TLS) id 14.1.323.3; Wed, 24 Aug 2011 09:59:09 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 24 Aug 2011 09:59:09 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 24 Aug 2011 09:59:07 +0800
Thread-Topic: [yocto] Tested host distros for 1.1
Thread-Index: Acxhq1zRiDUpDPU1SjWfLqmw73LIXQAVbaeA
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A12D724C96B@shsmsx501.ccr.corp.intel.com>
References: <201108231642.49667.paul.eggleton@linux.intel.com>
In-Reply-To: <201108231642.49667.paul.eggleton@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Tested host distros for 1.1
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
X-List-Received-Date: Wed, 24 Aug 2011 01:59:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> Hi all,
>=20
> We now have the mechanism for fixing bug #1096 [1] i.e. showing a
> warning if the user is running a build on a distro that has not been
> tested; however to make this work what we now need is a list of
> distributions we want to consider tested. What distros specifically are w=
e going to list for 1.1?
>=20

We check Ubuntu, Opensuse and Fedora in our regular testing. So at least, t=
he 3 distros should be added as support.

> Cheers,
> Paul
>=20
> [1] http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1096
>=20
>

Best Regards,
Jiajun



