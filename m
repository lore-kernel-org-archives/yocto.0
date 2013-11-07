Return-Path: <agikling@lasx.com>
Received: from omx.cbeyond.com (omx.cbeyond.com [50.20.30.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AD4FE017EC
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 16:02:35 -0800 (PST)
X-SBRS: 5.2
X-HAT: Sender Group CBEYOND_SYSTEMS, Policy $CBEYOND_RELAY applied.
X-Hostname: omx08bay.sys.cbeyond.net
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: An8BAJfXelIyFB4LmGdsb2JhbABbgmZZU78ugT0OAQEBAQEICQ0HFCEHgiUBAQEDATpRAQgiFEImAQQbh3MGAQQInUmhRY8og1iBEAOiVQSKY4Iq
X-IronPort-AV: E=Sophos;i="4.93,647,1378872000"; d="scan'208";a="44260773"
Received: from mts.cbeyond.com (HELO EXHUB102.mmeprod.cbeyond) ([50.20.30.11])
	by omx.cbeyond.com with ESMTP; 06 Nov 2013 19:02:34 -0500
Received: from EXMBX203A.mmeprod.cbeyond ([fe80::5407:bff7:b5c8:4633]) by
	EXHUB102.mmeprod.cbeyond ([::1]) with mapi id 14.03.0123.003;
	Wed, 6 Nov 2013 19:02:34 -0500
From: Andy Gikling <agikling@lasx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: My first Yocto Project
Thread-Index: Ac7bS8kfm5ozy98cT0SOklzEM1yu2A==
Date: Thu, 7 Nov 2013 00:02:33 +0000
Message-ID: <4C79E62053892D47A6419B29F941677A6E61B40B@EXMBX203A.mmeprod.cbeyond>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [69.198.178.141]
MIME-Version: 1.0
Subject: Re: My first Yocto Project
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Nov 2013 00:02:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>> Brian,
>>=20
>> Yes the meta-intel x86-64 should work.  I wouldn't count on the infrared=
 working out of the box though.  Chances are getting the appropriated graph=
ics drivers to work with Yocto will also be difficult and probably won't wo=
rk out of the box.  All the NUC's peripherals might work if you install Ubu=
ntu - but I'd even give that a 40% chance of failing to support everything =
you need for your home theater computer.
>>=20
>> If this is your first go at Yocto, I'd try getting the build system to r=
un on an older x86 computer that you're not interested in using as your hom=
e theater PC.  Otherwise you're going to probably get frustrated if/when Yo=
cto doesn't totally support the NUC...
>>=20

>Or you could try the Yocto NUC BSP:

>http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/meta-nuc

>I don't know about IR, but everything else works fine out of the box, incl=
uding graphics.

>Tom

First of all, sorry for top-posting in my last response!
Tom, I had no idea there was a NUC BSP - very cool.
Brian, if you get a NUC Yocto should have full support for it with the NUC =
BSP - try it out!

~Andy

>> But if you're not planning on this being a home theater PC, by all means=
, have at it!  If Yocto has issues now, many of them will get fixed eventua=
lly as more of the NUC devices come online.
>>=20
>> Just my 2 cents.
>>=20
>> ~Andy Gikling

