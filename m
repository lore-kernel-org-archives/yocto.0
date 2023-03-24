Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26EAC6FD1C
	for <webhook@archiver.kernel.org>; Fri, 24 Mar 2023 12:09:06 +0000 (UTC)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
 by mx.groups.io with SMTP id smtpd.web10.99589.1679659741238560469
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Mar 2023 05:09:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=JIHHNbN6;
 spf=pass (domain: gmail.com, ip: 209.85.217.45, mailfrom: quaresma.jose@gmail.com)
Received: by mail-vs1-f45.google.com with SMTP id c10so1309542vsh.12
        for <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 05:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679659740;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YYjG5hsENbaoe5J0xeqA4z6Ncu1pykRRnSDRnIo6QGQ=;
        b=JIHHNbN6dLOM7wdO5TmO9g307Iy+tFaHL+P63kyaKfwgI6cmFGmqyORxV8WFACAZvF
         wSflpFDbYqEUmGot/9bwjiLR5hiNSvKRkJjlx5O3+sUP1Yp4EaxUOJFLwBnwPAp1Hpz+
         xDlH4I3qgVgW/1OMuKzQm7xLOaZDN234KVSgIuwby0/NR6oZshBXDJdNOCrLVg6vdeXc
         0Yl/6iF1EApqy5wNoEKJHPow32KX4cNZbG5/IW6tLcUNnWmVMkDm/pYQsDNskQsjnBiA
         PsHVCWIJwzzVobt04Ud0TtPLfbO7WrlEjnSlFvb2B+ohRnY1y/zhw6MHHI+mHYiQW6XQ
         n7LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679659740;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YYjG5hsENbaoe5J0xeqA4z6Ncu1pykRRnSDRnIo6QGQ=;
        b=5dMFTMCsiiR4W3yo7QTuIzhYIfn72D0vA+w+fJ5shj/XDFyC2B1x5mRjV/E3/PyEct
         cggs0s3vjr34aOWAeO1W/NswMbgMyM5qfkHGI+nY8PNike+WNg2KlgjP3MXWeSSVm4a3
         KZExyFqmTWyKnUwOgnq0b60lauaKG6tuQ+AG7HsDPgNuA8+ghlvUTng2AXtR19EdFLpY
         oLsmuUxD7qJeDEJMkuo4I2UxySwq9hyWmqDvnZ1gdioyDySaKTnf7JnBPw8oUJX9xPEj
         HC9xcXvdK298gD4A1ZLE425JQdndcgQByZM/iWYdqUHOA1bJ0Fv40Z7YSbPGaahmobpj
         YUwQ==
X-Gm-Message-State: AAQBX9c9f/PWpkeUqTi9gP9Hlw+otspVs3S1e3BzFHqhY81zda0Fs579
	bMzSlWfjJJeRusGOck1Nr+q6zUr+0irAt8QSzWA=
X-Google-Smtp-Source: AKy350YZGcWrAXzO7D7pjt7hQG7kFoZKMXPO7bRD+2K9xOBpZHEnRs7j+aL7rhWiqnBoi7kanJjJ1Wo02vwbg0pRIqo=
X-Received: by 2002:a67:d20f:0:b0:426:392a:92bc with SMTP id
 y15-20020a67d20f000000b00426392a92bcmr1223359vsi.1.1679659740206; Fri, 24 Mar
 2023 05:09:00 -0700 (PDT)
MIME-Version: 1.0
References: <20230306175528.395007-1-jose.quaresma@foundries.io> <1749E61EB799563E.24753@lists.yoctoproject.org>
In-Reply-To: <1749E61EB799563E.24753@lists.yoctoproject.org>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Fri, 24 Mar 2023 12:08:49 +0000
Message-ID: <CANPvuRmw_-ddmtB0y2A_yiFbh0L13_XzXwkC2EiKJ=j=4tPsJg@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH 3/3] meta-tpm/layer: lower the
 priority from 10 to 6
To: quaresma.jose@gmail.com
Cc: yocto@lists.yoctoproject.org, ricardo@foundries.io, 
	Jose Quaresma <jose.quaresma@foundries.io>
Content-Type: multipart/alternative; boundary="00000000000028a2d105f7a4426e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 12:09:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59515

--00000000000028a2d105f7a4426e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Armin,

Can this patch and the others in the series be bakported to kirkstone?

Jose

Jose Quaresma via lists.yoctoproject.org <quaresma.jose=3D
gmail.com@lists.yoctoproject.org> escreveu no dia segunda, 6/03/2023 =C3=A0=
(s)
17:55:

> The priority change on sumo version without any description.
> Since then is very hard to add in other layers a new version
> of any recipe on this layer with such priority so these patch
> reverts the priority back to 6.
>
> Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
> ---
>  meta-tpm/conf/layer.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
> index 81690ca..12bd6b7 100644
> --- a/meta-tpm/conf/layer.conf
> +++ b/meta-tpm/conf/layer.conf
> @@ -6,7 +6,7 @@ BBFILES +=3D "${LAYERDIR}/recipes*/*/*.bb
> ${LAYERDIR}/recipes*/*/*.bbappend"
>
>  BBFILE_COLLECTIONS +=3D "tpm-layer"
>  BBFILE_PATTERN_tpm-layer =3D "^${LAYERDIR}/"
> -BBFILE_PRIORITY_tpm-layer =3D "10"
> +BBFILE_PRIORITY_tpm-layer =3D "6"
>
>  LAYERSERIES_COMPAT_tpm-layer =3D "mickledore"
>
> --
> 2.34.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59350):
> https://lists.yoctoproject.org/g/yocto/message/59350
> Mute This Topic: https://lists.yoctoproject.org/mt/97431082/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--00000000000028a2d105f7a4426e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Armin,<br><br>Can this patch=C2=A0and the others in the=
 series=C2=A0be bakported=C2=A0to kirkstone?<br><br>Jose</div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Jose Quaresma via <=
a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;qua=
resma.jose=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@=
lists.yoctoproject.org</a>&gt; escreveu no dia segunda, 6/03/2023 =C3=A0(s)=
 17:55:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">The prio=
rity change on sumo version without any description.<br>
Since then is very hard to add in other layers a new version<br>
of any recipe on this layer with such priority so these patch<br>
reverts the priority back to 6.<br>
<br>
Signed-off-by: Jose Quaresma &lt;<a href=3D"mailto:jose.quaresma@foundries.=
io" target=3D"_blank">jose.quaresma@foundries.io</a>&gt;<br>
---<br>
=C2=A0meta-tpm/conf/layer.conf | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf<br>
index 81690ca..12bd6b7 100644<br>
--- a/meta-tpm/conf/layer.conf<br>
+++ b/meta-tpm/conf/layer.conf<br>
@@ -6,7 +6,7 @@ BBFILES +=3D &quot;${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/=
recipes*/*/*.bbappend&quot;<br>
<br>
=C2=A0BBFILE_COLLECTIONS +=3D &quot;tpm-layer&quot;<br>
=C2=A0BBFILE_PATTERN_tpm-layer =3D &quot;^${LAYERDIR}/&quot;<br>
-BBFILE_PRIORITY_tpm-layer =3D &quot;10&quot;<br>
+BBFILE_PRIORITY_tpm-layer =3D &quot;6&quot;<br>
<br>
=C2=A0LAYERSERIES_COMPAT_tpm-layer =3D &quot;mickledore&quot;<br>
<br>
-- <br>
2.34.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59350): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59350" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59350</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/97431082/5052=
612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/97431082/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div>

--00000000000028a2d105f7a4426e--

