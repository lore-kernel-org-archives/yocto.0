Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
 by mx.groups.io with SMTP id smtpd.web10.13226.1605809426998945659
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 10:10:27 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@lists.yoctoproject.org header.s=20140610 header.b=a6grFpr2;
 spf=softfail (domain: lists.yoctoproject.org, ip: 92.39.20.236, mailfrom: yocto@lists.yoctoproject.org)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Thu, 19 Nov 2020 09:12:04 +0000
X-Sender: bounce+53643+51428+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 9202
X-Received: by 127.0.0.2 with SMTP id 3yniYY3619394xTgylaSzycJ; Thu, 19 Nov 2020 01:06:42 -0800
X-Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46]) by mx.groups.io
 with SMTP id smtpd.web10.6327.1605775199764180918 for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 00:39:59 -0800
X-Received: by mail-vs1-f46.google.com with SMTP id h185so2608904vsc.3        for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 00:39:59 -0800 (PST)
X-Gm-Message-State: JeduewnJG6pSbrtsPGeE6k68x3618059AA=
X-Google-Smtp-Source: ABdhPJyKZKtUiNEX8SS19aeiCgReOh8DhaATkVzV3Jyna4VzEnHUoGrlN2Em2cLQVT6P61jOi36UNRWDDDLx8so/2PI=
X-Received: by 2002:a67:7d8b:: with SMTP id y133mr8273261vsc.20.1605775198823; Thu, 19 Nov 2020 00:39:58 -0800 (PST)
MIME-Version: 1.0
References: <1648D8FA1BEC786F.8629@lists.yoctoproject.org>
In-Reply-To: <1648D8FA1BEC786F.8629@lists.yoctoproject.org>
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Thu, 19 Nov 2020 14:09:47 +0530
X-OldMsgId: <CAJw=dJ9p0YbqYgMa_7R0MhaLV+ioxx_p7fxn9w9DmFQA1KQ_Jw@mail.gmail.com>
Subject: Re: [yocto] Enaable to add binary in /usr/bin using .bb file
To: Nikhil Patil <nikhilvp29@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lists.yoctoproject.org; q=dns/txt; s=20140610;
 t=1605776802; bh=94IFQGu8jZ7DnAvVWXNz6/LmWUwrYG3TCeF1mVOuQwc=; h=Cc:Content-Type:Date:From:Subject:To;
 b=a6grFpr28JXTne5Xc4w3n43h8J649F/nziRcjrixQqhBGUCpxZLF/EDE7pypEiZnUTk TsdQ5x8i/C9A4YuV7zh+8CZoI6+etV+WmoUMEgWL8u1WAZjfgaFTn/k+kCUq/4BPEB4+l NYauCBuBpQJN7hHde+fiUULGq8tAmrbPBgc=
Return-Path: bounce+53643+51428+3618059+6691491@lists.yoctoproject.org
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of yocto@lists.yoctoproject.org designates 66.175.222.12
 as permitted sender) receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
Message-ID: <63d845aca5a14da4897416a01a5ebddb@Exchange.sewerin.de>
Content-Type: multipart/mixed; boundary="5HYd3qfQp48u4otnlSM4"

--5HYd3qfQp48u4otnlSM4
Content-Type: multipart/alternative; boundary="00000000000050a7d005b471ac39"

--00000000000050a7d005b471ac39
Content-Type: text/plain; charset="UTF-8"
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {C9005388-4EF6-4839-A63E-4DAA8C5A70CF}

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
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {CC65AA34-5B44-451F-AB85-21610A6E1CDB}

<div>Hi ,<div>=C2=A0 =C2=A0 If anyone know=C2=A0, please help on these .</di=
v></div><br><div class=3D"gmail_quote"><div class=3D"gmail_attr">On Thu, Nov=
 19, 2020 at 1:14 PM NIKHIL PATIL via <a href=3D"http://lists.yoctoproject.o=
rg">lists.yoctoproject.org</a> &lt;nikhilvp29=3D<a href=3D"mailto:gmail.com@=
lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div>Hi ,<div>=C2=A0 =C2=
=A0 I want to add binary in /usr/bin , for these i made=C2=A0own .bb file (<=
a href=3D"http://obexpushtest.bb">obexpushtest.bb</a>),=C2=A0 =C2=A0 =C2=A0 =
When i am compiling obexpushtest=C2=A0package separately that time it is com=
piling fine=C2=A0 , but when i am adding obexpushtest in local.conf as a IMA=
GE_INSTALL , i am getting error.</div><div><br></div><div>## Error=C2=A0:-</=
div><div><br></div><div>/data/nikhil/inti_dmsv/yocto_build/build/tmp/work/in=
tel_corei7_64-poky-linux/core-image-intel/1.0-r0/oe-rootfs-repo<br>Last meta=
data expiration check: 0:00:01 ago on Thu 19 Nov 2020 05:57:19 AM UTC.<br>No=
 match for argument: obexpushtest<br>Error: Unable to find a match<br></div>=
<div>=C2=A0 =C2=A0=C2=A0</div><div>## <a href=3D"http://obexpushtest.bb">obe=
xpushtest.bb</a> file :-</div><div><br></div><div>=C2=A0 =C2=A0 # file recip=
es-kernel/linux-firmware/linux-firmware_%.bbappend</div>SUMMARY =3D &quot;ts=
et_mount example&quot;<br>SECTION =3D &quot;test_mount&quot;<br>LICENSE =3D =
&quot;MIT&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://${COMMON_LICENSE_DIR}/M=
IT;md5=3D0835ade698e0bcf8506ecda2f7b4f302&quot;<br><br>S =3D &quot;${WORKDIR=
}&quot;<br><br>SRC_URI +=3D &quot;file://obexpushd&quot;<br><br>INSANE_SKIP_=
${PN} =3D &quot;ldflags&quot;<br>INHIBIT_PACKAGE_DEBUG_SPLIT =3D &quot;1&quo=
t;<br>INHIBIT_PACKAGE_STRIP =3D &quot;1&quot;<br><br>do_install_append () {<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}/${bindir}<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 install -m 0644 ${WORKDIR}/obexpushd ${D}/${bindir}<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 cp ${WORKDIR}/obexpushd ${D}/${bindir}<br>}<br><br># NOTE:=
 Use &quot;=3D+&quot; instead of &quot;+=3D&quot;. Otherwise, the file is pl=
aced into the linux-firmware package.<br>PACKAGES =3D+ &quot;${PN}-example&q=
uot;<br>FILES_${PN}-example =3D &quot;/usr/bin/obexpushd&quot;<br><div><br><=
/div><div><br></div><div><br></div><div><br></div><div><br></div></div>
<br>
<br>
<br>
</blockquote></div>

--00000000000050a7d005b471ac39--

--5HYd3qfQp48u4otnlSM4--
