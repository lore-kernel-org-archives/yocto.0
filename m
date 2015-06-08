Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4126E00992; Mon,  8 Jun 2015 07:53:30 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21C22E0096A
	for <yocto@yoctoproject.org>; Mon,  8 Jun 2015 07:53:24 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 08 Jun 2015 07:53:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,574,1427785200"; d="scan'208";a="723142272"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by fmsmga001.fm.intel.com with ESMTP; 08 Jun 2015 07:53:24 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.3.224.2; Mon, 8 Jun 2015 07:53:21 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.102]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.160]) with mapi id
	14.03.0224.002; Mon, 8 Jun 2015 07:53:20 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>,
	=?iso-8859-1?Q?Ren=E9_Fichter?= <rene@fichter.se>
Thread-Topic: [yocto] Error in reference manual - nativesdk.bbclass
Thread-Index: AQHQocOGYMEEyGH4skachnwTwmxdEp2iypiA///nPLA=
Date: Mon, 8 Jun 2015 14:53:16 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123798989B065@ORSMSX101.amr.corp.intel.com>
References: <CA+QjDd+LY_42+9UO+zxE_x_bEa5gO9cATRjy_Ztd3t=aNXgMhw@mail.gmail.com>
	<3805339.47lL03vnAG@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <3805339.47lL03vnAG@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error in reference manual - nativesdk.bbclass
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
X-List-Received-Date: Mon, 08 Jun 2015 14:53:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,=20

Here are a couple links to those sections with the corrected text.  Let me =
know if there are further issues.

http://www.yoctoproject.org/docs/1.9/ref-manual/ref-manual.html#qa-issue-de=
v-so

http://www.yoctoproject.org/docs/1.9/ref-manual/ref-manual.html#ref-classes=
-nativesdk

Thanks,
Scott

>-----Original Message-----
>From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
>Sent: Monday, June 08, 2015 2:21 AM
>To: Ren=E9 Fichter
>Cc: Rifenbark, Scott M; yocto@yoctoproject.org
>Subject: Re: [yocto] Error in reference manual - nativesdk.bbclass
>
>Hi Ren=E9,
>
>On Monday 08 June 2015 08:16:16 Ren=E9 Fichter wrote:
>> I think I've found some non-updated writings in the reference manual
>> regarding the change from postfix "nativesdk" to prefix (see section
>> 5.2.2.3).
>>
>> In section 7.78 it says:
>> "Create a myrecipe-nativesdk.bb recipe that inherits the nativesdk class=
."
>
>Right, yes, this should be nativesdk-myrecipe.bb.
>
>> And in section 9.2 Errors and Warnings (very minor though):
>> "non -dev/-dbg/-nativesdk package contains symlink .so: <packagename>
>> path '<path>' [dev-so]"
>
>This one is in the actual warning text, so we will need to fix it in the s=
ource as
>well. We'd be changing it to "non -dev/-dbg/nativesdk- package contains
>symlink..."
>
>Scott could you please make these changes in the manual?
>
>Thanks,
>Paul
>
>--
>
>Paul Eggleton
>Intel Open Source Technology Centre

