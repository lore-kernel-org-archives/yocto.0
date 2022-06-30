Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C3BEC433EF
	for <webhook@archiver.kernel.org>; Thu, 30 Jun 2022 08:36:10 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web12.22661.1656578163828744061
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jun 2022 01:36:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GG3Vjpmx;
 spf=pass (domain: gmail.com, ip: 209.85.208.182,
 mailfrom: quaresma.jose@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id bx13so13520537ljb.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jun 2022 01:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=teh2Dj722UUjj1KpjGxeQNAlYM6bMJNNEwMkbnGSYSI=;
        b=GG3Vjpmx3BO2OJ/uaIp7YKNrs5C7Zso3DNO7U2sg82OHNrapreQLKq+nGll3MWCJzW
         M0xcJASoLomy5bqP4T8a5nXopcB3k8yjjzzTrr10CPCa07TuNfZWE6v/tVN3cKqIMa+6
         enM4j77cy8H/8r400P0UIibmmPX6Vz7qOMFKBFUnIgCo7RNLSv6mBToByjeenyw556g7
         mQQORBS0VtxZUnOcq3Yq/h8zvZn89r7aSTXv8cdCsh+pTKIhHBd1ZsqFmQsFo0VlTP1k
         PEJlanIZ3qOWfchrUj8AXUIlS4WR+86WZ/0rocJHnL/JLEvj9P80wNESNOx6+3hd/Uh1
         kq5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=teh2Dj722UUjj1KpjGxeQNAlYM6bMJNNEwMkbnGSYSI=;
        b=dAwu6SDUE4qWvwGSLACdhLdn5NQNSTfYF0AzrqLn+msbKVj37U0TWTIjvWzMgkilnh
         z2nlWCQgIKFvktzm7xWdGk0dVQFSwY4wawaZO+l1Zhdl+ODNAXu30pgrf/LFkiL3OlSf
         5Oyy77/wVkwcCuudmc6z8ogMb8c1TeCMHTZ6R2J4m1uZiJzAXF2jEYj9p4HxrdT5OQlc
         sOKZ8kb1V9ehrVlc5TMeASstJSxh0j9IlVUbc+bGiCcu8kYeedXeGPVKzvKEg1LHnRwW
         p9JeP5UxXnP5nG75f7koEt8+Y+1scSm6lxaggUiY8ohsoRqtPSWCEfOcvZykIODDkJYv
         /+CQ==
X-Gm-Message-State: AJIora+CV5k1b0agVGOR068vJv0uOjSPlM+gWjcriexARbhwPZ+vlxyB
	EXXkxaq3ZI+5UkBqL1L2SRFjFpApUEM3D4PLGuc=
X-Google-Smtp-Source: 
 AGRyM1uOmRMRgFR5J2ID2ZJ/u6Y7PI8l8R1Xf2uA99Rcrnhus9JDzFn1DCpT5rVfH6Bx+scLj5jSu1U1V9qQpShsI3A=
X-Received: by 2002:a2e:bc1d:0:b0:25b:9667:87b9 with SMTP id
 b29-20020a2ebc1d000000b0025b966787b9mr4118787ljf.91.1656578161585; Thu, 30
 Jun 2022 01:36:01 -0700 (PDT)
MIME-Version: 1.0
References: <16FC789BC29739A9.466@lists.yoctoproject.org>
In-Reply-To: <16FC789BC29739A9.466@lists.yoctoproject.org>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Thu, 30 Jun 2022 09:35:50 +0100
Message-ID: 
 <CANPvuRkN9-FVpBoUOXyxJje_=Zx4eVVndtnRg11TCjKcB8-c1Q@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH v2] meta-integrity: kernel-modsign:
 prevents splitting out debug symbols
To: Jose Quaresma <quaresma.jose@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
 Ricardo Salveti <ricardo@foundries.io>,
	daiane.angolini@foundries.io, Jose Quaresma <jose.quaresma@foundries.io>
Content-Type: multipart/alternative; boundary="000000000000dd32cb05e2a62878"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Jun 2022 08:36:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57426

--000000000000dd32cb05e2a62878
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Gracious ping.

Jose Quaresma via lists.yoctoproject.org <quaresma.jose=3D
gmail.com@lists.yoctoproject.org> escreveu no dia segunda, 27/06/2022 =C3=
=A0(s)
13:02:

