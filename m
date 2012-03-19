Return-Path: <lianhao.lu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7A39E00747
	for <yocto@yoctoproject.org>; Sun, 18 Mar 2012 18:18:49 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 18 Mar 2012 18:18:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="78965445"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by AZSMGA002.ch.intel.com with ESMTP; 18 Mar 2012 18:18:49 -0700
Received: from azsmsx602.amr.corp.intel.com (10.2.121.201) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Sun, 18 Mar 2012 18:18:48 -0700
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	azsmsx602.amr.corp.intel.com (10.2.121.201) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Sun, 18 Mar 2012 18:18:48 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.36]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.142]) with mapi id
	14.01.0355.002; Mon, 19 Mar 2012 09:18:46 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold, Saul"
	<saul.wold@intel.com>
Thread-Topic: [PATCH 0/1] perfer older version of lttng-ust in poky distro
Thread-Index: AQHNAbxTu69kEhBJekqt+bLSlYfirZZw2KtQ
Date: Mon, 19 Mar 2012 01:18:46 +0000
Message-ID: <857BE142E5399E46B20FD45B9DB8A7BC0FD00FEF@SHSMSX102.ccr.corp.intel.com>
References: <cover.1331713200.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1331713200.git.lianhao.lu@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: [PATCH 0/1] perfer older version of lttng-ust in poky distro
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
X-List-Received-Date: Mon, 19 Mar 2012 01:18:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Saul,

How about this patch's merging status?=20

Best Regards,
Lianhao

Lu, Lianhao wrote on 2012-03-14:
> Set the PREFERRED_VERSION of lttng-ust to use lttng-ust instead of
> lttng2-ust in poky distro. This fixed yocto bug #2062.
>=20
> The lttng2 is very different in terms of architecture and usage model, co=
mpared
> to lttng. The eclipse upstream lttng plugin won't be able to support lttn=
g2 until
> the eclipse Juno release(Jun 27th, 2012).
>=20
> The following changes since commit 8e9f6fc77ac4763f4ed1f6e7b720420c220ba6=
e2:
>   Richard Purdie (1):
>         dates: Fix unpackaged files warning
> are available in the git repository at:
>=20
>   git://git.pokylinux.org/poky-contrib llu/bug2062
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dllu/bug2062
> Lianhao Lu (1):
>   poky.conf: Prefer lttng-ust instead of lttng2-ust.
>  meta-yocto/conf/distro/poky.conf |    3 +++
>  1 files changed, 3 insertions(+), 0 deletions(-)




