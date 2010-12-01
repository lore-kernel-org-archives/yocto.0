Return-Path: <liping.ke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8B7074C81231
	for <yocto@yoctoproject.org>; Tue, 30 Nov 2010 23:21:50 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 30 Nov 2010 21:21:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,282,1288594800"; d="scan'208";a="355347980"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 30 Nov 2010 21:21:43 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 1 Dec 2010 13:19:53 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Wed, 1 Dec 2010
	13:19:52 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "Lu, Lianhao"
	<lianhao.lu@intel.com>, "Xu, Dongxiao" <dongxiao.xu@intel.com>
Date: Wed, 1 Dec 2010 13:19:49 +0800
Thread-Topic: about install shell script privilege problem
Thread-Index: AcuRB/6Yk+hyR+TSSq2L2My3n5fIYQADRZcgAAB5H5A=
Message-ID: <789F9655DD1B8F43B48D77C5D30659732FF6BEDA@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659732FF6BE31@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9501FEA460@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA9501FEA460@orsmsx504.amr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: 6ns= AD5K APYv Aaar CezF ETY8 EdaR Eed1 E39y F1/c GNUd
	IFep IXqW IwvF Jz5P
	KX6S; 1; eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {3B7152D6-4FC3-4D74-B0FE-488FD3A72BF6};
	bABpAHAAaQBuAGcALgBrAGUAQABpAG4AdABlAGwALgBjAG8AbQA=; Wed,
	01 Dec 2010 05:19:49 GMT;
	UgBFADoAIABhAGIAbwB1AHQAIABpAG4AcwB0AGEAbABsACAAcwBoAGUAbABsACAAcwBjAHIAaQBwAHQAIABwAHIAaQB2AGkAbABlAGcAZQAgAHAAcgBvAGIAbABlAG0A
x-cr-puzzleid: {3B7152D6-4FC3-4D74-B0FE-488FD3A72BF6}
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: about install shell script privilege problem
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
X-List-Received-Date: Wed, 01 Dec 2010 05:21:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> Liping,
>=20
> I think this is consistent with the current SDK tarball installation
> that by
> default going under /opt/poky.  Since our installer script will install
> things under /opt/poky as well, using sudo to run the script should be
> fine
> till we can install the host cross toolchain under user directory.
>=20
Ok, then there's no problem.
I will later split the shell script into two parts. The outer wrapper will
be called by user with normal user. And the outer wrapper script will call
the main part with sudo so that user need not type sudo.

> Thanks,
> Jessica

