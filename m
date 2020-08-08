Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web12.2369.1596879336314954865
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Aug 2020 02:35:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MXtJdHGA;
 spf=pass (domain: gmail.com, ip: 209.85.218.46, mailfrom: lshllshl@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id t10so153702ejs.8
        for <yocto@lists.yoctoproject.org>; Sat, 08 Aug 2020 02:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=ae2m39r0QB2706ak9Bt5ubndgswnvs/CNWJ/RaJYNBY=;
        b=MXtJdHGAFsu0o3OXn4Nzw0YQMUBANbacyPJCbS9jy+HG1kYvGktAgbJf0/IT/ZX0s0
         RJGPIVS1o0p03ANHK1nnMJcAJ5Nwg59xmv3mf51QHPEYMZStg8r7T4VeF+qE4NhQI3LO
         lCizokM0CPivr4tknNr9aVjNSKn+au/Bi975irStXZE7b22lt87EGHxUE5X9G7rQ7C2a
         rdJGns3wljUkj+fsijxvqBxuoT9g+rPISXGOsjogqF1wHhd5eGQmFSkCy1n25CMn12M4
         Sx+sChkoF+Ll88kuIW8OAOGjrICKYSEcQl641zTDgC1eMpCfdLQ+L3UJIOLlassSlOqk
         MaNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=ae2m39r0QB2706ak9Bt5ubndgswnvs/CNWJ/RaJYNBY=;
        b=fGZL5rlR5Xucq0fSiHWOuvoTMRFGA7XEEwR78viXgA+E6oZGAHCcEXlb8ZWDaki+lL
         Q8wlbmXEcQ0tt5BfiNCv7qzB5tBVidxI1nhZq9EwXFZr7+uWBLq5PqdZo3gbiGxWTlhn
         Uy2g6gvmaEQfRreEXvAyOHlmnQO4sVGBHlceoU3h/0ADj6NSK8+n6wRV5ZTHcaYznefP
         3PdZOAMUMCmvbx9OjPaSkJA8ETD6GIJmg0jQNnZIe0B7KSFBsUqbuajcbFcjYHQ0oqNa
         /E+X998q8FSUC0T8PUvE3AqnnGER7tf+neRdap05mukhr4Z1CIsMzl4RrE+WendzveSy
         fZNw==
X-Gm-Message-State: AOAM533kxyGAaSFYSzn7MBftk+RWnaahzZVa9fFK+F1E+UKwXjyfxBXh
	Ylg3CA/xghJHQboH8v9IUxEVVzOde+Y=
X-Google-Smtp-Source: ABdhPJyCprLBEiaVXR3zOkgBLLuRNb7osVTEjx1xqSJlPTtn9bbciHL89I1eFeC7dzPyhHF5ByTJ6Q==
X-Received: by 2002:a17:906:68e:: with SMTP id u14mr14037286ejb.166.1596879334466;
        Sat, 08 Aug 2020 02:35:34 -0700 (PDT)
Return-Path: <lshllshl@gmail.com>
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com. [209.85.128.44])
        by smtp.gmail.com with ESMTPSA id g21sm6957953edm.65.2020.08.08.02.35.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Aug 2020 02:35:33 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id 184so3959737wmb.0
        for <yocto@lists.yoctoproject.org>; Sat, 08 Aug 2020 02:35:33 -0700 (PDT)
X-Received: by 2002:a1c:26c4:: with SMTP id m187mr16170506wmm.90.1596879333079;
 Sat, 08 Aug 2020 02:35:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAJCbrz4uDGFA4qe7SxLrKR4kDEzJDxgAp=EROAiDPtiORe2RXw@mail.gmail.com>
In-Reply-To: <CAJCbrz4uDGFA4qe7SxLrKR4kDEzJDxgAp=EROAiDPtiORe2RXw@mail.gmail.com>
From: "Sol" <lshllshl@gmail.com>
Date: Sat, 8 Aug 2020 19:35:05 +1000
X-Gmail-Original-Message-ID: <CABn82nzzGYUBuuz4jQngRnFe74WNKeWv5rE5B2DkAateRdybdg@mail.gmail.com>
Message-ID: <CABn82nzzGYUBuuz4jQngRnFe74WNKeWv5rE5B2DkAateRdybdg@mail.gmail.com>
Subject: Re: [yocto] yocto compile simple c++
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000065d99205ac5a71b2"

--00000000000065d99205ac5a71b2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

As far as I know, you have to given a checksum for the license:
LIC_FILES_CHKSUM =3D
"file://gpl-2.0.txt;md5=3Dab04ac0f249af12befccb94447c08b77" or something l=
ike
that.

Hope this helps.

On Sat, 8 Aug 2020 at 19:13, Sergey Ivanov <icegood1980@gmail.com> wrote:

