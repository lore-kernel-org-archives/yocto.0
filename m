Return-Path: <david.c.stewart@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8553E013A3
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2012 09:19:05 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 19 Mar 2012 09:18:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="79204157"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by AZSMGA002.ch.intel.com with ESMTP; 19 Mar 2012 09:18:29 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 19 Mar 2012 09:18:28 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.199]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.128]) with mapi id
	14.01.0355.002; Mon, 19 Mar 2012 09:18:29 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: "Xu, Jiajun" <jiajun.xu@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Thread-Topic: [yocto] Yocto weekly bug trend charts -- WW11
Thread-Index: Ac0FrSdwi3C427/DQG2J8RLYgro5TwASD1cAAAqxyoAADSBYQA==
Date: Mon, 19 Mar 2012 16:18:28 +0000
Message-ID: <CDED78A957032E45B3239CDDA7642D15084A4D84@ORSMSX105.amr.corp.intel.com>
References: <90741FE9B50D654690EB940EDB456C8E0908E7@SHSMSX101.ccr.corp.intel.com>
	<1332152778.9740.3.camel@ted>
	<90741FE9B50D654690EB940EDB456C8E091117@SHSMSX101.ccr.corp.intel.com>
In-Reply-To: <90741FE9B50D654690EB940EDB456C8E091117@SHSMSX101.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto weekly bug trend charts -- WW11
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
X-List-Received-Date: Mon, 19 Mar 2012 16:19:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Xu, Jiajun
>Sent: Monday, March 19, 2012 8:33 AM
>
>> Hi Jiajun,
>>
>> On Mon, 2012-03-19 at 08:49 +0000, Xu, Jiajun wrote:
>>> 	The overall open bug trend increased a lot in last week. The new
>>> submitted vs. fixed bug number is 64 vs. 52. Some fixed bugs are
>>> enhancement bug, which are not calculated into WDD data. WDD number
>>> and Open Bug number are 938 and 188. Bug status of WW11 could be
>>> found on https://wiki.yoctoproject.org/wiki/Yocto_Bug_Trend.
>>
>> I agree that there were 64 vs 52 bugs last week which is a change of 12 =
bugs.
>> The top two charts show increases of 50 and 30 bugs though so the
>> numbers don't seem to add up for me :/. I appreciate the bugzilla
>> update upset the accounting but it looks like some of the historical
>> data is inaccurate somewhere :(
>
>Good catch. :)
>For the first picture, it is the trend of open bugs by
>importance(High/Medium/Low/Undecided) with all bugs included. For the
>second picture, it is the trend of open bugs by
>severity(minor/normal/major/critical) without enhancement bugs. The first
>picture is to give us a whole picture of all open bugs. The second one is =
to give
>us a true picture of the real bugs - without bugs created for feature enab=
ling.

We need to get this data really clean because we make a lot of decisions ba=
sed on it. Please work with RP to address this

>BTW, when I check the open bug data, I find that a new variable is introdu=
ced
>with new bugzilla for field "severity" - janitors. We do not include the b=
ugs
>marked as janitors in "Yocto Weekly Open bug Trend(Severity)". My thinking
>is that janitors is similar with enhancement. We could treat it as
>enhancement(with weight value "0"), or if we think it should be included i=
nto
>WDD, we could set a weight value for it. How do you think of it?
>Fortunately, we only have 4 bugs marked as janitors, and they are all new
>reported last week. We could simply update the bug trend once we make the
>decision.

I suggest we make the janitor severity the same as low in the WDD calculati=
on.

>>
>> Cheers,
>>
>> Richard
>
>Best Regards,
>Jiajun
>
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

