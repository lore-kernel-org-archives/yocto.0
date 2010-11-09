Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3BD744C80815
	for <yocto@yoctoproject.org>; Mon,  8 Nov 2010 18:43:24 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 08 Nov 2010 16:43:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,172,1288594800"; d="scan'208";a="346193408"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 08 Nov 2010 16:43:20 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 8 Nov 2010 16:43:03 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Mon, 8 Nov 2010 16:43:02 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Mon, 8 Nov 2010 16:41:58 -0800
Thread-Topic: [Yocto] [PULL] devel/toolchain Recipes upgrades
Thread-Index: Act/hRuu58D0gKneSsGcRwnYlIMy2QAIVo8A
Message-ID: <8EA2C2C4116BF44AB370468FBF85A77701BCA3809D@orsmsx504.amr.corp.intel.com>
References: <8EA2C2C4116BF44AB370468FBF85A77701BC9526F4@orsmsx504.amr.corp.intel.com>
	<4CD8601A.4090500@windriver.com>
In-Reply-To: <4CD8601A.4090500@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PULL] devel/toolchain Recipes upgrades
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
X-List-Received-Date: Tue, 09 Nov 2010 00:43:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]=20

Out of curiosity. What's the logic/requirement behind this
change ? Since we don't have a 'supported' 2.6.36 kernel, using
these would be a mismatch with what is actually booting on
the targets.

There's probably something I just don't understand here, so
apologies in advance for the (potentially) dumb question.

Cheers,

Bruce


Bruce,
   AFAIU the linux-libc-headers are independent from the running kernel. Th=
ese are headers for libc.=20

Thanks,
Nitin

