Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web12.958.1596781681678882464
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Aug 2020 23:28:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DX1kcMBc;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: lshllshl@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id c16so871550ejx.12
        for <yocto@lists.yoctoproject.org>; Thu, 06 Aug 2020 23:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=w5JRm1IJC4tRiDgfMcELKUZvBkSiNs1cYdyDxbFz4Yk=;
        b=DX1kcMBcblTRYrhLIz8FEweUZzyE1rd5q991hpMrU1wKUto4gtJifxtOA/8GR03Rlr
         +GP601tLrBi3vOSEiO3CWYwAURz7uKjbrJ1rdLpoFd1sI7Z8K0bwfdiEUM6EREYwAU6h
         i870joHH7s6/LKffG3ssNn8xQjdBATQGGmsw/T5wQSS9n5iLvhdm+sZ/Lhy7KPKc9uyY
         TWoj1EF7r0OFq6KK5dw7yzbvyWOroGeqMWCTEq7ZqFVWG+Pr2Ke+shuUcXKRPyVXUMdJ
         J/JK0wzWVyiiSmSIHg5MMSrQideL93VQmoZgU8u+ey7HfIUumRF0WQ8OOTG6uYgTV5T8
         3gPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=w5JRm1IJC4tRiDgfMcELKUZvBkSiNs1cYdyDxbFz4Yk=;
        b=UO2CTJ1h1ihf0yDn8KPvwxAaXfY5JdG5NVVyiTqsEOv+epu87RpFU9JX1NFjCxNaZ8
         U8+sqqrSk3zgeBn+lWIOjt2c/rY29Qhh2EtRGdIolWLdUpJ2UODKHGrd1EdC1XMjEOZ1
         UtkY7jj7s5aqKTdXwsORgx3J9p6Dk6z4l8vl5nrGauJek0TAPS2AeUFQ/ehgwJHvTNjk
         yT05zTwFKDTVM7+DEBtQdPQAfSc8D4kXIrD2Lb9fQaLBeOJfFa5ysYeks4tIH4ojE2tK
         pkhq2d6VSGwCzazvainDBL6EjRoqWtA6qzDEbe5XMxkOp9hW7Imb39NTFNSYDkX7zjX9
         2Ryg==
X-Gm-Message-State: AOAM531eSEn+i9NT/BKw79hRWKgnPyu1TuhcwuMUFKdS+IhGQ2wxAu/A
	p+PZaGh+FRpPnT3LcTdRXbcA5c2KnVc=
X-Google-Smtp-Source: ABdhPJyK7hudCMVcStty71K6YPeDVjGjO7OIQ+lYLO9jlRwpU10OAbSEFSVjC/gBfE8KB9+OIhMklQ==
X-Received: by 2002:a17:907:4064:: with SMTP id nl4mr7829913ejb.342.1596781679734;
        Thu, 06 Aug 2020 23:27:59 -0700 (PDT)
Return-Path: <lshllshl@gmail.com>
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com. [209.85.128.51])
        by smtp.gmail.com with ESMTPSA id k17sm5360020eji.28.2020.08.06.23.27.58
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Aug 2020 23:27:59 -0700 (PDT)
Received: by mail-wm1-f51.google.com with SMTP id c19so8003700wmd.1
        for <yocto@lists.yoctoproject.org>; Thu, 06 Aug 2020 23:27:58 -0700 (PDT)
X-Received: by 2002:a1c:1f0d:: with SMTP id f13mr11717261wmf.53.1596781678537;
 Thu, 06 Aug 2020 23:27:58 -0700 (PDT)
MIME-Version: 1.0
References: <1628E49F1953A8A0.5649@lists.yoctoproject.org>
In-Reply-To: <1628E49F1953A8A0.5649@lists.yoctoproject.org>
From: "Sol" <lshllshl@gmail.com>
Date: Fri, 7 Aug 2020 16:27:32 +1000
X-Gmail-Original-Message-ID: <CABn82nz7p85mtvgjzFKKMcJLX7LcNazUx3+vEVFQGLn+Qwpptg@mail.gmail.com>
Message-ID: <CABn82nz7p85mtvgjzFKKMcJLX7LcNazUx3+vEVFQGLn+Qwpptg@mail.gmail.com>
Subject: Re: [yocto] Kernel external module with firmware
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000bbc37b05ac43b413"

--000000000000bbc37b05ac43b413
Content-Type: text/plain; charset="UTF-8"

Ok, I figured it out :).
I need to declare a "non-standard" package name.
Solved by adding PACKAGES_append += "${PN}-firmware".

On Fri, 7 Aug 2020 at 15:17, Sol via lists.yoctoproject.org <lshllshl=
gmail.com@lists.yoctoproject.org> wrote:

