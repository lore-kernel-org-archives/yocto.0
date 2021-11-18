Return-Path: <devendra.tewari@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CB44C433EF
	for <webhook@archiver.kernel.org>; Thu, 18 Nov 2021 22:17:11 +0000 (UTC)
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com
 [209.85.221.177])
 by mx.groups.io with SMTP id smtpd.web12.283.1637273829164987754
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Nov 2021 14:17:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KvMhio/1;
 spf=pass (domain: gmail.com, ip: 209.85.221.177,
 mailfrom: devendra.tewari@gmail.com)
Received: by mail-vk1-f177.google.com with SMTP id q21so4761983vkn.2
        for <yocto@lists.yoctoproject.org>;
 Thu, 18 Nov 2021 14:17:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=s6sATUUI66FgU2EnJ2JXh9EK9d13SSTmbcgf3/IWAqg=;
        b=KvMhio/126qwSOzxRFz6/ywQzJRVdR9Qml/BmlUZyaHf053MIjm9wv5GqNIXB1t4U6
         hg8wrjDn5FBHKZTubqvZZn+Ew9gdEkUQvCJTmVz0yq0juP8tXkzZQe6pcEs+PPqW770F
         aNS2XZ3ctT4UOmlBi9ZsjjlKmKuLxD/6M1pltRmypgBo2RCtjxsNZAXePAHXBTW1Fezz
         w2m619aJheEp2UWTeC9Bf959SUjXSSmfBGa8Wxq1nIGvgO9Z6hmv18Nv7UF6RiYX0yYl
         2Ff+1qEP8QLKitqy7xSNjq8MXV3yvahJGRhWesl9amWdn2i0287T+k5Uqt1EHt3eln93
         vazA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=s6sATUUI66FgU2EnJ2JXh9EK9d13SSTmbcgf3/IWAqg=;
        b=fyHL7ni/ZKHamjmHUx1eqJK3DVHxlt7EKS9GIq8yOUS2XHrbdzukC+td964mXKZ5r9
         5i7qHpTL0EYE/mkUFfghRsXQC6K12nEW6LbOq1Hwxc81/AfIFt314Zfp1QzCViX0gODm
         Q54ownI9c+kYKlDLfVMDQ6iYPH4LU6D/w7G7yz8zj2hI9b7XstV58AhcmaHYmxyZiwKC
         eVCZoCH+PaMX61iFdLtSiLaeMHG3d/wvt9JvFdPKclFlN+8CC6YUeBiJnk8LFIim2uLA
         u+dE4i3v8WbPNp4uloXnrYqDcn8IHKfCsW3QQztJoEpa8fxNQ8AjzYH+XhMltHON1gon
         1/Uw==
X-Gm-Message-State: AOAM533yk7hUUNHvqkpSHDzu4JP+abecuqnjERyhIu92oiFMRAildIIx
	7sWPiNiq8lB3S3102mNbnLb9BCvbnWgAcA==
X-Google-Smtp-Source: 
 ABdhPJxs23laV0kz4lpSokdxyUbHJfi6Qdkl38K29rEaOmQR+PiuXfxrmOZmrGgen87vd3m7UU5BCg==
X-Received: by 2002:a05:6122:790:: with SMTP id
 k16mr110256053vkr.26.1637273826665;
        Thu, 18 Nov 2021 14:17:06 -0800 (PST)
Received: from smtpclient.apple ([177.183.205.78])
        by smtp.gmail.com with ESMTPSA id
 g131sm650605vke.32.2021.11.18.14.17.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Nov 2021 14:17:06 -0800 (PST)
Content-Type: multipart/alternative;
 boundary=Apple-Mail-A09F64AB-793D-4CFC-8FE6-79A443DE22E0
Content-Transfer-Encoding: 7bit
From: Devendra Tewari <devendra.tewari@gmail.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [yocto] [meta-raspberrypi][PATCH] linux-firmware-rpidistro: add
 branch in SRC_URI
Date: Thu, 18 Nov 2021 19:17:04 -0300
Message-Id: <E21E0994-E5B8-4763-8EC4-5A16756BC8A7@gmail.com>
References: 
 <CA+chaQfoa9PH_aUfntLR5QSQN0h25O4AaNhMzCYrzHDgr-sUBA@mail.gmail.com>
Cc: yocto@lists.yoctoproject.org
In-Reply-To: 
 <CA+chaQfoa9PH_aUfntLR5QSQN0h25O4AaNhMzCYrzHDgr-sUBA@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
X-Mailer: iPhone Mail (19A404)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Nov 2021 22:17:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55367


--Apple-Mail-A09F64AB-793D-4CFC-8FE6-79A443DE22E0
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks.

