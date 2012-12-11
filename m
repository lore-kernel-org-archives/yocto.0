Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50AF7E011DB
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 13:20:19 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 11 Dec 2012 13:20:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,262,1355126400"; d="scan'208";a="232450050"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga001.jf.intel.com with ESMTP; 11 Dec 2012 13:20:18 -0800
Received: from orsmsx108.amr.corp.intel.com (10.22.225.41) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 11 Dec 2012 13:20:17 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX108.amr.corp.intel.com ([169.254.9.188]) with mapi id
	14.01.0355.002; Tue, 11 Dec 2012 13:20:15 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Difference of toolchain recipes
Thread-Index: Ac3R0s0/UEOxKwlOQ72h3AL1xJ4hNABxX2jAACG/uIAA8XAKAA==
Date: Tue, 11 Dec 2012 21:20:14 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC3C0@ORSMSX101.amr.corp.intel.com>
References: <CA452391058F6D4E9715FB2C29D9312A0137811C@039-SN2MPN1-021.039d.mgd.msft.net>
	<50C0DE57.2040904@windriver.com>
In-Reply-To: <50C0DE57.2040904@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
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
X-List-Received-Date: Tue, 11 Dec 2012 21:20:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I think what I am going to do is document these in general as part of the "=
Terms" section in the YP Development Manual where the term "Cross-Developme=
nt Toolchain" is defined.  Would putting such a high-level list in the YP d=
ocumentation be unnecessary or helpful?

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Mark Hatle
>Sent: Thursday, December 06, 2012 10:05 AM
>To: yocto@yoctoproject.org
>Subject: Re: [yocto] Difference of toolchain recipes
>
>On 12/6/12 4:00 AM, Luo Zhenhua-B19537 wrote:
>> Can anybody shed some light, please?
>>
>>
>> Best Regards,
>>
>> Zhenhua
>>
>>
>>> -----Original Message-----
>>> From: Luo Zhenhua-B19537
>>> Sent: Tuesday, December 04, 2012 11:53 AM
>>> To: openembedded-core@lists.openembedded.org;
>'yocto@yoctoproject.org'
>>> Subject: Difference of toolchain recipes
>>>
>>> It is a bit confused for the different recipes of toolchian, can
>somebody
>>> help to explain what's the difference for those recipes? E.g. gcc-
>cross,
>>> gcc-cross-canadian, gcc-cross-initial, gcc-cross-intermediate, gcc-
>>> crosssdk, gcc-crosssdk-initial, gcc-crosssdk-intermediate, gcc-
>runtime,
>>> etc.
>
>gcc-cross-initial - This is the initial compiler needed to bootstrap the
>toolchain to build software on the host for the target.  (This is a
>'native'
>package.)
>
>gcc-cross-intermediate - This is the second stage of the bootstrap
>process to
>build software on the host for the target. (This is a 'native' package.)
>
>gcc-cross - this is the the final stage of the bootstrap process, and
>results in
>the cross compiler to build software on the host for the target.  (This
>is a
>'native' package.)  If you are replacing the cross compiler toolchain
>with a
>custom version, this is what you must replace.
>
>gcc-runtime - these are the runtime libraries, but from the toolchain
>bootstrapping process.  This results in a 'target' binary.
>
>gcc-crosssdk-initial/intermediate - stage 1 and 2 of the a cross
>compiler to
>build from the 'host' to the 'sdk'.  Often the SDK is not the same
>target as the
>host.  (This is a 'native' binary.)
>
>gcc-crosssdk - this the final stage of the SDK compiler.  Again, this is
>to
>build on the host, for the sdk.  This is a 'native' binary.
>
>gcc-cross-canadian - This is the compiler included with the SDK to build
>on the
>SDK machine creating software for the target.  This is an 'nativesdk'
>package.
>
>>> Is there any document for those description?
>
>Not that I know of.. It's one of those things that you kind of need to
>know in
>order to work with it.  It likely should be documented somewhere
>officially.
>
>--Mark
>
>>>
>>>
>>> Best Regards,
>>>
>>> Zhenhua
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

