Return-Path: <PatrickTurley@gamestop.com>
Received: from gsironport1.gamestop.com (mail1.gamestop.com [12.25.107.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65F28E00294
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2013 13:21:47 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.84,508,1355119200"; 
   d="scan'208";a="7075237"
Received: from unknown (HELO GV1HQPEX02.babgsetc.pvt) ([172.22.1.244])
	by gsironport1.gamestop.com with ESMTP; 21 Jan 2013 15:21:46 -0600
Received: from GV1HQPEX03.babgsetc.pvt ([169.254.1.225]) by
	GV1HQPEX02.babgsetc.pvt ([172.22.1.192]) with mapi id 14.02.0318.004;
	Mon, 21 Jan 2013 15:21:46 -0600
From: Patrick Turley <PatrickTurley@gamestop.com>
To: Darren Hart <dvhart@linux.intel.com>
Thread-Topic: [yocto] Build external module against Yocto kernel
Thread-Index: AQHN8q6s5QOP/6xKnEq8yLl/GYg/sJhLBNOAgAAApYCAAAxrAIAAAagAgAAHNgCAAAN4gIABeiEAgAghfwA=
Date: Mon, 21 Jan 2013 21:21:45 +0000
Message-ID: <5BEFD653CA8A8D47AA194ED30AB5968C36D69C@GV1HQPEX03.babgsetc.pvt>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35CD91@GV1HQPEX03.babgsetc.pvt>
	<1358269651.2479.5.camel@omclinuxballt.devnet.ordermatic.net>
	<1358269789.2479.6.camel@omclinuxballt.devnet.ordermatic.net>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D715@GV1HQPEX03.babgsetc.pvt>
	<50F5992C.9070705@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D97A@GV1HQPEX03.babgsetc.pvt>
	<50F5A221.2070209@windriver.com> <50F6DF54.2020005@linux.intel.com>
In-Reply-To: <50F6DF54.2020005@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.1.244]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Brian Lloyd <blloyd@familyhonor.net>
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
X-List-Received-Date: Mon, 21 Jan 2013 21:21:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <E55790AD1C5704468D5605CE4F00BDCA@gamestop.com>
Content-Transfer-Encoding: quoted-printable

On Jan 16, 2013, at 11:11 AM, Darren Hart <dvhart@linux.intel.com> wrote:
> On 01/15/2013 10:38 AM, Bruce Ashfield wrote:
>>=20
>> I finally found the entries that I was recalling earlier. They are:
>>=20
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D241
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1614
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2968
>>=20
>> 1614 and 2968 are the most interesting for what you are asking.
>>=20
>> As you can see the net result of those bugs is that you can get the
>> right parts of the kernel tree in SDK packages, since they include
>> dev packages, and with what is currently in kernel-dev .. it should
>> be enough to build against in the SDK (perhaps with just the LDFLAGS
>> tweaks mentioned in the other thread). The sources should be part
>> of the sysroot, and hence available when that is packaged for use
>> outside of bitbake/yocto.
>>=20
>> If you aren't seeing kernel-dev in the SDK image, it might be that
>> TOOLCHAIN_TARGET_TASK doesn't have kernel-dev by default, or something
>> else is different in the SDK that is being generated in your testing.
>>=20
>> I'm only speculating about what might be missing, since I'm not 100%
>> familiar with the SDK, but perhaps Jessica or others can chime in if
>> I've led you astray :)
>>=20
>=20
> Thanks for keeping this going Bruce. Yes, kernel-dev is the package for
> the target. The only trick here is that we currently purge the host
> binaries which means that you need to build scripts on the target prior
> to building the module.
>=20
> I think this might be missing from the new kernel manual as it isn't a
> particularly common use-case, and is rather orthogonal to the way the
> tooling has been designed (not to say it can't be done).
>=20
> Patrick, please keep us posted if this continues to not work for you. I
> will open a bug to include a section about this in the kernel
> development manual.

I got sick and was also diverted to other things, so I apologize for not re=
sponding sooner. I am very appreciative of every CPU cycle you have all spe=
nt considering this issue -- I wouldn't want you to imagine otherwise.

I will gladly have a look at those issues and absorb the information you've=
 offered. I will also let you all know if it works for me.


