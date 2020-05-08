Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web11.7142.1588930344829465364
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 May 2020 02:32:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pPx+p9/w;
 spf=pass (domain: gmail.com, ip: 209.85.160.175, mailfrom: lefevre.da@gmail.com)
Received: by mail-qt1-f175.google.com with SMTP id q13so714102qtp.7
        for <yocto@lists.yoctoproject.org>; Fri, 08 May 2020 02:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=+m4rQOde1/XqsUrO82WiOuXxLinM6Imyrm+vECfqEc0=;
        b=pPx+p9/wC0UVCJpgdsffFopxaYeLL8vbtR9MkC+ag38eHQgzEX2ZGRNxRoG1AiDRfY
         atW7RO14vhciPBuYHWlaoEDgPD9yax4Z66/5rt2UlzYrehm9RbQYFuTe01dZFxlERiMl
         7QazRq8lSnKGE79nEvXDdkOa1Wr52UWE249C9QrEp0p8k/1BzvZ5U42AfvcgrqCUxC0w
         hJREWZe6LHCSMMv/cdFfHWLbZxbi3T8RryI5q8mM+G8seL6199K695ebQuovnce9MYPk
         k8KqbNsc0FbuXVqGbdXZ/+oTzQR96N6AbgqAi9OHXl4ZhXlqlgPYRGJdL49Dlm2hxlgI
         gSSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=+m4rQOde1/XqsUrO82WiOuXxLinM6Imyrm+vECfqEc0=;
        b=Wjl0BNY3plcZ1WYcBBChwK/t3QqnWh+HEU0Lu11KXZ5SqsqVDIU7I/WPDaYuBX6V6u
         1JzzMo3Xe97mpm9RCHigzgERWUf8AdOd7KfjaGenA/U3f0J+uTOmYezS4bSB9BltBkfB
         JYfJQJUcMNGh/UN14Xhr4nzPtHntKCCB3Yiw1JEsuGHGEM4+mZGXSrwFNDBj6jE2bgV1
         cFylvAmABU+8O9m+hWbsgp7VCa6VkwPvyCSD1wTSjED9Zd02afiUffEA0i0SAwOIMwDU
         XrImRuf2yyB+M+tME/5QPPLFDI7OL/J6t02t37ocHbbaUFbDj3OeCvAu8xcUR8yhrMqv
         q0Xg==
X-Gm-Message-State: AGi0PuZkSqudJZVfkNFV4hbmaT0MGc5MNr1vYVt4au4UnIgIdzcav44h
	EYQ8YFKEliRXfFD7WzZ5uE3wqUNRdpFcrKh+AQBOdskYHg==
X-Google-Smtp-Source: APiQypKA2SW5w3fsGpgSy+s3C6/NfS+BTIa4WuKi+Wv6d2foCLuhLfJ2H0vSVdclMlty1hLmWSpTTkgoT7fXi+TOrks=
X-Received: by 2002:ac8:4f53:: with SMTP id i19mr2083670qtw.195.1588930343709;
 Fri, 08 May 2020 02:32:23 -0700 (PDT)
MIME-Version: 1.0
From: "Damien LEFEVRE" <lefevre.da@gmail.com>
Date: Fri, 8 May 2020 12:32:12 +0300
Message-ID: <CA+FhBv-+Cgkhu2uTdCThYKU+1X2-Js+TYZOKAtpq763_1KT9Tg@mail.gmail.com>
Subject: pkg_postinst_ontarget not executed
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b5b1f605a51fac0a"

--000000000000b5b1f605a51fac0a
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a device with rootfs mounted readonly and with an overlay on top of
it to do the factory reset.

There's A/B partitioning. So there is a duplicate set of partitions.

There's an OTA engine to deploy atomics images.

I have the following usecase:
1. I flash a minimal image
2. I write the device type into a file (mutiple variant but same HW setup)
to a persistent data partition.
3. I deploy the common product image via OTA engine. The whole rootfs is
deployed atomically
4. I copy the current overlay partition content to the next overlay
partition
5. Reboot
6. System boots to the next slot to the common product image

