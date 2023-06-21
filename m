Return-Path: <skulkarni@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A53EB64D7
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 07:18:35 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web10.5468.1687331914355483608
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jun 2023 00:18:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@mvista.com header.s=google header.b=JgVHCDmD;
 spf=pass (domain: mvista.com, ip: 209.85.208.181, mailfrom: skulkarni@mvista.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2b4826ba943so38087811fa.0
        for <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 00:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1687331912; x=1689923912;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=68RUJeHGeRP26N7GSxHNVS52STglgyzTYUEp8KxNJqc=;
        b=JgVHCDmDCt9sNiLOtpSXHxEhVZwWEjS4sny+voEgu7b+NAOQcuFh70f8tjN0DT3bRN
         Wx2sLXjHaj46awJ5J34EJkyFgk+nWsc4+mx627S+i97RgBW7mFv9tPKQqXyjs7YS3KIz
         QqlIY5kAUkwIFepiIXwT+T0XbCyAQk+OkIGO4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687331912; x=1689923912;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=68RUJeHGeRP26N7GSxHNVS52STglgyzTYUEp8KxNJqc=;
        b=irIDNl4b1d67swKMMTLsC6CGkwfDx2VMaNMPej/ARL3CoMeliItx53wd2CE+eC8oll
         9pLYvKmKTh6cISgbpJs0e/gDAxiu0Ilbn0BDDBVz9vvCMlWO+APIM03ph+DC9VzfZX91
         JjXqK33EY7ZmmiX2awj+UEddfhWTUu4/bJfwVg+nfZUgssDqJq403y411s7drm8TqAig
         4+D3HLqiV5GX/+ha0B37NuOIW3MQj5TdNoA/TWfr6inY8WDFAisYEMz9BT6Yi1NH+vOu
         wRlFGfrE0h0c5lzSq6OQWtmjcqIOa2BpUGlAyCd0gAIa+YifpC5c1V3GZY4Slo62/BQj
         xxeg==
X-Gm-Message-State: AC+VfDxQ0HuTX9GIRcr3iEpLLhDiO4Dr1U8jbNN4TpS0xbgNaGQnwF69
	fPiocUuOgttijH92L/xkgY9W6X43eX0exZ2nfqW2uPNTZyZz73MX
X-Google-Smtp-Source: ACHHUZ5tVVRoomqCHu1O0k8Doucgm9M4il3SVqUAk51yAGs759l6CR19FqCT4lajhgR9WwegGr5Clnbawx8jVDSHR/o=
X-Received: by 2002:a2e:9e07:0:b0:2b4:5fdd:f588 with SMTP id
 e7-20020a2e9e07000000b002b45fddf588mr7385419ljk.43.1687331911961; Wed, 21 Jun
 2023 00:18:31 -0700 (PDT)
MIME-Version: 1.0
References: <17664FCB3AD7151E.27841@lists.yoctoproject.org>
In-Reply-To: <17664FCB3AD7151E.27841@lists.yoctoproject.org>
From: Shubham Kulkarni <skulkarni@mvista.com>
Date: Wed, 21 Jun 2023 12:48:20 +0530
Message-ID: <CAKzga+ya6z9Uerohpqs8nQoRROoRt5gkN7TuxfZwDBKK35LTxQ@mail.gmail.com>
Subject: Re: [yocto] [meta-selinux][dunfell][PATCH] audit: Add https protocol
 for clonning repository
To: yocto@lists.yoctoproject.org, Armin Kuster <akuster@mvista.com>
Content-Type: multipart/alternative; boundary="0000000000003b25c405fe9e9365"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 07:18:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60369

--0000000000003b25c405fe9e9365
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

Is there any update for this patch? Can you pIs let me know, if there's any
issue with the patch.

Thanks,
Shubham

On Wed, Jun 7, 2023 at 12:57=E2=80=AFPM Shubham Kulkarni via lists.yoctopro=
ject.org
<skulkarni=3Dmvista.com@lists.yoctoproject.org> wrote:

> From: Shubham Kulkarni <skulkarni@mvista.com>
>
>  audit repository clone failing with git protocol as
>  github.com requires the https protocol to be used
>
> Signed-off-by: Shubham Kulkarni <skulkarni@mvista.com>
> ---
>  recipes-security/audit/audit_2.8.5.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-security/audit/audit_2.8.5.bb
> b/recipes-security/audit/audit_2.8.5.bb
> index af36ed5..e372f66 100644
> --- a/recipes-security/audit/audit_2.8.5.bb
> +++ b/recipes-security/audit/audit_2.8.5.bb
> @@ -7,7 +7,7 @@ SECTION =3D "base"
>  LICENSE =3D "GPLv2+ & LGPLv2+"
>  LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D94d55d512a9ba36caa9b7df079bae=
19f"
>
> -SRC_URI =3D "git://
> github.com/linux-audit/${BPN}-userspace.git;branch=3D2.8_maintenance
> <http://github.com/linux-audit/$%7BBPN%7D-userspace.git;branch=3D2.8_main=
tenance>
> \
> +SRC_URI =3D "git://
> github.com/linux-audit/${BPN}-userspace.git;branch=3D2.8_maintenance;prot=
ocol=3Dhttps
> <http://github.com/linux-audit/$%7BBPN%7D-userspace.git;branch=3D2.8_main=
tenance;protocol=3Dhttps>
> \
>             file://Add-substitue-functions-for-strndupa-rawmemchr.patch \
>             file://Fixed-swig-host-contamination-issue.patch \
>             file://0001-lib-i386_table.h-add-new-syscall.patch \
> --
> 2.24.4
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60197):
> https://lists.yoctoproject.org/g/yocto/message/60197
> Mute This Topic: https://lists.yoctoproject.org/mt/99380030/7032091
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> skulkarni@mvista.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000003b25c405fe9e9365
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"ltr">Hi Team,<div><br></div><div>Is there any=
 update for this patch? Can you pIs let me know, if there&#39;s any issue w=