> Starting with [1] kernel modules symbols is being slipped in OE-core
> and this breaks the kernel modules sign, so disable it.
>
> [1]
> https://git.openembedded.org/openembedded-core/commit/?id=3De09a8fa931fe6=
17afc05bd5e00dca5dd3fe386e8
>
> Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
> ---
>  meta-integrity/classes/kernel-modsign.bbclass | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/meta-integrity/classes/kernel-modsign.bbclass
> b/meta-integrity/classes/kernel-modsign.bbclass
> index 093c358..d3aa7fb 100644
> --- a/meta-integrity/classes/kernel-modsign.bbclass
> +++ b/meta-integrity/classes/kernel-modsign.bbclass
> @@ -13,7 +13,9 @@ MODSIGN_PRIVKEY ?=3D
> "${MODSIGN_KEY_DIR}/privkey_modsign.pem"
>  MODSIGN_X509 ?=3D "${MODSIGN_KEY_DIR}/x509_modsign.crt"
>
>  # If this class is enabled, disable stripping signatures from modules
> +# as well disable the debug symbols split
>  INHIBIT_PACKAGE_STRIP =3D "1"
> +INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"
>
>  kernel_do_configure:prepend() {
>      if [ -f "${MODSIGN_PRIVKEY}" -a -f "${MODSIGN_X509}" ]; then
> --
> 2.36.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57391):
> https://lists.yoctoproject.org/g/yocto/message/57391
> Mute This Topic: https://lists.yoctoproject.org/mt/92018870/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000dd32cb05e2a62878
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0)">Gracious=
=C2=A0</span><span class=3D"gmail-il" style=3D"color:rgb(0,0,0)">ping</span=
><span style=3D"color:rgb(0,0,0)">.</span><br style=3D"color:rgb(0,0,0)"></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Jo=
se Quaresma via <a href=3D"http://lists.yoctoproject.org">lists.yoctoprojec=
t.org</a> &lt;quaresma.jose=3D<a href=3D"mailto:gmail.com@lists.yoctoprojec=
t.org">gmail.com@lists.yoctoproject.org</a>&gt; escreveu no dia segunda, 27=
/06/2022 =C3=A0(s) 13:02:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Starting with [1] kernel modules symbols is being slipped in OE-=
core<br>
and this breaks the kernel modules sign, so disable it.<br>
<br>
[1] <a href=3D"https://git.openembedded.org/openembedded-core/commit/?id=3D=
e09a8fa931fe617afc05bd5e00dca5dd3fe386e8" rel=3D"noreferrer" target=3D"_bla=
nk">https://git.openembedded.org/openembedded-core/commit/?id=3De09a8fa931f=
e617afc05bd5e00dca5dd3fe386e8</a><br>
<br>
Signed-off-by: Jose Quaresma &lt;<a href=3D"mailto:jose.quaresma@foundries.=
io" target=3D"_blank">jose.quaresma@foundries.io</a>&gt;<br>
---<br>
=C2=A0meta-integrity/classes/kernel-modsign.bbclass | 2 ++<br>
=C2=A01 file changed, 2 insertions(+)<br>
<br>
diff --git a/meta-integrity/classes/kernel-modsign.bbclass b/meta-integrity=
/classes/kernel-modsign.bbclass<br>
index 093c358..d3aa7fb 100644<br>
--- a/meta-integrity/classes/kernel-modsign.bbclass<br>
+++ b/meta-integrity/classes/kernel-modsign.bbclass<br>
@@ -13,7 +13,9 @@ MODSIGN_PRIVKEY ?=3D &quot;${MODSIGN_KEY_DIR}/privkey_mod=
sign.pem&quot;<br>
=C2=A0MODSIGN_X509 ?=3D &quot;${MODSIGN_KEY_DIR}/x509_modsign.crt&quot;<br>
<br>
=C2=A0# If this class is enabled, disable stripping signatures from modules=
<br>
+# as well disable the debug symbols split<br>
=C2=A0INHIBIT_PACKAGE_STRIP =3D &quot;1&quot;<br>
+INHIBIT_PACKAGE_DEBUG_SPLIT =3D &quot;1&quot;<br>
<br>
=C2=A0kernel_do_configure:prepend() {<br>
=C2=A0 =C2=A0 =C2=A0if [ -f &quot;${MODSIGN_PRIVKEY}&quot; -a -f &quot;${MO=
DSIGN_X509}&quot; ]; then<br>
-- <br>
2.36.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#57391): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57391" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57391</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/92018870/5052=
612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/92018870/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Best regards,<div><br>Jos=C3=A9=
 Quaresma</div></div></div></div>

--000000000000dd32cb05e2a62878--

