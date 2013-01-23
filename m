Return-Path: <PatrickTurley@gamestop.com>
Received: from gsironport1.gamestop.com (mail1.gamestop.com [12.25.107.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBFACE0034C
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 21:34:16 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.84,520,1355119200"; 
   d="scan'208";a="7166946"
Received: from unknown (HELO GV1HQPEX01.babgsetc.pvt) ([172.22.1.244])
	by gsironport1.gamestop.com with ESMTP; 22 Jan 2013 23:34:16 -0600
Received: from GV1HQPEX03.babgsetc.pvt ([169.254.1.225]) by
	GV1HQPEX01.babgsetc.pvt ([172.22.1.191]) with mapi id 14.02.0318.004;
	Tue, 22 Jan 2013 23:34:16 -0600
From: Patrick Turley <PatrickTurley@gamestop.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: [yocto] Build external module against Yocto kernel
Thread-Index: AQHN8q6s5QOP/6xKnEq8yLl/GYg/sJhLBNOAgAAApYCAAAxrAIAAAagAgAAHNgCAAAN4gIABeiEAgAmk9wCAAAHDAIAAYkSAgAAmVACAAAiBAIAAANIAgAAEyIA=
Date: Wed, 23 Jan 2013 05:34:15 +0000
Message-ID: <5BEFD653CA8A8D47AA194ED30AB5968C370F97@GV1HQPEX03.babgsetc.pvt>
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
In-Reply-To: <50FF7254.2050903@windriver.com>
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
X-List-Received-Date: Wed, 23 Jan 2013 05:34:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <51761A5D322DED4486D7E66E7EF38F6D@gamestop.com>
Content-Transfer-Encoding: quoted-printable


On Jan 22, 2013, at 11:17 PM, Bruce Ashfield <bruce.ashfield@windriver.com>=
 wrote:

> On 13-01-23 12:14 AM, Patrick Turley wrote:
>> On Jan 22, 2013, at 10:43 PM, Bruce Ashfield<bruce.ashfield@windriver.co=
m>  wrote:
>>> On 13-01-22 9:26 PM, Patrick Turley wrote:
>>>> If I just hold down the "Enter" key, I believe all the defaults are ta=
ken, and I eventually *do* get hostprogs that execute, but I don't know if =
they're appropriate to my kernel. (Again, I'm a n00b, so perhaps there's no=
 effect at all.)
>>>=20
>>> This will be fine, the defaults will work. The kernel build infrastruct=
ure
>>> is picking up what it thinks is a change source ->  to config and tryin=
g
>>> to reconcile the differences.
>>>=20
>>> If you throw in a 'make oldconfig' before you do the 'make scripts', do=
es
>>> that quiet things down a bit ?
>>=20
>> No -- "make oldconfig" caused the very same questions (see below).
>=20
> Aha. of course (now that I think about it), the build was simply triggeri=
ng
> old config automatically.
>=20
> silentoldconfig is what I really should have typed :)


Nope - still doesn't work.

--------------------

$ sudo make silentoldconfig
  HOSTCC  scripts/basic/fixdep
  HOSTCC  scripts/basic/docproc
  HOSTCC  scripts/kconfig/conf.o
  HOSTCC  scripts/kconfig/kxgettext.o
  SHIPPED scripts/kconfig/zconf.tab.c
  SHIPPED scripts/kconfig/lex.zconf.c
  SHIPPED scripts/kconfig/zconf.hash.c
  HOSTCC  scripts/kconfig/zconf.tab.o
  HOSTLD  scripts/kconfig/conf
scripts/kconfig/conf --silentoldconfig Kconfig
*
* Restart config...
*
*
* General setup
*
Prompt for development and/or incomplete code/drivers (EXPERIMENTAL) [Y/n/?=
] y
Cross-compiler tool prefix (CROSS_COMPILE) []=20
Local version - append to kernel release (LOCALVERSION) []=20
Automatically append version information to the version string (LOCALVERSIO=
N_AUTO) [N/y/?] n
Kernel compression mode
> 1. Gzip (KERNEL_GZIP)
  2. Bzip2 (KERNEL_BZIP2) (NEW)
  3. LZMA (KERNEL_LZMA)
  4. LZO (KERNEL_LZO)
choice[1-4?]:=20


