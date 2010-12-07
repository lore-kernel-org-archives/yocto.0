Return-Path: <liping.ke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C8A714C80050
	for <yocto@yoctoproject.org>; Mon,  6 Dec 2010 21:02:04 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Dec 2010 19:01:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,308,1288594800"; d="scan'208";a="684565908"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 06 Dec 2010 19:01:51 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 7 Dec 2010 11:01:21 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Tue, 7 Dec 2010
	11:01:10 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Ke, Liping" <liping.ke@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>, "Lu, Lianhao" <lianhao.lu@intel.com>
Date: Tue, 7 Dec 2010 11:01:08 +0800
Thread-Topic: yocto_installer test script update
Thread-Index: AcuRP2G+ThJAQacvTRywh28cpIwTgQAdMP0gABKk1AAAHtt2YACqdV0QAAJu3TAAH5th4AADk9oAAAAdwxA=
Message-ID: <789F9655DD1B8F43B48D77C5D30659733104C58C@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659732FF6C134@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950208643C@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D30659732FFC465B@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9502086DDD@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D306597330021F49@shsmsx501.ccr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D306597330021F85@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9502178E3E@orsmsx504.amr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto_installer test script update
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
X-List-Received-Date: Tue, 07 Dec 2010 03:02:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ok, you want to download new image for each install...

Ok, no problem. I will change that.

Thanks& Regards,
criping


> -----Original Message-----
> From: Ke, Liping
> Sent: Tuesday, December 07, 2010 10:59 AM
> To: Zhang, Jessica; Lu, Lianhao
> Cc: yocto@yoctoproject.org
> Subject: RE: yocto_installer test script update
>=20
> 3. Correct
> > the problem for qemu image download, now we forcing download images
> in
> > a clean directory since wget will change the file ext if the file
> > already there and which maybe corrupted
> >
> Hi, Jessica
>=20
> Have question for this one.
> Now the code will directly downloading, so the folders might contain
> image, image(1), image(2)...
> But the untar will always untar the old image? Then why downloading new?
> If user's network is very slow?
>=20
>=20
> Thanks& Regards,
> criping

