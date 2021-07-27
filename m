Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.web11.9127.1627379087550361446
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Jul 2021 02:44:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=E19aA5EY;
 spf=pass (domain: gmail.com, ip: 209.85.208.50, mailfrom: 61a91bc@gmail.com)
Received: by mail-ed1-f50.google.com with SMTP id y12so6471313edo.6
        for <yocto@lists.yoctoproject.org>; Tue, 27 Jul 2021 02:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=1lRKgI+cGbZpZLqLkKRTgIDmGDEXe2iVQqjlDO0gkQ4=;
        b=E19aA5EYuEMGOewkFpyu/hYwOwI2Ngt17/xt/XVq3OVH9Fy2eAXcYnD76jQ+SPE+hD
         53r64YZLSGddNLV2Y+/r9llGBSFsfGY4r7Qu/vYuLgNHawX+VMw7FcaayVXUISJyVRYU
         IRyAhYdkVfend6VxhUx2zWLSKrAQ29kbv3k8A0m7kDDF2ZjkScvY8lse+teUpetDjGH6
         qZCAID/cWsypIveJdomjH5tTIX207/I23l60hlUSoatAWMezJcc8PbTm0LOOXxQHImtz
         F1mJUQyHrlcXPaERjyblFETmOBrMADC5Uw156YKmNNJi+UELVUyezgTPjJdajbJSdX6V
         G3IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=1lRKgI+cGbZpZLqLkKRTgIDmGDEXe2iVQqjlDO0gkQ4=;
        b=mN5KbijgP/wpPAcy0XQ/mxinaCaFqXCrg6QxHKUyacllBYK1CzU2ATP6idb8pwhGTB
         gYEtTOHiAJd47Vn9tPV86wxFtwo7Khs7VPqBn5PNnXAEPIRm1LbDjzOD55JSb7X4yPox
         VDP4GgYB5AHbVx6bIu2ErH4jBD9HIcAxlXGahOVlUfSMa+maH1ypDU8eXMFB+DDPcclo
         YZrmNCbYaqSfNuQuLzK24gs86pySsPhMhdlmNnQdzLrbScHcoam90CaC46tLuxO/CNtt
         xgJt70lyWfru238ro9OMiUk+S/IKQUD9d1hmsgiQ+Let7HNpqVqhJeqmDgCQVX14Qg6X
         fs5Q==
X-Gm-Message-State: AOAM530j4u0uyEDyEW0zqOP/l3qPoxou4r6X65jPUlTCfByx8k8Bm+WY
	OYfUnLg8Qd5lEaMbV4/8aQYn0Lw9lipr/ghC4mD+WRQH1rQ=
X-Google-Smtp-Source: ABdhPJzRJzIWayAI9I/8mTiFso/2Js/nIEGU3C4eM+ltVw8i0KOvApduwbRRoeOUqlUdOIxmM8DgQvkEG+rFbyaBw2g=
X-Received: by 2002:aa7:d397:: with SMTP id x23mr26810348edq.174.1627379085563;
 Tue, 27 Jul 2021 02:44:45 -0700 (PDT)
MIME-Version: 1.0
From: "Alexander Raih" <61a91bc@gmail.com>
Date: Tue, 27 Jul 2021 12:44:34 +0300
Message-ID: <CAMqwjCD4sPhGzyRyOFuNE6ti+3bPLc1BV9S1XjSJ3yGQRenyKg@mail.gmail.com>
Subject: HOW To resolve : Files/directories were installed but not shipped in any package:
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004f5a6505c817b876"

--0000000000004f5a6505c817b876
Content-Type: text/plain; charset="UTF-8"

After modify recipe with using my repo I have this error after rebuild.
How to resolve this ?

log:


ERROR: phosphor-user-manager-1.0+gitAUTOINC+5a6e836a71-r1
 do_package: QA Issue: phosphor-user-manager: Files/directories were
installed but not shipped in any package:

  /dbus-1

  /usr/share

  /usr/share/phosphor-certificate-manager

  /usr/share/phosphor-certificate-manager/nslcd

  /dbus-1/system.d

  /dbus-1/system.d/phosphor-nslcd-cert-config.conf

  /lib/systemd/system/multi-user.target.wants


/lib/systemd/system/multi-user.target.wants/phosphor-certificate-manager@nslcd.service

Please set FILES such that these items are packaged. Alternatively if they
are unneeded, avoid installing them or delete them within do_install.

phosphor-user-manager: 8 installed and not shipped files.
[installed-vs-shipped]

ERROR: phosphor-user-manager-1.0+gitAUTOINC+5a6e836a71-r1 do_package: Fatal
QA errors found, failing task.

ERROR: Logfile of failure stored in:
/home/openbmc/build/tmp/work/arm1176jzs-openbmc-linux-gnueabi/phosphor-user-manager/1.0+gitAUTOINC+5a6e836a71-r1/temp/log.do_package.224136

ERROR: Task
(/home/openbmc/meta-phosphor/recipes-phosphor/users/phosphor-user-manager_git.bb:do_package)
failed with exit code '1'

--0000000000004f5a6505c817b876
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>After modify recipe with using my repo I have this er=
ror after rebuild.</div><div>How to resolve this ?</div><div><br></div><div=
>log:<br><br><br>ERROR: phosphor-user-manager-1.0+gitAUTOINC+5a6e836a71-r1<=
br>=C2=A0do_package: QA Issue: phosphor-user-manager: Files/directories wer=
e installed but not shipped in any package:<br><br>=C2=A0 /dbus-1<br><br>=
=C2=A0 /usr/share<br><br>=C2=A0 /usr/share/phosphor-certificate-manager<br>=
<br>=C2=A0 /usr/share/phosphor-certificate-manager/nslcd<br><br>=C2=A0 /dbu=
s-1/system.d<br><br>=C2=A0 /dbus-1/system.d/phosphor-nslcd-cert-config.conf=
<br><br>=C2=A0 /lib/systemd/system/multi-user.target.wants<br><br>=C2=A0 /l=
ib/systemd/system/multi-user.target.wants/phosphor-certificate-manager@nslc=
d.service<br><br>Please set FILES such that these items are packaged. Alter=
natively if they are unneeded, avoid installing them or delete them within =
do_install.<br><br>phosphor-user-manager: 8 installed and not shipped files=
. [installed-vs-shipped]<br><br>ERROR: phosphor-user-manager-1.0+gitAUTOINC=
+5a6e836a71-r1 do_package: Fatal QA errors found, failing task.<br><br>ERRO=
R: Logfile of failure stored in: /home/openbmc/build/tmp/work/arm1176jzs-op=
enbmc-linux-gnueabi/phosphor-user-manager/1.0+gitAUTOINC+5a6e836a71-r1/temp=
/log.do_package.224136<br><br>ERROR: Task (/home/openbmc/meta-phosphor/reci=
pes-phosphor/users/phosphor-user-manager_git.bb:do_package) failed with exi=
t code &#39;1&#39;<br></div></div>

--0000000000004f5a6505c817b876--
