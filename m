Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.1658.1603824308636259763
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Oct 2020 11:45:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PYQR9Zhq;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8CC0238C0697
	for <yocto@yoctoproject.org>; Tue, 27 Oct 2020 11:45:07 -0700 (PDT)
Received: by mail-ed1-f53.google.com with SMTP id l16so2545369eds.3
        for <yocto@yoctoproject.org>; Tue, 27 Oct 2020 11:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=ulN+DO0XnOn30V9OOqE8s7EYtMx+FaseT96rel87B6A=;
        b=PYQR9ZhqedaWskxEF3/EGqog9ZsSxrbU+UPljQzPYOVIw/nzxkOr/4s/0AxXoc4nM0
         WSdRifsxcZVmKUPOVDtMwNKRHB3erdWTxMZ4+ZMdyyJ4tnemL8zA7Q3MLVUUVZ3H+Sf2
         mNbfyYv4YxvE/4rv1fr0wCu6+WjNqY+f38A2hpgO2cdH/kfMiJ1B6Z4rNjSbAQNvKKQh
         HIo+J8z1ve192ebQPh7vAoRnibz82RN8SC7GzHg5j3tFVtjEd2tKIUUm6HTXXFR/8eJs
         85p6Ytt4pI3HR6J0ukkJXJ8vwfDmCEbyavBJf6exr8S79npqV4osfNDy70nzALmNg5wf
         h19A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ulN+DO0XnOn30V9OOqE8s7EYtMx+FaseT96rel87B6A=;
        b=gSbN2EjrPQJW0YNzw9jAVYu2ntwVMPTXbMMvDkBC+4M+rUHh6HabNbCUwbuVRPMsUG
         WKBwGTef6V98b7cOr41jbiSeaXhzSoMCOBSeegO1A/tJC/f1EhyUck4ILaLv0Yu/jlQe
         R7KkESbwJ6AQLedp86pBDxgnJRJ3P47WmIDY6FeyMWOkervqQ3hHYV1tQ7ilTy2weiUw
         op3Cws/BPmgz+zonLVxZPvlLygwgrOlFA5liTJaiKfISXEHTe/6fNBN9kD8w8J7MazVH
         CE0avq2lU3lhAg1xNMOnPdYOc4GfW7JbUv48vEJGf9GNMrHfyk0Ud9e9Jo8GZS/TTxgi
         98xw==
X-Gm-Message-State: AOAM531rmbg0WIcsupEDuNaKpl2h8nTQprCPFCjNKIjXN7QgxrYsUZ0q
	A0+9/UF6iDr8WjJxUtIMf2FVxBgcqM7sVxQX3JnwaVi/KOE/TQ==
X-Google-Smtp-Source: ABdhPJyHIXFAeZiD/fsnnOPRl3nQ7dIdnGtvbzO71+HlA1MjX+OIDB/0lDNmO+Vo5AvQ8Todm2NeTJHDgeH1fSh9178=
X-Received: by 2002:a05:6402:156:: with SMTP id s22mr3798536edu.178.1603824305492;
 Tue, 27 Oct 2020 11:45:05 -0700 (PDT)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Tue, 27 Oct 2020 19:44:53 +0100
Message-ID: <CAAfyv35_J=4QFENqP9w_TcqJk_oSrOqC-tUfkFJrTvvJh4ybHg@mail.gmail.com>
Subject: dlib recipe linking issue
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm creating a recipe for the dlib library. Source also contains
python bindings so my recipe looks like:

SUMMARY = "A toolkit for making real world machine learning and data
analysis applications"
HOMEPAGE = "https://github.com/davisking/dlib"

LICENSE = "Boost-Software"
LIC_FILES_CHKSUM =
"file://dlib/LICENSE.txt;md5=2c7a3fa82e66676005cd4ee2608fd7d2 \

file://dlib/external/pybind11/LICENSE;md5=beb87117af69fd10fbf9fb14c22a2e62
\

file://dlib/external/libpng/LICENSE;md5=243135ddedf702158f9170807cbcfb66
\

file://docs/docs/license.xml;md5=2e6ff4080dcb217d4d300b90e9aabb5b \

file://examples/LICENSE_FOR_EXAMPLE_PROGRAMS.txt;md5=57eee82829ed297e23d84de5f905afee
\

file://examples/video_frames/license.txt;md5=127ee508b60a6be9dea8af3b441993dc
\

file://python_examples/LICENSE_FOR_EXAMPLE_PROGRAMS.txt;md5=064f53ab40ea2b6a4bba1324149e4fde"

SRC_URI = "git://github.com/davisking/dlib.git;protocol=https"

PV = "1.0+git${SRCPV}"
SRCREV = "3b794540baeabbcd033b544230401967106d5483"

S = "${WORKDIR}/git"

inherit setuptools3

DEPENDS += "python3 cmake-native"

FILES_${PN}-dev += "${libdir}/cmake/dlib"

EXTRA_OECMAKE += "-DDLIB_NO_GUI_SUPPORT=ON -DBUILD_SHARED_LIBS=ON
-DDLIB_USE_CUDA=OFF"

Problem is to build python bindings because it builds the first c++
code using cmake and pybind11. I hit the first issue described here:
https://github.com/davisking/dlib/issues/2220 and resolved it simply
by commenting out code which compares python binary and toolchain
binary.

Then compilation seems to progress but there is again an issue with
linkin because it tries to link with x86-64 python libraries instead
of arm python3 libs. Any ideas how to solve this issue or anyone can
share a working recipe.

Thanks and BR,

marek





-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com
