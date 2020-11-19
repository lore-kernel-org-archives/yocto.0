Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
 by mx.groups.io with SMTP id smtpd.web09.13401.1605809639838763573
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 10:14:00 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@lists.yoctoproject.org header.s=20140610 header.b=Hf9VkWo+;
 spf=softfail (domain: lists.yoctoproject.org, ip: 92.39.20.236, mailfrom: yocto@lists.yoctoproject.org)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Thu, 19 Nov 2020 08:44:10 +0000
X-Sender: bounce+53643+51427+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 8183
X-Received: by 127.0.0.2 with SMTP id WULTYY3619394xLgEqDeNajz; Thu, 19 Nov 2020 00:43:57 -0800
X-Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172]) by mx.groups.io
 with SMTP id smtpd.web12.5924.1605771835497601122 for <yocto@lists.yoctoproject.org>; Wed, 18 Nov 2020 23:43:55 -0800
X-Received: by mail-vk1-f172.google.com with SMTP id u16so1136287vkb.1        for <yocto@lists.yoctoproject.org>; Wed, 18 Nov 2020 23:43:55 -0800 (PST)
X-Gm-Message-State: OjHmBdfnXGGbBWRHmQAMV455x3618059AA=
X-Google-Smtp-Source: ABdhPJw4HTthy4VlNflGAkM9N0Dv4M7gDSAruCPWQSMvA7q78fPVcbMzqI+9PeCQF1W5xvfIe4yFcPx4zXrkFfu2Fw0=
X-Received: by 2002:a1f:dbc3:: with SMTP id s186mr7646321vkg.17.1605771834242; Wed, 18 Nov 2020 23:43:54 -0800 (PST)
MIME-Version: 1.0
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Thu, 19 Nov 2020 13:13:43 +0530
X-OldMsgId: <CAJw=dJ9E4e1g_V1NnZj6adf415GAK_DO1VNjS3EmnJXyTiEiQA@mail.gmail.com>
Subject: [yocto] Enaable to add binary in /usr/bin using .bb file
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lists.yoctoproject.org; q=dns/txt; s=20140610;
 t=1605775437; bh=GoiqfDwUw5iRI9DEJeTQs9uJ2i2YNqXZDb2jDWrVivc=; h=Content-Type:Date:From:Subject:To;
 b=Hf9VkWo+SaWSqbhTB0R6k7f3Ml3+Amb8JnlPSL6bxJKKyx3B/hIxSRPpcFEZgniHiII d6c+fskd7MTiXemVHm0QlfgX3ZX04PHVroU6/ptNhYYMgDup4Wgfnbdhrgdk1dArh0lQi VTdp6Z1fVLEFIoTBcrCrnXyoV/swtIIFFIs=
Return-Path: bounce+53643+51427+3618059+6691491@lists.yoctoproject.org
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of yocto@lists.yoctoproject.org designates 66.175.222.12
 as permitted sender) receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
Message-ID: <9aac766c35824e3db181eea1837e98f4@Exchange.sewerin.de>
Content-Type: multipart/mixed; boundary="l0RzbJPSPfyBuDo6htx9"

--l0RzbJPSPfyBuDo6htx9
Content-Type: multipart/alternative; boundary="000000000000c53ab505b470e30f"

--000000000000c53ab505b470e30f
Content-Type: text/plain; charset="UTF-8"
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {6F63C7C8-8314-4413-8FCC-8B2471022946}

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
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {5AD80053-05A4-4ADD-B723-C57207F13373}

<div>Hi ,<div>=C2=A0 =C2=A0 I want to add binary in /usr/bin , for these i m=
ade=C2=A0own .bb file (<a href=3D"http://obexpushtest.bb">obexpushtest.bb</a=
>),=C2=A0 =C2=A0 =C2=A0 When i am compiling obexpushtest=C2=A0package separa=
tely that time it is compiling fine=C2=A0 , but when i am adding obexpushtes=
t in local.conf as a IMAGE_INSTALL , i am getting error.</div><div><br></div=
><div>## Error=C2=A0:-</div><div><br></div><div>/data/nikhil/inti_dmsv/yocto=
_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-intel/1.0-r0/oe-=
rootfs-repo<br>Last metadata expiration check: 0:00:01 ago on Thu 19 Nov 202=
0 05:57:19 AM UTC.<br>No match for argument: obexpushtest<br>Error: Unable t=
o find a match<br></div><div>=C2=A0 =C2=A0=C2=A0</div><div>## <a href=3D"htt=
p://obexpushtest.bb">obexpushtest.bb</a> file :-</div><div><br></div><div>=C2=
=A0 =C2=A0 # file recipes-kernel/linux-firmware/linux-firmware_%.bbappend</d=
iv>SUMMARY =3D &quot;tset_mount example&quot;<br>SECTION =3D &quot;test_moun=
t&quot;<br>LICENSE =3D &quot;MIT&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://=
${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302&quot;<br><b=
r>S =3D &quot;${WORKDIR}&quot;<br><br>SRC_URI +=3D &quot;file://obexpushd&qu=
ot;<br><br>INSANE_SKIP_${PN} =3D &quot;ldflags&quot;<br>INHIBIT_PACKAGE_DEBU=
G_SPLIT =3D &quot;1&quot;<br>INHIBIT_PACKAGE_STRIP =3D &quot;1&quot;<br><br>=
do_install_append () {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}/${bind=
ir}<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/obexpushd ${D}=
/${bindir}<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 cp ${WORKDIR}/obexpushd ${D}/${bin=
dir}<br>}<br><br># NOTE: Use &quot;=3D+&quot; instead of &quot;+=3D&quot;. O=
therwise, the file is placed into the linux-firmware package.<br>PACKAGES =3D=
+ &quot;${PN}-example&quot;<br>FILES_${PN}-example =3D &quot;/usr/bin/obexpu=
shd&quot;<br><div><br></div><div><br></div><div><br></div><div><br></div><di=
v><br></div></div>

--000000000000c53ab505b470e30f--

--l0RzbJPSPfyBuDo6htx9--
