Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1A04E0047F
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 11:17:01 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 15 Jan 2013 11:16:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,475,1355126400"; d="scan'208";a="272411499"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga002.jf.intel.com with ESMTP; 15 Jan 2013 11:16:54 -0800
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 15 Jan 2013 11:16:54 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.17]) with mapi id
	14.01.0355.002; Tue, 15 Jan 2013 11:16:54 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, Patrick Turley
	<PatrickTurley@gamestop.com>
Thread-Topic: [yocto] Build external module against Yocto kernel
Thread-Index: AQHN8q6s5QOP/6xKnEq8yLl/GYg/sJhLJlqAgAAApYCAAAxrAIAAAagAgAAHNgCAAAN4gP//ge2w
Date: Tue, 15 Jan 2013 19:16:53 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C57DD15B4@ORSMSX101.amr.corp.intel.com>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35CD91@GV1HQPEX03.babgsetc.pvt>
	<1358269651.2479.5.camel@omclinuxballt.devnet.ordermatic.net>
	<1358269789.2479.6.camel@omclinuxballt.devnet.ordermatic.net>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D715@GV1HQPEX03.babgsetc.pvt>
	<50F5992C.9070705@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D97A@GV1HQPEX03.babgsetc.pvt>
	<50F5A221.2070209@windriver.com>
In-Reply-To: <50F5A221.2070209@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>, Brian Lloyd <blloyd@familyhonor.net>
Subject: Re: Build external module against Yocto kernel
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
X-List-Received-Date: Tue, 15 Jan 2013 19:17:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Patrick,

According to bug 1614, the kernel dev packages should be included in sdk im=
ages.  Please generate your toolchain using "bitbake core-image-sato-sdk -c=
 populate_sdk" which will make the toolchain target sysroot matching your i=
mage's sysroot (this is a new feature of 1.3) as long as your image is a sd=
k image.  If you still run into issue(missing kernel headers, etc.), then t=
hat's a bug of the 1614 patch that we need to reopen it.

For your LDFLAGS question in another email thread, the yocto SDK is mainly =
produced for application developer, but seems we are hearing more usage req=
uest for it to support kernel module build as well.  As Eric pointed, can y=
ou just set LDFLAGS=3D"" and we'll add that instruction to developer's manu=
al?

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Bruce Ashfield
Sent: Tuesday, January 15, 2013 10:38 AM
To: Patrick Turley
Cc: yocto@yoctoproject.org; Darren Hart; Brian Lloyd
Subject: Re: [yocto] Build external module against Yocto kernel

On 13-01-15 01:26 PM, Patrick Turley wrote:
> On Jan 15, 2013, at 12:00 PM, Bruce Ashfield <bruce.ashfield@windriver.co=
m>
>   wrote:
>
>> On 13-01-15 12:54 PM, Patrick Turley wrote:
>>> Thank you for directing me toward that documentation. As it happens,
>>> I have already read that, and it doesn't apply.
>>
>> There are ways to do this, your requirement is the same as the
>> on-target module building requirement. Have enough of the kernel
>> source packaged to build modules on the target, after it has booted.
>
> Well, I still want to cross-compile them, but I see your point.
>
>> The trick is packaging things properly to not get binary/target
>> elements in the SDK/native packages, and to package just enough for
>> the build. But the issues have been explored and there was a plan. I
>> know that Darren
>> (cc'd) has looked into this more than I have recently.
>>
>> I can't locate the bugzilla entries on this at the moment, but I
>> recall that some parts were still missing, but may be addressed in
>> yocto 1.4, when I find the bug numbers, I'll have a better idea.
>
> As I expected, someone else has already thought about this. This isn't th=
e most common approach so it makes sense that it's been a lower priority. T=
he good news for me is that I know I'm not missing something, so I can stop=
 looking for it.

I finally found the entries that I was recalling earlier. They are:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D241
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1614
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2968

1614 and 2968 are the most interesting for what you are asking.

As you can see the net result of those bugs is that you can get the right p=
arts of the kernel tree in SDK packages, since they include dev packages, a=
nd with what is currently in kernel-dev .. it should be enough to build aga=
inst in the SDK (perhaps with just the LDFLAGS tweaks mentioned in the othe=
r thread). The sources should be part of the sysroot, and hence available w=
hen that is packaged for use outside of bitbake/yocto.

If you aren't seeing kernel-dev in the SDK image, it might be that TOOLCHAI=
N_TARGET_TASK doesn't have kernel-dev by default, or something else is diff=
erent in the SDK that is being generated in your testing.

I'm only speculating about what might be missing, since I'm not 100% famili=
ar with the SDK, but perhaps Jessica or others can chime in if I've led you=
 astray :)

Cheers,

Bruce


>

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

