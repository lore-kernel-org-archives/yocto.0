Return-Path: <liping.ke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id F0BFC4C80048
	for <yocto@yoctoproject.org>; Wed, 15 Dec 2010 23:11:16 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Dec 2010 21:11:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,353,1288594800"; d="scan'208";a="687645476"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 15 Dec 2010 21:11:16 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 16 Dec 2010 13:10:35 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 16 Dec 2010 13:10:35 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "Lu, Lianhao"
	<lianhao.lu@intel.com>
Date: Thu, 16 Dec 2010 13:10:29 +0800
Thread-Topic: [yocto] Try latest yocto adt script installer
Thread-Index: Acual4vOqTvhX8f5Tsm9er0UcNM8oAAfzMiAAA+QidAABdmpsAABHC7wACY1niAAAtf3EAAAjdwgAAWEuFAAApB+gAAla+kQAANqoyAAASB74A==
Message-ID: <789F9655DD1B8F43B48D77C5D3065973313A7406@shsmsx501.ccr.corp.intel.com>
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
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA95049E677D@orsmsx504.amr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: Adkb BASq BKHw COEx DF7t DsTS DzkY D+ue EfQK Ey9q E7Sx
	FRWA FyAN GW6y Gv+j
	Joq4; 1; eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {33C7248D-3912-4DE2-9142-3DD549C0D869};
	bABpAHAAaQBuAGcALgBrAGUAQABpAG4AdABlAGwALgBjAG8AbQA=; Thu,
	16 Dec 2010 05:10:29 GMT;
	UgBFADoAIABbAHkAbwBjAHQAbwBdACAAVAByAHkAIABsAGEAdABlAHMAdAAgAHkAbwBjAHQAbwAgAGEAZAB0ACAAcwBjAHIAaQBwAHQAIABpAG4AcwB0AGEAbABsAGUAcgA=
x-cr-puzzleid: {33C7248D-3912-4DE2-9142-3DD549C0D869}
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
X-List-Received-Date: Thu, 16 Dec 2010 05:11:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> Then can you modify the code before downloading each file, check
> whether its
> already exist or not, if so, prompt the user to confirm re-download or
> skip?
> And remove the existing checking for the download directory?


Hi, Jessica

Sure. I will change it and send you the updated patch a little later.

criping

