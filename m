Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com [209.85.217.66])
 by mx.groups.io with SMTP id smtpd.web12.11641.1577273451118003036
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Dec 2019 03:30:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=o0iyz5Kr;
 spf=pass (domain: gmail.com, ip: 209.85.217.66, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f66.google.com with SMTP id x123so13792111vsc.2
        for <yocto@lists.yoctoproject.org>; Wed, 25 Dec 2019 03:30:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3Peu7rCT/m1q0ZkK4MKWkwGJffX6cGTfI3zXVkeXzys=;
        b=o0iyz5KrMP2oL5BoQS5+wnlV/NJrCBtxnIleBOGmlQgojvCKwNVzdrHoQBW35Mwntt
         3L/jlDbA+559HwBKpmPpKKa1n8qWZtvZpwcT9sz4PcH03Npyh2u01qJnhuRQFWjD3Lfo
         zxBKOI3zJIyqyeDL50AJvOtg6nfSFs8f44Q4wi5q+4tB60GapqlJeuLEZDXfyrZuX1kP
         KtohIcwVZx1JMtF9UrSsZdlcyxLG8TrbViJ0Y3h7NAjSa4YPmrl/qkoHzgS34Dmy5VU2
         yqlHx+eq0WT0KxP/kZZTmrTBIj+wT/PkgG0d8+ya7mhwmzMY86w+qZV8d4WylaTlvUNg
         12mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3Peu7rCT/m1q0ZkK4MKWkwGJffX6cGTfI3zXVkeXzys=;
        b=b9GWf1jSpsso721NYqjb8o4DtsMq2e+Q9y8QxPgRtlj5Cesgp0USttcVupq60r0GQB
         CJkAqQw6wq1mxZCqMfCkTPXDuXnMp/OX75KMpozBFvQLEdmZXmF6SkhwCpdKvn7VrmBg
         Uefw0hxF22WYLIp36FGmyyRfO7bpHNnpR0bNn9HapFFBe/MPQRTkf+04yXqnfT7VB2B7
         XL2jEjIDhuPQY6hXXPp8Icdiyx0emUysBNpbQtShbL7HkBc6A3KgadVZ9SJriY5XcvJe
         MM20J/89kVKb47ESl9MZdZt8zrCkxtTvLZsNYgoOiGgjWtL2si4bhdzZAB47i63T+B/5
         6HMw==
X-Gm-Message-State: APjAAAXf9ppO7WVsEUOQE5v6zecHsigK7G8E0g8XCsR7VgHmoAG5yl+j
	BQq2QbGkk9avYS2nfbTLJmThNkZ/sQ4zzcG+cSI=
X-Google-Smtp-Source: APXvYqykdS4Lzwy9bdwCexJT1JcJ85Fx3qDJKW888p4h8EUu+4ilvJEcmXybKVR7dgDfQ3WOD3Yd9H2hFMVqW5NfdM0=
X-Received: by 2002:a05:6102:405:: with SMTP id d5mr21653699vsq.94.1577273450192;
 Wed, 25 Dec 2019 03:30:50 -0800 (PST)
MIME-Version: 1.0
References: <l4HO.1577273067981893969.30G2@lists.yoctoproject.org>
In-Reply-To: <l4HO.1577273067981893969.30G2@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 25 Dec 2019 12:30:38 +0100
Message-ID: <CANNYZj9quCvn+4T3mq-wjXey5mn7DhunX-4mMjXpSsfpdk3_gQ@mail.gmail.com>
Subject: Re: [yocto] [meson][PATCH] meson: Allow for llvm-native tools to be used
To: fdk17 <fdk17@ftml.net>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b66234059a8597e9"

--000000000000b66234059a8597e9
Content-Type: text/plain; charset="UTF-8"

This should be going to the oe-core list.

Alex

On Wed, 25 Dec 2019 at 12:24, <fdk17@ftml.net> wrote:

> I created a bbappend to build the LLVM recipe so that all the libraries
> were available for use on the host.
> These libraries are then used by a host/sdk tool to prepare binary files
> for use by an application on the target.
> When building our tool using meson it wasn't able to find the Yocto built
> LLLVM libraries.
> This fixes the issue so meson uses the correct llvm-config tool.
>
> Author: Fred Baksik <fred.baksik@mrcy.com>
> Date:   Tue Dec 24 20:38:47 2019 -0500
>
>     meson: Allow for llvm-native tools to be used
>
>     Signed-off-by: Fred Baksik <fred.baksik@mrcy.com>
>
> diff --git a/meta/classes/meson.bbclass b/meta/classes/meson.bbclass
> index e1a13bbbf7..b5cd2ee8c4 100644
> --- a/meta/classes/meson.bbclass
> +++ b/meta/classes/meson.bbclass
> @@ -33,6 +33,7 @@ EXTRA_OEMESON_append = " ${PACKAGECONFIG_CONFARGS}"
>  MESON_CROSS_FILE = ""
>  MESON_CROSS_FILE_class-target = "--cross-file ${WORKDIR}/meson.cross"
>  MESON_CROSS_FILE_class-nativesdk = "--cross-file ${WORKDIR}/meson.cross"
> +MESON_CROSS_FILE_class-native = "--native-file ${WORKDIR}/meson.native"
>
>  def meson_array(var, d):
>      items = d.getVar(var).split()
> @@ -110,6 +111,14 @@ endian = '${@meson_endian('TARGET', d)}'
>  EOF
>  }
>
> +do_write_config_class-native() {
> +    # This needs to be Py to split the args into single-element lists
> +    cat >${WORKDIR}/meson.native <<EOF
> +[binaries]
> +llvm-config = 'llvm-config${LLVMVERSION}'
> +EOF
> +}
> +
>  CONFIGURE_FILES = "meson.build"
>
>  meson_do_configure() { -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47821):
> https://lists.yoctoproject.org/g/yocto/message/47821
> Mute This Topic: https://lists.yoctoproject.org/mt/69260511/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

