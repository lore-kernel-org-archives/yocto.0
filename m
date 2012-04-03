Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A036E013F3
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2012 17:47:21 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 02 Apr 2012 17:47:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="84568506"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Apr 2012 17:47:21 -0700
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 2 Apr 2012 17:47:20 -0700
Received: from shsmsx101.ccr.corp.intel.com ([169.254.1.142]) by
	SHSMSX151.ccr.corp.intel.com ([169.254.3.91]) with mapi id
	14.01.0355.002; Tue, 3 Apr 2012 08:47:19 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] ref manual, ch 5, claims that toolchain should be
	installed under /opt/poky
Thread-Index: AQHNC0qOcOi5fSHs1ketcQudkh3nzpaISggg
Date: Tue, 3 Apr 2012 00:47:18 +0000
Message-ID: <857BE142E5399E46B20FD45B9DB8A7BC0FD1C2FA@SHSMSX101.ccr.corp.intel.com>
References: <alpine.DEB.2.02.1203260815240.29065@oneiric>
In-Reply-To: <alpine.DEB.2.02.1203260815240.29065@oneiric>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: ref manual, ch 5, claims that toolchain should be installed under /opt/poky
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
X-List-Received-Date: Tue, 03 Apr 2012 00:47:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Robert P. J. Day wrote on 2012-03-26:
>=20
>   currently, ch 5 of the reference manual claims that a generated
> "meta-toolchain" tarball should be unpacked under /opt/poky, which
> might be *historically* correct but i just baked a meta-toolchain and
> its tarball contents are all prefixed with "./usr/local/", which seems
> inconsistent with that.

Did you include the meta-yocto layer when you bake the meta-toolchain? "/op=
t/poky" is the default settings for the toolchain generated using meta-yoct=
o layer, while oe-core uses "/usr/local". I don't know why your prefix is "=
./usr/local". The location of toolchain should be configurable by the value=
 of variable SDKPATH, but we didn't test it with other values in the contex=
t of meta-yocto layer.

I don't think you can untar the meta-toolchain to any arbitrary place and h=
ave it work correctly.

-Lianhao

>   is the toolchain tarball relocatable these days?

> rday
>




