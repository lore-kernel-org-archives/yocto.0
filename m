Return-Path: <PatrickTurley@gamestop.com>
Received: from gsironport2.gamestop.com (mail2.gamestop.com [12.25.107.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D8D6E00515
	for <yocto@yoctoproject.org>; Fri,  1 Feb 2013 16:48:28 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.84,588,1355119200"; 
   d="scan'208";a="7984898"
Received: from unknown (HELO GV1HQPEX02.babgsetc.pvt) ([172.22.1.244])
	by gsironport2.gamestop.com with ESMTP; 01 Feb 2013 18:48:27 -0600
Received: from GV1HQPEX03.babgsetc.pvt ([169.254.1.225]) by
	GV1HQPEX02.babgsetc.pvt ([172.22.1.192]) with mapi id 14.02.0318.004;
	Fri, 1 Feb 2013 18:48:27 -0600
From: Patrick Turley <PatrickTurley@gamestop.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: [yocto] Build external module against Yocto kernel
Thread-Index: AQHN8q6s5QOP/6xKnEq8yLl/GYg/sJhLBNOAgAAApYCAAAxrAIAAAagAgAAHNgCAAAN4gIABeiEAgAmk9wCAAAHDAIAAYkSAgAAmVACAAAiBAIAAANIAgAAEyICAAIo0AIAAGMIAgA115wCAAU6XgA==
Date: Sat, 2 Feb 2013 00:48:26 +0000
Message-ID: <5BEFD653CA8A8D47AA194ED30AB5968C37AE5C@GV1HQPEX03.babgsetc.pvt>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35CD91@GV1HQPEX03.babgsetc.pvt>
	<1358269651.2479.5.camel@omclinuxballt.devnet.ordermatic.net>
	<1358269789.2479.6.camel@omclinuxballt.devnet.ordermatic.net>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D715@GV1HQPEX03.babgsetc.pvt>
	<50F5992C.9070705@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D97A@GV1HQPEX03.babgsetc.pvt>
	<50F5A221.2070209@windriver.com> <50F6DF54.2020005@linux.intel.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370295@GV1HQPEX03.babgsetc.pvt>
	<50FEF7EC.6030601@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370A99@GV1HQPEX03.babgsetc.pvt>
	<50FF6A82.9090201@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370F09@GV1HQPEX03.babgsetc.pvt>
	<50FF7254.2050903@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370F97@GV1HQPEX03.babgsetc.pvt>
	<50FFEA46.5050303@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C3710B3@GV1HQPEX03.babgsetc.pvt>
	<510B49AC.405@windriver.com>
In-Reply-To: <510B49AC.405@windriver.com>
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
X-List-Received-Date: Sat, 02 Feb 2013 00:48:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <32E3117F65B1624281AC663AE8D9F29F@gamestop.com>
Content-Transfer-Encoding: quoted-printable


On Jan 31, 2013, at 10:50 PM, Bruce Ashfield <bruce.ashfield@windriver.com>=
 wrote:

> On 13-01-23 10:17 AM, Patrick Turley wrote:
>>=20
>> On Jan 23, 2013, at 7:48 AM, Bruce Ashfield<bruce.ashfield@windriver.com=
>
>>  wrote:
>>> On 13-01-23 12:34 AM, Patrick Turley wrote:
>>>>=20
>>>> On Jan 22, 2013, at 11:17 PM, Bruce Ashfield<bruce.ashfield@windriver.=
com>  wrote:
>>>>=20
>>>>> On 13-01-23 12:14 AM, Patrick Turley wrote:
>>>>>> On Jan 22, 2013, at 10:43 PM, Bruce Ashfield<bruce.ashfield@windrive=
r.com>   wrote:
>>>>>>> On 13-01-22 9:26 PM, Patrick Turley wrote:
>>>=20
>>> Argh. I'll have to just run the commands myself and stop spamming the
>>> list with ideas :) It's just a matter of making lkc accept the defaults
>>> (i.e. you could also use allyesconfig, or allnoconfig) or even better
>>> not trigger that config check at all.
>>=20
>> You're very kind to have spent so much time on my problem already. I loo=
k forward to hearing back.
>=20
> I'm not sure if you are still interested in this topic, but I took
> a few minutes to look into this more today .. just to understand
> exactly what is happening.
>=20
> It is what was discussed on the thread already, when you invoke
> make scripts, there is an explicit dependency on auto.conf and
> that is what triggers the make oldconfig if the .config is newer
> than it is. Technically we are safe from this, assuming that the
> .config and captured auto.conf match, and that auto.conf is in the
> SDK.
>=20
> The other way that oldconfig is triggered in my experience (and
> testing today) is what we mentioned before. If your .config was
> generated with ARCH=3D<foo> (even ARCH=3Di386 the default) and you then
> execute 'make scripts', you'll trigger the oldconfig.
>=20
> So to avoid it, you should execute your make scripts with ARCH=3D<your ar=
ch>
> on the command line.
>=20
> As for saving ARCH in the .config, it has been considered in the past,
> but never implemented. Other elements such as CROSS_COMPILE are now
> saved, but not ARCH=3D since it isn't directly used in the .config, it's
> a Makefile construct.

I absolutely *am* still interested in this issue, and thank you for taking =
another look.

There are two commands that I'm interested in executing:

    -- make oldconfig

    -- make scripts

(Since I install the SDK under /opt, I use sudo when running these commands=
, but I don't *think* that's important.)


Here's what happens with the first command:

$ sudo make oldconfig ARCH=3Darm
  HOSTCC  scripts/basic/fixdep
  HOSTCC  scripts/basic/docproc
  HOSTCC  scripts/kconfig/conf.o
  HOSTCC  scripts/kconfig/kxgettext.o
  SHIPPED scripts/kconfig/zconf.tab.c
  SHIPPED scripts/kconfig/lex.zconf.c
  SHIPPED scripts/kconfig/zconf.hash.c
  HOSTCC  scripts/kconfig/zconf.tab.o
  HOSTLD  scripts/kconfig/conf
scripts/kconfig/conf --oldconfig Kconfig
#
# configuration written to .config
#

As you say, adding "ARCH=3Darm" puts the build at ease and it completes jus=
t fine.


Here's what happens with the second command:

$ sudo make scripts ARCH=3Darm
scripts/kconfig/conf --silentoldconfig Kconfig
  HOSTCC  scripts/genksyms/genksyms.o
  SHIPPED scripts/genksyms/lex.c
  SHIPPED scripts/genksyms/parse.h
  SHIPPED scripts/genksyms/keywords.c
  HOSTCC  scripts/genksyms/lex.o
  SHIPPED scripts/genksyms/parse.c
  HOSTCC  scripts/genksyms/parse.o
  HOSTLD  scripts/genksyms/genksyms
  CC      scripts/mod/empty.o
cc1: error: unrecognized command line option "-mlittle-endian"
cc1: error: unrecognized command line option "-mapcs"
cc1: error: unrecognized command line option "-mno-sched-prolog"
cc1: error: unrecognized command line option "-mabi=3Daapcs-linux"
cc1: error: unrecognized command line option "-mno-thumb-interwork"
scripts/mod/empty.c:1: error: bad value (armv5t) for -march=3D switch
scripts/mod/empty.c:1: error: bad value (armv5t) for -mtune=3D switch
make[2]: *** [scripts/mod/empty.o] Error 1
make[1]: *** [scripts/mod] Error 2
make: *** [scripts] Error 2

Recall that, when I do *not* give the "ARCH=3Darm" argument, I get reams of=
 config questions, but the build works.

This is an improvement in that the config questions are gone but, of course=
, the build fails.

Perhaps it *should* fail. Perhaps I'm doing something that actually doesn't=
 make sense. Or perhaps I'm doing something that Yocto just isn't ready to =
support. At this point, I should say:

1) I have a workaround for all this, so I am *not* dead in the water.

2) I am a kernel building n00b and it legitimately may not be worth your ti=
me (or anyone else's) to continue to look at this until I "catch up." I don=
't want anyone throwing up their hands in frustration and saying "Doesn't t=
his guy know anything?" It's perfectly reasonable to cut me off at this poi=
nt :)


