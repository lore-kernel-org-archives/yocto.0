Return-Path: <maik.vermeulen@lightyear.one>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DEF6C00140
	for <webhook@archiver.kernel.org>; Wed, 10 Aug 2022 15:20:36 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web12.7072.1660144832849413195
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Aug 2022 08:20:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lightyear.one header.s=google header.b=dd15IQJ9;
 spf=pass (domain: lightyear.one, ip: 209.85.208.41,
 mailfrom: maik.vermeulen@lightyear.one)
Received: by mail-ed1-f41.google.com with SMTP id f22so19496198edc.7
        for <yocto@lists.yoctoproject.org>;
 Wed, 10 Aug 2022 08:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lightyear.one; s=google;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=1Q9zDMDIBIQgJacBoSPniJ4ZHD8/cFUSKbNB+cVWOFQ=;
        b=dd15IQJ9qmN3yjU00V5wT/Qwh0ZxQjdLs7CMYhyEck+dPwOZuHnoupgChG4euyRvwS
         byZn7/YcamTuPo/pObbJ23a6nIwlzm9InD+oCAoDpldwwepQ9wQsyWM8Sc9flkx4julK
         wAWnNEdXhK2G9Kka2pQ9z1JgzmId2GLSfRJEZiYuLFcPPklCUf7Dn8yW/36oNWhP9L4K
         2yaMC6FT9zKrz3RsYcPmqn23r3Gy6dOwPMXh6pdnBQnOAMRkzC0wocMS1ITF57OhgsQ2
         AJ/il3dvDnopIrYDngTw+XOC/OaYX37cx0wtvfL9EjLPJYLxon2QkmZr45PlAY0PbZmz
         26/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=1Q9zDMDIBIQgJacBoSPniJ4ZHD8/cFUSKbNB+cVWOFQ=;
        b=Sh+UimfWqDN8jC4oNBcwmiruoAEwA83Xu5NASPeV/aOtqm4EHl1UgVZIyaaRlHW7Nk
         hIYHVFXPt5jmiuHY5wGRSxnn9KXAgxZlMURvZGGIZ+hm1+BR10DR3BPCki8GBcrOOQ1t
         /84/2iHAlb1vjAlaOtW9RbO1bR/5CUI4el2c36LVN81c5XIPFVRG3ZcNMQyx6RkhnQAM
         AAmfuJt6jaeH7gEtf9c6qouqDtRHw3IBNxmI2b6a1hdNMbQZG8EYPzyOHIlmywFdu2nQ
         +95+ybydVkOo/UuAXjyf1sr1Lg9xu6wZfnPnECMsRoRYflgRwzmzdM7yZm8h2bJENbpo
         4W4Q==
X-Gm-Message-State: ACgBeo2Wy3LZEeLtVsoje8npqmVCDR31uhNbP7ZirhI+lG7mhZv9auUM
	mKdzWUPLg2lyZ+hGeIJv32KRT1zGjlI3fgJkCAypZp4JPliBok3t3MpA8xJG3ACpJHVsb++6XKU
	e3TWUv8chVMgnXNCCYuDaLb0k6RsT0Ajc7fOM7tE37g==
X-Google-Smtp-Source: 
 AA6agR5/vJ9N4YEXUL1Iv5YPedRp+s8DhxNeKbEK7F7aCTvGx674vukv1abhPAkbN2dMqACtjHkr0X9bdur2d2E1YIo=
X-Received: by 2002:a05:6402:5418:b0:435:5a48:daa9 with SMTP id
 ev24-20020a056402541800b004355a48daa9mr26978239edb.304.1660144830885; Wed, 10
 Aug 2022 08:20:30 -0700 (PDT)
MIME-Version: 1.0
From: Maik Vermeulen <maik.vermeulen@lightyear.one>
Date: Wed, 10 Aug 2022 17:19:53 +0200
Message-ID: 
 <CAKO9uzoumrOvHtcRbCJ-kx=R6dnUOsgdQwHkkjVP6TzTHMEy+g@mail.gmail.com>
Subject: Recipe with kernel configuration fragment
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ebd5e205e5e49600"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Aug 2022 15:20:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57818

--000000000000ebd5e205e5e49600
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

For a firewall recipe using nftables we need to make some kernel
configuration changes.
At first we added the needed CONFIG_ lines to a bbappend in the
recipes-kernel directory of our own layer, but I think it would be neater
to include the CONFIG_ changes in the recipe that needs them, if possible.

So I tried:
SRC_URI =3D " \
    file://nftables.service \
    file://nftables.conf \
"

RDEPENDS_${PN} +=3D " \
    nftables \
"

inherit systemd

SYSTEMD_AUTO_ENABLE =3D "enable"
SYSTEMD_SERVICE_${PN} =3D "nftables.service"

do_install_append() {
  install -d ${D}/${systemd_unitdir}/system
  install -m 0644 ${WORKDIR}/nftables.service ${D}/${systemd_unitdir}/syste=
m

  install -d ${D}/${sysconfdir}/nftables
  install -m 0644 ${WORKDIR}/nftables.conf ${D}/${sysconfdir}/nftables
}

