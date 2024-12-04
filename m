Return-Path: <posinaaravind0205@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE552E7716D
	for <webhook@archiver.kernel.org>; Wed,  4 Dec 2024 05:37:50 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web11.7301.1733290661163049734
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2024 21:37:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=leBtf5Ox;
 spf=pass (domain: gmail.com, ip: 209.85.210.171, mailfrom: posinaaravind0205@gmail.com)
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7250844b0ecso5471085b3a.1
        for <yocto@lists.yoctoproject.org>; Tue, 03 Dec 2024 21:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733290660; x=1733895460; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PHs2DzIx8DhGp1Q4kh1b6rXeJASPLaBaQoKPI/i17mc=;
        b=leBtf5OxKjDrmnIi0ta4BfxUgvCCQ0RYnUeKZjTxEy+Xx845Kj35FmBHotmlN3R4FF
         IaFHCXKQHqJfi0p0Y2IrMTSvlVqWhCIgTJs2Ft0ui87RKlTxyCykGRB6dMQb5mIliuyg
         k1YLemH0F11+ghTP6Uk74vlW1JnlU+pi1CsO4qZebO9AS5utB3Pp1x7rokC+lGafAAcA
         qoIFpsRHj6M3XYcAD36z+TH/ZYNEmpyW7BnVvws/wtGmDPe6KedDhwMWWbXn4kAwiutA
         o0Ozcw0fn/SHTDSiEwLHVjMLrZHEv0dMWWZRM2B4cjI2Gyo95XvtYlzF8b8+aBbE4V1Z
         JDCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733290660; x=1733895460;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PHs2DzIx8DhGp1Q4kh1b6rXeJASPLaBaQoKPI/i17mc=;
        b=sDxwHrNtzYcHzXFgYlNTCumi8/A6uSqjaNxw8nASV8/Cav/EpK2IX4nepb7lGo+/VF
         cew/1ZSF7DM14sgxPHzUarTF84033uA2ViyNskVP8MquNL7DHqWmfjqVPUWrI9+Cg2QB
         yeCsiKJMDNwveb288u3n3Seelyv2r2yoSrPsAmxLj4f9M/fqmwKQAygBnlAPd5MfpmBM
         RtIX2vmNl09EhGF+WAV9uVDV+NJAfGy/jeyKKw8q0A5ETm2a/3+eK+VfNSlmTqCp7YM6
         bzG/hFTNR66kIFXikMCWJ9siBc1u6WlYigqp+3CrIAp0uD9oN7ZKCfpEvUllaWIBKeXb
         8ySA==
X-Gm-Message-State: AOJu0YxtEtHMdXoNEjUVj+TxosHEpeUZoShS6CeOWpDaDxMHyDndQPvC
	B61rIz12uSlX5U3CeENOL7f7QpPbtoaxa7z5KKiDkvIWf35tqAtTnZvek4RE2tChO4NGsje/UDG
	H9oWIQ22gMpfkPy56q9MFDVy7J3b6PWB9
X-Gm-Gg: ASbGncsrPVz8bWFrLcPkKSVrmuqWOLVvI39JgktpPPGC9/thhkX7lV+GBTxgx64QWgj
	ljcujzXMQdYOoWwc7BcfQaqCafvCDWQ==
X-Google-Smtp-Source: AGHT+IHqKofmICQmolp48bPLuH9Px+2KOXOwXH3Ki6n9+AmgmcE2SFnH1JsF7DPBSf1R7Wv57HEakednR9II9E0Ma0w=
X-Received: by 2002:a17:903:2290:b0:215:5637:447 with SMTP id
 d9443c01a7336-215bd180302mr63345115ad.51.1733290660092; Tue, 03 Dec 2024
 21:37:40 -0800 (PST)
