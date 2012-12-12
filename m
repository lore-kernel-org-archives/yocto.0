Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBC00E00348
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 11:35:35 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 12 Dec 2012 11:35:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,268,1355126400"; d="scan'208";a="180062812"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by AZSMGA002.ch.intel.com with ESMTP; 12 Dec 2012 11:35:35 -0800
Received: from orsmsx107.amr.corp.intel.com (10.22.225.80) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 12 Dec 2012 11:35:34 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX107.amr.corp.intel.com ([169.254.10.151]) with mapi id
	14.01.0355.002; Wed, 12 Dec 2012 11:33:16 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
Thread-Topic: [yocto] Difference of toolchain recipes
Thread-Index: Ac3R0s0/UEOxKwlOQ72h3AL1xJ4hNABxX2jAACG/uIAA8XAKAAA6UTcAAAu08DA=
Date: Wed, 12 Dec 2012 19:33:16 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC99E@ORSMSX101.amr.corp.intel.com>
References: <CA452391058F6D4E9715FB2C29D9312A0137811C@039-SN2MPN1-021.039d.mgd.msft.net>
	<50C0DE57.2040904@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC3C0@ORSMSX101.amr.corp.intel.com>
	<50C8B9F6.1010700@windriver.com>
In-Reply-To: <50C8B9F6.1010700@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Difference of toolchain recipes
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
X-List-Received-Date: Wed, 12 Dec 2012 19:35:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks for the feedback Mark.  I will go ahead with it.

Scott

>-----Original Message-----
>From: Mark Hatle [mailto:mark.hatle@windriver.com]
>Sent: Wednesday, December 12, 2012 9:08 AM
>To: Rifenbark, Scott M
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] Difference of toolchain recipes
>
>On 12/11/12 3:20 PM, Rifenbark, Scott M wrote:
>> I think what I am going to do is document these in general as part of
>the "Terms" section in the YP Development Manual where the term "Cross-
>Development Toolchain" is defined.  Would putting such a high-level list
>in the YP documentation be unnecessary or helpful?
>
>I think it would.  The set of compiler/toolchain elements we have is
>definitely
>confusing to someone new.
>
>--Mark
>
>> Scott
>>
>>> -----Original Message-----
>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>> bounces@yoctoproject.org] On Behalf Of Mark Hatle
>>> Sent: Thursday, December 06, 2012 10:05 AM
>>> To: yocto@yoctoproject.org
>>> Subject: Re: [yocto] Difference of toolchain recipes
>>>
>>> On 12/6/12 4:00 AM, Luo Zhenhua-B19537 wrote:
>>>> Can anybody shed some light, please?
>>>>
>>>>
>>>> Best Regards,
>>>>
>>>> Zhenhua
>>>>
>>>>
>>>>> -----Original Message-----
>>>>> From: Luo Zhenhua-B19537
>>>>> Sent: Tuesday, December 04, 2012 11:53 AM
>>>>> To: openembedded-core@lists.openembedded.org;
>>> 'yocto@yoctoproject.org'
>>>>> Subject: Difference of toolchain recipes
>>>>>
>>>>> It is a bit confused for the different recipes of toolchian, can
>>> somebody
>>>>> help to explain what's the difference for those recipes? E.g. gcc-
>>> cross,
>>>>> gcc-cross-canadian, gcc-cross-initial, gcc-cross-intermediate, gcc-
>>>>> crosssdk, gcc-crosssdk-initial, gcc-crosssdk-intermediate, gcc-
>>> runtime,
>>>>> etc.
>>>
>>> gcc-cross-initial - This is the initial compiler needed to bootstrap
>the
>>> toolchain to build software on the host for the target.  (This is a
>>> 'native'
>>> package.)
>>>
>>> gcc-cross-intermediate - This is the second stage of the bootstrap
>>> process to
>>> build software on the host for the target. (This is a 'native'
>package.)
>>>
>>> gcc-cross - this is the the final stage of the bootstrap process, and
>>> results in
>>> the cross compiler to build software on the host for the target.
>(This
>>> is a
>>> 'native' package.)  If you are replacing the cross compiler toolchain
>>> with a
>>> custom version, this is what you must replace.
>>>
>>> gcc-runtime - these are the runtime libraries, but from the toolchain
>>> bootstrapping process.  This results in a 'target' binary.
>>>
>>> gcc-crosssdk-initial/intermediate - stage 1 and 2 of the a cross
>>> compiler to
>>> build from the 'host' to the 'sdk'.  Often the SDK is not the same
>>> target as the
>>> host.  (This is a 'native' binary.)
>>>
>>> gcc-crosssdk - this the final stage of the SDK compiler.  Again, this
>is
>>> to
>>> build on the host, for the sdk.  This is a 'native' binary.
>>>
>>> gcc-cross-canadian - This is the compiler included with the SDK to
>build
>>> on the
>>> SDK machine creating software for the target.  This is an 'nativesdk'
>>> package.
>>>
>>>>> Is there any document for those description?
>>>
>>> Not that I know of.. It's one of those things that you kind of need
>to
>>> know in
>>> order to work with it.  It likely should be documented somewhere
>>> officially.
>>>
>>> --Mark
>>>
>>>>>
>>>>>
>>>>> Best Regards,
>>>>>
>>>>> Zhenhua
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto


