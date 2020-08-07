Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
 by mx.groups.io with SMTP id smtpd.web11.359.1596777439538018717
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Aug 2020 22:17:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mnB7AAo9;
 spf=pass (domain: gmail.com, ip: 209.85.222.53, mailfrom: lshllshl@gmail.com)
Received: by mail-ua1-f53.google.com with SMTP id y17so170165uaq.6
        for <yocto@lists.yoctoproject.org>; Thu, 06 Aug 2020 22:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=4qu/SDJ+uZAj02OUZC7xFxA0ty2sdkNdvLPGxSJ2AYA=;
        b=mnB7AAo91qbpTW46vjOW5w/j4Gy2i0z5GcIh5zz2EwKOqyJXEjgrAmvJ6hVspexImr
         DV9gmj4OWi+LTj8POBMLPGTGPwjEqBho2BooErZ1sg9TZ+i3gxqOINKeEtCH9Cexa7xU
         SCuaGXN4Igm2ddkgdrlht+3ZUyI9dACjGV3X/UvN+3yg8nJlrb/KcNRrwyNg/fXOiwxf
         LEIwjFUGAsAag2OmOG8v3knhRLzWd4SJKBEIuWSxzemVvpTMYNpRShja1xpIUb+syTF1
         KF1Xof9xidfM1g0bqjCzyZhbSmULhIFywv020C/mItG1bGuNDlLx50BZwkzHaDoIPkXw
         LZZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=4qu/SDJ+uZAj02OUZC7xFxA0ty2sdkNdvLPGxSJ2AYA=;
        b=HvF+eC+UsdNehzFsyyPqGe1I0YD96UIcbYV5Hx3mbes+aERMVeR7jI3yxAZZMUvGSp
         6mBegqnaXTDY+0teFoJE3QeHy9y7pZZ8peMLoCjoW9UjQhPqwDT9WsX0Q8t6cp4TKD7G
         sYJwEXnI0DHBo19u36jVW3yxtcjDz5bD6cxCH6Euq1nHeaadDKkJVOE+YTwCM5aAVSiV
         IASdtpESP5NCSC3hq3ZbQSiSh2s0djinKp1r9WblQAxrcdc+Cc9BewxP9lSrULzx6QCn
         PUGOuZR9BumSNZbk75zEbPgCR/QcubO1ShumIA48EkqGGvEFrEKA8+6Eo0BOLiwKRtNJ
         pKQQ==
X-Gm-Message-State: AOAM531cluixsxDMhp2g32DIdvzJ7nhVT6Ol7BaZHSD7bm3kMLQ2n2VD
	XgiWhQtB7WIs37mdBPby8cqcId/jqg6v2uqMWmkprP4BJGDcVQ==
X-Google-Smtp-Source: ABdhPJwZ4d6IfTsuuhYJxAJ0wZKbPZnussUska8tIrZbgDTIxZuqMd7il3G6bJEaitPa8a4U8GN3+4u98YCZqy8aQ0E=
X-Received: by 2002:ab0:6eca:: with SMTP id c10mr9644038uav.5.1596777438459;
 Thu, 06 Aug 2020 22:17:18 -0700 (PDT)
MIME-Version: 1.0
From: "Sol" <lshllshl@gmail.com>
Date: Fri, 7 Aug 2020 15:16:54 +1000
Message-ID: <CAF2T6cu3NtKkP6o-RJ_MaPzip08yKxqqMnrzo_9u7fpyht6EBw@mail.gmail.com>
Subject: Kernel external module with firmware
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000139f305ac42b841"

--0000000000000139f305ac42b841
Content-Type: text/plain; charset="UTF-8"

  Hi,
I followed the hello-mod example and got my module compiling, installed,
mounted to target and even functioning (talking to the hw).
I am trying to add now firmware binaries to send to the hardware.

