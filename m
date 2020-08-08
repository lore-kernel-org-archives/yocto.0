Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web10.2185.1596877974056071653
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Aug 2020 02:12:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JcpTJif5;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: icegood1980@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id di22so2906835edb.12
        for <yocto@lists.yoctoproject.org>; Sat, 08 Aug 2020 02:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=L2eKz0LcajCcROKywHlQSthWEjeNlrjbDM5xrFcQQjM=;
        b=JcpTJif5FtBILTc6AmUMedA6s+HX8pIDowgLq+18PykJpsLT2PP7QNB7Dy/KMhDzmr
         I2k/sPvEM5N5EwQdpRvz27W1Kw4rzL6sUmrtMSPKkMJc1qa8GDhz82o7bO5iT2R6F9lV
         3kgNUcWA9y55L5YzODLtGtC1R9a9ts95ZWb/hF7ThNH85TI7nJF/lBrUb/8wmJAOhuiw
         uzAeWgCIsG2/4a1jJDTFGII6p7mu+MpM3tH6HI5LojKeLU9P7ttS871aw/oXJWbD5yUc
         1aLI9pBvaNk166nCeDsLIs/s3IpnEQbaqTEQGmD4wwNsOn7PnsBK8cpQg7gWUXt4OMu1
         +akA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=L2eKz0LcajCcROKywHlQSthWEjeNlrjbDM5xrFcQQjM=;
        b=o4IIBcVtAZ1GA1F+PfsbqIu1j18plF2V8ZC3YecY+wcRNuCQLCP8jgq3UJU8LR1fnU
         lqZwzD1WmIeY4wieBovXApE3k1OIXc0omm41vSw59AnMUQL0IgjJkNZmj6yKVhNNTE+A
         hMCk/t7BOuL7696nq5nBri9dmGzkkGsY0EVDtvw8A3hqTVZIs0xYVElWYp4MBWB7rOOP
         akaUka9eqiHRKXtBbqvdswgc/BASu6hCqHNZxPB3qdkKvxrC/pZYdMJAqlyJmIIokYB8
         XbZxKniO6aOOYq9OQwIO9iF0A30+efpixrBb5V4aJKe7mdo3XP+MoZt2mmAfdp/neh1o
         owLg==
X-Gm-Message-State: AOAM532Fv34weM4x6UXHXLXUIru2T09ZHKmeZtSagqYii25QdexUtWm7
	WF5rO3UocI+IKNn1UejMXzkDLjHhJ1uuqRZJ7cQ5Yf9VuuU=
X-Google-Smtp-Source: ABdhPJyqDgx2TSNweKJLOg9IdRQw0SDsCmWR+iQZ65vmtja5+3wCuj4y76AEe7aSyZmpH51Qw2YZOMca9CAtkjnyuLA=
X-Received: by 2002:a50:8f44:: with SMTP id 62mr13102240edy.3.1596877972158;
 Sat, 08 Aug 2020 02:12:52 -0700 (PDT)
MIME-Version: 1.0
From: icegood1980@gmail.com
Date: Sat, 8 Aug 2020 12:12:40 +0300
Message-ID: <CAJCbrz4uDGFA4qe7SxLrKR4kDEzJDxgAp=EROAiDPtiORe2RXw@mail.gmail.com>
Subject: yocto compile simple c++
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000047beb205ac5a2001"

--00000000000047beb205ac5a2001
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi there.
I'm newbie ib yocto and (of course) nothing works for me from scratch.
For testing purposes, i work with yocto 3.1 based on
5d47cdf448b6cff5bb7cc5b0ba0426b8235ec478 rev aka dunfell-23.0.0
MACHINE ?=3D "qemuarm" and DISTRO ?=3D "poky" (btw i tried poky-tony as wel=
l
but machine didn't start properly under qemu)

I created my new layer with next structure:
.
=E2=94=9C=E2=94=80=E2=94=80 conf
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 layer.conf
=E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT
=E2=94=9C=E2=94=80=E2=94=80 README
=E2=94=94=E2=94=80=E2=94=80 recipes-ice
    =E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT
    =E2=94=94=E2=94=80=E2=94=80 ice_helloworld
        =E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT
        =E2=94=9C=E2=94=80=E2=94=80 files
        =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT
        =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 ice_helloworld.cpp
        =E2=94=94=E2=94=80=E2=94=80 ice_helloworld_0.1.bb

(i copied COPYING.MIT to )every single place because of error below) and i
obtained:

