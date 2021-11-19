Return-Path: <devendra.tewari@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C0DC433F5
	for <webhook@archiver.kernel.org>; Fri, 19 Nov 2021 10:26:33 +0000 (UTC)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
 [209.85.222.46])
 by mx.groups.io with SMTP id smtpd.web10.7089.1637317592785141130
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Nov 2021 02:26:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=f25Sgvdy;
 spf=pass (domain: gmail.com, ip: 209.85.222.46,
 mailfrom: devendra.tewari@gmail.com)
Received: by mail-ua1-f46.google.com with SMTP id b17so20331166uas.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 19 Nov 2021 02:26:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
         :references;
        bh=kv6hHIz+xrr/wuAP8CZ+uiAsjmgZOPEPtGdtgnYvKfs=;
        b=f25SgvdyCZxFSlCJVhakJn/sT/CXtWI+21D5Bj0+Xkeoyh/N4F/kPx5QtXxXVyKNBO
         lmj/6FuzASMg1U9kHQJVNYMRUpZwHRTnOGSp7x0THIDtJykAUb64q3eqeWlwJ4BuOvCD
         0OmJTqozN5UbjbUaoZQmK/XlV3mqgIn6cMPLZbyI599lgP6dtHEc2F7b8Gokgsaxqgcn
         mYhWo1I4d8N4MeWBnIKx+4gNPsMQv6786vj/kpdcdyj0lZroa+Lc7swL15eG5Uexy1m7
         pQDPKIIKHMezY89gArqTxOL3437dy9I5M7TQs2Pu0iz614uxAZ3PwAJBXMMIBGZbaF/a
         TuIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:message-id:mime-version:subject:date
         :in-reply-to:cc:to:references;
        bh=kv6hHIz+xrr/wuAP8CZ+uiAsjmgZOPEPtGdtgnYvKfs=;
        b=MePlI1zTv59cJAEEXqRyy5NS3ORnZTd7Lr9sjR5eq+xeRQuppNDkg2W16A+n8YeluP
         RvVK/XHSR9yZjR0h/9qJuyH73QCaFGsS82mm2Q9wEFyk/bDkP9QPXlHu+r/+BYuunjRb
         HIEi3ryJPwlh5SKV3qmsl2sgfbJQq2B1CVNveiL51NXgQxYGwjN8tahJuwjqCQZJi8Ow
         3SxwIQ++n0MPUq7KFyaffcnKYt9KJpUinkKjjwp+IyI3hT+l3CZkwPU/SbtRjzkfzPyQ
         vjePJRDFe8rXP4tRRUhVwb0BxRuuVciJKF8zQoekoXuqjCgJYGJ2qEqL6xsCFEOe747j
         3fcA==
X-Gm-Message-State: AOAM533/82zxjCQGCQ0/iX1nlvVYpOnkYCTjHOlDabXDN3q0XLURzM0h
	bJjoHOGRbl2pSLBHumPe48Y=
X-Google-Smtp-Source: 
 ABdhPJxDnpK/CJR53B6ccrv/3VNeH90H3JqTHaXvwLpR/PK58eqBe/Nk1vQaUpYIK60IK9Q8mGklUg==
X-Received: by 2002:a05:6102:3a0c:: with SMTP id
 b12mr85909124vsu.31.1637317591881;
        Fri, 19 Nov 2021 02:26:31 -0800 (PST)
Received: from smtpclient.apple ([177.183.205.78])
        by smtp.gmail.com with ESMTPSA id
 d16sm1351197vko.29.2021.11.19.02.26.30
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Nov 2021 02:26:31 -0800 (PST)
From: Devendra Tewari <devendra.tewari@gmail.com>
Message-Id: <DAA57A92-5A7F-47CE-9DFC-4CB8F2231FCC@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_698883FB-E5A4-4D92-854F-A2F560E324C7"
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.20.0.1.32\))
Subject: Re: [yocto] [meta-raspberrypi][PATCH] linux-firmware-rpidistro: add
 branch in SRC_URI
Date: Fri, 19 Nov 2021 07:26:27 -0300
In-Reply-To: <E21E0994-E5B8-4763-8EC4-5A16756BC8A7@gmail.com>
Cc: yocto@lists.yoctoproject.org
To: Martin Jansa <martin.jansa@gmail.com>
References: 
 <CA+chaQfoa9PH_aUfntLR5QSQN0h25O4AaNhMzCYrzHDgr-sUBA@mail.gmail.com>
 <E21E0994-E5B8-4763-8EC4-5A16756BC8A7@gmail.com>
X-Mailer: Apple Mail (2.3693.20.0.1.32)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Nov 2021 10:26:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55374


