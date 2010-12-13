Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D130C4C80048
	for <yocto@yoctoproject.org>; Mon, 13 Dec 2010 01:00:40 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 Dec 2010 23:00:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,335,1288594800"; d="scan'208";a="686526336"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 12 Dec 2010 23:00:38 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 13 Dec 2010 15:00:00 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 13 Dec 2010 14:59:42 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Ke, Liping" <liping.ke@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>, "Lu, Lianhao" <lianhao.lu@intel.com>, "Lock, 
	Joshua" <joshua.lock@intel.com>
Date: Mon, 13 Dec 2010 14:59:41 +0800
Thread-Topic: version problems about SDK
Thread-Index: Acuaklwc5HMHEi3QSNy/BWEdHHxNOgAAJQkw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5A7A1576@shsmsx502.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D3065973312DC7C0@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D3065973312DC7C0@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: version problems about SDK
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
X-List-Received-Date: Mon, 13 Dec 2010 07:00:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Ke, Liping
>Sent: Monday, December 13, 2010 2:53 PM
>
>Hi, Jessica & Josh
>
>When we are trying to run installer script on lianhao's x86_64 machine, we=
 found if the
>images are build in two days, according to current version naming conventi=
on, some of the
>packages will be installed to /opt/poky/0.9+snapshot-20101210, some will b=
e to
>/opt/poky/0.9+snapshot-20101210.
>It will cause problem since we need to know the exact version number befor=
e installing and
>searching some files (environment script file, etc). And the same releases=
 of packages
>belong to different version (just the build date is not in the same day) s=
eems very strange
>and hard to handle for us?
>

I think Josh has laid down the base for multiple version SDK support. The o=
nly problem is:

SDKPATH =3D "/opt/${DISTRO}/${DISTRO_VERSION}"

which obviously is not what we want. We need a similar variable like SDK_VE=
RSION, which
is incremented only when SDK team thinks there's a need for a new version r=
elease or
else it keeps same in the life cycle of current version.

Liping, could you try to come up a new variable for your purpose?

Thanks
Kevin

