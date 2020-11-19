Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
 by mx.groups.io with SMTP id smtpd.web12.5924.1605771835497601122
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Nov 2020 23:43:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=OyH+eNzt;
 spf=pass (domain: gmail.com, ip: 209.85.221.172, mailfrom: nikhilvp29@gmail.com)
Received: by mail-vk1-f172.google.com with SMTP id u16so1136287vkb.1
        for <yocto@lists.yoctoproject.org>; Wed, 18 Nov 2020 23:43:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=I2qS74luKFoXdrub14IStc4FknqM1ol2Gdcak/RRve0=;
        b=OyH+eNztHFk6zNmyp3REjdO1X/EsPdvzgq5cpsn1kR+eh884OgfoKaU7YOVq9EHn2f
         OznBpfiqi7pHfRmdCgYIA+U8v1vraPqdyS7S/ddKCj8BuDIRNPcSKrYLxmgYBg51vlcC
         mm+NWV067ZDN+nWnc0LN+YRTZ+YvStEE88zAEnry/DauOkqDmABYljPDo3IWb82VZzE2
         +3wpgubVzgXosMQuspLvBSHiaYEsnLZwIqzCKhmUq85Z6+yJNQr35c1k4hS41DkWovfX
         QqVONhwfj8YxKRrF6QtAMZZXstjY2aj1NDEoBjPXe64iS9nVy7S4syFQDk03hvqh3YHg
         BlkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=I2qS74luKFoXdrub14IStc4FknqM1ol2Gdcak/RRve0=;
        b=gb4ZofVEpU0e/P+lUc1hclo8nb41D88FBaJfr3nTYbWN5f3Mr3Oad5d8ubL81MzjzH
         FSCAAk7urrF/cBw2NomsyXqIB58zPUkCV6T14DzKEgdk/DxYILYBg2v2SXRLC3wZzkys
         ajd/gt+H9rnjw9/W7wurW9yG61lJyKUlrCemDuZxgHjauKYLn+sAqCsFqXnQaFzfIwEp
         FYEm2nH8UmbhNayv0juxQo8MjbRSLhumfkF4bW6fLHU5GuaPUhVlsvISSf2BvtwAG9hW
         jma0hqvqKMmJ6X6FpxdUUpJ8st7hq6lVTSeWFwMuLdRuN+l4EHBuwO8PyVIvvlPMP2l7
         30Fg==
X-Gm-Message-State: AOAM531lWqNGDbyylD7nhRRMa+FI+pgFMXGt2OtutBXEDcmYxn/q1Jij
	ZHojrTxHn8hiNGQzF1G+EADoH9LvZgVmpEIN0HB5HZv7/jfL7w==
X-Google-Smtp-Source: ABdhPJw4HTthy4VlNflGAkM9N0Dv4M7gDSAruCPWQSMvA7q78fPVcbMzqI+9PeCQF1W5xvfIe4yFcPx4zXrkFfu2Fw0=
X-Received: by 2002:a1f:dbc3:: with SMTP id s186mr7646321vkg.17.1605771834242;
 Wed, 18 Nov 2020 23:43:54 -0800 (PST)
MIME-Version: 1.0
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Thu, 19 Nov 2020 13:13:43 +0530
Message-ID: <CAJw=dJ9E4e1g_V1NnZj6adf415GAK_DO1VNjS3EmnJXyTiEiQA@mail.gmail.com>
Subject: Enaable to add binary in /usr/bin using .bb file
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c53ab505b470e30f"

--000000000000c53ab505b470e30f
Content-Type: text/plain; charset="UTF-8"

Hi ,
    I want to add binary in /usr/bin , for these i made own .bb file (
obexpushtest.bb),      When i am compiling obexpushtest package separately
that time it is compiling fine  , but when i am adding obexpushtest in
local.conf as a IMAGE_INSTALL , i am getting error.

## Error :-

/data/nikhil/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-intel/1.0-r0/oe-rootfs-repo
Last metadata expiration check: 0:00:01 ago on Thu 19 Nov 2020 05:57:19 AM
UTC.
No match for argument: obexpushtest
Error: Unable to find a match

## obexpushtest.bb file :-

    # file recipes-kernel/linux-firmware/linux-firmware_%.bbappend
SUMMARY = "tset_mount example"
SECTION = "test_mount"
LICENSE = "MIT"
LIC_FILES_CHKSUM =
"file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

S = "${WORKDIR}"

SRC_URI += "file://obexpushd"

INSANE_SKIP_${PN} = "ldflags"
INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
INHIBIT_PACKAGE_STRIP = "1"

do_install_append () {
        install -d ${D}/${bindir}
        install -m 0644 ${WORKDIR}/obexpushd ${D}/${bindir}
        cp ${WORKDIR}/obexpushd ${D}/${bindir}
}

# NOTE: Use "=+" instead of "+=". Otherwise, the file is placed into the
linux-firmware package.
PACKAGES =+ "${PN}-example"
FILES_${PN}-example = "/usr/bin/obexpushd"

--000000000000c53ab505b470e30f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi ,<div>=C2=A0 =C2=A0 I want to add binary in /usr/bin , =
for these i made=C2=A0own .bb file (<a href=3D"http://obexpushtest.bb">obex=
pushtest.bb</a>),=C2=A0 =C2=A0 =C2=A0 When i am compiling obexpushtest=C2=
=A0package separately that time it is compiling fine=C2=A0 , but when i am =
adding obexpushtest in local.conf as a IMAGE_INSTALL , i am getting error.<=
/div><div><br></div><div>## Error=C2=A0:-</div><div><br></div><div>/data/ni=
khil/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-i=
mage-intel/1.0-r0/oe-rootfs-repo<br>Last metadata expiration check: 0:00:01=
 ago on Thu 19 Nov 2020 05:57:19 AM UTC.<br>No match for argument: obexpush=
test<br>Error: Unable to find a match<br></div><div>=C2=A0 =C2=A0=C2=A0</di=
v><div>## <a href=3D"http://obexpushtest.bb">obexpushtest.bb</a> file :-</d=
iv><div><br></div><div>=C2=A0 =C2=A0 # file recipes-kernel/linux-firmware/l=
inux-firmware_%.bbappend</div>SUMMARY =3D &quot;tset_mount example&quot;<br=
>SECTION =3D &quot;test_mount&quot;<br>LICENSE =3D &quot;MIT&quot;<br>LIC_F=
ILES_CHKSUM =3D &quot;file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bc=
f8506ecda2f7b4f302&quot;<br><br>S =3D &quot;${WORKDIR}&quot;<br><br>SRC_URI=
 +=3D &quot;file://obexpushd&quot;<br><br>INSANE_SKIP_${PN} =3D &quot;ldfla=
gs&quot;<br>INHIBIT_PACKAGE_DEBUG_SPLIT =3D &quot;1&quot;<br>INHIBIT_PACKAG=
E_STRIP =3D &quot;1&quot;<br><br>do_install_append () {<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 install -d ${D}/${bindir}<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inst=
all -m 0644 ${WORKDIR}/obexpushd ${D}/${bindir}<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 cp ${WORKDIR}/obexpushd ${D}/${bindir}<br>}<br><br># NOTE: Use &quot;=
=3D+&quot; instead of &quot;+=3D&quot;. Otherwise, the file is placed into =
the linux-firmware package.<br>PACKAGES =3D+ &quot;${PN}-example&quot;<br>F=
ILES_${PN}-example =3D &quot;/usr/bin/obexpushd&quot;<br><div><br></div><di=
v><br></div><div><br></div><div><br></div><div><br></div></div>

--000000000000c53ab505b470e30f--
