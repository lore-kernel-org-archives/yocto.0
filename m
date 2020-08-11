Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
 by mx.groups.io with SMTP id smtpd.web12.400.1597167406495025352
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Aug 2020 10:36:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GocT7cQ8;
 spf=pass (domain: gmail.com, ip: 209.85.208.65, mailfrom: icegood1980@gmail.com)
Received: by mail-ed1-f65.google.com with SMTP id v22so9701862edy.0
        for <yocto@lists.yoctoproject.org>; Tue, 11 Aug 2020 10:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=YXuLouinFu9eujoBciZkEW0wMT/rKGSiX12eev53Cjc=;
        b=GocT7cQ8XCgNaZ1fzLo0VOqQ7gKjYOmLcOGJFCwjJXxVL5Z6Aduo9+y/DyeHFifayB
         EFGnIG6JDD4PwMyO3PVHxWsOBSpXk0xRWR+VZsZow0J1IZNBKwzZklDMgNoTy/JpmdbR
         9MIU9fGMFMorPoMZk/kypp/7Dn7lyKc3/IaJh8L3IJicZONkv3s7Oz677mgh4i9x1CXF
         lXxaJKL4FRmC46nz2Zk44oeCgCZFSQkAXaXVXIfzVdwtuSgfpygp09fDshmaFZ/FD3fe
         VcxPCGrC23t/0LAsYP9YQW/nQoxg5d63uqSQSl6Ku3SfRxThT/wea1eqGXzi6eiY+WU6
         E7Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=YXuLouinFu9eujoBciZkEW0wMT/rKGSiX12eev53Cjc=;
        b=QY6/GDTt2Wco3ccQuVj2t767t+6gfoDZ1unetVVwNIdbklQ/O15GXG39Sa4Gd+FkCi
         1alI7w+8jikfidawJ/0mUILoo0j8YJcl+nCVIp+ftZU1jyZm+ri+NqnjLt2w4Ml5KfoS
         zgZLWwZm577pJzrQlmEr3w7boZtSgDDz3iUBsN5Rr+iex71EniUH/sIF7qa3nB7KWgXK
         OJcZj56AZLXPGCa9L4xOCtmHPB2qURNdWIfbfzabw+IWeSM9Emh8GYiwp2nuMfbK8H7n
         CRaYAoc+lT8ixpa/tK2LItyP5vSGVG/K66EMi6iFTBQeffz9EEFvbUzEYNyVnrpE9Plp
         fBxQ==
X-Gm-Message-State: AOAM530v/l6ZCT4O1QRnpqRyNtu+azqG8KmhOlKevSlOfXTkY04/LKyg
	QwkWyKbvzy3s+NEgqQ6s4pj5qxwnAI7Ji/ZMrujlnMSzmOY=
X-Google-Smtp-Source: ABdhPJxGKl4d8JWuKgz+1vyM4g+LEQS3AQMgETUFaUaa0LDsxHX8JiEccXPVr7fgR8QrWoS/eWv5+iYwIgrHvaAeOQ0=
X-Received: by 2002:a50:8f44:: with SMTP id 62mr28207436edy.3.1597167404494;
 Tue, 11 Aug 2020 10:36:44 -0700 (PDT)
MIME-Version: 1.0
From: "Sergey Ivanov" <icegood1980@gmail.com>
Date: Tue, 11 Aug 2020 20:36:33 +0300
Message-ID: <CAJCbrz7gyBvKzyTjSFNBCiM2oZtj1E_ghGdcrP7jJaN-LbRDXg@mail.gmail.com>
Subject: cmake-based project with system lib dependency
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000cab1f605ac9d8348"

--000000000000cab1f605ac9d8348
Content-Type: text/plain; charset="UTF-8"

Hi there.
I want to configure the cmake-based project with dependency on library
libuuid.
The latter is located under util-linux and populated in my
build/tmp/deploy/images/qemuarm/core-image-minimal-dev-qemuarm.manifest:

util-linux-dev armv7vet2hf_neon 2.35.1 (here should be header as well and
static library)
...
util-linux-uuidd armv7vet2hf_neon 2.35.1 (i believe the only library)
...
My bb file is:

SUMMARY = "Recipe to build the 'helloworld-cpp-direct-compile' in cpp"
SECTION = "common_templates"

SRC_URI = "file://CMakeLists.txt \
           file://foo.cpp \
           file://foo.h "

inherit pkgconfig cmake

S = "${WORKDIR}"
OECMAKE_GENERATOR = "Unix Makefiles"
# project version seems to not be propagated properly
EXTRA_OECMAKE="-DCMAKE_PROJECT_VERSION=${PV}"


while my CMake file has:

pkg_check_modules(uuid REQUIRED IMPORTED_TARGET "uuid >= 2.25")


Now I obtain the error from cmake:
-- Checking for module 'uuid >= 2.25'
--   No package 'uuid' found
CMake Error at
recipe-sysroot-native/usr/share/cmake-3.16/Modules/FindPkgConfig.cmake:467

What philosophy of yocto to make it work? In other words where 'stage' is
supposed to be located so pkgconfig will find library?

-- 
Kind regards,
Sergey Ivanov

--000000000000cab1f605ac9d8348
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><div>Hi there. <br></div>I=
 want to configure the cmake-based project with dependency on library libuu=
id.<br></div>The latter is located under util-linux and populated in my <br=
>build/tmp/deploy/images/qemuarm/core-image-minimal-dev-qemuarm.manifest:<d=
iv><br clear=3D"all"><div><div>util-linux-dev armv7vet2hf_neon 2.35.1 (here=
 should be header as well and static library)<br></div><div>...<br></div><d=
iv>util-linux-uuidd armv7vet2hf_neon 2.35.1 (i believe the only library)<br=
></div><div>...</div><div>My bb file is:<br><br>SUMMARY =3D &quot;Recipe to=
 build the &#39;helloworld-cpp-direct-compile&#39; in cpp&quot;<br>SECTION =
=3D &quot;common_templates&quot;<br><br>SRC_URI =3D &quot;file://CMakeLists=
.txt \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://foo.cpp \<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://foo.h &quot;<br><br>inherit pk=
gconfig cmake<br><br>S =3D &quot;${WORKDIR}&quot;<br>OECMAKE_GENERATOR =3D =
&quot;Unix Makefiles&quot;<br># project version seems to not be propagated =
properly<br>EXTRA_OECMAKE=3D&quot;-DCMAKE_PROJECT_VERSION=3D${PV}&quot;</di=
v><div><br></div><div><br></div><div>while my CMake file has:<br><br>pkg_ch=
eck_modules(uuid REQUIRED IMPORTED_TARGET &quot;uuid &gt;=3D 2.25&quot;)</d=
iv><div><br></div><div><br></div><div>Now I obtain the error from cmake:<br=
>-- Checking for module &#39;uuid &gt;=3D 2.25&#39;<br>-- =C2=A0 No package=
 &#39;uuid&#39; found<br>CMake Error at recipe-sysroot-native/usr/share/cma=
ke-3.16/Modules/FindPkgConfig.cmake:467</div><div><br></div><div>What philo=
sophy of yocto to make it work? In other words where &#39;stage&#39; is sup=
posed to be located so pkgconfig will find library?<br></div><div><br></div=
><div>-- <br><div dir=3D"ltr" class=3D"gmail_signature">Kind regards,<br>Se=
rgey Ivanov</div></div></div></div></div></div></div></div></div></div></di=
v>

--000000000000cab1f605ac9d8348--
