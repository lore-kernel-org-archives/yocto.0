Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2713E00D87; Wed, 18 May 2016 18:12:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 494F0E00D03
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 18:12:17 -0700 (PDT)
Received: from [192.168.1.105] (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])
	by msfrf2612.sfr.fr (SMTP Server) with ESMTP id C85951C000C21;
	Thu, 19 May 2016 03:12:16 +0200 (CEST)
Received: from [192.168.1.105] (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])	(using TLSv1
	with cipher ECDHE-RSA-AES256-SHA (256/256 bits))	(No client certificate
	requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2612.sfr.fr (SMTP Server) with ESMTPSA;
	Thu, 19 May 2016 03:12:16 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (PLAIN)
	smtp.auth=herve.jourdain@neuf.fr
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-9-git-send-email-herve.jourdain@neuf.fr>
	<CALbNGRSVrA_bE8-YeaVV4ih8AdiGrYVZv0i3UgnL7sOoY8iDZg@mail.gmail.com>
Mime-Version: 1.0 (1.0)
In-Reply-To: <CALbNGRSVrA_bE8-YeaVV4ih8AdiGrYVZv0i3UgnL7sOoY8iDZg@mail.gmail.com>
Message-Id: <B2672B13-1189-42EE-ACB5-FAB3D15CC052@neuf.fr>
X-Mailer: iPad Mail (13D15)
From: Herve Jourdain <herve.jourdain@neuf.fr>
Date: Thu, 19 May 2016 09:12:11 +0800
To: Andreas =?iso-8859-1?q?M=FCller?= <schnitzeltony@googlemail.com>
X-sfr-mailing: LEGIT
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 8/8] Support for vc4 graphics driver: modify the configuration for mesa
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
X-List-Received-Date: Thu, 19 May 2016 01:12:22 -0000
Content-Type: text/plain; charset=gb2312
Content-Transfer-Encoding: quoted-printable

Hi Andreas,

Thanks for seeing that, I did many tests, but they did not involve qt...
I can update the mesa version i guess, or add a patch for the current versio=
n...

Herve

> Le 19 mai 2016 =A8=A4 06:02, Andreas M=A8=B9ller <schnitzeltony@googlemail=
.com> a =A8=A6crit :
>=20
>> On Wed, May 18, 2016 at 2:21 PM, Herve Jourdain <herve.jourdain@neuf.fr> w=
rote:
>> This patch series enables the support for the VC4 graphics driver from Er=
ic Anholt.
>> Add some configuration for building mesa, on raspberrypi, when VC4 is in u=
se.
>>=20
>> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
>> ---
>> recipes-graphics/mesa/mesa_%.bbappend | 4 ++++
>> 1 file changed, 4 insertions(+)
>> create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
>>=20
>> diff --git a/recipes-graphics/mesa/mesa_%.bbappend b/recipes-graphics/mes=
a/mesa_%.bbappend
>> new file mode 100644
>> index 0000000..b182388
>> --- /dev/null
>> +++ b/recipes-graphics/mesa/mesa_%.bbappend
>> @@ -0,0 +1,4 @@
>> +PACKAGECONFIG_append_rpi =3D " gallium"
>> +GALLIUMDRIVERS_rpi =3D "vc4"
>> +DRIDRIVERS_rpi =3D ""
>> +
>> --
>> 2.7.4
>>=20
>> --
> FWIW: An update of mesa would at least help for Qt applications [1]
>=20
> [1] https://github.com/anholt/mesa/issues/26
>=20
> Andreas