> Hi there.
> I'm newbie ib yocto and (of course) nothing works for me from scratch.
> For testing purposes, i work with yocto 3.1 based on
> 5d47cdf448b6cff5bb7cc5b0ba0426b8235ec478 rev aka dunfell-23.0.0
> MACHINE ?=3D "qemuarm" and DISTRO ?=3D "poky" (btw i tried poky-tony as =
well
> but machine didn't start properly under qemu)
>
> I created my new layer with next structure:
> .
> =E2=94=9C=E2=94=80=E2=94=80 conf
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 layer.conf
> =E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT
> =E2=94=9C=E2=94=80=E2=94=80 README
> =E2=94=94=E2=94=80=E2=94=80 recipes-ice
>     =E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT
>     =E2=94=94=E2=94=80=E2=94=80 ice_helloworld
>         =E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT
>         =E2=94=9C=E2=94=80=E2=94=80 files
>         =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT
>         =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 ice_helloworld.cpp
>         =E2=94=94=E2=94=80=E2=94=80 ice_helloworld_0.1.bb
>
> (i copied COPYING.MIT to )every single place because of error below) and=
 i
> obtained:
>
> NOTE: Executing Tasks
> WARNING: ice_helloworld-helloworld-0.1 do_populate_lic: Could not copy
> license file
> /media/ice/slow_ext4/yocto_poky/build/tmp/work/armv7vet2hf-neon-poky-lin=
ux-gnueabi/ice_helloworld/helloworld-0.1/ice_helloworld-helloworld/COPYING.=
MIT
> to
> /media/ice/slow_ext4/yocto_poky/build/tmp/work/armv7vet2hf-neon-poky-lin=
ux-gnueabi/ice_helloworld/helloworld-0.1/license-destdir/ice_helloworld/COP=
YING.MIT:
> [Errno 2] No such file or directory:
> '/media/ice/slow_ext4/yocto_poky/build/tmp/work/armv7vet2hf-neon-poky-li=
nux-gnueabi/ice_helloworld/helloworld-0.1/ice_helloworld-helloworld/COPYING=
.MIT'
> ERROR: ice_helloworld-helloworld-0.1 do_populate_lic: QA Issue:
> ice_helloworld: LIC_FILES_CHKSUM points to an invalid file:
> /media/ice/slow_ext4/yocto_poky/build/tmp/work/armv7vet2hf-neon-poky-lin=
ux-gnueabi/ice_helloworld/helloworld-0.1/ice_helloworld-helloworld/COPYING.=
MIT
> [license-checksum]
> ERROR: ice_helloworld-helloworld-0.1 do_populate_lic: Fatal QA errors
> found, failing task.
> ERROR: Logfile of failure stored in:
> /media/ice/slow_ext4/yocto_poky/build/tmp/work/armv7vet2hf-neon-poky-lin=
ux-gnueabi/ice_helloworld/helloworld-0.1/temp/log.do_populate_lic.133477
> ERROR: Task
> (/media/ice/slow_ext4/yocto_poky/meta-ice_layer/recipes-ice/ice_hellowor=
ld/ice_helloworld_0.1.bb:do_populate_lic)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 216 tasks of which 214 didn't need to be
> rerun and 1 failed.
>
>
>
>
> my bb file is:
>
> SUMMARY =3D "Recipe to build the 'helloworld' in cpp"
> SECTION =3D "ice"
> LICENSE=3D"MIT"
> #LICENSE_PATH +=3D "${LAYERDIR}"
>
> PN =3D "ice_helloworld"
> PV =3D "0.1"
>
> SITE =3D "file://"
> PACKAGE_VERSION_MAJOR =3D "${@bb.data.getVar('PV',d,1).split('.')[0]}"
> PACKAGE_VERSION_MINOR =3D "${@bb.data.getVar('PV',d,1).split('.')[1]}"
>
> SRC_URI =3D "${SITE}${PN}.cpp"
> SRC_URI[md5sum] =3D "bc9dc64a44f9685d0310b94400a4631c"
> SRC_URI[sha256sum] =3D
> "789e60072ea96371a35d5653d664b4c4b91e80ce2ea6d523d6caedab06a07a2a"
> LIC_FILES_CHKSUM =3D
> "${SITE}COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420"
>
> do_compile() {
>     ${CXX} ${PN}.cpp -o ${PN}
> }
>
> do_install() {
>     install -d ${D}${bindir}
>     install -m 0755 ${PN} ${D}${bindir}
> }
>
> what could be wrong here?
> --
> Kind regards,
> Sergey Ivanov
>=20
>