MIME-Version: 1.0
References: <CAPJWBnjZoSJcV4B+mDLzU=jbxOmkNsugvHpYRp-oEFeuuXTO-g@mail.gmail.com>
In-Reply-To: <CAPJWBnjZoSJcV4B+mDLzU=jbxOmkNsugvHpYRp-oEFeuuXTO-g@mail.gmail.com>
From: aravind posina <posinaaravind0205@gmail.com>
Date: Wed, 4 Dec 2024 11:07:27 +0530
Message-ID: <CALvuYrmW4YabKyAPs43GYOihOeEL67=u7+yy_2EMeawSmPzHQg@mail.gmail.com>
Subject: Re: [yocto] How to install files in root directory
To: yocto@lists.yoctoproject.org, hassanchattarki@gmail.com
Content-Type: multipart/alternative; boundary="00000000000016681b06286b2e95"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Dec 2024 05:37:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64397

--00000000000016681b06286b2e95
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Here is the recipe snippet to follow for the issue your facing.

DESCRIPTION =3D "Install custom files to /root directory"
LICENSE =3D "CLOSED"
LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D<your-md5-here>"

SRC_URI =3D "file://my-binary \
           file://my-config-file"

S =3D "${WORKDIR}"

do_install() {
    # Create the /root directory in the target filesystem
    install -d ${D}${sysconfdir}/root

    # Install your binary and config file
    install -m 0755 ${WORKDIR}/my-binary ${D}/root/my-binary
    install -m 0644 ${WORKDIR}/my-config-file ${D}/root/my-config-file
}

FILES_${PN} +=3D "/root"

On Wed, Dec 4, 2024 at 10:22=E2=80=AFAM MOHAMMED HASSAN via lists.yoctoproj=
ect.org
<hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hi guys,
> I am unable to install my files, binary, etc in the /root directory. I
> have searched the documentation and tried but to no avail.
> Please share some snippet or recipe code for my reference.
>
>
> Thanks
> Hassan
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64394):
> https://lists.yoctoproject.org/g/yocto/message/64394
> Mute This Topic: https://lists.yoctoproject.org/mt/109914791/8556823
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> posinaaravind0205@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000016681b06286b2e95
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Here is the recipe snippet to follow for the issue=C2=A0yo=
ur facing.<br><br>DESCRIPTION =3D &quot;Install custom files to /root direc=
tory&quot;<br>LICENSE =3D &quot;CLOSED&quot;<br>LIC_FILES_CHKSUM =3D &quot;=
file://LICENSE;md5=3D&lt;your-md5-here&gt;&quot;<br><br>SRC_URI =3D &quot;f=
ile://my-binary \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://my-con=
fig-file&quot;<br><br>S =3D &quot;${WORKDIR}&quot;<br><br>do_install() {<br=
>=C2=A0 =C2=A0 # Create the /root directory in the target filesystem<br>=C2=
=A0 =C2=A0 install -d ${D}${sysconfdir}/root<br><br>=C2=A0 =C2=A0 # Install=
 your binary and config file<br>=C2=A0 =C2=A0 install -m 0755 ${WORKDIR}/my=
-binary ${D}/root/my-binary<br>=C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/my-=
config-file ${D}/root/my-config-file<br>}<br><br>FILES_${PN} +=3D &quot;/ro=
ot&quot;<br></div><br><div class=3D"gmail_quote gmail_quote_container"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 4, 2024 at 10:22=E2=80=AFAM M=
OHAMMED HASSAN via <a href=3D"http://lists.yoctoproject.org">lists.yoctopro=
ject.org</a> &lt;hassanchattarki=3D<a href=3D"mailto:gmail.com@lists.yoctop=
roject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">Hi guys,<div dir=3D"auto">I am =
unable to install my files, binary, etc in the /root directory. I have sear=
ched the documentation and tried but to no avail.=C2=A0</div><div dir=3D"au=
to">Please share some snippet or recipe code for my reference.</div><div di=
r=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks</=
div><div dir=3D"auto">Hassan</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64394): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64394" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64394</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/109914791/855=
6823" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/109914791/8556823</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:posinaaravind0205@gmail.com" target=3D"_blank">p=
osinaaravind0205@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000016681b06286b2e95--

