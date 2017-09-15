Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D63FE0091D; Fri, 15 Sep 2017 13:14:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E800E007EF
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 13:14:09 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Sep 2017 13:14:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,398,1500966000"; d="scan'208";a="149710886"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by orsmga005.jf.intel.com with ESMTP; 15 Sep 2017 13:14:09 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.240]) by
	ORSMSX103.amr.corp.intel.com ([169.254.5.176]) with mapi id
	14.03.0319.002; Fri, 15 Sep 2017 13:14:08 -0700
From: "Bystricky, Juro" <juro.bystricky@intel.com>
To: akuster808 <akuster808@gmail.com>, "Cruz, Libertad"
	<libertad.cruz@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Jolley,
	Stephen K" <stephen.k.jolley@intel.com>, 
	"Zhang, Jessica" <jessica.zhang@intel.com>
Thread-Topic: [yocto] QA cycle report for 2.2.2 rc2
Thread-Index: AdMttJRRajU0rb3wR/ymuQyZT931vQAyOEcA//+blaD//+vIcIAAN0cKgAB39gD//4utaQ==
Date: Fri, 15 Sep 2017 20:14:07 +0000
Message-ID: <6E51916E4A1F32428260031F4C7CD2B611A158BC@ORSMSX112.amr.corp.intel.com>
References: <58D9E2E50A021A45AD740492365FCDC532A24F9C@fmsmsx107.amr.corp.intel.com>
	<1505494250.18640.102.camel@linuxfoundation.org>
	<6E51916E4A1F32428260031F4C7CD2B611A157E5@ORSMSX112.amr.corp.intel.com>
	<58D9E2E50A021A45AD740492365FCDC532A25272@fmsmsx107.amr.corp.intel.com>
	<6E51916E4A1F32428260031F4C7CD2B611A1589E@ORSMSX112.amr.corp.intel.com>,
	<83da2460-220f-77dd-3f0e-d661230d0445@gmail.com>
In-Reply-To: <83da2460-220f-77dd-3f0e-d661230d0445@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.19.9.42]
MIME-Version: 1.0
Cc: "Cruz Alcaraz, Juan M" <juan.m.cruz.alcaraz@intel.com>, "Jordan,
	Robin L" <robin.l.jordan@intel.com>
Subject: Re: QA cycle report for 2.2.2 rc2
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
X-List-Received-Date: Fri, 15 Sep 2017 20:14:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I checked out 2.2_M3 2679a347c576f5411fbe802d2f6201c94036ecb2.=0A=
The recipes for gzip and slang do not contain any ptest code, so that expla=
ins why the tests are=0A=
missing. =0A=
However, flex recipe has a code for ptest. So there is a bit of mystery lef=
t.=0A=
=0A=
________________________________________=0A=
From: akuster808 [akuster808@gmail.com]=0A=
Sent: Friday, September 15, 2017 1:06 PM=0A=
To: Bystricky, Juro; Cruz, Libertad; Richard Purdie; yocto@yoctoproject.org=
; Jolley, Stephen K; Zhang, Jessica=0A=
Cc: Cruz Alcaraz, Juan M; Jordan, Robin L=0A=
Subject: Re: [yocto] QA cycle report for 2.2.2 rc2=0A=
=0A=
On 09/15/2017 01:01 PM, Bystricky, Juro wrote:=0A=
> The commit is for 2.4 M3 (5f6945f5031e1a4ca116cc1eccf4c2f9dc228547)=0A=
> 2.4 does contain the ptests for gzip, slang and flex. (Although there are=
 some other mysteries, like sed-ptest is missing)=0A=
> It would seem that 2.2 had never contained (or lost a while ago) those pt=
ests.=0A=
Thanks for looking into this. Is there any action I need to follow up on?=
=0A=
=0A=

