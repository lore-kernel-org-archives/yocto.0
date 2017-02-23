Return-Path: <darren.hart@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 087E0E00B3E; Thu, 23 Feb 2017 09:38:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B2CAE00AC5
	for <yocto@yoctoproject.org>; Thu, 23 Feb 2017 09:37:54 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga105.fm.intel.com with ESMTP; 23 Feb 2017 09:37:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,198,1484035200"; d="scan'208";a="1114738657"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
	by fmsmga001.fm.intel.com with ESMTP; 23 Feb 2017 09:37:53 -0800
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
	FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Thu, 23 Feb 2017 09:37:53 -0800
Received: from fmsmsx118.amr.corp.intel.com ([169.254.1.242]) by
	FMSMSX113.amr.corp.intel.com ([169.254.13.119]) with mapi id
	14.03.0248.002; Thu, 23 Feb 2017 09:37:53 -0800
From: "Hart, Darren" <darren.hart@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [PATCH] yocto-docs: Aesthetic changes to kernel-dev-intro.xml
Thread-Index: AQHSjcBOXl1EEIyxxkauaRZ7uqJKPaF222ng
Date: Thu, 23 Feb 2017 17:37:52 +0000
Message-ID: <79661426AB6B40478E52EE7F511CC9051F9C363B@fmsmsx118.amr.corp.intel.com>
References: <alpine.LFD.2.20.1702230530560.6716@uk63952.mitel.com>
In-Reply-To: <alpine.LFD.2.20.1702230530560.6716@uk63952.mitel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Subject: Re: [PATCH] yocto-docs: Aesthetic changes to kernel-dev-intro.xml
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
X-List-Received-Date: Thu, 23 Feb 2017 17:38:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> Sent: Thursday, February 23, 2017 2:33 AM
> To: Yocto discussion list <yocto@yoctoproject.org>
> Cc: Hart, Darren <darren.hart@intel.com>
> Subject: [PATCH] yocto-docs: Aesthetic changes to kernel-dev-intro.xml
>=20
>=20
> * "sys" filesystem is technically "sysfs" filesystem
> * "aggregate" already implies together :-)
>=20
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>=20

Thanks for taking the time to correct the docs.

Reviewed-by: Darren Hart <dvhart@linux.intel.com>


