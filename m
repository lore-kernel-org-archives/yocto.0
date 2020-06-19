Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.2594.1592556820477456711
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jun 2020 01:53:40 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denx.de, ip: 140.211.169.56, mailfrom: sbabic@denx.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08666E01D35; Fri, 19 Jun 2020 01:53:40 -0700 (PDT)
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
	*      [212.18.0.10 listed in list.dnswl.org]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05FEDE01CE8
	for <yocto@yoctoproject.org>; Fri, 19 Jun 2020 01:53:37 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 49pCJb6GW6z1rsXY;
	Fri, 19 Jun 2020 10:53:35 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 49pCJb43gmz1qql5;
	Fri, 19 Jun 2020 10:53:35 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
	with ESMTP id TN4B3au3mv80; Fri, 19 Jun 2020 10:53:33 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net [88.217.136.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPS;
	Fri, 19 Jun 2020 10:53:33 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 0DE304540550;
	Fri, 19 Jun 2020 10:53:33 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([IPv6:::1])
	by localhost (mail.babic.homelinux.org [IPv6:::1]) (amavisd-new, port 10024)
	with ESMTP id uIdlROFjeNoA; Fri, 19 Jun 2020 10:53:30 +0200 (CEST)
Received: from [192.168.178.64] (paperino.fritz.box [192.168.178.64])
	by babic.homelinux.org (Postfix) with ESMTP id BC44245405A4;
	Fri, 19 Jun 2020 10:53:29 +0200 (CEST)
Subject: Re: [swupdate] RE: [yocto] [PATCH] [meta-swupdate] Fix build error of dependence.
To: "Zheng, Ruoqin" <zhengrq.fnst@cn.fujitsu.com>,
 Stefano Babic <sbabic@denx.de>, Alexander Vickberg <wickbergster@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
 swupdate <swupdate@googlegroups.com>
References: <1591273565-20422-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
 <b4d88124-4292-d5f2-8275-3c450551844e@denx.de>
 <2e85067adbff4d4a93bd9acabf8424b2@G08CNEXMBPEKD06.g08.fujitsu.local>
 <982020c1-346e-7183-31df-7fe61c898537@denx.de>
 <1592464111066.55405@cn.fujitsu.com>
 <647f2241-e847-1476-a294-7d4b4882e236@denx.de>
 <CAAxSGfY9uDN708Cy5LFd3cgeRMgfBT85o8Pw=mFwL-T66oOe+w@mail.gmail.com>
 <ff0e5b11-e4d2-9d12-95ce-47074ba930e4@denx.de>
 <1592547624352.45701@cn.fujitsu.com>
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
Message-ID: <ecca58cd-a1a4-794d-a6a6-75b19815f7a5@denx.de>
Date: Fri, 19 Jun 2020 10:53:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1592547624352.45701@cn.fujitsu.com>
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: quoted-printable

Hi Zheng,

On 19.06.20 08:20, Zheng, Ruoqin wrote:
> Hi,=C2=A0
>=20
> So, the conclusion is adding a default SSL implementation option(CONFIG_=
SSL_IMPL_OPENSSL) into defconfig, is it?

Yes

> Is there anybody plans to do it? Or let me submit a patch?

Just send the patch to SWUpdate's ML, I will integrate then.

Regards,
Stefano

>=20
> Best regards
> Zheng Ruoqin=20
>=20
> ________________________________________
> From: Stefano Babic <sbabic@denx.de>
> Sent: Thursday, June 18, 2020 16:22
> To: Alexander Vickberg; Stefano Babic
> Cc: Zheng, Ruoqin; yocto@yoctoproject.org; swupdate
> Subject: Re: [swupdate] RE: [yocto] [PATCH] [meta-swupdate] Fix build er=
ror of dependence.
>=20
> Hi Alexander,
>=20
> On 18.06.20 10:18, Alexander Vickberg wrote:
>> Hi,
>>
>> This issue surfaced as a side effect of my patch in commit 293f273,
>> sorry about that. The defconfig was not updated and does not include an=
y
>> default SSL implementation choice but it will be added
>> by cml1_do_configure (yes "" | make oldconfig). That is after the
>> DEPENDS variable has been built. I propose the defconfig is updated to
>> include the default SSL implementation option.
>=20
> Agree on this.
>=20
> Regards,
> Stefano
>=20
>>
>> Best Regards
>> Alexander Vickberg
>>
>> Den tors 18 juni 2020 kl 09:43 skrev Stefano Babic <sbabic@denx.de
>> <mailto:sbabic@denx.de>>:
>>
>>     Hi Zheng,
>>
>>     On 18.06.20 09:08, Zheng, Ruoqin wrote:
>>      > Hi, Stefano
>>      >
>>      >
>>      > I'm sorry I'm so late for your reply.
>>      >
>>      >
>>      >> I do not think the issue exists.
>>      >
>>      >
>>      > I bitbake swupdate with poky and meta-oe without any
>>     modifications, depend error happens, isn't it an issue?
>>      >
>>
>>     It depends what you are meaning.
>>
>>      >
>>      >> In fact, CONFIG_MONGOOSESSL is protected by
>>      >
>>      >> CONFIG_SSL_IMPL_OPENSSL or CONFIG_SSL_IMPL_MBEDTLS. If you set
>>      >
>>      >> CONFIG_MONGOOSESSL, SSL is already set.
>>      >
>>      >
>>      > I don't find the relationship of  CONFIG_MONGOOSESSL and
>>     CONFIG_SSL_IMPL_OPENSSL or CONFIG_SSL_IMPL_MBEDTLS in menuconfig st=
ep.
>>
>>     In mongoose/Config.in:
>>
>>        config MONGOOSESSL
>>                bool "SSL support"
>>                depends on MONGOOSE
>>                depends on SSL_IMPL_OPENSSL || SSL_IMPL_MBEDTLS
>>
>>     CONFIG_MONGOOSESSL cannot be set if one of the SSL options is not s=
et,
>>     and they can be chosen via SSL menu.
>>
>>      >
>>      > ---------------------------
>>      >
>>      > $ grep MONGOOSESSL
>>     tmp/work/core2-64-poky-linux/swupdate/2020.04-r0/git/ -r | grep Kco=
nfig
>>      >
>>
>>     Search for Config.in and Kconfig in root.
>>
>>      > $
>>      >
>>      > ---------------------------
>>      >
>>      > By default CONFIG_SSL_IMPL_OPENSSL will be enable during
>>     configure step. But openssl is not in the dependences of swupdate.
>>     That' s why error happens by default.
>>
>>     Because the tree of dependency is SSL, then MBEDTLS or OPENSSL
>>
>>      >
>>      > Of course, YP users can fix this build error by manuconfig or
>>     modified the defconfig. But that's not friendly.
>>      >
>>      >
>>      >
>>      > In fact, after configuring the CONFIG_SSL_IMPL_OPENSSL will be
>>     added into .config file. But swupdate.inc judges which dependence
>>     will be added by defconfig file before configure step.
>>
>>     Ok - if you are using fragments, you have to add the missing
>>     dependencies on your own, that is true.
>>
>>      >
>>      > So, I thought out two methods to fix this issue to make swupdate
>>     can be passed by default.
>>      >
>>      > 1.  Added openssl into dependences by DEPENDS parameter, such as
>>     the following:
>>
>>     Ok, so you are saying that the defconfig shipped with meta-swupdate=
 is
>>     inconsistent. This can be because it was not updated with last
>>     SWUpdate's version, and it does not know about the new CONFIG optio=
ns.
>>
>>     Anyway, think about that SWUpdate should match the MACHINE, that is
>>     most
>>     users need to configure it and add a swupdate_%.bbappend with own
>>     configuration. In any case, if this is broken, I agree it should be
>>     fixed.
>>
>>      >
>>      > ----------------------------
>>      >
>>      > --- a/recipes-support/swupdate/swupdate.inc
>>      >
>>      > +++ b/recipes-support/swupdate/swupdate.inc
>>      >
>>      > @@ -72,7 +72,7 @@ S =3D "${WORKDIR}/git/"
>>      >
>>      > ......
>>      >
>>      > -DEPENDS +=3D "kern-tools-native"
>>      >
>>      > +DEPENDS +=3D "kern-tools-native openssl"
>>
>>     No, this is wrong, as users can select MBEDTLS.
>>
>>      >
>>      > ----------------------------
>>      >
>>      >
>>      > 2. Added CONFIG_SSL_IMPL_OPENSSL into defconfig file.
>>      >
>>      > ----------------------------
>>      >
>>      > --- a/recipes-support/swupdate/swupdate/defconfig
>>      >
>>      > +++ b/recipes-support/swupdate/swupdate/defconfig
>>      >
>>      > @@ -96,3 +96,4 @@ CONFIG_SHELLSCRIPTHANDLER=3Dy
>>      >
>>      >=C2=A0  # CONFIG_ARCHIVE is not set
>>      >
>>      >=C2=A0  # CONFIG_REMOTE_HANDLER is not set
>>      >
>>      >=C2=A0  # CONFIG_BOOTLOADERHANDLER is not set
>>      >
>>      > +CONFIG_SSL_IMPL_OPENSSL=3Dy
>>      >
>>      > ----------------------------
>>      >
>>      >
>>      > Users who want to use mbedtls instead if openssl can added
>>     bbappend file to modify the DEPENDS parameter or defconfig file.
>>
>>     But they need to remove openssl from DEPENDS and they need to know =
wich
>>     dependencies are already set - it does not work.
>>
>>      >
>>      >
>>      > How about my suggestion?
>>
>>     Default defconfig does not match current SWUpdate and it is what sh=
ould
>>     be fixed.
>>
>>     Best regards,
>>     Stefano
>>
>>      >
>>      >
>>      > Best regards
>>      >
>>      > Zheng=E2=80=8B
>>      >
>>      > ________________________________________
>>      > =E5=8F=91=E4=BB=B6=E4=BA=BA: Stefano Babic <sbabic@denx.de <mail=
to:sbabic@denx.de>>
>>      > =E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: 2020=E5=B9=B46=E6=9C=888=
=E6=97=A5 16:55
>>      > =E6=94=B6=E4=BB=B6=E4=BA=BA: Zheng, Ruoqin; Stefano Babic; yocto=
@yoctoproject.org
>>     <mailto:yocto@yoctoproject.org>
>>      > =E6=8A=84=E9=80=81: swupdate
>>      > =E4=B8=BB=E9=A2=98: Re: [swupdate] RE: [yocto] [PATCH] [meta-swu=
pdate] Fix
>>     build error of dependence.
>>      >
>>      > Hi Zheng,
>>      >
>>      > On 08.06.20 10:49, Zheng, Ruoqin wrote:
>>      >> Hi Stefano
>>      >>
>>      >>> there is a ML for SWUpdate and meta-swupdate (see CC), we are
>>     cross-
>>      >>> posting here:
>>      >> Thank you, I got it.
>>      >>
>>      >>> openSSL is not the only supported SSL library, the Webserver
>>     runs also with
>>      >>> mbedTLS. This patch forces to use openSSL and conflicts in cas=
e
>>     mbedTLS is
>>      >>> used as signing and crypto library.
>>      >>>
>>      >>>>=C2=A0       if 'CONFIG_JSON=3Dy\n' in features:
>>      >>>>=C2=A0           depends +=3D ' json-c'
>>      >> OK, I'll update my patch and send V2 version.
>>      >>
>>      >
>>      > I do not think the issue exists. In fact, CONFIG_MONGOOSESSL is
>>      > protected by CONFIG_SSL_IMPL_OPENSSL or CONFIG_SSL_IMPL_MBEDTLS.
>>     If you
>>      > set CONFIG_MONGOOSESSL, SSL is already set.
>>      >
>>      > The only way to go into the issue is to modify directly your
>>     defconfig
>>      > file  instead of running "bitbake -c menuconfig" and then apply =
the
>>      > diffconfig or the new defconfig. But this is of course a wrong w=
ay,
>>      > exactly as in kernel.
>>      >
>>      > Try to run "mnuconfig" and then you can apply the fragment to yo=
ur
>>      > diffconfig (fragments are supported, too).
>>      >
>>      > Best regards,
>>      > Stefano
>>      >
>>      >> --------------------------------------------------
>>      >> Zheng Ruoqin
>>      >> Nanjing Fujitsu Nanda Software Tech. Co., Ltd.(FNST)
>>      >> ADDR.: No.6 Wenzhu Road, Software Avenue,
>>      >>=C2=A0        Nanjing, 210012, China
>>      >> MAIL : zhengrq.fnst@cn.fujistu.com
>>     <mailto:zhengrq.fnst@cn.fujistu.com>
>>      >>
>>      >>
>>      >>
>>      >>> -----Original Message-----
>>      >>> From: Stefano Babic <sbabic@denx.de <mailto:sbabic@denx.de>>
>>      >>> Sent: Thursday, June 4, 2020 3:22 PM
>>      >>> To: Zheng, Ruoqin/=E9=83=91 =E8=8B=A5=E9=92=A6 <zhengrq.fnst@c=
n.fujitsu.com
>>     <mailto:zhengrq.fnst@cn.fujitsu.com>>;
>>      >>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>      >>> Cc: swupdate <swupdate@googlegroups.com
>>     <mailto:swupdate@googlegroups.com>>
>>      >>> Subject: Re: [yocto] [PATCH] [meta-swupdate] Fix build error o=
f
>>     dependence.
>>      >>>
>>      >>> Hi Zheng,
>>      >>>
>>      >>> there is a ML for SWUpdate and meta-swupdate (see CC), we are
>>     cross-
>>      >>> posting here:
>>      >>>
>>      >>> On 04.06.20 14:26, zhengruoqin wrote:
>>      >>>>=C2=A0   -c -o mongoose/mongoose.o mongoose/mongoose.c
>>      >>>> | mongoose/mongoose.c:4496:10: fatal error: openssl/ssl.h: No=
 such
>>      >>>> | file
>>      >>>> or directory
>>      >>>>
>>      >>>> Signed-off-by: Zheng Ruoqing <zhengrq.fnst@cn.fujitsu.com
>>     <mailto:zhengrq.fnst@cn.fujitsu.com>>
>>      >>>> ---
>>      >>>>=C2=A0   recipes-support/swupdate/swupdate.inc | 3 +++
>>      >>>>=C2=A0   1 file changed, 3 insertions(+)
>>      >>>>
>>      >>>> diff --git a/recipes-support/swupdate/swupdate.inc
>>      >>>> b/recipes-support/swupdate/swupdate.inc
>>      >>>> index 9ea0a8a..3d9a3fa 100644
>>      >>>> --- a/recipes-support/swupdate/swupdate.inc
>>      >>>> +++ b/recipes-support/swupdate/swupdate.inc
>>      >>>> @@ -123,6 +123,9 @@ python () {
>>      >>>>=C2=A0       elif 'CONFIG_SSL_IMPL_MBEDTLS=3Dy\n' in features:
>>      >>>>=C2=A0           depends +=3D ' mbedtls'
>>      >>>>
>>      >>>> +    if 'CONFIG_MONGOOSESSL=3Dy\n' in features:
>>      >>>> +        depends +=3D ' openssl'
>>      >>>> +
>>      >>>
>>      >>> openSSL is not the only supported SSL library, the Webserver
>>     runs also with
>>      >>> mbedTLS. This patch forces to use openSSL and conflicts in cas=
e
>>     mbedTLS is
>>      >>> used as signing and crypto library.
>>      >>>
>>      >>>>=C2=A0       if 'CONFIG_JSON=3Dy\n' in features:
>>      >>>>=C2=A0           depends +=3D ' json-c'
>>      >>>>
>>      >>>>
>>      >>>>
>>      >>>>=20
>>      >>>>
>>      >>>
>>      >>> Best regards,
>>      >>> Stefano Babic
>>      >>>
>>      >>>
>>      >>>
>>      >>>
>>      >>>
>>      >>
>>      >>
>>      >>
>>      >
>>      >
>>      > --
>>      > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>      > DENX Software Engineering GmbH,      Managing Director: Wolfgang=
 Denk
>>      > HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Ge=
rmany
>>      > Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email:
>>     sbabic@denx.de <mailto:sbabic@denx.de>
>>      > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>      >
>>      >
>>      >
>>      >
>>
>>     --
>>     =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>     DENX Software Engineering GmbH,      Managing Director: Wolfgang De=
nk
>>     HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germa=
ny
>>     Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email:
>>     sbabic@denx.de <mailto:sbabic@denx.de>
>>     =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>>     --
>>     You received this message because you are subscribed to the Google
>>     Groups "swupdate" group.
>>     To unsubscribe from this group and stop receiving emails from it,
>>     send an email to swupdate+unsubscribe@googlegroups.com
>>     <mailto:swupdate%2Bunsubscribe@googlegroups.com>.
>>     To view this discussion on the web visit
>>     https://groups.google.com/d/msgid/swupdate/647f2241-e847-1476-a294-=
7d4b4882e236%40denx.de.
>>
>> --
>> You received this message because you are subscribed to the Google
>> Groups "swupdate" group.
>> To unsubscribe from this group and stop receiving emails from it, send
>> an email to swupdate+unsubscribe@googlegroups.com
>> <mailto:swupdate+unsubscribe@googlegroups.com>.
>> To view this discussion on the web visit
>> https://groups.google.com/d/msgid/swupdate/CAAxSGfY9uDN708Cy5LFd3cgeRMg=
fBT85o8Pw%3DmFwL-T66oOe%2Bw%40mail.gmail.com
>> <https://groups.google.com/d/msgid/swupdate/CAAxSGfY9uDN708Cy5LFd3cgeRM=
gfBT85o8Pw%3DmFwL-T66oOe%2Bw%40mail.gmail.com?utm_medium=3Demail&utm_source=
=
=3Dfooter>.
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
