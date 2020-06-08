Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.25990.1591606526065657402
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Jun 2020 01:55:26 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denx.de, ip: 140.211.169.56, mailfrom: sbabic@denx.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EEEBE01BF2; Mon,  8 Jun 2020 01:55:25 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1358E01BEE
	for <yocto@yoctoproject.org>; Mon,  8 Jun 2020 01:55:23 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 49gRsk4ylVz1qsbm;
	Mon,  8 Jun 2020 10:55:22 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 49gRsk4TMMz1sPMX;
	Mon,  8 Jun 2020 10:55:22 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
	with ESMTP id oRy60rfCJIzz; Mon,  8 Jun 2020 10:55:19 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net [88.217.136.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPS;
	Mon,  8 Jun 2020 10:55:19 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id E9852454063F;
	Mon,  8 Jun 2020 10:55:18 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uy9ovBuxArqf; Mon,  8 Jun 2020 10:55:16 +0200 (CEST)
Received: from [192.168.178.64] (paperino.fritz.box [192.168.178.64])
	by babic.homelinux.org (Postfix) with ESMTP id D51044540554;
	Mon,  8 Jun 2020 10:55:15 +0200 (CEST)
Subject: Re: [swupdate] RE: [yocto] [PATCH] [meta-swupdate] Fix build error of dependence.
To: "Zheng, Ruoqin" <zhengrq.fnst@cn.fujitsu.com>,
 Stefano Babic <sbabic@denx.de>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: swupdate <swupdate@googlegroups.com>
References: <1591273565-20422-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
 <b4d88124-4292-d5f2-8275-3c450551844e@denx.de>
 <2e85067adbff4d4a93bd9acabf8424b2@G08CNEXMBPEKD06.g08.fujitsu.local>
From: "Stefano Babic" <sbabic@denx.de>
Autocrypt: addr=sbabic@denx.de; prefer-encrypt=mutual; keydata=
 mQGiBEfdB5IRBADkpYcnh2BoAkGD5p186ysEkWlcp5DU07m7BKzvkEMRhFjeFUOU0klKNmh0
 ZM6rKpYpAYPYBm9YahMyqvj9DmLrZ4yfJ5MssvW9SRETmHpva+h1rN+DzmEcwrqZmLG1JWGy
 LA5ruJaFSzxJHBoROoog1NDMbNDB8A9F7VKrePfkVwCgmODpW/uh2IuMYLVidzDeuvo7alED
 /iV8rwU7C+eBcKy2htuDsEmsqlkBxIDM7IO6h5XxdyqbZOYizuBP3Ksb6xK54weEaB5aQs7S
 8N9Soi0p1Xh0LMWj6PBCzTC4LF+OCGEMBPc6bBHNzivChgztJlUMioCDSVpOXB/QpBaK302G
 yP5WdmcB1Jn6neq/YRlxHN38MV2yA/46jnzeUotL9LliVZKA/ql4GmyWg2Ae1BUiCqEJQNwl
 knGJOmIS4uABLArB5HjsfDU5hA9FORaNGCIiZlezBkZ3JXA2uQMQhfgqBXrZt4j1fcw9I7E+
 7IZ2kSCeTPZFLd5FiGQPDOm3Z9eHrpK6pmBGMeBG0pDgUEbN9awyLNBLj7QeU3RlZmFubyBC
 YWJpYyA8c2JhYmljQGRlbnguZGU+iGMEExECACMCGwMGCwkIBwMCBBUCCAMEFgIDAQIeAQIX
 gAUCT9deSgIZAQAKCRD09WXkmmjvppF1AKCRl8d49K4yxWzdBVRTTWG55cyo/gCfRD1RAttl
 R1ofs2wGLHNtXousyL25Ag0ER90HmBAIAIFfX4bKnOmCyB3nPh+jbXZuBSMZTuyDEnguRxl5
 N8Q0ayofQwucCBjXYv65sQ9Rq6FNhEnWqUZBu8A5CwvSakOFOGNC5ta/8VxVRLh0Z0ZTgEep
 SKiPonJyacCbmgWDECdVrKowV7QB9be3Wu67uAZ74rPw2Kd7f0FKnL3djvVRMaBWFIpyQ6SE
 bGOCJjhRQ5L1pIM1Soko+reU7eO+1g6IBw6YkFJisdQE6fzTwaSqUKPPsQLz/W03invQltOb
 Eg7ZwtFs0DFonr1DMm57ksiEhW6SN1wylRO/JzRYG1Qe7u1EVln6iV3ilBvbbfkyRssk4/0e
 kicpSnQknA72YOMAAwYH+QGpAiQ4hAMHrp1bUrtyGXYdeQpYufIZAM4etOnBy/G+e1nfu6y+
 jH4SN9sVK7bwBBAbhEJqkqR5LVsFIRapThJQOWB11rQxLpwkBU9wao/pRM+o95ujGo32WUzf
 wWrzWrkTDy7vMCZuUOLVi4n1GZlUAwpG4rzb6UxPC6GWymkVWGgXp1NC58og5i3Y+rKT7+Xi
 XT2BtvC6PDepoH4JhD+9OkHQO6UfTxPSmtgNbTgtl6L6tj+bm5dOHgkPJFMkEiG8qhUZYQzb
 bYz37orRbA72M2bxK76e9QKn0mVu+d/YCd8wRcvvJbGsozpzcxPvD5Wy5RNJCES8McPtAseU
 tMeISQQYEQIACQUCR90HmAIbDAAKCRD09WXkmmjvpv+3AJ9RakBsH1j0X/Kxp6t2lf0VUfS2
 qACfZ+J6ktk8PKNuyHf0J/I0mbCrhV4=
Message-ID: <982020c1-346e-7183-31df-7fe61c898537@denx.de>
Date: Mon, 8 Jun 2020 10:55:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <2e85067adbff4d4a93bd9acabf8424b2@G08CNEXMBPEKD06.g08.fujitsu.local>
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: quoted-printable

Hi Zheng,

On 08.06.20 10:49, Zheng, Ruoqin wrote:
> Hi Stefano
>=20
>> there is a ML for SWUpdate and meta-swupdate (see CC), we are cross-
>> posting here:
> Thank you, I got it.
>=20
>> openSSL is not the only supported SSL library, the Webserver runs also =
with
>> mbedTLS. This patch forces to use openSSL and conflicts in case mbedTLS=
 is
>> used as signing and crypto library.
>>
>>>       if 'CONFIG_JSON=3Dy\n' in features:
>>>           depends +=3D ' json-c'
> OK, I'll update my patch and send V2 version.
>=20

I do not think the issue exists. In fact, CONFIG_MONGOOSESSL is
protected by CONFIG_SSL_IMPL_OPENSSL or CONFIG_SSL_IMPL_MBEDTLS. If you
set CONFIG_MONGOOSESSL, SSL is already set.

The only way to go into the issue is to modify directly your defconfig
file  instead of running "bitbake -c menuconfig" and then apply the
diffconfig or the new defconfig. But this is of course a wrong way,
exactly as in kernel.

Try to run "mnuconfig" and then you can apply the fragment to your
diffconfig (fragments are supported, too).

Best regards,
Stefano

> --------------------------------------------------
> Zheng Ruoqin
> Nanjing Fujitsu Nanda Software Tech. Co., Ltd.(FNST)
> ADDR.: No.6 Wenzhu Road, Software Avenue,
>        Nanjing, 210012, China
> MAIL : zhengrq.fnst@cn.fujistu.com
>=20
>=20
>=20
>> -----Original Message-----
>> From: Stefano Babic <sbabic@denx.de>
>> Sent: Thursday, June 4, 2020 3:22 PM
>> To: Zheng, Ruoqin/=E9=83=91 =E8=8B=A5=E9=92=A6 <zhengrq.fnst@cn.fujitsu=
.com>;
>> yocto@yoctoproject.org
>> Cc: swupdate <swupdate@googlegroups.com>
>> Subject: Re: [yocto] [PATCH] [meta-swupdate] Fix build error of depende=
nce.
>>
>> Hi Zheng,
>>
>> there is a ML for SWUpdate and meta-swupdate (see CC), we are cross-
>> posting here:
>>
>> On 04.06.20 14:26, zhengruoqin wrote:
>>>   -c -o mongoose/mongoose.o mongoose/mongoose.c
>>> | mongoose/mongoose.c:4496:10: fatal error: openssl/ssl.h: No such
>>> | file
>>> or directory
>>>
>>> Signed-off-by: Zheng Ruoqing <zhengrq.fnst@cn.fujitsu.com>
>>> ---
>>>   recipes-support/swupdate/swupdate.inc | 3 +++
>>>   1 file changed, 3 insertions(+)
>>>
>>> diff --git a/recipes-support/swupdate/swupdate.inc
>>> b/recipes-support/swupdate/swupdate.inc
>>> index 9ea0a8a..3d9a3fa 100644
>>> --- a/recipes-support/swupdate/swupdate.inc
>>> +++ b/recipes-support/swupdate/swupdate.inc
>>> @@ -123,6 +123,9 @@ python () {
>>>       elif 'CONFIG_SSL_IMPL_MBEDTLS=3Dy\n' in features:
>>>           depends +=3D ' mbedtls'
>>>
>>> +    if 'CONFIG_MONGOOSESSL=3Dy\n' in features:
>>> +        depends +=3D ' openssl'
>>> +
>>
>> openSSL is not the only supported SSL library, the Webserver runs also =
with
>> mbedTLS. This patch forces to use openSSL and conflicts in case mbedTLS=
 is
>> used as signing and crypto library.
>>
>>>       if 'CONFIG_JSON=3Dy\n' in features:
>>>           depends +=3D ' json-c'
>>>
>>>
>>>
>>>=20
>>>
>>
>> Best regards,
>> Stefano Babic
>>
>>
>>
>>
>>
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
