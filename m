Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web08.7180.1631193347042618782
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Sep 2021 06:15:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=V7LRLJcx;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: ashutosh.naik@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id h16so3631090lfk.10
        for <yocto@lists.yoctoproject.org>; Thu, 09 Sep 2021 06:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=2euhWKqixh1XdVD1BJ1Nrv2nC+XUHT1DpPjD69gwkKs=;
        b=V7LRLJcxpF454NJfUeYcO2COgxKO90lSfgTN/rN2hd2T86P+hi2Mh0u+Vc4dQcH3Eb
         HzUlH+/Bt0b/KMjc2eJPa2N+m0vL//0n/LL0LfBpSBSq+EfF7gfp4rgRuG3eZ9OT/esH
         kJcTy4lOfny9j2pCV4djiM8EnwLAHIa6sSVEUlBRJKDwMOvcAXbJ5C6C88pC0xtNwFWp
         YHkUsGT1q4r4+HcR6Tk6cqL8v0n1DkAyTgpYlQ1sQm73v+I35HaU0IsOX4WhFRYXuIIB
         SFzuE2bXNQ4aFcdhNJtZlh4Fr1/4ZEfKcsnbm6RRGpR09WRtXcp1SZDgNUY8DSgc1NfP
         SKxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=2euhWKqixh1XdVD1BJ1Nrv2nC+XUHT1DpPjD69gwkKs=;
        b=weWq8WH3gXlEApVT/LpIJ5M07ec2Wnl6juRtTKfeypWrDMBeX2toabdDcCS9mT92n5
         qGqZnfkcWMksk5RExKX7L7wRmhk66EOX/eKiFWeK9Div6KPUZuvFXqlnIJCIM8s7LfAA
         iHVvdILcixb32BUif/pYj73nY3IokrzhxS4jjszjqSux7JaaaP33PSgsjfvCtVR7Sra8
         FkJqRP/yvRNkXUnxBE78QaUCbgVOQ6XfXMnZvpxyBnVaIjQdy9lenA5CNdjGnRQee10Q
         u+eng8j+8q4GvbYqnWiJexbo2pCU5j0QbNreDPDrr5qjSb2xtOWtUWWFCoorqcvMhDwT
         HXhg==
X-Gm-Message-State: AOAM53298/B+9SfmuRW0yo30DzgFa/TFHxoLwY5R3qrys/qhZ0gIMKLh
	XByT9j+IHkPxaBts0MKRARcqo+Qy61SHhlplwdB5WWO81F/MzQ==
X-Google-Smtp-Source: ABdhPJxcy4sfPxZYEQtUjhhMUBT8jiP/oNRihHpcudDNsS70+o56xCwhryqdQRcM87YAOfjViGajzMvGGGTiHG8aDmM=
X-Received: by 2002:a05:6512:32c6:: with SMTP id f6mr2310690lfg.292.1631193344110;
 Thu, 09 Sep 2021 06:15:44 -0700 (PDT)
MIME-Version: 1.0
From: "Ashutosh Naik" <ashutosh.naik@gmail.com>
Date: Thu, 9 Sep 2021 14:15:31 +0100
Message-ID: <CAAJeOA9TPCfFCPmzKC6Qygkjd4WfVBrkHuiRqG0gR_8LWcqX1A@mail.gmail.com>
Subject: yocto library build needs ldconfig to start working
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d5f3da05cb8fcb67"

--000000000000d5f3da05cb8fcb67
Content-Type: text/plain; charset="UTF-8"

I have a rather simple bitbake package which adds a shared library foo.so
to the system in /usr/lib/. However, on first boot, I am always forced to
do an explicit "ldconfig" for the library to be detected by the
applications. Subsequent reboots do not need an ldconfig.

Can I avoid this ldconfig step ? As all other libraries work fine without
it.

Here is my .bb file :

DESCRIPTION = "FOO library"
DEPENDS = "bar"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=00006733ca3231dd8b07dde266d4d4e4"
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

SRC_URI = "file://foo-1.0.tar.gz"
S = "${WORKDIR}/foo-1.0"

inherit autotools pkgconfig

BBCLASSEXTEND = "native nativesdk"
EXTRA_OEMAKE = '-C ${S} FOO_BITBAKE=yes'
FILES_${PN} += "/usr/lib/*.so"

do_compile() {
    oe_runmake
}

do_install()
    oe_runmake DESTDIR=${D} install
}

Thanks for your help!
Ash

--000000000000d5f3da05cb8fcb67
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have a rather simple bitbake package which adds a shared=
 library=C2=A0foo.so to the system in /usr/lib/. However, on first boot, I =
am always forced to do an explicit=C2=A0&quot;ldconfig&quot; for the librar=
y to be detected by the applications. Subsequent reboots do not need an ldc=
onfig.<div><br></div><div>Can I avoid this ldconfig step ? As all other lib=
raries work fine without it.</div><div><br></div><div>Here is my .bb file :=
</div><div><br></div><div>DESCRIPTION =3D &quot;FOO library&quot;<br>DEPEND=
S =3D &quot;bar&quot;<br>LICENSE =3D &quot;MIT&quot;<br>LIC_FILES_CHKSUM =
=3D &quot;file://LICENSE.txt;md5=3D00006733ca3231dd8b07dde266d4d4e4&quot;<b=
r>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}-${PV}:&quot;<br><br>S=
RC_URI =3D &quot;file://foo-1.0.tar.gz&quot;<br>S =3D &quot;${WORKDIR}/foo-=
1.0&quot;<br><br>inherit autotools pkgconfig<br><br>BBCLASSEXTEND =3D &quot=
;native nativesdk&quot;<br>EXTRA_OEMAKE =3D &#39;-C ${S} FOO_BITBAKE=3Dyes&=
#39;<br>FILES_${PN} +=3D &quot;/usr/lib/*.so&quot;<br><br>do_compile() {<br=
>=C2=A0 =C2=A0 oe_runmake<br>}<br><br>do_install()=C2=A0<br>=C2=A0 =C2=A0 o=
e_runmake DESTDIR=3D${D} install<br>}<br></div><div><br></div><div>Thanks f=
or your help!</div><div>Ash</div></div>

--000000000000d5f3da05cb8fcb67--
