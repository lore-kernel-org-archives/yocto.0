Return-Path: <PatrickTurley@gamestop.com>
Received: from gsironport1.gamestop.com (mail1.gamestop.com [12.25.107.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68964E0034C
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2013 07:17:29 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.84,523,1355119200"; 
   d="scan'208";a="7183776"
Received: from unknown (HELO GV1HQPEX02.babgsetc.pvt) ([172.22.1.244])
	by gsironport1.gamestop.com with ESMTP; 23 Jan 2013 09:17:28 -0600
Received: from GV1HQPEX03.babgsetc.pvt ([169.254.1.225]) by
	GV1HQPEX02.babgsetc.pvt ([172.22.1.192]) with mapi id 14.02.0318.004;
	Wed, 23 Jan 2013 09:17:28 -0600
From: Patrick Turley <PatrickTurley@gamestop.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: [yocto] Build external module against Yocto kernel
Thread-Index: AQHN8q6s5QOP/6xKnEq8yLl/GYg/sJhLBNOAgAAApYCAAAxrAIAAAagAgAAHNgCAAAN4gIABeiEAgAmk9wCAAAHDAIAAYkSAgAAmVACAAAiBAIAAANIAgAAEyICAAIo0AIAAGMIA
Date: Wed, 23 Jan 2013 15:17:28 +0000
Message-ID: <5BEFD653CA8A8D47AA194ED30AB5968C3710B3@GV1HQPEX03.babgsetc.pvt>
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
In-Reply-To: <50FFEA46.5050303@windriver.com>
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
X-List-Received-Date: Wed, 23 Jan 2013 15:17:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <4BFD4668AFF04D44895AF34DB4EE7E8C@gamestop.com>
Content-Transfer-Encoding: quoted-printable


On Jan 23, 2013, at 7:48 AM, Bruce Ashfield <bruce.ashfield@windriver.com>
 wrote:
> On 13-01-23 12:34 AM, Patrick Turley wrote:
>>=20
>> On Jan 22, 2013, at 11:17 PM, Bruce Ashfield <bruce.ashfield@windriver.c=
om> wrote:
>>=20
>>> On 13-01-23 12:14 AM, Patrick Turley wrote:
>>>> On Jan 22, 2013, at 10:43 PM, Bruce Ashfield<bruce.ashfield@windriver.=
com>  wrote:
>>>>> On 13-01-22 9:26 PM, Patrick Turley wrote:
>=20
> Argh. I'll have to just run the commands myself and stop spamming the
> list with ideas :) It's just a matter of making lkc accept the defaults
> (i.e. you could also use allyesconfig, or allnoconfig) or even better
> not trigger that config check at all.

You're very kind to have spent so much time on my problem already. I look f=
orward to hearing back.