Currently, the common product image is the minimal image with the addition
of this test-deployment package:

DISCRIPTION = "Test product specific deployment"
LICENSE = "CLOSED"
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI = " \
    file://config.type1 \
    file://config.type2 \
    file://config.type3 \
"

do_configure[noexec] = "1"
do_compile[noexec] = "1"

do_install() {
    install -d ${D}/opt/test
    install -m 0644 ${WORKDIR}/config.type1 ${D}/opt/test
    install -m 0644 ${WORKDIR}/config.type2 ${D}/opt/test
    install -m 0644 ${WORKDIR}/config.type3 ${D}/opt/test
}

pkg_postinst_ontarget_${PN}() {
    systemid=$(cat /persistent/systemid)
    cd /opt/test
    mv config.$systemid config
    rm config.*
}

FILES_${PN} += " \
    /opt/test/* \
"


The /opt/test folder is now present but it still contains config.type1,
config.type2 and config.type3.

If can find the postinst script in
/var/lib/opkg/info/test-deployment.postinst and execute it.

Since test-deployment is a new package, I would have expected
pkg_postinst_ontarget to be executed

How is the first boot detected on a poky image? Is there a way to detect if
.postinst scripts haven't been executed?

Thanks,
-Damien

--000000000000b5b1f605a51fac0a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>I have a device with rootfs mounted readonly an=
d with an overlay on top of it to do the factory reset.<br><br>There&#39;s =
A/B partitioning. So there is a duplicate set of partitions.<br><br>There&#=
39;s an OTA engine to deploy atomics images.<br><br>I have the following us=
ecase:<br>1. I flash a minimal image <br>2. I write the device type into a =
file (mutiple variant but same HW setup) to a persistent data partition.<br=
>3. I deploy the common product image via OTA engine. The whole rootfs is d=
eployed atomically<br>4. I copy the current overlay partition content to th=
e next overlay partition<br>5. Reboot<br>6. System boots to the next slot t=
o the common product image<br><br>Currently, the common product image is th=
e minimal image with the addition of this test-deployment package:<br><br>D=
ISCRIPTION =3D &quot;Test product specific deployment&quot;<br>LICENSE =3D =
&quot;CLOSED&quot;<br>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&=
quot;<br><br>SRC_URI =3D &quot; \<br>=C2=A0 =C2=A0 file://config.type1 \<br=
>=C2=A0 =C2=A0 file://config.type2 \<br>=C2=A0 =C2=A0 file://config.type3 \=
<br>&quot;<br><br>do_configure[noexec] =3D &quot;1&quot;<br>do_compile[noex=
ec] =3D &quot;1&quot;<br><br>do_install() {<br>=C2=A0 =C2=A0 install -d ${D=
}/opt/test<br>=C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/config.type1 ${D}/op=
t/test<br>=C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/config.type2 ${D}/opt/te=
st<br>=C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/config.type3 ${D}/opt/test<b=
r>}<br><br>pkg_postinst_ontarget_${PN}() {<br>=C2=A0 =C2=A0 systemid=3D$(ca=
t /persistent/systemid)<br>=C2=A0 =C2=A0 cd /opt/test<br>=C2=A0 =C2=A0 mv c=
onfig.$systemid config<br>=C2=A0 =C2=A0 rm config.*<br>} <br><br>FILES_${PN=
} +=3D &quot; \<br>=C2=A0 =C2=A0 /opt/test/* \<br>&quot;<br><br><br>The /op=
t/test folder is now present but it still contains config.type1, config.typ=
e2 and config.type3.<br><br>If can find the postinst script in /var/lib/opk=
g/info/test-deployment.postinst and execute it.<br><br>Since test-deploymen=
t is a new package, I would have expected pkg_postinst_ontarget to be execu=
ted<br><br>How is the first boot detected on a poky image? Is there a way t=
o detect if .postinst scripts haven&#39;t been executed?<br><br>Thanks,<br>=
-Damien<br></div>

--000000000000b5b1f605a51fac0a--