> Em 18 de nov. de 2021, =C3=A0(s) 18:17, Martin Jansa <martin.jansa@gmail.c=
om> escreveu:
>=20
> =EF=BB=BF
> https://github.com/agherzan/meta-raspberrypi/pull/946
>=20
>> On Thu, Nov 18, 2021 at 9:01 PM Devendra Tewari <devendra.tewari@gmail.co=
m> wrote:
>> Branch master has been renamed to buster. Also setting protocol to
>> https as GitHub is migrating away from unencrypted git protocol
>>=20
>> Signed-off-by: Devendra Tewari <devendra.tewari@gmail.com>
>> ---
>>  .../linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb    | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>=20
>> diff --git a/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidi=
stro_git.bb b/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidist=
ro_git.bb
>> index a091585..874e444 100644
>> --- a/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_gi=
t.bb
>> +++ b/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_gi=
t.bb
>> @@ -34,7 +34,7 @@ LIC_FILES_CHKSUM =3D "\
>>  NO_GENERIC_LICENSE[Firmware-broadcom_bcm43xx-rpidistro] =3D "LICENCE.bro=
adcom_bcm43xx"
>>  NO_GENERIC_LICENSE[WHENCE] =3D "WHENCE"
>>=20
>> -SRC_URI =3D "git://github.com/RPi-Distro/firmware-nonfree"
>> +SRC_URI =3D "git://github.com/RPi-Distro/firmware-nonfree;protocol=3Dhtt=
ps;branch=3Dbuster"
>>=20
>>  SRCREV =3D "83938f78ca2d5a0ffe0c223bb96d72ccc7b71ca5"
>>  PV =3D "20190114-1+rpt11"
>> --=20
>> 2.33.1
>>=20
>>=20
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#55363): https://lists.yoctoproject.org/g/yocto/messag=
e/55363
>> Mute This Topic: https://lists.yoctoproject.org/mt/87152290/3617156
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [Martin.Jansa@g=
mail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>=20

--Apple-Mail-A09F64AB-793D-4CFC-8FE6-79A443DE22E0
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div dir=3D"ltr"></div><div dir=3D"ltr">Tha=
nks.</div><div dir=3D"ltr"><br><blockquote type=3D"cite">Em 18 de nov. de 20=
21, =C3=A0(s) 18:17, Martin Jansa &lt;martin.jansa@gmail.com&gt; escreveu:<b=
r><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF=
<div dir=3D"ltr"><a href=3D"https://github.com/agherzan/meta-raspberrypi/pul=
l/946">https://github.com/agherzan/meta-raspberrypi/pull/946</a><br></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, N=
ov 18, 2021 at 9:01 PM Devendra Tewari &lt;<a href=3D"mailto:devendra.tewari=
@gmail.com">devendra.tewari@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">Branch master has been renamed to buster. A=
lso setting protocol to<br>
https as GitHub is migrating away from unencrypted git protocol<br>
<br>
Signed-off-by: Devendra Tewari &lt;<a href=3D"mailto:devendra.tewari@gmail.c=
om" target=3D"_blank">devendra.tewari@gmail.com</a>&gt;<br>
---<br>
&nbsp;.../linux-firmware-rpidistro/<a href=3D"http://linux-firmware-rpidistr=
o_git.bb" rel=3D"noreferrer" target=3D"_blank">linux-firmware-rpidistro_git.=
bb</a>&nbsp; &nbsp; | 2 +-<br>
&nbsp;1 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/recipes-kernel/linux-firmware-rpidistro/<a href=3D"http://linux=
-firmware-rpidistro_git.bb" rel=3D"noreferrer" target=3D"_blank">linux-firmw=
are-rpidistro_git.bb</a> b/recipes-kernel/linux-firmware-rpidistro/<a href=3D=
"http://linux-firmware-rpidistro_git.bb" rel=3D"noreferrer" target=3D"_blank=
">linux-firmware-rpidistro_git.bb</a><br>
index a091585..874e444 100644<br>
--- a/recipes-kernel/linux-firmware-rpidistro/<a href=3D"http://linux-firmwa=
re-rpidistro_git.bb" rel=3D"noreferrer" target=3D"_blank">linux-firmware-rpi=
distro_git.bb</a><br>
+++ b/recipes-kernel/linux-firmware-rpidistro/<a href=3D"http://linux-firmwa=
re-rpidistro_git.bb" rel=3D"noreferrer" target=3D"_blank">linux-firmware-rpi=
distro_git.bb</a><br>
@@ -34,7 +34,7 @@ LIC_FILES_CHKSUM =3D "\<br>
&nbsp;NO_GENERIC_LICENSE[Firmware-broadcom_bcm43xx-rpidistro] =3D "LICENCE.b=
roadcom_bcm43xx"<br>
&nbsp;NO_GENERIC_LICENSE[WHENCE] =3D "WHENCE"<br>
<br>
-SRC_URI =3D "git://<a href=3D"http://github.com/RPi-Distro/firmware-nonfree=
" rel=3D"noreferrer" target=3D"_blank">github.com/RPi-Distro/firmware-nonfre=
e</a>"<br>
+SRC_URI =3D "git://<a href=3D"http://github.com/RPi-Distro/firmware-nonfree=
;protocol=3Dhttps;branch=3Dbuster" rel=3D"noreferrer" target=3D"_blank">gith=
ub.com/RPi-Distro/firmware-nonfree;protocol=3Dhttps;branch=3Dbuster</a>"<br>=

<br>
&nbsp;SRCREV =3D "83938f78ca2d5a0ffe0c223bb96d72ccc7b71ca5"<br>
&nbsp;PV =3D "20190114-1+rpt11"<br>
-- <br>
2.33.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55363): <a href=3D"https://lists.yoctoproject.org/g/yoct=
o/message/55363" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/g/yocto/message/55363</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/87152290/36171=
56" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/8=
7152290/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=3D=
"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/unsub<=
/a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin.Jans=
a@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>
</div></blockquote></body></html>=

--Apple-Mail-A09F64AB-793D-4CFC-8FE6-79A443DE22E0--

