Return-Path: <liping.ke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id A24444C80BCF
	for <yocto@yoctoproject.org>; Tue, 14 Dec 2010 19:17:16 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 Dec 2010 17:17:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,345,1288594800"; d="scan'208";a="361782712"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by azsmga001.ch.intel.com with ESMTP; 14 Dec 2010 17:17:13 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 15 Dec 2010 09:17:07 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 15 Dec 2010 09:17:06 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Garman, Scott A" <scott.a.garman@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 15 Dec 2010 09:17:03 +0800
Thread-Topic: [yocto] Add extra parameters for qemu script
Thread-Index: Acub3nKE4Ebn+xb7Seyuj3H7meDiWwAFtwDQ
Message-ID: <789F9655DD1B8F43B48D77C5D3065973313A6CA3@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659733104D391@shsmsx501.ccr.corp.intel.com>
	<4D013F9C.2010404@intel.com> <1291988079.1554.939.camel@rex>
	<789F9655DD1B8F43B48D77C5D3065973312DC52B@shsmsx501.ccr.corp.intel.com>
	<4D0581FC.2030600@intel.com>
	<789F9655DD1B8F43B48D77C5D3065973312DCC45@shsmsx501.ccr.corp.intel.com>
	<4D07EF67.5090107@intel.com> <4D07EFE5.8040701@intel.com>
In-Reply-To: <4D07EFE5.8040701@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: Add extra parameters for qemu script
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
X-List-Received-Date: Wed, 15 Dec 2010 01:17:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Scott

Thanks for the review! Sure, I will use the script following distro-team co=
nventions.

And also, $MYNAME will be used in the final patch. And the debug line for b=
uilding will be
removed when I send the final patch.

Thanks & Regards,
criping

> One final thing - when you resubmit your patch this time, could you use
> the create-pull-request/send-pull-request scripts? That way the patch
> can be pulled in by Richard or Saul with minimal effort, and it will
> help ensure you get proper credit in the commit log.
>=20
> Scott
>=20
> --
> Scott Garman
> Embedded Linux Distro Engineer - Yocto Project

