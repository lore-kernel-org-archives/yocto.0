Return-Path: <libertad.cruz@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B26AE00BBF; Fri, 15 Sep 2017 13:19:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B52E8E007EF
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 13:19:01 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga104.jf.intel.com with ESMTP; 15 Sep 2017 13:19:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,398,1500966000"; d="scan'208";a="1172648968"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
	by orsmga001.jf.intel.com with ESMTP; 15 Sep 2017 13:19:00 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.9]) by
	FMSMSX106.amr.corp.intel.com ([169.254.5.207]) with mapi id
	14.03.0319.002; Fri, 15 Sep 2017 13:18:59 -0700
From: "Cruz, Libertad" <libertad.cruz@intel.com>
To: "Bystricky, Juro" <juro.bystricky@intel.com>, akuster808
	<akuster808@gmail.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "Zhang, Jessica" <jessica.zhang@intel.com>
Thread-Topic: [yocto] QA cycle report for 2.2.2 rc2
Thread-Index: AdMttJRRajU0rb3wR/ymuQyZT931vQAyOEcA//+blaD//+vIcIAAN0cKgAB39gD//4utaf///aVg
Date: Fri, 15 Sep 2017 20:18:58 +0000
Message-ID: <58D9E2E50A021A45AD740492365FCDC532A252A7@fmsmsx107.amr.corp.intel.com>
References: <58D9E2E50A021A45AD740492365FCDC532A24F9C@fmsmsx107.amr.corp.intel.com>
	<1505494250.18640.102.camel@linuxfoundation.org>
	<6E51916E4A1F32428260031F4C7CD2B611A157E5@ORSMSX112.amr.corp.intel.com>
	<58D9E2E50A021A45AD740492365FCDC532A25272@fmsmsx107.amr.corp.intel.com>
	<6E51916E4A1F32428260031F4C7CD2B611A1589E@ORSMSX112.amr.corp.intel.com>,
	<83da2460-220f-77dd-3f0e-d661230d0445@gmail.com>
	<6E51916E4A1F32428260031F4C7CD2B611A158BC@ORSMSX112.amr.corp.intel.com>
In-Reply-To: <6E51916E4A1F32428260031F4C7CD2B611A158BC@ORSMSX112.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
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
X-List-Received-Date: Fri, 15 Sep 2017 20:19:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ok, I will open a bug for QA to fix this ptest comparison issue, Bug 12094.=
  I guess this ptest bug 12081 cannot be a blocker for the release.=20

Best Regards
Libertad G.=20

-----Original Message-----
From: Bystricky, Juro=20
Sent: Friday, September 15, 2017 3:14 PM
To: akuster808 <akuster808@gmail.com>; Cruz, Libertad <libertad.cruz@intel.=
com>; Richard Purdie <richard.purdie@linuxfoundation.org>; yocto@yoctoproje=
ct.org; Jolley, Stephen K <stephen.k.jolley@intel.com>; Zhang, Jessica <jes=
sica.zhang@intel.com>
Cc: Cruz Alcaraz, Juan M <juan.m.cruz.alcaraz@intel.com>; Jordan, Robin L <=
robin.l.jordan@intel.com>
Subject: RE: [yocto] QA cycle report for 2.2.2 rc2

I checked out 2.2_M3 2679a347c576f5411fbe802d2f6201c94036ecb2.
The recipes for gzip and slang do not contain any ptest code, so that expla=
ins why the tests are missing.=20
However, flex recipe has a code for ptest. So there is a bit of mystery lef=
t.

________________________________________
From: akuster808 [akuster808@gmail.com]
Sent: Friday, September 15, 2017 1:06 PM
To: Bystricky, Juro; Cruz, Libertad; Richard Purdie; yocto@yoctoproject.org=
; Jolley, Stephen K; Zhang, Jessica
Cc: Cruz Alcaraz, Juan M; Jordan, Robin L
Subject: Re: [yocto] QA cycle report for 2.2.2 rc2

On 09/15/2017 01:01 PM, Bystricky, Juro wrote:
> The commit is for 2.4 M3 (5f6945f5031e1a4ca116cc1eccf4c2f9dc228547)
> 2.4 does contain the ptests for gzip, slang and flex. (Although there=20
> are some other mysteries, like sed-ptest is missing) It would seem that 2=
.2 had never contained (or lost a while ago) those ptests.
Thanks for looking into this. Is there any action I need to follow up on?