FILES_${PN} +=3D "${systemd_unitdir}/system/nftables.service"
FILES_${PN} +=3D "${sysconfdir}/nftables/nftables.conf"

# Make the required changes to the kernel configuration
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"

SRC_URI +=3D " \
  file://nftables-kernel.cfg \
"

But unfortunately, the CONFIG_ changes in the nftables-kernel.cfg are not
being applied..

Any hints? Thanks!

Kind regards,

Maik Vermeulen

Embedded Software Engineer =E2=80=94 Lightyear
+31 6 16 82 73 79

--=20
=20
<https://lightyear.one/careers?utm_source=3Dsignature&utm_campaign=3Dspotli=
ghtroles&utm_medium=3Demail#vacancies>

--=20


Automotive Campus 70 =E2=80=945708 JZ Helmond, the Netherlands
www.lightyear.one=20
<https://lightyear.one/>
 <https://www.linkedin.com/company/lightyear.one/>

This email may contain information which is privileged and/or=20
confidential. If you received this e-mail in error, please notify us=20
immediately by e-mail and delete the email without copying or disclosing=20
its contents to any other person. Lightyear is a trade name of Atlas=20
Technologies B.V. and is registered at the Dutch Chamber of Commerce under=
=20
number 67264298.=C2=A0

--000000000000ebd5e205e5e49600
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>For a firewall recipe using nftables we need to=
 make some kernel configuration changes.<br>At first we added the needed CO=
NFIG_ lines to a bbappend in the recipes-kernel directory of our own layer,=
 but I think it would be neater to include the CONFIG_ changes in the recip=
e that needs them, if possible.<br><br>So I tried:<br><font size=3D"1">SRC_=
URI =3D &quot; \<br>=C2=A0 =C2=A0 file://nftables.service \<br>=C2=A0 =C2=
=A0 file://nftables.conf \<br>&quot;<br><br>RDEPENDS_${PN} +=3D &quot; \<br=
>=C2=A0 =C2=A0 nftables \<br>&quot;<br><br>inherit systemd<br><br>SYSTEMD_A=
UTO_ENABLE =3D &quot;enable&quot;<br>SYSTEMD_SERVICE_${PN} =3D &quot;nftabl=
es.service&quot;<br><br>do_install_append() {<br>=C2=A0 install -d ${D}/${s=
ystemd_unitdir}/system<br>=C2=A0 install -m 0644 ${WORKDIR}/nftables.servic=
e ${D}/${systemd_unitdir}/system<br><br>=C2=A0 install -d ${D}/${sysconfdir=
}/nftables<br>=C2=A0 install -m 0644 ${WORKDIR}/nftables.conf ${D}/${syscon=
fdir}/nftables<br>}<br><br>FILES_${PN} +=3D &quot;${systemd_unitdir}/system=
/nftables.service&quot;<br>FILES_${PN} +=3D &quot;${sysconfdir}/nftables/nf=
tables.conf&quot;<br><br># Make the required changes to the kernel configur=
ation<br>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}-${PV}:&quot;<b=
r><br>SRC_URI +=3D &quot; \<br>=C2=A0 file://nftables-kernel.cfg \<br>&quot=
;</font><br><br>But unfortunately, the CONFIG_ changes in the nftables-kern=
el.cfg are not being applied..<div><br></div><div>Any hints? Thanks!<br><br=
>Kind regards,<br><br>Maik Vermeulen<br><br>Embedded Software Engineer=E2=
=80=82=E2=80=94=E2=80=82Lightyear<br>+31 6 16 82 73 79</div></div>

<br>
<a href=3D"https://lightyear.one/careers?utm_source=3Dsignature&amp;utm_cam=
paign=3Dspotlightroles&amp;utm_medium=3Demail#vacancies" target=3D"_blank">=
<img src=3D"https://f.hubspotusercontent40.net/hubfs/2629990/lightyear_recr=
uitment_banner.gif" alt=3D"https://lightyear.one/careers?utm_source=3Dsigna=
ture&amp;utm_campaign=3Dspotlightroles&amp;utm_medium=3Demail#vacancies"></=
a><br><div><br></div>
<br>
<br><br><div style=3D"text-align:center"><font size=3D"2">Automotive Campus=
 70 =E2=80=945708 JZ Helmond, the Netherlands</font></div><div style=3D"tex=
t-align:center"><a href=3D"https://lightyear.one/" target=3D"_blank"><font =
size=3D"2">www.lightyear.one</font></a><a href=3D"https://www.linkedin.com/=
company/lightyear.one/" target=3D"_blank"><br></a></div><br><div style=3D"t=
ext-align:center"><span style=3D"color:rgb(128,128,128);font-size:x-small">=
This email may contain information which is privileged and/or confidential.=
 If you received this e-mail in error, please notify us immediately by e-ma=
il and delete the email without copying or disclosing its contents to any o=
ther person. Lightyear is a trade name of Atlas Technologies B.V. and is re=
gistered at the Dutch Chamber of Commerce under number 67264298.=C2=A0</spa=
n></div>
--000000000000ebd5e205e5e49600--

