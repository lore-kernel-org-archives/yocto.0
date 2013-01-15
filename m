Return-Path: <PatrickTurley@gamestop.com>
Received: from gsironport2.gamestop.com (mail2.gamestop.com [12.25.107.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E1B5E0145C
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 10:26:01 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.84,475,1355119200"; 
   d="scan'208";a="7009235"
Received: from unknown (HELO GV1HQPEX02.babgsetc.pvt) ([172.22.1.244])
	by gsironport2.gamestop.com with ESMTP; 15 Jan 2013 12:26:02 -0600
Received: from GV1HQPEX03.babgsetc.pvt ([169.254.1.222]) by
	GV1HQPEX02.babgsetc.pvt ([172.22.1.192]) with mapi id 14.02.0318.004;
	Tue, 15 Jan 2013 12:26:00 -0600
From: Patrick Turley <PatrickTurley@gamestop.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: [yocto] Build external module against Yocto kernel
Thread-Index: AQHN8q6s5QOP/6xKnEq8yLl/GYg/sJhLBNOAgAAApYCAAAxrAIAAAagAgAAHNgA=
Date: Tue, 15 Jan 2013 18:26:00 +0000
Message-ID: <5BEFD653CA8A8D47AA194ED30AB5968C35D97A@GV1HQPEX03.babgsetc.pvt>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35CD91@GV1HQPEX03.babgsetc.pvt>
	<1358269651.2479.5.camel@omclinuxballt.devnet.ordermatic.net>
	<1358269789.2479.6.camel@omclinuxballt.devnet.ordermatic.net>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D715@GV1HQPEX03.babgsetc.pvt>
	<50F5992C.9070705@windriver.com>
In-Reply-To: <50F5992C.9070705@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.1.244]
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
X-List-Received-Date: Tue, 15 Jan 2013 18:26:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <2F51EA49E826DC438C35D3D8D58E1188@gamestop.com>
Content-Transfer-Encoding: quoted-printable

On Jan 15, 2013, at 12:00 PM, Bruce Ashfield <bruce.ashfield@windriver.com>
 wrote:

> On 13-01-15 12:54 PM, Patrick Turley wrote:
>> Thank you for directing me toward that documentation. As it happens, I
>> have already read that, and it doesn't apply.
>=20
> There are ways to do this, your requirement is the same as the on-target
> module building requirement. Have enough of the kernel source packaged
> to build modules on the target, after it has booted.

Well, I still want to cross-compile them, but I see your point.

> The trick is packaging things properly to not get binary/target elements
> in the SDK/native packages, and to package just enough for the build. But
> the issues have been explored and there was a plan. I know that Darren
> (cc'd) has looked into this more than I have recently.
>=20
> I can't locate the bugzilla entries on this at the moment, but I recall
> that some parts were still missing, but may be addressed in yocto 1.4,
> when I find the bug numbers, I'll have a better idea.

As I expected, someone else has already thought about this. This isn't the =
most common approach so it makes sense that it's been a lower priority. The=
 good news for me is that I know I'm not missing something, so I can stop l=
ooking for it.