--00000000000065d99205ac5a71b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">As far as=C2=A0I know, you have to given a checksum for th=
e license:<div>LIC_FILES_CHKSUM =3D &quot;file://gpl-2.0.txt;md5=3Dab04ac0f=
249af12befccb94447c08b77&quot; or something=C2=A0like that.<br></div><div><=
br></div><div>Hope this helps.</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Sat, 8 Aug 2020 at 19:13, Sergey Iva=
nov &lt;<a href=3D"mailto:icegood1980@gmail.com">icegood1980@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div><div>Hi there.<br></div>I&#39;m newbie ib yocto and (of co=
urse) nothing works for me from scratch.<br></div>For testing purposes, i w=
ork with yocto 3.1 based on 5d47cdf448b6cff5bb7cc5b0ba0426b8235ec478 rev ak=
a dunfell-23.0.0<br>MACHINE ?=3D &quot;qemuarm&quot; and DISTRO ?=3D &quot;=
poky&quot; (btw i tried poky-tony as well but machine didn&#39;t start prop=
erly under qemu)<br><br>I created my new layer with next structure:<br>.<br=
>=E2=94=9C=E2=94=80=E2=94=80 conf<br>=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=
=80=E2=94=80 layer.conf<br>=E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT<br>=E2=
=94=9C=E2=94=80=E2=94=80 README<br>=E2=94=94=E2=94=80=E2=94=80 recipes-ice=
<br>=C2=A0 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT<br>=C2=A0 =C2=A0 =
=
=E2=94=94=E2=94=80=E2=94=80 ice_helloworld<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=
=
=94=9C=E2=94=80=E2=94=80 files<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=82=C2=
=
=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT<br>=C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 ice_helloworld.cp=
p<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 <a href=3D"htt=
p://ice_helloworld_0.1.bb" target=3D"_blank">ice_helloworld_0.1.bb</a><br><=
div><div><div><div><br></div><div>(i copied COPYING.MIT to )every single pl=
ace because of error below) and i obtained:<br><br>NOTE: Executing Tasks<br=
>WARNING: ice_helloworld-helloworld-0.1 do_populate_lic: Could not copy lic=
ense file /media/ice/slow_ext4/yocto_poky/build/tmp/work/armv7vet2hf-neon-p=
oky-linux-gnueabi/ice_helloworld/helloworld-0.1/ice_helloworld-helloworld/C=
OPYING.MIT to /media/ice/slow_ext4/yocto_poky/build/tmp/work/armv7vet2hf-ne=
on-poky-linux-gnueabi/ice_helloworld/helloworld-0.1/license-destdir/ice_hel=
loworld/COPYING.MIT: [Errno 2] No such file or directory: &#39;/media/ice/s=
low_ext4/yocto_poky/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/ice_=
helloworld/helloworld-0.1/ice_helloworld-helloworld/COPYING.MIT&#39;<br>ERR=
OR: ice_helloworld-helloworld-0.1 do_populate_lic: QA Issue: ice_helloworld=
: LIC_FILES_CHKSUM points to an invalid file: /media/ice/slow_ext4/yocto_po=
ky/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/ice_helloworld/hellow=
orld-0.1/ice_helloworld-helloworld/COPYING.MIT [license-checksum]<br>ERROR:=
 ice_helloworld-helloworld-0.1 do_populate_lic: Fatal QA errors found, fail=
ing task.<br>ERROR: Logfile of failure stored in: /media/ice/slow_ext4/yoct=
o_poky/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/ice_helloworld/he=
lloworld-0.1/temp/log.do_populate_lic.133477<br>ERROR: Task (/media/ice/slo=
w_ext4/yocto_poky/meta-ice_layer/recipes-ice/ice_helloworld/ice_helloworld_=
0.1.bb:do_populate_lic) failed with exit code &#39;1&#39;<br>NOTE: Tasks Su=
mmary: Attempted 216 tasks of which 214 didn&#39;t need to be rerun and 1 f=
ailed.<br><br><br><br><br></div><div>my bb file is:<br><br>SUMMARY =3D &quo=
t;Recipe to build the &#39;helloworld&#39; in cpp&quot;<br>SECTION =3D &quo=
t;ice&quot;<br>LICENSE=3D&quot;MIT&quot;<br>#LICENSE_PATH +=3D &quot;${LAYE=
RDIR}&quot;<br><br>PN =3D &quot;ice_helloworld&quot;<br>PV =3D &quot;0.1&qu=
ot;<br><br>SITE =3D &quot;file://&quot;<br>PACKAGE_VERSION_MAJOR =3D &quot;=
${@bb.data.getVar(&#39;PV&#39;,d,1).split(&#39;.&#39;)[0]}&quot;<br>PACKAGE=
_VERSION_MINOR =3D &quot;${@bb.data.getVar(&#39;PV&#39;,d,1).split(&#39;.&#=
39;)[1]}&quot;<br><br>SRC_URI =3D &quot;${SITE}${PN}.cpp&quot;<br>SRC_URI[m=
d5sum] =3D &quot;bc9dc64a44f9685d0310b94400a4631c&quot;<br>SRC_URI[sha256su=
m] =3D &quot;789e60072ea96371a35d5653d664b4c4b91e80ce2ea6d523d6caedab06a07a=
2a&quot;<br>LIC_FILES_CHKSUM =3D &quot;${SITE}COPYING.MIT;md5=3D3da9cfbcb78=
8c80a0384361b4de20420&quot;<br><br>do_compile() {<br>=C2=A0 =C2=A0 ${CXX} $=
{PN}.cpp -o ${PN}<br>}<br><br>do_install() {<br>=C2=A0 =C2=A0 install -d ${=
D}${bindir}<br>=C2=A0 =C2=A0 install -m 0755 ${PN} ${D}${bindir}<br>}<br><b=
r></div><div>what could be wrong here?<br></div><div>-- <br><div dir=3D"ltr=
">Kind regards,<br>Sergey Ivanov</div></div></div></div></div></div>
<br>
</blockquote></div>

--00000000000065d99205ac5a71b2--