>   Hi,
> I followed the hello-mod example and got my module compiling, installed,
> mounted to target and even functioning (talking to the hw).
> I am trying to add now firmware binaries to send to the hardware.
>
> *I added the following to my .bb*:
> do_install_append() {
>     install -d ${D}${base_libdir}/firmware/xxx
>     install    ${WORKDIR}/FwImage/*.bin ${D}${base_libdir}/firmware/xxx/
> }
>
> FILES_${PN}-firmware = "${base_libdir}/firmware/xxx/xxx*.bin"
>
> *This is the output from bitbake -e xxx|grep ^FILES_* :
> FILES_xxx-firmware="/lib/firmware/xxx/xxx*.bin"
> FILES_xxx-bin="/usr/bin/* /usr/sbin/*"
> FILES_xxx-locale="/usr/share/locale"
> FILES_SOLIBSDEV="/lib/lib*.so /usr/lib/lib*.so"
> FILES_xxx-doc="/usr/share/doc /usr/share/man /usr/share/info
> /usr/share/gtk-doc /usr/share/gnome/help"
> FILES_xxx=""
> FILES_xxx-dev="/usr/include /lib/lib*.so /usr/lib/lib*.so /usr/lib/*.la
> /usr/lib/*.o /usr/lib/pkgconfig /usr/share/pkgconfig /usr/share/aclocal
> /lib/*.o /usr/lib/xxx/*.la /lib/*.la"
> FILES_xxx-dbg="/usr/lib/debug /usr/src/debug"
> FILES_xxx-staticdev="/usr/lib/*.a /lib/*.a /usr/lib/xxx/*.a"
>
> *But I still get*:
> ERROR: xxx-module-r0 do_package: QA Issue: xxx: Files/directories were
> installed but not shipped in any package:
>   /lib/firmware
>   /lib/firmware/xxx
>   /lib/firmware/xxx/xxx1.bin
>   /lib/firmware/xxx/xxx2.bin
>   /lib/firmware/xxx/xxx3.bin
> Please set FILES such that these items are packaged. Alternatively if they
> are unneeded, avoid installing them or delete them within do_install.
> xxx: 5 installed and not shipped files. [installed-vs-shipped]
>
> Any idea what am I doing wrong?
>
> Thanks,
> Sol
>
> 
>

--000000000000bbc37b05ac43b413
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Ok, I figured it out :).<div>I need to de=
clare a &quot;non-standard&quot; package name.</div><div>Solved by adding <=
font face=3D"monospace">PACKAGES_append=C2=A0+=3D &quot;${PN}-firmware&quot=
;</font>.</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, 7 Aug 2020 at 15:17, Sol via <a href=3D"http:/=
/lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;lshllshl=3D<a href=
=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.=
org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr">=C2=A0 Hi,<div>I followed the hello-mod example and got=
 my module compiling, installed, mounted to target and even functioning=C2=
=A0(talking to the hw).</div><div>I am trying to add now firmware binaries=
 to send to the hardware.</div><div><br></div><div><u>I added the following=
 to my .bb</u>:</div><div><font face=3D"monospace">do_install_append() {<br=
>=C2=A0 =C2=A0 install -d ${D}${base_libdir}/firmware/xxx<br>=C2=A0 =C2=A0 =
install =C2=A0 =C2=A0${WORKDIR}/FwImage/*.bin ${D}${base_libdir}/firmware/x=
xx/<br>}<br><br>FILES_${PN}-firmware =3D &quot;${base_libdir}/firmware/xxx/=
xxx*.bin&quot;</font><br></div><div><br></div><div><u>This is the output fr=
om=C2=A0<font face=3D"monospace">bitbake -e xxx|grep ^FILES_</font></u>=C2=
=A0:</div><div><font face=3D"monospace">FILES_xxx-firmware=3D&quot;/lib/fi=
rmware/xxx/xxx*.bin&quot;<br>FILES_xxx-bin=3D&quot;/usr/bin/* /usr/sbin/*&q=
uot;<br>FILES_xxx-locale=3D&quot;/usr/share/locale&quot;<br>FILES_SOLIBSDEV=
=
=3D&quot;/lib/lib*.so /usr/lib/lib*.so&quot;<br>FILES_xxx-doc=3D&quot;/usr=
/share/doc /usr/share/man /usr/share/info /usr/share/gtk-doc /usr/share/gno=
me/help&quot;<br>FILES_xxx=3D&quot;&quot;<br>FILES_xxx-dev=3D&quot;/usr/inc=
lude /lib/lib*.so /usr/lib/lib*.so /usr/lib/*.la /usr/lib/*.o /usr/lib/pkgc=
onfig /usr/share/pkgconfig /usr/share/aclocal /lib/*.o /usr/lib/xxx/*.la /l=
ib/*.la&quot;<br>FILES_xxx-dbg=3D&quot;/usr/lib/debug /usr/src/debug&quot;<=
br>FILES_xxx-staticdev=3D&quot;/usr/lib/*.a /lib/*.a /usr/lib/xxx/*.a&quot;=
</font><br></div><div><br></div><div><u>But I still get</u>:</div><div><fon=
t face=3D"monospace">ERROR: xxx-module-r0 do_package: QA Issue: xxx: Files/=
directories were installed but not shipped in any package:<br>=C2=A0 /lib/f=
irmware<br>=C2=A0 /lib/firmware/xxx<br>=C2=A0 /lib/firmware/xxx/xxx1.bin<br=
>=C2=A0 /lib/firmware/xxx/xxx2.bin<br>=C2=A0 /lib/firmware/xxx/xxx3.bin<br>=
Please set FILES such that these items are packaged. Alternatively if they =
are unneeded, avoid installing them or delete them within do_install.<br>xx=
x: 5 installed and not shipped files. [installed-vs-shipped]</font><br></di=
v><div><br></div><div>Any idea what am I doing wrong?</div><div><br></div><=
div>Thanks,</div><div>Sol</div><div></div><div><br></div></div>
<br>
</blockquote></div>

--000000000000bbc37b05ac43b413--
