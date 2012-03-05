Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 689CAE0074A
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2012 07:59:18 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Mar 2012 07:59:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="114855652"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 05 Mar 2012 07:59:17 -0800
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 5 Mar 2012 07:59:14 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.188]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.102]) with mapi id
	14.01.0355.002; Mon, 5 Mar 2012 07:58:16 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: praveenvk <praveen.vk@lnties.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] How to Create SDK
Thread-Index: AQHM+ts1oCdyr2jVHEyQID6WT+f9j5Zb2jqw
Date: Mon, 5 Mar 2012 15:58:16 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C3B774605@ORSMSX101.amr.corp.intel.com>
References: <loom.20120305T143727-31@post.gmane.org>
In-Reply-To: <loom.20120305T143727-31@post.gmane.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: How to Create SDK
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
X-List-Received-Date: Mon, 05 Mar 2012 15:59:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Praveen,

If you want to create bsp, I'd think you need to build a image for the targ=
et arch.  For Yocto, the build system will use the cross compilation during=
 the build process base on your meta-data and layer configuration.  If late=
r your want to enable development work for your bsp, then you'll need to bu=
ild a toolchain, as to what toolchain target, are you expecting to use qt? =
If not, then meta-toolchain should be fine.

Hope this will clear up the steps for you to create your bsp.

Cheers,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of praveenvk
Sent: Monday, March 05, 2012 6:14 AM
To: yocto@yoctoproject.org
Subject: Re: [yocto] How to Create SDK

 Hi,
     I am very new to Yocto so kindly help. I wish to create bsp for our pr=
oject
in which we are using arm1136 processor. I have created a layer (meta_prj) =
same
as meta for our project and have made required changes in
meta/conf/bblayers.conf.sample to consider meta_prj for compilation of reci=
pes.

Now what should be my first step? Am i supposed to cross compile toolchain
first. I have noticed we can download external toolchain, if i have to prod=
uce
one of my own how i can do it? Am i supposed to compile meta-toolchain-qte.=
bb to
get this toolchain?


Thanks & Regards,
praveen


_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