NOTE: Executing Tasks
WARNING: ice_helloworld-helloworld-0.1 do_populate_lic: Could not copy
license file
/media/ice/slow_ext4/yocto_poky/build/tmp/work/armv7vet2hf-neon-poky-linux-=
gnueabi/ice_helloworld/helloworld-0.1/ice_helloworld-helloworld/COPYING.MIT
to
/media/ice/slow_ext4/yocto_poky/build/tmp/work/armv7vet2hf-neon-poky-linux-=
gnueabi/ice_helloworld/helloworld-0.1/license-destdir/ice_helloworld/COPYIN=
G.MIT:
[Errno 2] No such file or directory:
'/media/ice/slow_ext4/yocto_poky/build/tmp/work/armv7vet2hf-neon-poky-linux=
-gnueabi/ice_helloworld/helloworld-0.1/ice_helloworld-helloworld/COPYING.MI=
T'
ERROR: ice_helloworld-helloworld-0.1 do_populate_lic: QA Issue:
ice_helloworld: LIC_FILES_CHKSUM points to an invalid file:
/media/ice/slow_ext4/yocto_poky/build/tmp/work/armv7vet2hf-neon-poky-linux-=
gnueabi/ice_helloworld/helloworld-0.1/ice_helloworld-helloworld/COPYING.MIT
[license-checksum]
ERROR: ice_helloworld-helloworld-0.1 do_populate_lic: Fatal QA errors
found, failing task.
ERROR: Logfile of failure stored in:
/media/ice/slow_ext4/yocto_poky/build/tmp/work/armv7vet2hf-neon-poky-linux-=
gnueabi/ice_helloworld/helloworld-0.1/temp/log.do_populate_lic.133477
ERROR: Task
(/media/ice/slow_ext4/yocto_poky/meta-ice_layer/recipes-ice/ice_helloworld/=
ice_helloworld_0.1.bb:do_populate_lic)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 216 tasks of which 214 didn't need to be
rerun and 1 failed.




my bb file is:

SUMMARY =3D "Recipe to build the 'helloworld' in cpp"
SECTION =3D "ice"
LICENSE=3D"MIT"
#LICENSE_PATH +=3D "${LAYERDIR}"

PN =3D "ice_helloworld"
PV =3D "0.1"

SITE =3D "file://"
PACKAGE_VERSION_MAJOR =3D "${@bb.data.getVar('PV',d,1).split('.')[0]}"
PACKAGE_VERSION_MINOR =3D "${@bb.data.getVar('PV',d,1).split('.')[1]}"

SRC_URI =3D "${SITE}${PN}.cpp"
SRC_URI[md5sum] =3D "bc9dc64a44f9685d0310b94400a4631c"
SRC_URI[sha256sum] =3D
"789e60072ea96371a35d5653d664b4c4b91e80ce2ea6d523d6caedab06a07a2a"
LIC_FILES_CHKSUM =3D "${SITE}COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de2=
0420"

do_compile() {
    ${CXX} ${PN}.cpp -o ${PN}
}

do_install() {
    install -d ${D}${bindir}
    install -m 0755 ${PN} ${D}${bindir}
}

what could be wrong here?
--=20
Kind regards,
Sergey Ivanov

--00000000000047beb205ac5a2001
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi there.<br></div>I&#39;m newbie ib yocto and (=
of course) nothing works for me from scratch.<br></div>For testing purposes=
, i work with yocto 3.1 based on 5d47cdf448b6cff5bb7cc5b0ba0426b8235ec478 r=
ev aka dunfell-23.0.0<br>MACHINE ?=3D &quot;qemuarm&quot; and DISTRO ?=3D &=
quot;poky&quot; (btw i tried poky-tony as well but machine didn&#39;t start=
 properly under qemu)<br><br>I created my new layer with next structure:<br=