--000000000000b66234059a8597e9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This should be going to the oe-core list.<div><br></div><d=
iv>Alex</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Wed, 25 Dec 2019 at 12:24, &lt;<a href=3D"mailto:fdk17@ftml=
.net">fdk17@ftml.net</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-sty=
le:solid;border-left-color:rgb(204,204,204);padding-left:1ex">I created a b=
bappend to build the LLVM recipe so that all the libraries were available f=
or use on the host.<br>These libraries are then used by a host/sdk tool to =
prepare binary files for use by an application on the target.<br>When build=
ing our tool using meson it wasn&#39;t able to find the Yocto built LLLVM l=
ibraries.<br>This fixes the issue so meson uses the correct llvm-config too=
l.<br><br>Author: Fred Baksik &lt;<a href=3D"mailto:fred.baksik@mrcy.com" t=
arget=3D"_blank">fred.baksik@mrcy.com</a>&gt;<br>Date:=C2=A0=C2=A0 Tue Dec =
24 20:38:47 2019 -0500<br><br>=C2=A0=C2=A0=C2=A0 meson: Allow for llvm-nati=
ve tools to be used<br>=C2=A0=C2=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0 Signed-off=
-by: Fred Baksik &lt;<a href=3D"mailto:fred.baksik@mrcy.com" target=3D"_bla=
nk">fred.baksik@mrcy.com</a>&gt;<br><br>diff --git a/meta/classes/meson.bbc=
lass b/meta/classes/meson.bbclass<br>index e1a13bbbf7..b5cd2ee8c4 100644<br=
>--- a/meta/classes/meson.bbclass<br>+++ b/meta/classes/meson.bbclass<br>@@=
 -33,6 +33,7 @@ EXTRA_OEMESON_append =3D &quot; ${PACKAGECONFIG_CONFARGS}&q=
uot;<br>=C2=A0MESON_CROSS_FILE =3D &quot;&quot;<br>=C2=A0MESON_CROSS_FILE_c=
lass-target =3D &quot;--cross-file ${WORKDIR}/meson.cross&quot;<br>=C2=A0ME=
SON_CROSS_FILE_class-nativesdk =3D &quot;--cross-file ${WORKDIR}/meson.cros=
s&quot;<br>+MESON_CROSS_FILE_class-native =3D &quot;--native-file ${WORKDIR=
}/meson.native&quot;<br>=C2=A0<br>=C2=A0def meson_array(var, d):<br>=C2=A0=
=C2=A0=C2=A0=C2=A0 items =3D d.getVar(var).split()<br>@@ -110,6 +111,14 @@ =
endian =3D &#39;${@meson_endian(&#39;TARGET&#39;, d)}&#39;<br>=C2=A0EOF<br>=
=C2=A0}<br>=C2=A0<br>+do_write_config_class-native() {<br>+=C2=A0=C2=A0=C2=
=A0 # This needs to be Py to split the args into single-element lists<br>+=
=C2=A0=C2=A0=C2=A0 cat &gt;${WORKDIR}/meson.native &lt;&lt;EOF<br>+[binarie=
s]<br>+llvm-config =3D &#39;llvm-config${LLVMVERSION}&#39;<br>+EOF<br>+}<br=
>+<br>=C2=A0CONFIGURE_FILES =3D &quot;meson.build&quot;<br>=C2=A0<br>=C2=A0=
meson_do_configure() {
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
<br>
View/Reply Online (#47821): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/47821" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/47821</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/69260511/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/69260511/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a>=C2=A0 [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">=
alex.kanavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
</blockquote></div>

--000000000000b66234059a8597e9--
