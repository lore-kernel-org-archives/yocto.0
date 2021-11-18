Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F9DBC433F5
	for <webhook@archiver.kernel.org>; Thu, 18 Nov 2021 21:17:14 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
 [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web08.410.1637270233171483823
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Nov 2021 13:17:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=E1J4mpPA;
 spf=pass (domain: gmail.com, ip: 209.85.214.177,
 mailfrom: martin.jansa@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id u11so6387008plf.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 18 Nov 2021 13:17:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ri4n730dXV54753xsrzndQAd3QJvpn55ffiUqKlrI4E=;
        b=E1J4mpPAHF3U1dAg2PUCXmOs6/oRZZz2qiin71hbTKfOZuphsZdRbMh29ILx9/yxJ3
         M3llqaB8aI9daEW4KXIfpqG2wNFkB7Vz3NGrVomkQ/qWDHwvASgs2ttkoMf8BYx9gZNN
         3l3MkD2UD7m33b0/yjyfYQ0jYeFCkR4LMyaUC1uuOHOqsL7bzUEFhEECQG5/qT+9hgcx
         BlyRU7J6/UNkTBdau8Xg0mam/dFRn3epxzb5ufr0Yq6qXpXDAGGOZw4Oag9U8PX3e8Al
         CmelVSwlo3Kotlt0SQRTWMqpCiM+Ppk606uZ6wBLSi4SEMso1VI8laTWI35eDEZoyfP1
         BvsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ri4n730dXV54753xsrzndQAd3QJvpn55ffiUqKlrI4E=;
        b=LzhzsQbxH1qju2FN2I165lFaN5BPGtcYMWvB0KgBa8/waN9aXsDMr1eAZlwF/G5kRF
         2OBpSRfKMd6HXHSCLpYR+bPW3I4amgDGEmpFnO6kSJmiSCO9S8qV62EmX9udoSlNfP53
         evXS/Rxvpa9lgBBPOUiG82wFoDuoxReVpUQC2A9l6z7Z3SGzQEUy4OleGtLZzCq6fe6W
         +uz+7jeZKXtbqjz1E0KDqoGTM36dvbk7TziI3f75cSFWICnrl53em5R/5TCDt7YZlg+k
         /bszTvVPfpprZnBD2IUCBHnql0UBQJqN7w/0IuFNGTHjUHyn6QcMK5dLtbWf5l3fGOak
         qvmA==
X-Gm-Message-State: AOAM531qYbimHHY0QJNWx9Em1I+UiFNwIFVaV0Zb/uJVYyiCBCsKZHMV
	FQzYc9vDGyA0CZfu+T4yL9R8E3VLiMAoRW/Z5U4=
X-Google-Smtp-Source: 
 ABdhPJxfoTGE+Ct6osCBD/h3Y2VkHUCOcVKuLmb1JKcMipwccRI0oJMN9BPG8rnLoVCS6pzFpaLqKyxwQhD+GKzoev8=
X-Received: by 2002:a17:90a:dc15:: with SMTP id
 i21mr134671pjv.183.1637270232680;
 Thu, 18 Nov 2021 13:17:12 -0800 (PST)
MIME-Version: 1.0
References: <20211118200132.60968-1-devendra.tewari@gmail.com>
In-Reply-To: <20211118200132.60968-1-devendra.tewari@gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 18 Nov 2021 22:17:01 +0100
Message-ID: 
 <CA+chaQfoa9PH_aUfntLR5QSQN0h25O4AaNhMzCYrzHDgr-sUBA@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi][PATCH] linux-firmware-rpidistro: add
 branch in SRC_URI
To: Devendra Tewari <devendra.tewari@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009ecc9905d116ae22"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Nov 2021 21:17:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55366

--0000000000009ecc9905d116ae22
Content-Type: text/plain; charset="UTF-8"

https://github.com/agherzan/meta-raspberrypi/pull/946

On Thu, Nov 18, 2021 at 9:01 PM Devendra Tewari <devendra.tewari@gmail.com>
wrote:

> Branch master has been renamed to buster. Also setting protocol to
> https as GitHub is migrating away from unencrypted git protocol
>
> Signed-off-by: Devendra Tewari <devendra.tewari@gmail.com>
> ---
>  .../linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb    | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-kernel/linux-firmware-rpidistro/
> linux-firmware-rpidistro_git.bb b/recipes-kernel/linux-firmware-rpidistro/
> linux-firmware-rpidistro_git.bb
> index a091585..874e444 100644
> --- a/recipes-kernel/linux-firmware-rpidistro/
> linux-firmware-rpidistro_git.bb
> +++ b/recipes-kernel/linux-firmware-rpidistro/
> linux-firmware-rpidistro_git.bb
> @@ -34,7 +34,7 @@ LIC_FILES_CHKSUM = "\
>  NO_GENERIC_LICENSE[Firmware-broadcom_bcm43xx-rpidistro] =
> "LICENCE.broadcom_bcm43xx"
>  NO_GENERIC_LICENSE[WHENCE] = "WHENCE"
>
> -SRC_URI = "git://github.com/RPi-Distro/firmware-nonfree"
> +SRC_URI = "git://
> github.com/RPi-Distro/firmware-nonfree;protocol=https;branch=buster"
>
>  SRCREV = "83938f78ca2d5a0ffe0c223bb96d72ccc7b71ca5"
>  PV = "20190114-1+rpt11"
> --
> 2.33.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55363):
> https://lists.yoctoproject.org/g/yocto/message/55363
> Mute This Topic: https://lists.yoctoproject.org/mt/87152290/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000009ecc9905d116ae22
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><a href=3D"https://github.com/agherzan/meta-raspberrypi/pu=
ll/946">https://github.com/agherzan/meta-raspberrypi/pull/946</a><br></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu=
, Nov 18, 2021 at 9:01 PM Devendra Tewari &lt;<a href=3D"mailto:devendra.te=
wari@gmail.com">devendra.tewari@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">Branch master has been renamed to =
buster. Also setting protocol to<br>
https as GitHub is migrating away from unencrypted git protocol<br>
<br>
Signed-off-by: Devendra Tewari &lt;<a href=3D"mailto:devendra.tewari@gmail.=
com" target=3D"_blank">devendra.tewari@gmail.com</a>&gt;<br>
---<br>
=C2=A0.../linux-firmware-rpidistro/<a href=3D"http://linux-firmware-rpidist=
ro_git.bb" rel=3D"noreferrer" target=3D"_blank">linux-firmware-rpidistro_gi=
t.bb</a>=C2=A0 =C2=A0 | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/recipes-kernel/linux-firmware-rpidistro/<a href=3D"http://linu=
x-firmware-rpidistro_git.bb" rel=3D"noreferrer" target=3D"_blank">linux-fir=
mware-rpidistro_git.bb</a> b/recipes-kernel/linux-firmware-rpidistro/<a hre=
f=3D"http://linux-firmware-rpidistro_git.bb" rel=3D"noreferrer" target=3D"_=
blank">linux-firmware-rpidistro_git.bb</a><br>
index a091585..874e444 100644<br>
--- a/recipes-kernel/linux-firmware-rpidistro/<a href=3D"http://linux-firmw=
are-rpidistro_git.bb" rel=3D"noreferrer" target=3D"_blank">linux-firmware-r=
pidistro_git.bb</a><br>
+++ b/recipes-kernel/linux-firmware-rpidistro/<a href=3D"http://linux-firmw=
are-rpidistro_git.bb" rel=3D"noreferrer" target=3D"_blank">linux-firmware-r=
pidistro_git.bb</a><br>
@@ -34,7 +34,7 @@ LIC_FILES_CHKSUM =3D &quot;\<br>
=C2=A0NO_GENERIC_LICENSE[Firmware-broadcom_bcm43xx-rpidistro] =3D &quot;LIC=
ENCE.broadcom_bcm43xx&quot;<br>
=C2=A0NO_GENERIC_LICENSE[WHENCE] =3D &quot;WHENCE&quot;<br>
<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/RPi-Distro/firmware-n=
onfree" rel=3D"noreferrer" target=3D"_blank">github.com/RPi-Distro/firmware=
-nonfree</a>&quot;<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/RPi-Distro/firmware-n=
onfree;protocol=3Dhttps;branch=3Dbuster" rel=3D"noreferrer" target=3D"_blan=
k">github.com/RPi-Distro/firmware-nonfree;protocol=3Dhttps;branch=3Dbuster<=
/a>&quot;<br>
<br>
=C2=A0SRCREV =3D &quot;83938f78ca2d5a0ffe0c223bb96d72ccc7b71ca5&quot;<br>
=C2=A0PV =3D &quot;20190114-1+rpt11&quot;<br>
-- <br>
2.33.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55363): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55363" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55363</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/87152290/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/87152290/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000009ecc9905d116ae22--

