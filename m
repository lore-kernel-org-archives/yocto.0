Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 620C7C43334
	for <webhook@archiver.kernel.org>; Mon, 18 Jul 2022 13:35:32 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
 [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web12.27274.1658151330565020415
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Jul 2022 06:35:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=p1xDTM2L;
 spf=pass (domain: gmail.com, ip: 209.85.208.169,
 mailfrom: quaresma.jose@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id u14so5617650lju.0
        for <yocto@lists.yoctoproject.org>;
 Mon, 18 Jul 2022 06:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=crmJX+BbQecxhHW3qbAjlnoQgTnirr+8i9C7r1G1VDw=;
        b=p1xDTM2Lfo/JCVX7F3tz+KqPlAcUczG51FIgzSA0PwtEgN16d6wgtKxp4hpq5atbxt
         lhSNq7YRX9e/0IMR+syxv1C1fvYp3Iw2t2G/IkJSKYCuvUmVLKBTT+oMGzst51kD/B9/
         r4/1GzB9irihGlVjQdEMgkmod0AnS8NNZx3mff5p93CLWv9uoNsDzCinkyg7GcyI2pFK
         7+SmlVSU2WOLxpx7hiO5s+qiwyO3i/C5QMxUDtiraARPI4BljsuiGE6y3kk/zeu5cc51
         SBAOs0v47XOEH9/akqekLP6awdOHJ0cvEAfbvLk3zCuAUuxDVhorfKWWdRt7uT2w3ysB
         DDJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=crmJX+BbQecxhHW3qbAjlnoQgTnirr+8i9C7r1G1VDw=;
        b=2vxszBGLzc263CO+ZYDwBS7YbEARPZqobLfwoTe4OHYiJ1YS+g1g74WmpQ0zmJdYPm
         WFjIE+EDxyMycNdJNNlflQc2qn6Wk+7r4ob23ntFiUrKhJUfgmX3PVWkKpsYLWMsJKq+
         /fRXGuvxbeP7bBEXrZpTkI7uaG0+VI7KGN3/CSKERRnK6M/bx+gQ1c/AuMrSj1Sa5ah5
         sSDo2/215UkN/cVMKrfSnjz5MGoPpbTCJ8vAgbcfq7YuaiZnwefKbJ4FcZygPV7RQ967
         DsCulpih6lY1Hi/OhNnLSvG+bjpRYAc3s0CQ/VJdWOt35Y51XfcpZqIw1n4EInGwOrS0
         Rtaw==
X-Gm-Message-State: AJIora9kWSvuyd2OfN3W1XSWNPqdbkPOMxYsVPiiq9cHgINuwFKY2XWk
	dQ4kVrXSI9rXHRVWafqVpiMFq8n8jUtjuGTkO+I=
X-Google-Smtp-Source: 
 AGRyM1uSfpaSXuVvxb055dM7y/UHJfKYvDjldpt9GFZhwv82ftas9NRTLvuNEKMDBrDGaiDQo6nS/KausH5OqurzFNc=
X-Received: by 2002:a05:651c:895:b0:25d:644e:b9d2 with SMTP id
 d21-20020a05651c089500b0025d644eb9d2mr13359597ljq.117.1658151328671; Mon, 18
 Jul 2022 06:35:28 -0700 (PDT)
MIME-Version: 1.0
References: <16FC789BC29739A9.466@lists.yoctoproject.org>
In-Reply-To: <16FC789BC29739A9.466@lists.yoctoproject.org>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Mon, 18 Jul 2022 14:35:17 +0100
Message-ID: 
 <CANPvuRkjoOVX76uE=vWE+V=vUm2DL=JSqFCbDykUuPeBigwVuA@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH v2] meta-integrity: kernel-modsign:
 prevents splitting out debug symbols
To: Jose Quaresma <quaresma.jose@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
 Ricardo Salveti <ricardo@foundries.io>,
	daiane.angolini@foundries.io, Jose Quaresma <jose.quaresma@foundries.io>
Content-Type: multipart/alternative; boundary="000000000000edea4a05e4147093"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Jul 2022 13:35:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57559

--000000000000edea4a05e4147093
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Armin,

Can this patch be backported to kirkstone?

Jose

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

--000000000000edea4a05e4147093
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi=C2=A0Armin,</div><div><br></div><div>Can this patc=
h be backported to=C2=A0kirkstone?</div><div><br></div><div>Jose</div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Jose Quares=
ma via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a>=
 &lt;quaresma.jose=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gm=
ail.com@lists.yoctoproject.org</a>&gt; escreveu no dia segunda, 27/06/2022 =
=C3=A0(s) 13:02:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>Starting with [1] kernel modules symbols is being slipped in OE-core<br>
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

--000000000000edea4a05e4147093--