*I added the following to my .bb*:
do_install_append() {
    install -d ${D}${base_libdir}/firmware/xxx
    install    ${WORKDIR}/FwImage/*.bin ${D}${base_libdir}/firmware/xxx/
}

FILES_${PN}-firmware = "${base_libdir}/firmware/xxx/xxx*.bin"

*This is the output from bitbake -e xxx|grep ^FILES_* :
FILES_xxx-firmware="/lib/firmware/xxx/xxx*.bin"
FILES_xxx-bin="/usr/bin/* /usr/sbin/*"
FILES_xxx-locale="/usr/share/locale"
FILES_SOLIBSDEV="/lib/lib*.so /usr/lib/lib*.so"
FILES_xxx-doc="/usr/share/doc /usr/share/man /usr/share/info
/usr/share/gtk-doc /usr/share/gnome/help"
FILES_xxx=""
FILES_xxx-dev="/usr/include /lib/lib*.so /usr/lib/lib*.so /usr/lib/*.la
/usr/lib/*.o /usr/lib/pkgconfig /usr/share/pkgconfig /usr/share/aclocal
/lib/*.o /usr/lib/xxx/*.la /lib/*.la"
FILES_xxx-dbg="/usr/lib/debug /usr/src/debug"
FILES_xxx-staticdev="/usr/lib/*.a /lib/*.a /usr/lib/xxx/*.a"

*But I still get*:
ERROR: xxx-module-r0 do_package: QA Issue: xxx: Files/directories were
installed but not shipped in any package:
  /lib/firmware
  /lib/firmware/xxx
  /lib/firmware/xxx/xxx1.bin
  /lib/firmware/xxx/xxx2.bin
  /lib/firmware/xxx/xxx3.bin
Please set FILES such that these items are packaged. Alternatively if they
are unneeded, avoid installing them or delete them within do_install.
xxx: 5 installed and not shipped files. [installed-vs-shipped]

Any idea what am I doing wrong?

Thanks,
Sol

--0000000000000139f305ac42b841
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=C2=A0 Hi,<div>I followed the hello-mod example and got my=
 module compiling, installed, mounted to target and even functioning=C2=A0(=
talking to the hw).</div><div>I am trying to add now firmware binaries to s=
end to the hardware.</div><div><br></div><div><u>I added the following to m=
y .bb</u>:</div><div><font face=3D"monospace">do_install_append() {<br>=C2=
=A0 =C2=A0 install -d ${D}${base_libdir}/firmware/xxx<br>=C2=A0 =C2=A0 inst=
all =C2=A0 =C2=A0${WORKDIR}/FwImage/*.bin ${D}${base_libdir}/firmware/xxx/<=
br>}<br><br>FILES_${PN}-firmware =3D &quot;${base_libdir}/firmware/xxx/xxx*=
.bin&quot;</font><br></div><div><br></div><div><u>This is the output from=
=C2=A0<font face=3D"monospace">bitbake -e xxx|grep ^FILES_</font></u>=C2=A0=
:</div><div><font face=3D"monospace">FILES_xxx-firmware=3D&quot;/lib/firmwa=
re/xxx/xxx*.bin&quot;<br>FILES_xxx-bin=3D&quot;/usr/bin/* /usr/sbin/*&quot;=
<br>FILES_xxx-locale=3D&quot;/usr/share/locale&quot;<br>FILES_SOLIBSDEV=3D&=
quot;/lib/lib*.so /usr/lib/lib*.so&quot;<br>FILES_xxx-doc=3D&quot;/usr/shar=
e/doc /usr/share/man /usr/share/info /usr/share/gtk-doc /usr/share/gnome/he=
lp&quot;<br>FILES_xxx=3D&quot;&quot;<br>FILES_xxx-dev=3D&quot;/usr/include =
/lib/lib*.so /usr/lib/lib*.so /usr/lib/*.la /usr/lib/*.o /usr/lib/pkgconfig=
 /usr/share/pkgconfig /usr/share/aclocal /lib/*.o /usr/lib/xxx/*.la /lib/*.=
la&quot;<br>FILES_xxx-dbg=3D&quot;/usr/lib/debug /usr/src/debug&quot;<br>FI=
LES_xxx-staticdev=3D&quot;/usr/lib/*.a /lib/*.a /usr/lib/xxx/*.a&quot;</fon=
t><br></div><div><br></div><div><u>But I still get</u>:</div><div><font fac=
e=3D"monospace">ERROR: xxx-module-r0 do_package: QA Issue: xxx: Files/direc=
tories were installed but not shipped in any package:<br>=C2=A0 /lib/firmwa=
re<br>=C2=A0 /lib/firmware/xxx<br>=C2=A0 /lib/firmware/xxx/xxx1.bin<br>=C2=
=A0 /lib/firmware/xxx/xxx2.bin<br>=C2=A0 /lib/firmware/xxx/xxx3.bin<br>Plea=
se set FILES such that these items are packaged. Alternatively if they are =
unneeded, avoid installing them or delete them within do_install.<br>xxx: 5=
 installed and not shipped files. [installed-vs-shipped]</font><br></div><d=
iv><br></div><div>Any idea what am I doing wrong?</div><div><br></div><div>=
Thanks,</div><div>Sol</div><div class=3D"gmail-yj6qo"></div><div class=3D"g=
mail-adL"><br></div></div>

--0000000000000139f305ac42b841--
