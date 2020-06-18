Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.2574.1592466187427619624
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Jun 2020 00:43:07 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denx.de, ip: 140.211.169.56, mailfrom: sbabic@denx.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9E7EE01D21; Thu, 18 Jun 2020 00:43:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [212.18.0.9 listed in list.dnswl.org]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA9B5E01CDD
	for <yocto@yoctoproject.org>; Thu, 18 Jun 2020 00:43:04 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 49nYng2Jczz1qs07;
	Thu, 18 Jun 2020 09:43:03 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 49nYng1x3Tz1qqkg;
	Thu, 18 Jun 2020 09:43:03 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
	with ESMTP id ha9VpxIrL3Ze; Thu, 18 Jun 2020 09:42:59 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net [88.217.136.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPS;
	Thu, 18 Jun 2020 09:42:59 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 3095545405A4;
	Thu, 18 Jun 2020 09:42:59 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4vD33g8CAqco; Thu, 18 Jun 2020 09:42:56 +0200 (CEST)
Received: from [192.168.178.47] (stefano-MacBookPro.fritz.box [192.168.178.47])
	by babic.homelinux.org (Postfix) with ESMTPS id F30B7454050D;
	Thu, 18 Jun 2020 09:42:55 +0200 (CEST)
Subject: Re: [swupdate] RE: [yocto] [PATCH] [meta-swupdate] Fix build error of dependence.
To: "Zheng, Ruoqin" <zhengrq.fnst@cn.fujitsu.com>,
 Stefano Babic <sbabic@denx.de>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: swupdate <swupdate@googlegroups.com>
References: <1591273565-20422-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
 <b4d88124-4292-d5f2-8275-3c450551844e@denx.de>
 <2e85067adbff4d4a93bd9acabf8424b2@G08CNEXMBPEKD06.g08.fujitsu.local>
 <982020c1-346e-7183-31df-7fe61c898537@denx.de>
 <1592464111066.55405@cn.fujitsu.com>
From: "Stefano Babic" <sbabic@denx.de>
Message-ID: <647f2241-e847-1476-a294-7d4b4882e236@denx.de>
Date: Thu, 18 Jun 2020 09:42:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1592464111066.55405@cn.fujitsu.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Zheng,

On 18.06.20 09:08, Zheng, Ruoqin wrote:
> Hi, Stefano
>=20
>  =20
> I'm sorry I'm so late for your reply.
>=20
>=20
>> I do not think the issue exists.
>=20
>  =20
> I bitbake swupdate with poky and meta-oe without any modifications, depe=
nd error happens, isn't it an issue?
>=20

It depends what you are meaning.

>=20
>> In fact, CONFIG_MONGOOSESSL is protected by
>=20
>> CONFIG_SSL_IMPL_OPENSSL or CONFIG_SSL_IMPL_MBEDTLS. If you set
>=20
>> CONFIG_MONGOOSESSL, SSL is already set.
>=20
>  =20
> I don't find the relationship of  CONFIG_MONGOOSESSL and CONFIG_SSL_IMPL=
_OPENSSL or CONFIG_SSL_IMPL_MBEDTLS in menuconfig step.

In mongoose/Config.in:

  config MONGOOSESSL
          bool "SSL support"
          depends on MONGOOSE
          depends on SSL_IMPL_OPENSSL || SSL_IMPL_MBEDTLS

CONFIG_MONGOOSESSL cannot be set if one of the SSL options is not set,=20
and they can be chosen via SSL menu.

>=20
> ---------------------------
>=20
> $ grep MONGOOSESSL tmp/work/core2-64-poky-linux/swupdate/2020.04-r0/git/=
 -r | grep Kconfig
>=20

Search for Config.in and Kconfig in root.

> $
>=20
> ---------------------------
>=20
> By default CONFIG_SSL_IMPL_OPENSSL will be enable during configure step.=
 But openssl is not in the dependences of swupdate. That' s why error happe=
ns by default.

Because the tree of dependency is SSL, then MBEDTLS or OPENSSL

>=20
> Of course, YP users can fix this build error by manuconfig or modified t=
he defconfig. But that's not friendly.
>=20
>  =20
>=20
> In fact, after configuring the CONFIG_SSL_IMPL_OPENSSL will be added int=
o .config file. But swupdate.inc judges which dependence will be added by d=
efconfig file before configure step.

Ok - if you are using fragments, you have to add the missing=20
dependencies on your own, that is true.

>=20
> So, I thought out two methods to fix this issue to make swupdate can be =
passed by default.
>=20
> 1.  Added openssl into dependences by DEPENDS parameter, such as the fol=
lowing:

Ok, so you are saying that the defconfig shipped with meta-swupdate is=20
inconsistent. This can be because it was not updated with last=20
SWUpdate's version, and it does not know about the new CONFIG options.

Anyway, think about that SWUpdate should match the MACHINE, that is most=
=20
users need to configure it and add a swupdate_%.bbappend with own=20
configuration. In any case, if this is broken, I agree it should be fixed.

>=20
> ----------------------------
>=20
> --- a/recipes-support/swupdate/swupdate.inc
>=20
> +++ b/recipes-support/swupdate/swupdate.inc
>=20
> @@ -72,7 +72,7 @@ S =3D "${WORKDIR}/git/"
>=20
> ......
>=20
> -DEPENDS +=3D "kern-tools-native"
>=20
> +DEPENDS +=3D "kern-tools-native openssl"

No, this is wrong, as users can select MBEDTLS.

>=20
> ----------------------------
>=20
>=20
> 2. Added CONFIG_SSL_IMPL_OPENSSL into defconfig file.
>=20
> ----------------------------
>=20
> --- a/recipes-support/swupdate/swupdate/defconfig
>=20
> +++ b/recipes-support/swupdate/swupdate/defconfig
>=20
> @@ -96,3 +96,4 @@ CONFIG_SHELLSCRIPTHANDLER=3Dy
>=20
>   # CONFIG_ARCHIVE is not set
>=20
>   # CONFIG_REMOTE_HANDLER is not set
>=20
>   # CONFIG_BOOTLOADERHANDLER is not set
>=20
> +CONFIG_SSL_IMPL_OPENSSL=3Dy
>=20
> ----------------------------
>  =20
>=20
> Users who want to use mbedtls instead if openssl can added bbappend file=
 to modify the DEPENDS parameter or defconfig file.

But they need to remove openssl from DEPENDS and they need to know wich=20
dependencies are already set - it does not work.

>  =20
>=20
> How about my suggestion?

Default defconfig does not match current SWUpdate and it is what should=20
be fixed.

Best regards,
Stefano

>  =20
>=20
> Best regards
>=20
> Zheng=E2=80=8B
>=20
> ________________________________________
> =E5=8F=91=E4=BB=B6=E4=BA=BA: Stefano Babic <sbabic@denx.de>
> =E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: 2020=E5=B9=B46=E6=9C=888=E6=97=A5 =
16:55
> =E6=94=B6=E4=BB=B6=E4=BA=BA: Zheng, Ruoqin; Stefano Babic; yocto@yoctopr=
oject.org
> =E6=8A=84=E9=80=81: swupdate
> =E4=B8=BB=E9=A2=98: Re: [swupdate] RE: [yocto] [PATCH] [meta-swupdate] F=
ix build error of dependence.
>=20
> Hi Zheng,
>=20
> On 08.06.20 10:49, Zheng, Ruoqin wrote:
>> Hi Stefano
>>
>>> there is a ML for SWUpdate and meta-swupdate (see CC), we are cross-
>>> posting here:
>> Thank you, I got it.
>>
>>> openSSL is not the only supported SSL library, the Webserver runs also=
 with
>>> mbedTLS. This patch forces to use openSSL and conflicts in case mbedTL=
S is
>>> used as signing and crypto library.
>>>
>>>>        if 'CONFIG_JSON=3Dy\n' in features:
>>>>            depends +=3D ' json-c'
>> OK, I'll update my patch and send V2 version.
>>
>=20
> I do not think the issue exists. In fact, CONFIG_MONGOOSESSL is
> protected by CONFIG_SSL_IMPL_OPENSSL or CONFIG_SSL_IMPL_MBEDTLS. If you
> set CONFIG_MONGOOSESSL, SSL is already set.
>=20
> The only way to go into the issue is to modify directly your defconfig
> file  instead of running "bitbake -c menuconfig" and then apply the
> diffconfig or the new defconfig. But this is of course a wrong way,
> exactly as in kernel.
>=20
> Try to run "mnuconfig" and then you can apply the fragment to your
> diffconfig (fragments are supported, too).
>=20
> Best regards,
> Stefano
>=20
>> --------------------------------------------------
>> Zheng Ruoqin
>> Nanjing Fujitsu Nanda Software Tech. Co., Ltd.(FNST)
>> ADDR.: No.6 Wenzhu Road, Software Avenue,
>>         Nanjing, 210012, China
>> MAIL : zhengrq.fnst@cn.fujistu.com
>>
>>
>>
>>> -----Original Message-----
>>> From: Stefano Babic <sbabic@denx.de>
>>> Sent: Thursday, June 4, 2020 3:22 PM
>>> To: Zheng, Ruoqin/=E9=83=91 =E8=8B=A5=E9=92=A6 <zhengrq.fnst@cn.fujits=
u.com>;
>>> yocto@yoctoproject.org
>>> Cc: swupdate <swupdate@googlegroups.com>
>>> Subject: Re: [yocto] [PATCH] [meta-swupdate] Fix build error of depend=
ence.
>>>
>>> Hi Zheng,
>>>
>>> there is a ML for SWUpdate and meta-swupdate (see CC), we are cross-
>>> posting here:
>>>
>>> On 04.06.20 14:26, zhengruoqin wrote:
>>>>    -c -o mongoose/mongoose.o mongoose/mongoose.c
>>>> | mongoose/mongoose.c:4496:10: fatal error: openssl/ssl.h: No such
>>>> | file
>>>> or directory
>>>>
>>>> Signed-off-by: Zheng Ruoqing <zhengrq.fnst@cn.fujitsu.com>
>>>> ---
>>>>    recipes-support/swupdate/swupdate.inc | 3 +++
>>>>    1 file changed, 3 insertions(+)
>>>>
>>>> diff --git a/recipes-support/swupdate/swupdate.inc
>>>> b/recipes-support/swupdate/swupdate.inc
>>>> index 9ea0a8a..3d9a3fa 100644
>>>> --- a/recipes-support/swupdate/swupdate.inc
>>>> +++ b/recipes-support/swupdate/swupdate.inc
>>>> @@ -123,6 +123,9 @@ python () {
>>>>        elif 'CONFIG_SSL_IMPL_MBEDTLS=3Dy\n' in features:
>>>>            depends +=3D ' mbedtls'
>>>>
>>>> +    if 'CONFIG_MONGOOSESSL=3Dy\n' in features:
>>>> +        depends +=3D ' openssl'
>>>> +
>>>
>>> openSSL is not the only supported SSL library, the Webserver runs also=
 with
>>> mbedTLS. This patch forces to use openSSL and conflicts in case mbedTL=
S is
>>> used as signing and crypto library.
>>>
>>>>        if 'CONFIG_JSON=3Dy\n' in features:
>>>>            depends +=3D ' json-c'
>>>>
>>>>
>>>>
>>>>=20
>>>>
>>>
>>> Best regards,
>>> Stefano Babic
>>>
>>>
>>>
>>>
>>>
>>
>>
>>
>=20
>=20
> --
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
>=20
>=20
>=20

--=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
