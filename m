Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3263E013D9
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 06:35:32 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 Apr 2013 06:35:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,455,1363158000"; d="scan'208";a="316608926"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga002.jf.intel.com with ESMTP; 11 Apr 2013 06:35:29 -0700
Received: from irsmsx106.ger.corp.intel.com (163.33.3.31) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 11 Apr 2013 14:35:18 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.19]) by
	IRSMSX106.ger.corp.intel.com ([169.254.8.144]) with mapi id
	14.01.0355.002; Thu, 11 Apr 2013 14:35:18 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>
Thread-Topic: [yocto] 1.4_M6.rc1 started
Thread-Index: AQHONpAr/+3WdouxvUKwW6FeKQdSc5jRBZkA
Date: Thu, 11 Apr 2013 13:35:16 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E96171620AE@IRSMSX104.ger.corp.intel.com>
References: <CAPhnLPAmLKbfehcGK3NPZFbNCja6H3TG=Y9q9r=A1PsjURy4gg@mail.gmail.com>
	<1365669493.16702.42.camel@ted>
In-Reply-To: <1365669493.16702.42.camel@ted>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 1.4_M6.rc1 started
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 11 Apr 2013 13:35:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

We will wait for the next build.

Thanks,
--
Alexandru Georgescu


-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Richard Purdie
Sent: Thursday, April 11, 2013 11:38
To: Flanagan, Elizabeth
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] 1.4_M6.rc1 started

On Wed, 2013-04-10 at 15:48 -0700, Flanagan, Elizabeth wrote:
> Our first release candidate for dylan has been started. It will be=20
> available this evening at:
> http://autobuilder.yoctoproject.org/pub/nightly/20130410-1
>=20
> Repo               Branch      Hash
> poky                dylan         adb63ca02348af72a30cef2f20de2234b74a720=
0
> meta-intel       dylan         fd58fb07cf4fcc0553d0608f5688fc03e41ea15c
> meta-qt3         dylan         4c27cce6688aa39852f3cba5e7b80ec279019605
> meta-fsl-arm  dylan         5b8683ad04d63f0d5b2638cac245bff28468b634
> meta-fsl-ppc   master      3312fd5ce9caced68eff577cd0e83ff1471b0612
> eclipse-poky   dylan         e5172830f61b7dcc3ac03d18a03e63389c6b4629
>=20
> So far everything looks pretty green. I'll have tags up tonight once=20
> it completes.

For the reasons Bruce and Trevor alluded to, I'm pronouncing this build DoA=
. We've tried to pull together too much too fast. We've fixes for several m=
ajor issues and will run another build which should look better and this ti=
me, be worth testing.

QA Folks: Please wait for the next build.

Cheers,

Richard

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