--Apple-Mail=_698883FB-E5A4-4D92-854F-A2F560E324C7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

https://github.com/agherzan/meta-raspberrypi/pull/951

> On 18 Nov 2021, at 19:17, Devendra Tewari <devendra.tewari@gmail.com> =
wrote:
>=20
> Thanks.
>=20
>> Em 18 de nov. de 2021, =C3=A0(s) 18:17, Martin Jansa =
<martin.jansa@gmail.com> escreveu:
>>=20
>> =EF=BB=BF
>> https://github.com/agherzan/meta-raspberrypi/pull/946 =
<https://github.com/agherzan/meta-raspberrypi/pull/946>
>>=20
>> On Thu, Nov 18, 2021 at 9:01 PM Devendra Tewari =
<devendra.tewari@gmail.com <mailto:devendra.tewari@gmail.com>> wrote:
>> Branch master has been renamed to buster. Also setting protocol to
>> https as GitHub is migrating away from unencrypted git protocol
>>=20
>> Signed-off-by: Devendra Tewari <devendra.tewari@gmail.com =
<mailto:devendra.tewari@gmail.com>>
>> ---
>>  .../linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb =
<http://linux-firmware-rpidistro_git.bb/>    | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>=20
>> diff --git =
a/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb =
<http://linux-firmware-rpidistro_git.bb/> =
b/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb =
<http://linux-firmware-rpidistro_git.bb/>
>> index a091585..874e444 100644
>> --- =
a/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb =
<http://linux-firmware-rpidistro_git.bb/>
>> +++ =
b/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb =
<http://linux-firmware-rpidistro_git.bb/>
>> @@ -34,7 +34,7 @@ LIC_FILES_CHKSUM =3D "\
>>  NO_GENERIC_LICENSE[Firmware-broadcom_bcm43xx-rpidistro] =3D =
"LICENCE.broadcom_bcm43xx"
>>  NO_GENERIC_LICENSE[WHENCE] =3D "WHENCE"
>>=20
>> -SRC_URI =3D "git://github.com/RPi-Distro/firmware-nonfree =
<http://github.com/RPi-Distro/firmware-nonfree>"
>> +SRC_URI =3D =
"git://github.com/RPi-Distro/firmware-nonfree;protocol=3Dhttps;branch=3Dbu=
ster =
<http://github.com/RPi-Distro/firmware-nonfree;protocol=3Dhttps;branch=3Db=
uster>"
>>=20
>>  SRCREV =3D "83938f78ca2d5a0ffe0c223bb96d72ccc7b71ca5"
>>  PV =3D "20190114-1+rpt11"
>> --=20
>> 2.33.1
>>=20
>>=20
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#55363): =
https://lists.yoctoproject.org/g/yocto/message/55363 =
<https://lists.yoctoproject.org/g/yocto/message/55363>
>> Mute This Topic: https://lists.yoctoproject.org/mt/87152290/3617156 =
<https://lists.yoctoproject.org/mt/87152290/3617156>
>> Group Owner: yocto+owner@lists.yoctoproject.org =
<mailto:yocto%2Bowner@lists.yoctoproject.org>
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub =
<https://lists.yoctoproject.org/g/yocto/unsub> [Martin.Jansa@gmail.com =
<mailto:Martin.Jansa@gmail.com>]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>=20


--Apple-Mail=_698883FB-E5A4-4D92-854F-A2F560E324C7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><a =
href=3D"https://github.com/agherzan/meta-raspberrypi/pull/951" =
class=3D"">https://github.com/agherzan/meta-raspberrypi/pull/951</a><br =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On 18 Nov 2021, at 19:17, Devendra Tewari =
&lt;devendra.tewari@gmail.com&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><meta =
http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8" =
class=3D""><div dir=3D"auto" class=3D""><div dir=3D"ltr" =
class=3D""></div><div dir=3D"ltr" class=3D"">Thanks.</div><div dir=3D"ltr"=
 class=3D""><br class=3D""><blockquote type=3D"cite" class=3D"">Em 18 de =
