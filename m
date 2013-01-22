Return-Path: <PatrickTurley@gamestop.com>
Received: from gsironport2.gamestop.com (mail2.gamestop.com [12.25.107.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07E0FE014C5
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 12:28:35 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.84,516,1355119200"; 
   d="scan'208";a="7403498"
Received: from unknown (HELO GV1HQPEX01.babgsetc.pvt) ([172.22.1.244])
	by gsironport2.gamestop.com with ESMTP; 22 Jan 2013 14:28:35 -0600
Received: from GV1HQPEX03.babgsetc.pvt ([169.254.1.225]) by
	GV1HQPEX01.babgsetc.pvt ([172.22.1.191]) with mapi id 14.02.0318.004;
	Tue, 22 Jan 2013 14:28:35 -0600
From: Patrick Turley <PatrickTurley@gamestop.com>
To: Darren Hart <dvhart@linux.intel.com>, Bruce Ashfield
	<bruce.ashfield@windriver.com>
Thread-Topic: [yocto] Build external module against Yocto kernel
Thread-Index: AQHN8q6s5QOP/6xKnEq8yLl/GYg/sJhLBNOAgAAApYCAAAxrAIAAAagAgAAHNgCAAAN4gIABeiEAgAmk9wA=
Date: Tue, 22 Jan 2013 20:28:34 +0000
Message-ID: <5BEFD653CA8A8D47AA194ED30AB5968C370295@GV1HQPEX03.babgsetc.pvt>
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
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 22 Jan 2013 20:28:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <13645BEE7E0CCC49803B62AF31594774@gamestop.com>
Content-Transfer-Encoding: quoted-printable

On Jan 16, 2013, at 11:11 AM, Darren Hart <dvhart@linux.intel.com> wrote:
> On 01/15/2013 10:38 AM, Bruce Ashfield wrote:
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

You have *not* led me astray. A fundamental problem was that I didn't compr=
ehend the distinction/correspondence between "target image" recipes and "SD=
K image" recipes. I believe I get that now.

We've created a target image recipe, and an SDK image recipe that "require'=
s" the former (this is conventional, I believe). The SDK image recipe adds =
all the development packages and, yes, it includes kernel-dev. So, when I i=
nstall my SDK now, I certainly *do* get all the kernel header files. As you=
 know, I do *not* get the hostprogs.

As I described in an earlier post, I am currently reaching into the "tmp" d=
irectory, pulling out the kernel work directory, and making it directly ava=
ilable to my external build process. This solves my problem because the wor=
k directory contains all the header files I need *and* the hostprogs. Of co=
urse, it's "bad" because it's not an intended way to use the build artifact=
s, and it's awkward to distribute.

With the recent improvement, I can now get the kernel header files packaged=
 in the SDK. That's good because it's an intended mechanism and it's easy t=
o distribute.

With regard to:

    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1614

This seems a reasonable solution to the problem of building modules on the =
target, given the difficulties of dealing with executables. I'm not buildin=
g modules on the target (I'm cross-compiling them), but this seems to apply=
 anyway. It adds an extra step to SDK installation, but that's the least of=
 our problems.

One problem I ran into =85 When I tried to execute "make scripts," I got a =
whole bunch of config questions that I *think* should have been answered wi=
th a .config file or something. Should I have copied out the .config file f=
rom the kernel work directory into the SDK installation before I ran that? =
Is that the "best" way to get around all the questions?

> Patrick, please keep us posted if this continues to not work for you. I
> will open a bug to include a section about this in the kernel
> development manual.

It's very *nearly* working for me now. See my question above.


