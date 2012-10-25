Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF357E00292
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 10:13:49 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Oct 2012 10:13:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,648,1344236400"; d="scan'208";a="238372352"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga001.fm.intel.com with ESMTP; 25 Oct 2012 10:13:32 -0700
Received: from orsmsx107.amr.corp.intel.com (10.22.225.80) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 25 Oct 2012 10:13:30 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.130]) by
	ORSMSX107.amr.corp.intel.com ([169.254.10.237]) with mapi id
	14.01.0355.002; Thu, 25 Oct 2012 10:13:30 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>, "Zanussi, Tom"
	<tom.zanussi@intel.com>
Thread-Topic: [yocto] [PATCH v2 2/6] chiefriver: add WEBTITLE & Compliance
	information
Thread-Index: AQHNstJn/TOOauuay0avUSOyy732OpfKQhHA
Date: Thu, 25 Oct 2012 17:13:29 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C2D90F608@ORSMSX106.amr.corp.intel.com>
References: <cover.1351110208.git.nitin.a.kamble@intel.com>
	<f1a7d9cde11e622392859625fed95edde1a28db5.1351110208.git.nitin.a.kamble@intel.com>
	<1351124098.27553.55.camel@empanada>
	<ADD6A3980E8C39419A432FF422031B4C2D90F5E9@ORSMSX106.amr.corp.intel.com>
In-Reply-To: <ADD6A3980E8C39419A432FF422031B4C2D90F5E9@ORSMSX106.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: [PATCH v2 2/6] chiefriver: add WEBTITLE & Compliance	information
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
X-List-Received-Date: Thu, 25 Oct 2012 17:13:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> >
> > If you look at the meta-intel/conf/layer.conf, you see the layer
> > actually is 'intel'.
> >
> > Also, this is the README for the chiefriver layer, so it can't depend
> > on itself i.e. meta-chiefriver or 'chiefriver' shouldn't be listed in
> > layers
>=20
> Tom,
>    As part of the compliance we need to list all the components/layers ne=
eded
> to build the BSP. So even though it is README from this layer I think it =
should
> be listed as one of dependency for building the BSP.

Tom,
  It's ok, there are other places in the README where these layers are ment=
ioned.=20
So I can take this change out too.

Thanks,
Nitin


