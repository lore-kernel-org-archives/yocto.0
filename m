Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19C9EE009BF; Wed, 18 May 2016 10:32:43 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBB1CE00888
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 10:32:39 -0700 (PDT)
Received: from [192.168.1.105] (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])
	by msfrf2613.sfr.fr (SMTP Server) with ESMTP id 07C151C00183B;
	Wed, 18 May 2016 19:32:39 +0200 (CEST)
Received: from [192.168.1.105] (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])	(using TLSv1
	with cipher ECDHE-RSA-AES256-SHA (256/256 bits))	(No client certificate
	requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2613.sfr.fr (SMTP Server) with ESMTPSA;
	Wed, 18 May 2016 19:32:38 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (PLAIN)
	smtp.auth=herve.jourdain@neuf.fr
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-6-git-send-email-herve.jourdain@neuf.fr>
	<722F295F-4BEE-4E0A-9078-BB24EF9BAAE2@gmail.com>
	<F57461B0-379F-4CA7-8A72-F993A6BFC155@neuf.fr>
Mime-Version: 1.0 (1.0)
In-Reply-To: <F57461B0-379F-4CA7-8A72-F993A6BFC155@neuf.fr>
Message-Id: <5E856D17-B2AF-4439-A778-1F1A93B4103B@neuf.fr>
X-Mailer: iPad Mail (13D15)
From: Herve Jourdain <herve.jourdain@neuf.fr>
Date: Thu, 19 May 2016 01:32:35 +0800
To: Khem Raj <raj.khem@gmail.com>
X-sfr-mailing: LEGIT
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 5/8] Support for vc4 graphics driver: upgrade 4.4 kernel to 4.4.10
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
X-List-Received-Date: Wed, 18 May 2016 17:32:43 -0000
Content-Type: text/plain; charset=gb2312
Content-Transfer-Encoding: quoted-printable

One thing I didn't make configurable, but that maybe could be, is the parame=
ter passed to the overlay.
I selected cma-256, based on experience from other people, and because my co=
nfiguration is RPI2/3 with 1G of memory.
I realize it might not work well with RPI0/1, which have less memory availab=
le...
So even if I believe cma-256 is a good default value, it might be made selec=
table by the user, if we want to consider vc4 on RPI0/1.
I'd very much like to hear other people's opinion about that...

Herve

> Le 19 mai 2016 =A8=A4 00:43, Herve Jourdain <herve.jourdain@neuf.fr> a =A8=
=A6crit :
>=20
> Hi Khem,
>=20
> Yes, I've seen that you had sent a patch to upgrade to some revision of 4.=
4.9.
> Here, I upgrade to 4.4.10, but VC4 should work with the 4.4.9 revision you=
 sent before.
> I mostly bumped to 4.4.10 because the firmware bumped to 4.4.10 - and the f=
irmware bump is mandatory for VC4 to work effectively on RPI.
>=20
> Herve
>=20
>> Le 19 mai 2016 =A8=A4 00:27, Khem Raj <raj.khem@gmail.com> a =A8=A6crit :=

>>=20
>>=20
>>> On May 18, 2016, at 5:21 AM, Herve Jourdain <herve.jourdain@neuf.fr> wro=
te:
>>>=20
>>> This patch series enables the support for the VC4 graphics driver from E=
ric Anholt.
>>> Kernel upgrade to 4.4.10 (some 4.4.9 version would be enough, but the re=
quired firmware supports 4.4.10, so bump it anyway)
>>=20
>> I have sent a patch for similar update. Have you looked at that
>>=20
>>>=20
>>> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
>>> ---
>>> recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
>>> 1 file changed, 2 insertions(+), 2 deletions(-)
>>>=20
>>> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-ker=
nel/linux/linux-raspberrypi_4.4.bb
>>> index 831ac5a..0bc6531 100644
>>> --- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
>>> +++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
>>> @@ -1,8 +1,8 @@
>>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
>>>=20
>>> -LINUX_VERSION ?=3D "4.4.8"
>>> +LINUX_VERSION ?=3D "4.4.10"
>>>=20
>>> -SRCREV =3D "fe7ad6aa5c6940817fe971d80a7b2a1d6052190a"
>>> +SRCREV =3D "4c2795dd50f98fa162cb53190eb557be44f92f58"
>>> SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;branc=
h=3Drpi-4.4.y \
>>>          file://0001-fix-dtbo-rules.patch \
>>> "
>>> --
>>> 2.7.4
>>>=20
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>=20

