Return-Path: <rohit2.jindal@aricent.com>
Received: from jaguar.aricent.com (jaguar.aricent.com [121.241.96.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A562E014E2;
	Wed, 19 Jun 2013 02:51:57 -0700 (PDT)
Received: from jaguar.aricent.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 281BF36B4C;
	Wed, 19 Jun 2013 15:21:38 +0530 (IST)
Received: from GUREXHT02.ASIAN.AD.ARICENT.COM (gurexht02.asian.ad.aricent.com
	[10.203.171.138])
	by jaguar.aricent.com (Postfix) with ESMTP id 1199836B27;
	Wed, 19 Jun 2013 15:21:38 +0530 (IST)
Received: from GUREXMB01.asian.ad.aricent.com ([10.203.171.134]) by
	GUREXHT02.ASIAN.AD.ARICENT.COM ([10.203.171.138]) with mapi;
	Wed, 19 Jun 2013 15:21:38 +0530
From: Rohit2 Jindal <rohit2.jindal@aricent.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"yocto-owner@yoctoproject.org" <yocto-owner@yoctoproject.org>
Date: Wed, 19 Jun 2013 15:21:37 +0530
Thread-Topic: Yocto root permission issue
Thread-Index: AQHObNKXxuzfcjBN30qxPRIPGINTRA==
Message-ID: <17797116383D4341B029FDF34C22BF6A52C4BE0FA9@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <mailman.11.1371063601.16784.yocto@yoctoproject.org>
	<17797116383D4341B029FDF34C22BF6A52C4CCB36E@GUREXMB01.ASIAN.AD.ARICENT.COM>,
	<1371227894.20823.90.camel@ted>
In-Reply-To: <1371227894.20823.90.camel@ted>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Yocto root permission issue
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
X-List-Received-Date: Wed, 19 Jun 2013 09:51:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am facing issue in building sysconfig. Actually i want to compile everyth=
ing with root permissions in yocto. Is there anything that supports it.

Eg say i have binary called build-ucore with root permission but i am not a=
ble to execute this binary using default yocto permissions in do_compile or=
 do_configure
Can i change yocto default permission or run yocto with SU permissions .

Please help me out!

________________________________________
From: Richard Purdie [richard.purdie@linuxfoundation.org]
Sent: Friday, June 14, 2013 10:08 PM
To: Rohit2 Jindal
Cc: yocto@yoctoproject.org; yocto-owner@yoctoproject.org
Subject: Re: Recompile the recipe everytime

On Thu, 2013-06-13 at 20:54 +0530, Rohit2 Jindal wrote:
> Please help me out I am stuck in some issue, actually I want my recipe to=
 do compilation everytime on every run of
>
> Bitbake linux-yocto
>
> ie can I remove stamping or sstate-cache that it allows me to run compila=
tion everytime on every run of bitbake linux-yocto.
>
>
> I tried do_compile[nostamp] =3D"1" but it did not work but same thing wor=
ked for do_install[nostamp]=3D"1"

If you just want to rerun the compilation:

do_compile[nostamp] =3D "1"

should do what you want, not sure why that wouldn't work.

bitbake linux-yocto -c compile -f

or

bitbake linux-yocto -C compile -f

are also commands which might help.

Cheers,

Richard




=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
Please refer to http://www.aricent.com/legal/email_disclaimer.html
for important disclosures regarding this electronic communication.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

