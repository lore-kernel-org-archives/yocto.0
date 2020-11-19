Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
 by mx.groups.io with SMTP id smtpd.web10.6327.1605775199764180918
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 00:39:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NmLDtwOJ;
 spf=pass (domain: gmail.com, ip: 209.85.217.46, mailfrom: nikhilvp29@gmail.com)
Received: by mail-vs1-f46.google.com with SMTP id h185so2608904vsc.3
        for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 00:39:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IQ8inNLOFFhX6KMeQQ2KPtcRY6AcGM8CR8TaaVi1PEU=;
        b=NmLDtwOJNZDNL7AHiG4cnBcbwBwVzXfqsZa0Yr90KO/3ezu7dQ14UQunT2L9RKNBno
         uENrwT0pxj9at0URJIVsib/+P6DzRbKcABuO9X6D4pVe9T7FkSAldBhWjcNIf4yNZ1XG
         aY0/8vkhEIZRL0AthSkB3JEmPyoPQRo+NG1KgPOssaMbKVNWXnc+9d2p7K9cCAUldYWs
         zmpOr0P78k/f34bjOn0xnp44aDS/4dt/HcHYilfqBTP5tR9K5piCJn/4Yt02+Ve3Zg1e
         tiHQpThX5iWSfDhoN+cm1yp5ehbtE/gBTVH0TBb93MRmZvanUb3LkNATuxoqx/kCgSSl
         w2kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IQ8inNLOFFhX6KMeQQ2KPtcRY6AcGM8CR8TaaVi1PEU=;
        b=qPTFu6+QASJ9s9BvXnnW/gtKSXZgf3Qa/tCBMdb2B5PiJabVf8sFqeEOhAAopJiFvv
         ARq7Z2bMgLpuDDm7+CdDZ60TDD5SSsHdvmLImqaWvW9h2+QVmxWd2OOWECEFF76RnOWg
         D8getRf0/vvlmC6W1Ipci6k+4FEtuDgn+EbChm5Gvf5AZX4gIWU8awosRvLREeGCah6O
         vaEtwtpib3Cwurp0dwWRMfQNhndrqXQQKmWt3rGjU9/rQf/kkSqyGyEhFWvfT7I2bQco
         6eqpLi5q5C/gcAoDRSCG5TGBCM4N383cFgKcFA19pXfYTqjs4xxaHfmslmyBs+ACvwMk
         7cTw==
X-Gm-Message-State: AOAM533JB7IFfPSteYoDOj0B08oPC1V7xoUt4RGfGtorqb4PP+b2RNSH
	lQ7vSZTTHSEakVZHY9hM1PPCPpjW4WIYKPs5AuI=
X-Google-Smtp-Source: ABdhPJyKZKtUiNEX8SS19aeiCgReOh8DhaATkVzV3Jyna4VzEnHUoGrlN2Em2cLQVT6P61jOi36UNRWDDDLx8so/2PI=
X-Received: by 2002:a67:7d8b:: with SMTP id y133mr8273261vsc.20.1605775198823;
 Thu, 19 Nov 2020 00:39:58 -0800 (PST)
MIME-Version: 1.0
References: <1648D8FA1BEC786F.8629@lists.yoctoproject.org>
In-Reply-To: <1648D8FA1BEC786F.8629@lists.yoctoproject.org>
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Thu, 19 Nov 2020 14:09:47 +0530
Message-ID: <CAJw=dJ9p0YbqYgMa_7R0MhaLV+ioxx_p7fxn9w9DmFQA1KQ_Jw@mail.gmail.com>
Subject: Re: [yocto] Enaable to add binary in /usr/bin using .bb file
To: Nikhil Patil <nikhilvp29@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000050a7d005b471ac39"

--00000000000050a7d005b471ac39
Content-Type: text/plain; charset="UTF-8"

Hi ,
    If anyone know , please help on these .

On Thu, Nov 19, 2020 at 1:14 PM NIKHIL PATIL via lists.yoctoproject.org
<nikhilvp29=gmail.com@lists.yoctoproject.org> wrote:

> Hi ,
>     I want to add binary in /usr/bin , for these i made own .bb file (
> obexpushtest.bb),      When i am compiling obexpushtest package
> separately that time it is compiling fine  , but when i am adding
> obexpushtest in local.conf as a IMAGE_INSTALL , i am getting error.
>
> ## Error :-
>
>
> /data/nikhil/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-intel/1.0-r0/oe-rootfs-repo
> Last metadata expiration check: 0:00:01 ago on Thu 19 Nov 2020 05:57:19 AM
> UTC.
> No match for argument: obexpushtest
> Error: Unable to find a match
>
> ## obexpushtest.bb file :-
>
>     # file recipes-kernel/linux-firmware/linux-firmware_%.bbappend
> SUMMARY = "tset_mount example"
> SECTION = "test_mount"
> LICENSE = "MIT"
> LIC_FILES_CHKSUM =
> "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
>
> S = "${WORKDIR}"
>
> SRC_URI += "file://obexpushd"
>
> INSANE_SKIP_${PN} = "ldflags"
> INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
> INHIBIT_PACKAGE_STRIP = "1"
>
> do_install_append () {
>         install -d ${D}/${bindir}
>         install -m 0644 ${WORKDIR}/obexpushd ${D}/${bindir}
>         cp ${WORKDIR}/obexpushd ${D}/${bindir}
> }
>
> # NOTE: Use "=+" instead of "+=". Otherwise, the file is placed into the
> linux-firmware package.
> PACKAGES =+ "${PN}-example"
> FILES_${PN}-example = "/usr/bin/obexpushd"
>
>
>
>
>
>
> 
>
>

--00000000000050a7d005b471ac39
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi ,<div>=C2=A0 =C2=A0 If anyone know=C2=A0, please help o=
n these .</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Nov 19, 2020 at 1:14 PM NIKHIL PATIL via <a href=
=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;nikhilvp=
29=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yo=
ctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr">Hi ,<div>=C2=A0 =C2=A0 I want to add binary =
in /usr/bin , for these i made=C2=A0own .bb file (<a href=3D"http://obexpus=
htest.bb" target=3D"_blank">obexpushtest.bb</a>),=C2=A0 =C2=A0 =C2=A0 When =
i am compiling obexpushtest=C2=A0package separately that time it is compili=
ng fine=C2=A0 , but when i am adding obexpushtest in local.conf as a IMAGE_=
INSTALL , i am getting error.</div><div><br></div><div>## Error=C2=A0:-</di=
v><div><br></div><div>/data/nikhil/inti_dmsv/yocto_build/build/tmp/work/int=
el_corei7_64-poky-linux/core-image-intel/1.0-r0/oe-rootfs-repo<br>Last meta=
data expiration check: 0:00:01 ago on Thu 19 Nov 2020 05:57:19 AM UTC.<br>N=
o match for argument: obexpushtest<br>Error: Unable to find a match<br></di=
v><div>=C2=A0 =C2=A0=C2=A0</div><div>## <a href=3D"http://obexpushtest.bb" =
target=3D"_blank">obexpushtest.bb</a> file :-</div><div><br></div><div>=C2=
=A0 =C2=A0 # file recipes-kernel/linux-firmware/linux-firmware_%.bbappend<=
/div>SUMMARY =3D &quot;tset_mount example&quot;<br>SECTION =3D &quot;test_m=
ount&quot;<br>LICENSE =3D &quot;MIT&quot;<br>LIC_FILES_CHKSUM =3D &quot;fil=
e://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302&quot;<=
br><br>S =3D &quot;${WORKDIR}&quot;<br><br>SRC_URI +=3D &quot;file://obexpu=
shd&quot;<br><br>INSANE_SKIP_${PN} =3D &quot;ldflags&quot;<br>INHIBIT_PACKA=
GE_DEBUG_SPLIT =3D &quot;1&quot;<br>INHIBIT_PACKAGE_STRIP =3D &quot;1&quot;=
<br><br>do_install_append () {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${=
D}/${bindir}<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/obex=
pushd ${D}/${bindir}<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 cp ${WORKDIR}/obexpushd=
 ${D}/${bindir}<br>}<br><br># NOTE: Use &quot;=3D+&quot; instead of &quot;+=
=
=3D&quot;. Otherwise, the file is placed into the linux-firmware package.<=
br>PACKAGES =3D+ &quot;${PN}-example&quot;<br>FILES_${PN}-example =3D &quot=
;/usr/bin/obexpushd&quot;<br><div><br></div><div><br></div><div><br></div><=
div><br></div><div><br></div></div>
<br>
<br>
<br>
</blockquote></div>

--00000000000050a7d005b471ac39--