ith the patch.</div><div><br></div><div>Thanks,</div><div>Shubham</div></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Wed, Jun 7, 2023 at 12:57=E2=80=AFPM Shubham Kulkarni via <a href=3D"h=
ttp://lists.yoctoproject.org" target=3D"_blank" rel=3D"noreferrer">lists.yo=
ctoproject.org</a> &lt;skulkarni=3D<a href=3D"mailto:mvista.com@lists.yocto=
project.org" target=3D"_blank" rel=3D"noreferrer">mvista.com@lists.yoctopro=
ject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">From: Shubham Kulkarni &lt;<a href=3D"mailto:skulkarni@mvista.com" =
target=3D"_blank" rel=3D"noreferrer">skulkarni@mvista.com</a>&gt;<br>
<br>
=C2=A0audit repository clone failing with git protocol as<br>
=C2=A0<a href=3D"http://github.com" rel=3D"noreferrer noreferrer" target=3D=
"_blank">github.com</a> requires the https protocol to be used<br>
<br>
Signed-off-by: Shubham Kulkarni &lt;<a href=3D"mailto:skulkarni@mvista.com"=
 target=3D"_blank" rel=3D"noreferrer">skulkarni@mvista.com</a>&gt;<br>
---<br>
=C2=A0recipes-security/audit/<a href=3D"http://audit_2.8.5.bb" rel=3D"noref=
errer noreferrer" target=3D"_blank">audit_2.8.5.bb</a> | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/recipes-security/audit/<a href=3D"http://audit_2.8.5.bb" rel=
=3D"noreferrer noreferrer" target=3D"_blank">audit_2.8.5.bb</a> b/recipes-s=
ecurity/audit/<a href=3D"http://audit_2.8.5.bb" rel=3D"noreferrer noreferre=
r" target=3D"_blank">audit_2.8.5.bb</a><br>
index af36ed5..e372f66 100644<br>
--- a/recipes-security/audit/<a href=3D"http://audit_2.8.5.bb" rel=3D"noref=
errer noreferrer" target=3D"_blank">audit_2.8.5.bb</a><br>
+++ b/recipes-security/audit/<a href=3D"http://audit_2.8.5.bb" rel=3D"noref=
errer noreferrer" target=3D"_blank">audit_2.8.5.bb</a><br>
@@ -7,7 +7,7 @@ SECTION =3D &quot;base&quot;<br>
=C2=A0LICENSE =3D &quot;GPLv2+ &amp; LGPLv2+&quot;<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D94d55d512a9ba36caa9b7=
df079bae19f&quot;<br>
<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/linux-audit/$%7BBPN%7=
D-userspace.git;branch=3D2.8_maintenance" rel=3D"noreferrer noreferrer" tar=
get=3D"_blank">github.com/linux-audit/${BPN}-userspace.git;branch=3D2.8_mai=
ntenance</a> \<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/linux-audit/$%7BBPN%7=
D-userspace.git;branch=3D2.8_maintenance;protocol=3Dhttps" rel=3D"noreferre=
r noreferrer" target=3D"_blank">github.com/linux-audit/${BPN}-userspace.git=
;branch=3D2.8_maintenance;protocol=3Dhttps</a> \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://Add-substitue-functions-fo=
r-strndupa-rawmemchr.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://Fixed-swig-host-contaminat=
ion-issue.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-lib-i386_table.h-add-=
new-syscall.patch \<br>
-- <br>
2.24.4<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60197): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60197" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/60197</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/99380030/7032=
091" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/99380030/7032091</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:skulkarni@mvista.com" target=3D"_blan=
k" rel=3D"noreferrer">skulkarni@mvista.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000003b25c405fe9e9365--

