Return-Path: <liping.ke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D24884C80048
	for <yocto@yoctoproject.org>; Thu, 16 Dec 2010 03:45:31 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Dec 2010 01:45:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,354,1288594800"; d="scan'208";a="687724065"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 16 Dec 2010 01:45:30 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 16 Dec 2010 17:45:13 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 16 Dec 2010 17:45:13 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 16 Dec 2010 17:45:12 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Ke, Liping" <liping.ke@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>, "Lu, Lianhao" <lianhao.lu@intel.com>
Date: Thu, 16 Dec 2010 17:45:01 +0800
Thread-Topic: [yocto] Try latest yocto adt script installer
Thread-Index: Acual4vOqTvhX8f5Tsm9er0UcNM8oAAfzMiAAA+QidAABdmpsAABHC7wACY1niAAAtf3EAAAjdwgAAWEuFAAApB+gAAla+kQAANqoyAAA4OUoAAHLhGA
Message-ID: <789F9655DD1B8F43B48D77C5D3065973313A7660@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D3065973312DC806@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950465CBC4@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D3065973313A69C0@shsmsx501.ccr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D3065973313A6B19@shsmsx501.ccr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D3065973313A6B2A@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9504950111@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D3065973313A6E8D@shsmsx501.ccr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D3065973313A6EAE@shsmsx501.ccr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D3065973313A6FE2@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950495017B@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D3065973313A733D@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA95049E677D@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D3065973313A7475@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D3065973313A7475@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Try latest yocto adt script installer
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
X-List-Received-Date: Thu, 16 Dec 2010 09:45:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Jessica

Another thing is that after we bitbake the tarball, since bitbake will help=
 us
to do_unpack, so untar opkg is not needed actually. After bitbake job is fi=
nished,
I will change the installer script code to remove untar opkg tarball steps.

Thanks& Regards,
criping

