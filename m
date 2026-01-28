Return-Path: <sergey.nikulov@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BD1D46BE4
	for <webhook@archiver.kernel.org>; Wed, 28 Jan 2026 17:38:13 +0000 (UTC)
Received: from mail-dy1-f175.google.com (mail-dy1-f175.google.com [74.125.82.175])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.443.1769621886775199778
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Jan 2026 09:38:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gMHEnPMn;
 spf=pass (domain: gmail.com, ip: 74.125.82.175, mailfrom: sergey.nikulov@gmail.com)
Received: by mail-dy1-f175.google.com with SMTP id 5a478bee46e88-2b78c97f57bso14265eec.1
        for <yocto@lists.yoctoproject.org>; Wed, 28 Jan 2026 09:38:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769621886; cv=none;
        d=google.com; s=arc-20240605;
        b=DJ/0KIunRkoZagSYTworBctZTBTzTMUz76UuruNINVfrneJPZ0Hr2C0k2fvUT/JtP9
         g57HmgY+qWSyjqpsvEYuJQIW3E9ZBP+Jn3JFt8yqW9B1R4gM50dXJaNxhOA1ggkcx6r/
         h/qAa5tlgGWlQlpOIs5JTHzp+/S5bBjq0vXfFIzOUxqYu6QWpMOdNwrFehNXUoeIkPw2
         QAOupad04puta8XudEQtVAibCZEeZG76Pgjkd9lZmC66+635hC8rQDArYq/2obQJt6tr
         7jiOI802ah4VSq+hSLE35QL01k7/E59HkXS2UzDvFpqiAb5rg6vMEp8wM+N1tHZjjj6c
         PNpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=j4VQdFL48oW1/v7qUwPXStb22BR60pSAe5o5IghQKbI=;
        fh=3XVoMcX7lvAGbOwZFSdYdVRMu5gW5KZ/0NNEqURLsbk=;
        b=R1NPXMdf75Wk4LWn452UWssqpC+e7GJu1VWvE7Q1vHNldlKdu5geJXyR2rTDNQV0Jr
         nYRWODb5NrcS9kENU9/EdT12KpUZf6F6ykubM9N8XFAzbQ+N9mLKcy18bAb2dfaY//Xw
         mdIvQakHGRH+WhHthBzp8a+/jk4Z5ZU+oxE5VYNVb8iAIfMc0QFPM1dwpaKwR+6Jm7uo
         4YaXgCp4sBpw95F3L/nVzTvifdDPRIVEa6eoD0jC98LVcVTzN/Q70gB1LagL7XsPYxG8
         VWTCekkZff+cclV7dLHbKvZg3Gustv4cck+3ucg3RklOWWUEAEs7BvtIM851osk8JPUI
         EGLA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769621886; x=1770226686; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j4VQdFL48oW1/v7qUwPXStb22BR60pSAe5o5IghQKbI=;
        b=gMHEnPMnGXFm64OBvouUwSHjbOJpid0CecpWsd54TvllOoa90jsWokvvFcz3Zf6xhV
         4PTz2gWotWbF+CuOZQe+O26aO6JACTrJ9JUdxUszhi1wje60nzzyHpk3rmegL8tlvzbt
         QlB0hhU85cehy/1wvDYdXIxgrDK35HT6qjDkDF2et8TyHlbqp2P6PLahr3JMjEjmHs/n
         zRI9v2IW73GOAq9WtYInkTCkVPtuccwpuJX/RCuOCHRvQ6yB5z2/vydToo6SOl1qxJds
         7TKbxgZ9DEX7Dp6wnGDonVQw2DcUSV/Noezm7xX/g+Z31TJkZ8p/1ITIl6zTgbAtzkDx
         FM2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769621886; x=1770226686;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j4VQdFL48oW1/v7qUwPXStb22BR60pSAe5o5IghQKbI=;
        b=gaLVK0RMT9s/vZ3xbP6RUYvr8G0E0D9boo/km4ExTnm4WmATVZI1zRqFEzUvgnkaq0
         +whvwO6fyJKIvG+RAmcOlHxRZiaXHeF+yPQ25A++en8W+YvOQ8GIIVxgq62F1sSD70E+
         YlMSCSQraUgVI/Vws252BqEvZVCgu+EFIYQrOJl82z2knqa6jW9yY8btdML16elsiL1W
         T3E2nqZuEOduO8LoTCXhp3TGXBWqXtyvE6N0aWErkFIWUTf5uyI2iBLipIbmv+pjtv3l
         oOE+5D78m3N8voBLvfBpV5fcAkP1uiEXE7pFkW6/JwZGv67i4JUHVtzJU48j0Mi650Vr
         bNuQ==