>.<br>=E2=94=9C=E2=94=80=E2=94=80 conf<br>=E2=94=82=C2=A0=C2=A0 =E2=94=94=
=E2=94=80=E2=94=80 layer.conf<br>=E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT<br=
>=E2=94=9C=E2=94=80=E2=94=80 README<br>=E2=94=94=E2=94=80=E2=94=80 recipes-=
ice<br>=C2=A0 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT<br>=C2=A0 =C2=
=A0 =E2=94=94=E2=94=80=E2=94=80 ice_helloworld<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=E2=94=9C=E2=94=80=E2=94=80 files<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=82=
=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 ice_helloworld=
.cpp<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 <a href=3D"=
http://ice_helloworld_0.1.bb">ice_helloworld_0.1.bb</a><br><div><div><div><=
div><br></div><div>(i copied COPYING.MIT to )every single place because of =
error below) and i obtained:<br><br>NOTE: Executing Tasks<br>WARNING: ice_h=
elloworld-helloworld-0.1 do_populate_lic: Could not copy license file /medi=
a/ice/slow_ext4/yocto_poky/build/tmp/work/armv7vet2hf-neon-poky-linux-gnuea=
bi/ice_helloworld/helloworld-0.1/ice_helloworld-helloworld/COPYING.MIT to /=
media/ice/slow_ext4/yocto_poky/build/tmp/work/armv7vet2hf-neon-poky-linux-g=
nueabi/ice_helloworld/helloworld-0.1/license-destdir/ice_helloworld/COPYING=
.MIT: [Errno 2] No such file or directory: &#39;/media/ice/slow_ext4/yocto_=
poky/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/ice_helloworld/hell=
oworld-0.1/ice_helloworld-helloworld/COPYING.MIT&#39;<br>ERROR: ice_hellowo=
rld-helloworld-0.1 do_populate_lic: QA Issue: ice_helloworld: LIC_FILES_CHK=
SUM points to an invalid file: /media/ice/slow_ext4/yocto_poky/build/tmp/wo=
rk/armv7vet2hf-neon-poky-linux-gnueabi/ice_helloworld/helloworld-0.1/ice_he=
lloworld-helloworld/COPYING.MIT [license-checksum]<br>ERROR: ice_helloworld=
-helloworld-0.1 do_populate_lic: Fatal QA errors found, failing task.<br>ER=
ROR: Logfile of failure stored in: /media/ice/slow_ext4/yocto_poky/build/tm=
p/work/armv7vet2hf-neon-poky-linux-gnueabi/ice_helloworld/helloworld-0.1/te=
mp/log.do_populate_lic.133477<br>ERROR: Task (/media/ice/slow_ext4/yocto_po=
ky/meta-ice_layer/recipes-ice/ice_helloworld/ice_helloworld_0.1.bb:do_popul=
ate_lic) failed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempte=
d 216 tasks of which 214 didn&#39;t need to be rerun and 1 failed.<br><br><=
br><br><br></div><div>my bb file is:<br><br>SUMMARY =3D &quot;Recipe to bui=
ld the &#39;helloworld&#39; in cpp&quot;<br>SECTION =3D &quot;ice&quot;<br>=
LICENSE=3D&quot;MIT&quot;<br>#LICENSE_PATH +=3D &quot;${LAYERDIR}&quot;<br>=
<br>PN =3D &quot;ice_helloworld&quot;<br>PV =3D &quot;0.1&quot;<br><br>SITE=
 =3D &quot;file://&quot;<br>PACKAGE_VERSION_MAJOR =3D &quot;${@bb.data.getV=
ar(&#39;PV&#39;,d,1).split(&#39;.&#39;)[0]}&quot;<br>PACKAGE_VERSION_MINOR =
=3D &quot;${@bb.data.getVar(&#39;PV&#39;,d,1).split(&#39;.&#39;)[1]}&quot;<=
br><br>SRC_URI =3D &quot;${SITE}${PN}.cpp&quot;<br>SRC_URI[md5sum] =3D &quo=
t;bc9dc64a44f9685d0310b94400a4631c&quot;<br>SRC_URI[sha256sum] =3D &quot;78=
9e60072ea96371a35d5653d664b4c4b91e80ce2ea6d523d6caedab06a07a2a&quot;<br>LIC=
_FILES_CHKSUM =3D &quot;${SITE}COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4d=
e20420&quot;<br><br>do_compile() {<br>=C2=A0 =C2=A0 ${CXX} ${PN}.cpp -o ${P=
N}<br>}<br><br>do_install() {<br>=C2=A0 =C2=A0 install -d ${D}${bindir}<br>=
=C2=A0 =C2=A0 install -m 0755 ${PN} ${D}${bindir}<br>}<br><br></div><div>wh=
at could be wrong here?<br></div><div>-- <br><div dir=3D"ltr" class=3D"gmai=
l_signature" data-smartmail=3D"gmail_signature">Kind regards,<br>Sergey Iva=
nov</div></div></div></div></div></div>

--00000000000047beb205ac5a2001--
