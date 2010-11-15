Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A9E14C80B71
	for <yocto@yoctoproject.org>; Mon, 15 Nov 2010 12:17:18 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 15 Nov 2010 10:17:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,200,1288594800"; d="scan'208";a="857772989"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 15 Nov 2010 10:17:17 -0800
Received: from orsmsx001.amr.corp.intel.com ([10.22.226.42]) by
	orsmsx603.amr.corp.intel.com ([10.22.226.49]) with mapi;
	Mon, 15 Nov 2010 10:17:17 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Mon, 15 Nov 2010 10:17:16 -0800
Thread-Topic: [yocto] [Yocto] [PULL] devel/toolchain Recipes upgrades
Thread-Index: AcuAIVrWArJbAWI3TWe6XQI/xxCpswEzydKw
Message-ID: <731F6F755F547148839CA39AD8282CE301030CA2@orsmsx001.amr.corp.intel.com>
References: <8EA2C2C4116BF44AB370468FBF85A77701BC9526F4@orsmsx504.amr.corp.intel.com><4CD8601A.4090500@windriver.com><8EA2C2C4116BF44AB370468FBF85A77701BCA3809D@orsmsx504.amr.corp.intel.com>
	<4CD8E634.1090403@windriver.com> <4CD9663A.50200@windriver.com>
In-Reply-To: <4CD9663A.50200@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
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
X-List-Received-Date: Mon, 15 Nov 2010 18:17:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Mark Hatle
Sent: Tuesday, November 09, 2010 7:18 AM
To: yocto@yoctoproject.org
Subject: Re: [yocto] [Yocto] [PULL] devel/toolchain Recipes upgrades

On 11/9/10 12:12 AM, Bruce Ashfield wrote:
> On 10-11-08 7:41 PM, Kamble, Nitin A wrote:
>> -----Original Message-----
>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>
>> Out of curiosity. What's the logic/requirement behind this
>> change ? Since we don't have a 'supported' 2.6.36 kernel, using
>> these would be a mismatch with what is actually booting on
>> the targets.
>>
>> There's probably something I just don't understand here, so
>> apologies in advance for the (potentially) dumb question.
>>
>> Cheers,
>>
>> Bruce
>>
>>
>> Bruce,
>>      AFAIU the linux-libc-headers are independent from the running kerne=
l. These are headers for libc.
>
> But they aren't. The libc headers should be coupled to the
> kernel version. New ABIs are established and glibc can detect
> and deal with this, but you should never have a newer set of
> headers than the running kernel.
>
> To say the least, I'd like more explanation of this change.

I agree with Bruce here.  If anything the linux-libc-headers should be the =
same=20
or OLDER then the running kernel for this exact reason.  It's quite dangero=
us=20
for newer kernel headers, as they may trigger behavioral differences within=
 the=20
glibc configuration.




Thanks Bruce & Mark for the responses. I think in the past we upgraded the=
=20
linux-libc-headers while hoping the kernel will match it soon. But if we ar=
e going=20
to stick to the current kernel for a while, then we can delay linux-libc-he=
aders upgrade.

Also one way to handle this would be keep two versions of linux-libc-header=
s, one=20
matching with kernel, and another with latest release. So whenever kernel i=
s ready to=20
be upgraded, linux-libc-headers would be ready.

Thanks & Regards,
Nitin



