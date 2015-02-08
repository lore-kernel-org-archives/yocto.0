Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B320E00848; Sun,  8 Feb 2015 06:13:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C110E007AB
	for <yocto@yoctoproject.org>; Sun,  8 Feb 2015 06:13:01 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AoQFAAhu11TGmAcV/2dsb2JhbABcgmQiUloEwFCCIoV1AoEPQwEBAQEBAXyEDAEBAQEDElwXBAIBCA0EBAEBAQodBzIUCQgBAQQBEggaiAsBp36gNAEBAQEBAQEBAgEBAQEBAQEBAQEBF49HOAaDEIEUBYVShCeFIoNQghIFhROFCINpiDEig25vgUR+AQEB
X-IronPort-AV: E=Sophos;i="5.09,539,1418101200"; d="scan'208";a="90582134"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by de307622-de-outbound.net.avaya.com with ESMTP;
	08 Feb 2015 09:12:59 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC03.global.avaya.com) ([135.64.58.13])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	08 Feb 2015 09:12:58 -0500
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC03.global.avaya.com ([135.64.58.13]) with mapi id
	14.03.0174.001; Sun, 8 Feb 2015 09:12:57 -0500
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: Gary Thomas <gary@mlbassoc.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] do_install fails to do a package for custom directory
Thread-Index: AdBDorOCEVeYkA8TS0KcQJvpQtCUwgALrOOAAAoeHvA=
Date: Sun, 8 Feb 2015 14:12:56 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A3471B4@AZ-FFEXMB01.global.avaya.com>
References: <F38A866CD026F746A3BF0928A84397BE3A345186@AZ-FFEXMB01.global.avaya.com>
	<54D76BD1.50408@mlbassoc.com>
In-Reply-To: <54D76BD1.50408@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.48]
MIME-Version: 1.0
Subject: Re: do_install fails to do a package for custom directory
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
X-List-Received-Date: Sun, 08 Feb 2015 14:13:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Basically When I use install -d ${D}/system/hello the files were not gettin=
g part of it. But as you suggested putting it in FILES_${PN} =3D+ "/system"=
 works.

Where I can find a tutorial for such custom recipe and not the hello world =
which they put in ${bindir}

-Abhinav

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Gary Thomas
Sent: Sunday, February 08, 2015 19:30
To: yocto@yoctoproject.org
Subject: Re: [yocto] do_install fails to do a package for custom directory

On 2015-02-08 06:25, Bipnesh, Abhinav (Abhinav) wrote:
> Hi All,
>
> I am trying to write a custom recipe for my make based project. So I=20
> am able to compile the project and generate the binary. Now when I am try=
ing to package using do_install() I am not able to put the package in custo=
m directory.
>
> So when I use *${D}${bindir} *it work perfectly fine and the package=20
> has those binary. But when I tried with *${D}/system/hello * it didn't=20
> works. Below is the snapshot of the do_install ()
>
> do_install () {
>
>       cd ${WORKDIR}
>
>       # init script
>
>       install -d ${D}${sysconfdir}/init.d
>
>       install -d ${D}${sysconfdir}/sysconfig
>
>       install -m 755 ${WORKDIR}/test/test=20
> ${D}${sysconfdir}/init.d/test
>
>       install -m 644 ${WORKDIR}/test/test=20
> ${D}${sysconfdir}/sysconfig/test
>
>       # executable
>
>       install -d ${D}/system/hello
>
>       #install -d ${D}${bindir}
>
>       #install -m 755 ${S}/helloworl/hello ${D}${bindir}/hello =E7it=20
> works
>
>       install -m 755 ${S}/helloworld/hello ${D}/system/hello/hello =E7it=
=20
> doesn't work
>
> }
>
> So any thoughts how to fix this issue.

What do you mean that it doesn't work?

Most likely is that the directory /system and it's contents are not being p=
ackaged.  Try adding this line
   FILES_${PN} +=3D "/system"

--
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject.o=
rg_listinfo_yocto&d=3DAwIF-g&c=3DBFpWQw8bsuKpl1SgiZH64Q&r=3DgeJ1wB7xRIMmteY=
B2Fo8esL32BOWvwP1HmY0YuLEB4E&m=3DikVlWYEbDzcQy52fiUGaZTJLBE1jhjyDKMljDYnHXb=
o&s=3DGyH-GO4B3CEB3mOtSoyqyVzk8_r8Dt6Fd6328A0kUJc&e=3D=20