X-Gm-Message-State: AOJu0YzQkj+897aSgF5ms6V2CIL9h0WKOTWHPtemaO6n2ZgCDuGlW0S/
	D1qpPtAkIjsoRedMnut8LaM4qKCRsO+yLpqcnuCWcRcLju6pQPaWpelVTL2YIh5lkdFdsemQwHI
	Xhi2IoP6NY3u1ic4t8WzSXd7PNoDotN4nGdO++Ce9OXjE7I0=
X-Gm-Gg: AZuq6aJIJfXp8bZ6GzUbtIalXQpfkT/ty72E0PXLTAetjlD1q8bn1Anf6KrcTkbIbSo
	bTnZEuvEBggQFYg6g5GT5VaHRMSMjVrXKJ8skrOMmkmne9YulIRKXE6FKxRdP0USMNeLRYMw+K4
	R3R5QM8pAqtRnSPGEr6GHwLREKphA4Sr3RgsX35MNR/k2LsxcW8aWu4CCL2ZGKMoFt//l9t8H5j
	MRkPdnXEfZLUPwcw4IEnMZpf1ujnCOcQ9gKjFoQiyvHA49FBqye5O77TOhMpCmTJiT/YFfjrsr0
	N21zINm9Hq1e8IlRxb8mePSTSGI=
X-Received: by 2002:a05:7300:a507:b0:2b7:2bf3:ce06 with SMTP id
 5a478bee46e88-2b7af7aaddemr204140eec.3.1769621885541; Wed, 28 Jan 2026
 09:38:05 -0800 (PST)
MIME-Version: 1.0
References: <g06F.1769608737933360301.CF5c@lists.yoctoproject.org>
In-Reply-To: <g06F.1769608737933360301.CF5c@lists.yoctoproject.org>
From: Sergei Nikulov <sergey.nikulov@gmail.com>
Date: Wed, 28 Jan 2026 20:37:54 +0300
X-Gm-Features: AZwV_QhlgkRoEkQ95mkLQuIf5bPaaU8MtL09Si47sim-SQxhCXFJjI6n21KALQo
Message-ID: <CAE7Ac0D9xT6KDqr4NgM5mX95Z6aNhv46JNw+dGDqh4VdnseVsw@mail.gmail.com>
Subject: Re: [yocto] System device tree, AMD EDF, custom board
To: yocto@lists.yoctoproject.org, pierre.daye@p3lab.com
Content-Type: multipart/alternative; boundary="000000000000dfe2c606497633fd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Jan 2026 17:38:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66199

--000000000000dfe2c606497633fd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 28, 2026 at 4:59=E2=80=AFPM pierre.daye via lists.yoctoproject.=
org
<pierre.daye=3Dp3lab.com@lists.yoctoproject.org> wrote:

>
> Dear All,
>
> I am currently updating my workflow to move to Scarthgap.
> The issue I am facing is related to the fact that I use a system device
> tree generated by sdtgen from my XSA design than I use genmachine-conf to
> create the configuration files and set my machine name.
> Now is the pickle for me. I don't know how to add a device tree
> specification that is related to my custom board (and not to the FPGA and
> the design itself, e.g. a device connected to an i2c bus defined in the P=
L).
> If I add it as I was doing it before, it doesn't find the labels that are
> defined in the PL part of my design and only focuses on the one accessibl=
e
> by the PS part.
>
> Any help, pointers, would be greatly appreciated !
>
> Thanks,
>
> Pi-r
>
>
Hello, Pierre

Here is my proposal (maybe there is a better way :) )

I've created custom layer let's call it meta-my-custom-board with
"bitbake-layers create-layer -a ..." and put device-tree.bbappend here

meta-my-custom-board
=E2=94=9C=E2=94=80=E2=94=80 conf
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 layer.conf
=E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT
=E2=94=9C=E2=94=80=E2=94=80 README
=E2=94=94=E2=94=80=E2=94=80 recipes-bsp
    =E2=94=94=E2=94=80=E2=94=80 device-tree
        =E2=94=9C=E2=94=80=E2=94=80 device-tree.bbappend
        =E2=94=94=E2=94=80=E2=94=80 files
            =E2=94=9C=E2=94=80=E2=94=80 custom_device.dtsi <----------- her=
e just list of /include/
"... below dtsi ..."
            =E2=94=9C=E2=94=80=E2=94=80 one.dtsi
            =E2=94=9C=E2=94=80=E2=94=80 two.dtsi
            =E2=94=94=E2=94=80=E2=94=80 three.dtsi

In custom bbappend I've customized do_configure to append main dtsi to
linux dts

FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"
SYSTEM_USER_DTSI ?=3D "custom_device.dtsi"
SRC_URI:append =3D " file://${SYSTEM_USER_DTSI}"
SRC_URI:append =3D " file://one.dtsi"
SRC_URI:append =3D " file://two.dtsi"

TARGET_DTS_MODIFY ?=3D "cortexa53-linux.dts"

