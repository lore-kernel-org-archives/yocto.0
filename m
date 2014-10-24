Return-Path: <stanciux.mihail@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59196E00830; Fri, 24 Oct 2014 04:00:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D650E0079E
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 04:00:41 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Oct 2014 04:00:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,779,1406617200"; d="scan'208";a="624566875"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by orsmga002.jf.intel.com with ESMTP; 24 Oct 2014 04:00:40 -0700
Received: from irsmsx108.ger.corp.intel.com ([169.254.11.89]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.25]) with mapi id
	14.03.0195.001; Fri, 24 Oct 2014 12:00:20 +0100
From: "Mihail, StanciuX" <stanciux.mihail@intel.com>
To: nick <xerofoify@gmail.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Thread-Topic: [yocto] Failing Build
Thread-Index: AQHP7zYljf5yCj2ogUWDt+TCqP/DaJw+21sAgAAZ6oCAAB1NIA==
Date: Fri, 24 Oct 2014 11:00:19 +0000
Message-ID: <802B8E31E3519842A6CEE1B497E861B164F20D@IRSMSX108.ger.corp.intel.com>
References: <5449BD8D.3070907@gmail.com> <1414139646.30118.4.camel@ted>
	<544A24BB.5020604@gmail.com>
In-Reply-To: <544A24BB.5020604@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failing Build
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
X-List-Received-Date: Fri, 24 Oct 2014 11:00:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Nick, Richard,

I tried building an rt-sdk image on a fresh environment and I got the same =
errors as Nick.
I suspect the original problem resides in the following error message:

ERROR: Multiple .bb files are due to be built which each provide virtual/ke=
rnel (/home/dave/poky/meta/recipes-kernel/linux/linux-yocto_3.14.bb /home/d=
ave/poky/meta/recipes-kernel/linux/linux-yocto-rt_3.14.bb).
 This usually means one provides something the other doesn't and should.

Looks to me that the core-image-rt-sdk recipe includes both the rt-kernel a=
nd the normal kernel, and maybe it shouldn't?

Cheers,
Mihail

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of nick
Sent: Friday, October 24, 2014 1:07 PM
To: Richard Purdie
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Failing Build

I tried that and it didn't work.
Cheers Nick

On 14-10-24 04:34 AM, Richard Purdie wrote:
> On Thu, 2014-10-23 at 22:46 -0400, nick wrote:
>> Greetings Fellow Yocto Developers and Users, I am getting a failing=20
>> build with bitbake core-image-rt-sdk on qemux86 or qemux86_64 machine bu=
ilds.
>=20
> I'm guessing you've built a non-rt image, then built an -rt image and=20
> the two have become confused since the kernel changed. Wiping out the=20
> tmpdir and rebuilding (but leaving DL_DIR and SSTATE_DIR) will=20
> probably avoid this error.
>=20
> Cheers,
>=20
> Richard
>=20
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

