Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C7E8C4C80FB2
	for <yocto@yoctoproject.org>; Mon,  6 Dec 2010 04:15:23 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Dec 2010 02:15:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,305,1288594800"; d="scan'208";a="633478018"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2010 02:15:23 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 6 Dec 2010 18:15:14 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Mon, 6 Dec 2010
	18:15:13 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Ke, Liping" <liping.ke@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>, "Lu, Lianhao" <lianhao.lu@intel.com>, "Tian, 
	Kevin" <kevin.tian@intel.com>
Date: Mon, 6 Dec 2010 18:15:14 +0800
Thread-Topic: yocto_installer test script update
Thread-Index: AcuRP2G+ThJAQacvTRywh28cpIwTgQAdMP0gABKk1AAAHtt2YACqdV0QAAJu3TA=
Message-ID: <789F9655DD1B8F43B48D77C5D306597330021F85@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659732FF6C134@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950208643C@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D30659732FFC465B@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9502086DDD@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D306597330021F49@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D306597330021F49@shsmsx501.ccr.corp.intel.com>
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
X-List-Received-Date: Mon, 06 Dec 2010 10:15:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Just one thing, if directly tee, check_result will get wrong output result.
So I did not tee opkg/make related command. I will try to add opkg/make to =
logfile tomorrow.

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Ke, Liping
> Sent: Monday, December 06, 2010 5:04 PM
> To: Zhang, Jessica; Lu, Lianhao; Tian, Kevin
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] yocto_installer test script update
>=20
> Hi, Jessica
>=20
>   I have updated the script file which modifies all your input (prompts
> and the discussion result in the weekly meeting such as logfile, go on
> installing when /var/lib/opkg exists, etc).
>   I have tested with lianhao's repository (x86_64 native sdk has some
> problem, he's now fixing it). Sample log files are included. I had
> uploaded in lianhao's website.
>=20
>=20
> Any problem, just let me know. I can fix it tomorrow!
>=20
> Thanks & Regards,
> criping
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

