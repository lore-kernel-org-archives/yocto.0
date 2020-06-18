Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2957.1592468550723197649
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Jun 2020 01:22:31 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denx.de, ip: 140.211.169.56, mailfrom: sbabic@denx.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DF4AE01D21; Thu, 18 Jun 2020 01:22:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [212.18.0.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6076EE01CDD
	for <yocto@yoctoproject.org>; Thu, 18 Jun 2020 01:22:28 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 49nZg729BYz1qs3H;
	Thu, 18 Jun 2020 10:22:27 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 49nZg71cF6z1r56q;
	Thu, 18 Jun 2020 10:22:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
	with ESMTP id xzBS7AMLB_TT; Thu, 18 Jun 2020 10:22:24 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net [88.217.136.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPS;
	Thu, 18 Jun 2020 10:22:24 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 0A00145405A4;
	Thu, 18 Jun 2020 10:22:24 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([IPv6:::1])
	by localhost (mail.babic.homelinux.org [IPv6:::1]) (amavisd-new, port 10024)
	with ESMTP id b5uDtedbl2RB; Thu, 18 Jun 2020 10:22:21 +0200 (CEST)
Received: from [192.168.178.47] (stefano-MacBookPro.fritz.box [192.168.178.47])
	by babic.homelinux.org (Postfix) with ESMTPS id D9A3D4540328;
	Thu, 18 Jun 2020 10:22:20 +0200 (CEST)
Subject: Re: [swupdate] RE: [yocto] [PATCH] [meta-swupdate] Fix build error of dependence.
To: Alexander Vickberg <wickbergster@gmail.com>,
 Stefano Babic <sbabic@denx.de>
Cc: "Zheng, Ruoqin" <zhengrq.fnst@cn.fujitsu.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
 swupdate <swupdate@googlegroups.com>
References: <1591273565-20422-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
 <b4d88124-4292-d5f2-8275-3c450551844e@denx.de>
 <2e85067adbff4d4a93bd9acabf8424b2@G08CNEXMBPEKD06.g08.fujitsu.local>
 <982020c1-346e-7183-31df-7fe61c898537@denx.de>
 <1592464111066.55405@cn.fujitsu.com>
 <647f2241-e847-1476-a294-7d4b4882e236@denx.de>
 <CAAxSGfY9uDN708Cy5LFd3cgeRMgfBT85o8Pw=mFwL-T66oOe+w@mail.gmail.com>
From: "Stefano Babic" <sbabic@denx.de>
Message-ID: <ff0e5b11-e4d2-9d12-95ce-47074ba930e4@denx.de>
Date: Thu, 18 Jun 2020 10:22:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAAxSGfY9uDN708Cy5LFd3cgeRMgfBT85o8Pw=mFwL-T66oOe+w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Alexander,

On 18.06.20 10:18, Alexander Vickberg wrote:
> Hi,
>=20
> This issue surfaced as a side effect of my patch in commit=C2=A0293f273,=
=
=20
> sorry about that. The defconfig was not updated and does not include any=
=
=20
> default SSL implementation choice but it will be added=20
> by=C2=A0cml1_do_configure (yes "" | make oldconfig). That is after the=
=20
> DEPENDS variable has been built. I propose the defconfig is updated to=
=20
> include the default SSL implementation option.

Agree on this.

Regards,
Stefano

>=20
> Best=C2=A0Regards
> Alexander Vickberg
>=20
> Den tors 18 juni 2020 kl 09:43 skrev Stefano Babic <sbabic@denx.de=20
> <mailto:sbabic@denx.de>>:
>=20
>     Hi Zheng,
>=20
>     On 18.06.20 09:08, Zheng, Ruoqin wrote:
>      > Hi, Stefano
>      >
>      >
>      > I'm sorry I'm so late for your reply.
>      >
>      >
>      >> I do not think the issue exists.
>      >
>      >
>      > I bitbake swupdate with poky and meta-oe without any
>     modifications, depend error happens, isn't it an issue?
>      >
>=20
>     It depends what you are meaning.
>=20
>      >
>      >> In fact, CONFIG_MONGOOSESSL is protected by
>      >
>      >> CONFIG_SSL_IMPL_OPENSSL or CONFIG_SSL_IMPL_MBEDTLS. If you set
>      >
>      >> CONFIG_MONGOOSESSL, SSL is already set.
>      >
>      >
>      > I don't find the relationship of=C2=A0 CONFIG_MONGOOSESSL and
>     CONFIG_SSL_IMPL_OPENSSL or CONFIG_SSL_IMPL_MBEDTLS in menuconfig ste=
p.
>=20
>     In mongoose/Config.in:
>=20
>      =C2=A0 config MONGOOSESSL
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bool "SSL support"
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 depends on MONGOOSE
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 depends on SSL_IMPL_OPENSSL || S=
SL_IMPL_MBEDTLS
>=20
>     CONFIG_MONGOOSESSL cannot be set if one of the SSL options is not se=
t,
>     and they can be chosen via SSL menu.
>=20
>      >
>      > ---------------------------
>      >
>      > $ grep MONGOOSESSL
>     tmp/work/core2-64-poky-linux/swupdate/2020.04-r0/git/ -r | grep Kcon=
fig
>      >
>=20
>     Search for Config.in and Kconfig in root.
>=20
>      > $
>      >
>      > ---------------------------
>      >
>      > By default CONFIG_SSL_IMPL_OPENSSL will be enable during
>     configure step. But openssl is not in the dependences of swupdate.
>     That' s why error happens by default.
>=20
>     Because the tree of dependency is SSL, then MBEDTLS or OPENSSL
>=20
>      >
>      > Of course, YP users can fix this build error by manuconfig or
>     modified the defconfig. But that's not friendly.
>      >
>      >
>      >
>      > In fact, after configuring the CONFIG_SSL_IMPL_OPENSSL will be
>     added into .config file. But swupdate.inc judges which dependence
>     will be added by defconfig file before configure step.
>=20
>     Ok - if you are using fragments, you have to add the missing
>     dependencies on your own, that is true.
>=20
>      >
>      > So, I thought out two methods to fix this issue to make swupdate
>     can be passed by default.
>      >
>      > 1.=C2=A0 Added openssl into dependences by DEPENDS parameter, suc=
h as
>     the following:
>=20
>     Ok, so you are saying that the defconfig shipped with meta-swupdate =
is
>     inconsistent. This can be because it was not updated with last
>     SWUpdate's version, and it does not know about the new CONFIG option=
s.
>=20
>     Anyway, think about that SWUpdate should match the MACHINE, that is
>     most
>     users need to configure it and add a swupdate_%.bbappend with own
>     configuration. In any case, if this is broken, I agree it should be
>     fixed.
>=20
>      >
>      > ----------------------------
>      >
>      > --- a/recipes-support/swupdate/swupdate.inc
>      >
>      > +++ b/recipes-support/swupdate/swupdate.inc
>      >
>      > @@ -72,7 +72,7 @@ S =3D "${WORKDIR}/git/"
>      >
>      > ......
>      >
>      > -DEPENDS +=3D "kern-tools-native"
>      >
>      > +DEPENDS +=3D "kern-tools-native openssl"
>=20
>     No, this is wrong, as users can select MBEDTLS.
>=20
>      >
>      > ----------------------------
>      >
>      >
>      > 2. Added CONFIG_SSL_IMPL_OPENSSL into defconfig file.
>      >
>      > ----------------------------
>      >
>      > --- a/recipes-support/swupdate/swupdate/defconfig
>      >
>      > +++ b/recipes-support/swupdate/swupdate/defconfig
>      >
>      > @@ -96,3 +96,4 @@ CONFIG_SHELLSCRIPTHANDLER=3Dy
>      >
>      >=C2=A0 =C2=A0# CONFIG_ARCHIVE is not set
>      >
>      >=C2=A0 =C2=A0# CONFIG_REMOTE_HANDLER is not set
>      >
>      >=C2=A0 =C2=A0# CONFIG_BOOTLOADERHANDLER is not set
>      >
>      > +CONFIG_SSL_IMPL_OPENSSL=3Dy
>      >
>      > ----------------------------
>      >
>      >
>      > Users who want to use mbedtls instead if openssl can added
>     bbappend file to modify the DEPENDS parameter or defconfig file.
>=20
>     But they need to remove openssl from DEPENDS and they need to know w=
ich
>     dependencies are already set - it does not work.
>=20
>      >
>      >
>      > How about my suggestion?
>=20
>     Default defconfig does not match current SWUpdate and it is what sho=
uld
>     be fixed.
>=20
>     Best regards,
>     Stefano
>=20
>      >
>      >
>      > Best regards
>      >
>      > Zheng=E2=80=8B
>      >
>      > ________________________________________
>      > =E5=8F=91=E4=BB=B6=E4=BA=BA: Stefano Babic <sbabic@denx.de <mailt=
o:sbabic@denx.de>>
>      > =E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: 2020=E5=B9=B46=E6=9C=888=E6=
=
=97=A5 16:55
>      > =E6=94=B6=E4=BB=B6=E4=BA=BA: Zheng, Ruoqin; Stefano Babic; yocto@=
yoctoproject.org
>     <mailto:yocto@yoctoproject.org>
>      > =E6=8A=84=E9=80=81: swupdate
>      > =E4=B8=BB=E9=A2=98: Re: [swupdate] RE: [yocto] [PATCH] [meta-swup=
date] Fix
>     build error of dependence.
>      >
>      > Hi Zheng,
>      >
>      > On 08.06.20 10:49, Zheng, Ruoqin wrote:
>      >> Hi Stefano
>      >>
>      >>> there is a ML for SWUpdate and meta-swupdate (see CC), we are
>     cross-
>      >>> posting here:
>      >> Thank you, I got it.
>      >>
>      >>> openSSL is not the only supported SSL library, the Webserver
>     runs also with
>      >>> mbedTLS. This patch forces to use openSSL and conflicts in case
>     mbedTLS is
>      >>> used as signing and crypto library.
>      >>>
>      >>>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if 'CONFIG_JSON=3Dy\n' in features:
>      >>>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 depends +=3D ' json-c=
'
>      >> OK, I'll update my patch and send V2 version.
>      >>
>      >
>      > I do not think the issue exists. In fact, CONFIG_MONGOOSESSL is
>      > protected by CONFIG_SSL_IMPL_OPENSSL or CONFIG_SSL_IMPL_MBEDTLS.
>     If you
>      > set CONFIG_MONGOOSESSL, SSL is already set.
>      >
>      > The only way to go into the issue is to modify directly your
>     defconfig
>      > file=C2=A0 instead of running "bitbake -c menuconfig" and then ap=
ply the
>      > diffconfig or the new defconfig. But this is of course a wrong wa=
y,
>      > exactly as in kernel.
>      >
>      > Try to run "mnuconfig" and then you can apply the fragment to you=
r
>      > diffconfig (fragments are supported, too).
>      >
>      > Best regards,
>      > Stefano
>      >
>      >> --------------------------------------------------
>      >> Zheng Ruoqin
>      >> Nanjing Fujitsu Nanda Software Tech. Co., Ltd.(FNST)
>      >> ADDR.: No.6 Wenzhu Road, Software Avenue,
>      >>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Nanjing, 210012, China
>      >> MAIL : zhengrq.fnst@cn.fujistu.com
>     <mailto:zhengrq.fnst@cn.fujistu.com>
>      >>
>      >>
>      >>
>      >>> -----Original Message-----
>      >>> From: Stefano Babic <sbabic@denx.de <mailto:sbabic@denx.de>>
>      >>> Sent: Thursday, June 4, 2020 3:22 PM
>      >>> To: Zheng, Ruoqin/=E9=83=91 =E8=8B=A5=E9=92=A6 <zhengrq.fnst@cn=
.fujitsu.com
>     <mailto:zhengrq.fnst@cn.fujitsu.com>>;
>      >>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>      >>> Cc: swupdate <swupdate@googlegroups.com
>     <mailto:swupdate@googlegroups.com>>
>      >>> Subject: Re: [yocto] [PATCH] [meta-swupdate] Fix build error of
>     dependence.
>      >>>
>      >>> Hi Zheng,
>      >>>
>      >>> there is a ML for SWUpdate and meta-swupdate (see CC), we are
>     cross-
>      >>> posting here:
>      >>>
>      >>> On 04.06.20 14:26, zhengruoqin wrote:
>      >>>>=C2=A0 =C2=A0 -c -o mongoose/mongoose.o mongoose/mongoose.c
>      >>>> | mongoose/mongoose.c:4496:10: fatal error: openssl/ssl.h: No =
such
>      >>>> | file
>      >>>> or directory
>      >>>>
>      >>>> Signed-off-by: Zheng Ruoqing <zhengrq.fnst@cn.fujitsu.com
>     <mailto:zhengrq.fnst@cn.fujitsu.com>>
>      >>>> ---
>      >>>>=C2=A0 =C2=A0 recipes-support/swupdate/swupdate.inc | 3 +++
>      >>>>=C2=A0 =C2=A0 1 file changed, 3 insertions(+)
>      >>>>
>      >>>> diff --git a/recipes-support/swupdate/swupdate.inc
>      >>>> b/recipes-support/swupdate/swupdate.inc
>      >>>> index 9ea0a8a..3d9a3fa 100644
>      >>>> --- a/recipes-support/swupdate/swupdate.inc
>      >>>> +++ b/recipes-support/swupdate/swupdate.inc
>      >>>> @@ -123,6 +123,9 @@ python () {
>      >>>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 elif 'CONFIG_SSL_IMPL_MBEDTLS=3Dy\n=
' in features:
>      >>>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 depends +=3D ' mbedtl=
s'
>      >>>>
>      >>>> +=C2=A0 =C2=A0 if 'CONFIG_MONGOOSESSL=3Dy\n' in features:
>      >>>> +=C2=A0 =C2=A0 =C2=A0 =C2=A0 depends +=3D ' openssl'
>      >>>> +
>      >>>
>      >>> openSSL is not the only supported SSL library, the Webserver
>     runs also with
>      >>> mbedTLS. This patch forces to use openSSL and conflicts in case
>     mbedTLS is
>      >>> used as signing and crypto library.
>      >>>
>      >>>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if 'CONFIG_JSON=3Dy\n' in features:
>      >>>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 depends +=3D ' json-c=
'
>      >>>>
>      >>>>
>      >>>>
>      >>>>=20
>      >>>>
>      >>>
>      >>> Best regards,
>      >>> Stefano Babic
>      >>>
>      >>>
>      >>>
>      >>>
>      >>>
>      >>
>      >>
>      >>
>      >
>      >
>      > --
>      > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>      > DENX Software Engineering GmbH,=C2=A0 =C2=A0 =C2=A0 Managing Dire=
ctor: Wolfgang Denk
>      > HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Ger=
many
>      > Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email:
>     sbabic@denx.de <mailto:sbabic@denx.de>
>      > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>      >
>      >
>      >
>      >
>=20
>     --=20
>     =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>     DENX Software Engineering GmbH,=C2=A0 =C2=A0 =C2=A0 Managing Directo=
r: Wolfgang Denk
>     HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, German=
y
>     Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email:
>     sbabic@denx.de <mailto:sbabic@denx.de>
>     =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
>     --=20
>     You received this message because you are subscribed to the Google
>     Groups "swupdate" group.
>     To unsubscribe from this group and stop receiving emails from it,
>     send an email to swupdate+unsubscribe@googlegroups.com
>     <mailto:swupdate%2Bunsubscribe@googlegroups.com>.
>     To view this discussion on the web visit
>     https://groups.google.com/d/msgid/swupdate/647f2241-e847-1476-a294-7=
d4b4882e236%40denx.de.
>=20
> --=20
> You received this message because you are subscribed to the Google=20
> Groups "swupdate" group.
> To unsubscribe from this group and stop receiving emails from it, send=
=20
> an email to swupdate+unsubscribe@googlegroups.com=20
> <mailto:swupdate+unsubscribe@googlegroups.com>.
> To view this discussion on the web visit=20
> https://groups.google.com/d/msgid/swupdate/CAAxSGfY9uDN708Cy5LFd3cgeRMgf=
BT85o8Pw%3DmFwL-T66oOe%2Bw%40mail.gmail.com=20
> <https://groups.google.com/d/msgid/swupdate/CAAxSGfY9uDN708Cy5LFd3cgeRMg=
fBT85o8Pw%3DmFwL-T66oOe%2Bw%40mail.gmail.com?utm_medium=3Demail&utm_source=
=3Dfooter>.

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