nov. de 2021, =C3=A0(s) 18:17, Martin Jansa =
&lt;martin.jansa@gmail.com&gt; escreveu:<br class=3D""><br =
class=3D""></blockquote></div><blockquote type=3D"cite" class=3D""><div =
dir=3D"ltr" class=3D"">=EF=BB=BF<div dir=3D"ltr" class=3D""><a =
href=3D"https://github.com/agherzan/meta-raspberrypi/pull/946" =
class=3D"">https://github.com/agherzan/meta-raspberrypi/pull/946</a><br =
class=3D""></div><br class=3D""><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 18, 2021 at 9:01 PM =
Devendra Tewari &lt;<a href=3D"mailto:devendra.tewari@gmail.com" =
class=3D"">devendra.tewari@gmail.com</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">Branch master has been renamed to =
buster. Also setting protocol to<br class=3D"">
https as GitHub is migrating away from unencrypted git protocol<br =
class=3D"">
<br class=3D"">
Signed-off-by: Devendra Tewari &lt;<a =
href=3D"mailto:devendra.tewari@gmail.com" target=3D"_blank" =
class=3D"">devendra.tewari@gmail.com</a>&gt;<br class=3D"">
---<br class=3D"">
&nbsp;.../linux-firmware-rpidistro/<a =
href=3D"http://linux-firmware-rpidistro_git.bb/" rel=3D"noreferrer" =
target=3D"_blank" class=3D"">linux-firmware-rpidistro_git.bb</a>&nbsp; =
&nbsp; | 2 +-<br class=3D"">
&nbsp;1 file changed, 1 insertion(+), 1 deletion(-)<br class=3D"">
<br class=3D"">
diff --git a/recipes-kernel/linux-firmware-rpidistro/<a =
href=3D"http://linux-firmware-rpidistro_git.bb/" rel=3D"noreferrer" =
target=3D"_blank" class=3D"">linux-firmware-rpidistro_git.bb</a> =
b/recipes-kernel/linux-firmware-rpidistro/<a =
href=3D"http://linux-firmware-rpidistro_git.bb/" rel=3D"noreferrer" =
target=3D"_blank" class=3D"">linux-firmware-rpidistro_git.bb</a><br =
class=3D"">
index a091585..874e444 100644<br class=3D"">
--- a/recipes-kernel/linux-firmware-rpidistro/<a =
href=3D"http://linux-firmware-rpidistro_git.bb/" rel=3D"noreferrer" =
target=3D"_blank" class=3D"">linux-firmware-rpidistro_git.bb</a><br =
class=3D"">
+++ b/recipes-kernel/linux-firmware-rpidistro/<a =
href=3D"http://linux-firmware-rpidistro_git.bb/" rel=3D"noreferrer" =
target=3D"_blank" class=3D"">linux-firmware-rpidistro_git.bb</a><br =
class=3D"">
@@ -34,7 +34,7 @@ LIC_FILES_CHKSUM =3D "\<br class=3D"">
&nbsp;NO_GENERIC_LICENSE[Firmware-broadcom_bcm43xx-rpidistro] =3D =
"LICENCE.broadcom_bcm43xx"<br class=3D"">
&nbsp;NO_GENERIC_LICENSE[WHENCE] =3D "WHENCE"<br class=3D"">
<br class=3D"">
-SRC_URI =3D "git://<a =
href=3D"http://github.com/RPi-Distro/firmware-nonfree" rel=3D"noreferrer" =
target=3D"_blank" =
class=3D"">github.com/RPi-Distro/firmware-nonfree</a>"<br class=3D"">
+SRC_URI =3D "git://<a =
href=3D"http://github.com/RPi-Distro/firmware-nonfree;protocol=3Dhttps;bra=
nch=3Dbuster" rel=3D"noreferrer" target=3D"_blank" =
class=3D"">github.com/RPi-Distro/firmware-nonfree;protocol=3Dhttps;branch=3D=
buster</a>"<br class=3D"">
<br class=3D"">
&nbsp;SRCREV =3D "83938f78ca2d5a0ffe0c223bb96d72ccc7b71ca5"<br class=3D"">=

&nbsp;PV =3D "20190114-1+rpt11"<br class=3D"">
-- <br class=3D"">
2.33.1<br class=3D"">
<br class=3D"">
<br class=3D"">
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br class=3D"">
Links: You receive all messages sent to this group.<br class=3D"">
View/Reply Online (#55363): <a =
href=3D"https://lists.yoctoproject.org/g/yocto/message/55363" =
rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://lists.yoctoproject.org/g/yocto/message/55363</a><br =
class=3D"">
Mute This Topic: <a =
href=3D"https://lists.yoctoproject.org/mt/87152290/3617156" =
rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://lists.yoctoproject.org/mt/87152290/3617156</a><br =
class=3D"">
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" =
target=3D"_blank" class=3D"">yocto+owner@lists.yoctoproject.org</a><br =
class=3D"">
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a =
href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank" =
class=3D"">Martin.Jansa@gmail.com</a>]<br class=3D"">
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br class=3D"">
<br class=3D"">
</blockquote></div>
</div></blockquote></div></div></blockquote></div><br =
class=3D""></body></html>=

--Apple-Mail=_698883FB-E5A4-4D92-854F-A2F560E324C7--