do_configure:append() {
    set -xe
    echo "Running do_configure for ${MACHINE}..."
    if [ -f ${S}/${TARGET_DTS_MODIFY} ]; then
       if ! grep -q "/include/ \"${SYSTEM_USER_DTSI}\""
"${S}/${TARGET_DTS_MODIFY}"; then
          echo "/include/ \"${SYSTEM_USER_DTSI}\"" >>
${S}/${TARGET_DTS_MODIFY}
       fi
    fi
}

HTH,

--=20
Best Regards,
Sergei Nikulov

--000000000000dfe2c606497633fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 28,=
 2026 at 4:59=E2=80=AFPM pierre.daye via <a href=3D"http://lists.yoctoproje=
ct.org">lists.yoctoproject.org</a> &lt;pierre.daye=3D<a href=3D"mailto:p3la=
b.com@lists.yoctoproject.org">p3lab.com@lists.yoctoproject.org</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>=C2=A0</=
div>
<div>Dear All,</div>
<div>=C2=A0</div>
<div>I am currently updating my workflow to move to Scarthgap.</div>
<div>The issue I am facing is related to the fact that I use a system devic=
e tree generated by sdtgen from my XSA design than I use genmachine-conf to=
 create the configuration files and set my machine name.<br>Now is the pick=
le for me. I don&#39;t know how to add a device tree specification that is =
related to my custom board (and not to the FPGA and the design itself, e.g.=
 a device connected to an i2c bus defined in the PL).<br>If I add it as I w=
as doing it before, it doesn&#39;t find the labels that are defined in the =
PL part of my design and only focuses on the one accessible by the PS part.=
</div>
<div>=C2=A0</div>
<div>Any help, pointers, would be greatly appreciated !</div>
<div>=C2=A0</div>
<div>Thanks,</div>
<div>=C2=A0</div>
<div>Pi-r</div>
<br>
</blockquote></div><div><br clear=3D"all"></div><div>Hello, Pierre</div><di=
v><br></div><div>Here is my proposal (maybe there is a better way :) )</div=
><div><br></div><div>I&#39;ve created custom layer let&#39;s call it meta-m=
y-custom-board with &quot;bitbake-layers create-layer -a ...&quot; and put =
device-tree.bbappend here</div><div><br></div><div>meta-my-custom-board<br>=
=E2=94=9C=E2=94=80=E2=94=80 conf<br>=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=
=80=E2=94=80 layer.conf<br>=E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT<br>=E2=
=94=9C=E2=94=80=E2=94=80 README<br>=E2=94=94=E2=94=80=E2=94=80 recipes-bsp<=
br>=C2=A0 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 device-tree<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 device-tree.bbappend<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 files<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 custom_device.dtsi &lt=
;----------- here just list of /include/ &quot;... below dtsi ...&quot;<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 one.d=
tsi<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=9C=E2=94=80=E2=94=
=80 two.dtsi<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=94=E2=94=
=80=E2=94=80 three.dtsi</div><div><br></div><div>In custom bbappend I&#39;v=
e customized do_configure to append main dtsi to linux dts</div><div><br></=
div><div>FILESEXTRAPATHS:prepend :=3D &quot;${THISDIR}/files:&quot;<br>SYST=
EM_USER_DTSI ?=3D &quot;custom_device.dtsi&quot;<br>SRC_URI:append =3D &quo=
t; file://${SYSTEM_USER_DTSI}&quot;<br>SRC_URI:append =3D &quot; file://one=
.dtsi&quot;<br>SRC_URI:append =3D &quot; file://two.dtsi&quot;<br><br>TARGE=
T_DTS_MODIFY ?=3D &quot;cortexa53-linux.dts&quot;<br><br>do_configure:appen=
d() {<br>=C2=A0 =C2=A0 set -xe<br>=C2=A0 =C2=A0 echo &quot;Running do_confi=
gure for ${MACHINE}...&quot;<br>=C2=A0 =C2=A0 if [ -f ${S}/${TARGET_DTS_MOD=
IFY} ]; then<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0if ! grep -q &quot;/include/ \&q=
uot;${SYSTEM_USER_DTSI}\&quot;&quot; &quot;${S}/${TARGET_DTS_MODIFY}&quot;;=
 then<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;/include/ \&quot;${S=
YSTEM_USER_DTSI}\&quot;&quot; &gt;&gt; ${S}/${TARGET_DTS_MODIFY}<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0fi<br>=C2=A0 =C2=A0 fi<br>}</div><div><br></div><div>HT=
H,</div><div><br></div><span class=3D"gmail_signature_prefix">-- </span><br=
><div dir=3D"ltr" class=3D"gmail_signature">Best Regards,<br>Sergei Nikulov=
</div></div>

--000000000000dfe2c606497633fd--

