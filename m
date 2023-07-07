Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00AFBEB64D9
	for <webhook@archiver.kernel.org>; Fri,  7 Jul 2023 17:46:05 +0000 (UTC)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
 by mx.groups.io with SMTP id smtpd.web10.1552.1688751960208307742
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Jul 2023 10:46:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=rkXGvjQb;
 spf=pass (domain: gmail.com, ip: 209.85.128.171, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-5701e8f2b79so27433917b3.0
        for <yocto@lists.yoctoproject.org>; Fri, 07 Jul 2023 10:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688751959; x=1691343959;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QS+Ta2pOF/2EQbmTNES2YMtwYmn0z0yDlG3kJ6C7h+A=;
        b=rkXGvjQbmV+NnJzhRPvn7JArVXpRhcYMYGVPFqLLfsLcymE+S9dcA7joYLXk2dvtPD
         1yTpNFj2JvgDSaCtb99lgP2xfb5+KnZSLHKmsEug0q/KMj66ijEaPc+x6ycML4TwdGuZ
         5PxRJhtdm/6R8Y8PhQVwI9dnlMW4QYBnYGPHm+D9MJnfpjOSMt3wU46+4e9eD4Nn6v+d
         X/9gjxP7KweaTxF8PzUc89G2WTzMEEaAgJd5Lhm3mnxDmh4sd8fD/NX3V6nHtNtuJSff
         c12UVfbhdMqTxgq553v437yyd5L0fBOU12MfemWEqPMMM+ycVJengkoyCGHjmTyJopAh
         3vqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688751959; x=1691343959;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QS+Ta2pOF/2EQbmTNES2YMtwYmn0z0yDlG3kJ6C7h+A=;
        b=hyWGMiWZU7+QGYVGai90DXyQoWBPsW59x3XhLYj/dMmzEk6VXDV9oTVlJhpFYa8tkf
         5mtEIBHvhfQ0y6p/fT1wjZ9a0FJ1f95XENP8zs4vyXojRblWeRnaY3br6B9bgbzyyMoO
         iiWAHp4e/EVMJjPDg0Mb5BxrVwU265bdvEHxg+g6AgYRhSETwCwuU2yFBfwrwUD9dtVb
         wG/DwDKNgPDtiQi8yp7VGd2b9Q10bTF1MMtsa2O41duql3JzNg/JaV0WkONCvu425nZU
         77+4zjbF21j+xMTbRgTAEE63qWx44aUb6mGJnIakt5xC5gSSi6WuILRKUsNA0wFWLccr
         UdFQ==
X-Gm-Message-State: ABy/qLaplf0wBneHlqV6UfruwqgGKK0oMlJWtXfxVQvin3zkNe9lhFhD
	aXB0oV95t3uf8X5MuvdpN+E=
X-Google-Smtp-Source: APBJJlGDafx6xQaOlsByTtD5V7RmSskkvcF52CrwjsKZVLdXse04r406QuxUQt3DU+qnX5T0+9ljsw==
X-Received: by 2002:a0d:d910:0:b0:56d:308f:1efa with SMTP id b16-20020a0dd910000000b0056d308f1efamr5335733ywe.4.1688751959299;
        Fri, 07 Jul 2023 10:45:59 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:30e0:3d9a:10f2:3368? ([2600:1700:9190:ba10:30e0:3d9a:10f2:3368])
        by smtp.gmail.com with ESMTPSA id u14-20020a0deb0e000000b00576c534115bsm1186537ywe.34.2023.07.07.10.45.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jul 2023 10:45:58 -0700 (PDT)
Message-ID: <28b636e0-66f6-14cd-ff0c-0bd5fd78bba0@gmail.com>
Date: Fri, 7 Jul 2023 13:45:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [meta-security][PATCH v2] openscap: fix buildpaths issue
Content-Language: en-US
To: kai.kang@windriver.com
Cc: yocto@lists.yoctoproject.org
References: <20230629072529.1781042-1-kai.kang@windriver.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20230629072529.1781042-1-kai.kang@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Jul 2023 17:46:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60540


Hello Kai,

My apologies, I just notice this sitting in my inbox.  it should go in 
shortly.

BR,
Armin

On 6/29/23 3:25 AM, kai.kang@windriver.com wrote:
> From: Kai Kang <kai.kang@windriver.com>
>
> Variables PREFERRED_PYTHON_PATH and PYTHON3_PATH are set with
> ${PYTHON_EXECUTABLE}. For cross compile, ${PYTHON_EXECUTABLE} may point
> to other path rather than standard dir such as /usr/bin. Then the
> generated library file contains such path which should NOT. Update to
> make variables PREFERRED_PYTHON_PATH and PYTHON3_PATH configurable to
> fix buildpaths issue:
>
> | WARNING: openscap-1.3.7-r0 do_package_qa: QA Issue: File
> | /usr/lib/libopenscap.so.25.5.1 in package openscap contains reference
> | to TMPDIR [buildpaths]
>
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> ---
>   ...ts.txt-make-2-variables-configurable.patch | 37 +++++++++++++++++++
>   recipes-compliance/openscap/openscap_1.3.8.bb |  5 ++-
>   2 files changed, 41 insertions(+), 1 deletion(-)
>   create mode 100644 recipes-compliance/openscap/files/0003-CMakeLists.txt-make-2-variables-configurable.patch
>
> diff --git a/recipes-compliance/openscap/files/0003-CMakeLists.txt-make-2-variables-configurable.patch b/recipes-compliance/openscap/files/0003-CMakeLists.txt-make-2-variables-configurable.patch
> new file mode 100644
> index 0000000..953b0d9
> --- /dev/null
> +++ b/recipes-compliance/openscap/files/0003-CMakeLists.txt-make-2-variables-configurable.patch
> @@ -0,0 +1,37 @@
> +From f99c3f1f516a84d33794f8e3da59adea1a12ef54 Mon Sep 17 00:00:00 2001
> +From: Kai Kang <kai.kang@windriver.com>
> +Date: Tue, 20 Jun 2023 22:42:51 +0800
> +Subject: [PATCH] CMakeLists.txt: make 2 variables configurable
> +
> +Variables PREFERRED_PYTHON_PATH and PYTHON3_PATH are set with
> +${PYTHON_EXECUTABLE}. For cross compile, ${PYTHON_EXECUTABLE} may point
> +to other path rather than standard dir such as /usr/bin. Then the
> +generated library file contains such path which should NOT. Update to
> +make variables PREFERRED_PYTHON_PATH and PYTHON3_PATH configurable to
> +avoid such issue.
> +
> +Upstream-Status: Submitted [https://github.com/OpenSCAP/openscap/pull/1990]
> +
> +Signed-off-by: Kai Kang <kai.kang@windriver.com>
> +---
> + CMakeLists.txt | 4 ++--
> + 1 file changed, 2 insertions(+), 2 deletions(-)
> +
> +diff --git a/CMakeLists.txt b/CMakeLists.txt
> +index 5db014e77..74628cdd4 100644
> +--- a/CMakeLists.txt
> ++++ b/CMakeLists.txt
> +@@ -125,8 +125,8 @@ endif()
> + find_package(PythonInterp 3)
> + find_package(PythonLibs 3)
> +
> +-set(PREFERRED_PYTHON_PATH "${PYTHON_EXECUTABLE}")
> +-set(PYTHON3_PATH "${PYTHON_EXECUTABLE}")
> ++set(PREFERRED_PYTHON_PATH "${PYTHON_EXECUTABLE}" CACHE PATH "Path to preferred Python")
> ++set(PYTHON3_PATH "${PYTHON_EXECUTABLE}" CACHE PATH "Path to Python3")
> +
> + find_package(RPM)
> + if(RPM_FOUND)
> +--
> +2.34.1
> +
> diff --git a/recipes-compliance/openscap/openscap_1.3.8.bb b/recipes-compliance/openscap/openscap_1.3.8.bb
> index ecc347c..5abd5a6 100644
> --- a/recipes-compliance/openscap/openscap_1.3.8.bb
> +++ b/recipes-compliance/openscap/openscap_1.3.8.bb
> @@ -12,6 +12,7 @@ DEPENDS:class-native = "pkgconfig-native swig-native curl-native libxml2-native
>   #Jun 22th, 2023
>   SRCREV = "a81c66d9bc36612dd1ca83a8c959a59e172eb4b9"
>   SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3;protocol=https \
> +           file://0003-CMakeLists.txt-make-2-variables-configurable.patch \
>              "
>   
>   S = "${WORKDIR}/git"
> @@ -35,7 +36,9 @@ EXTRA_OECMAKE += "-DENABLE_PROBES_LINUX=ON -DENABLE_PROBES_UNIX=ON \
>                     -DENABLE_PROBES_WINDOWS=OFF -DENABLE_VALGRIND=OFF \
>                     -DENABLE_SCE=ON -DENABLE_MITRE=OFF -DENABLE_TESTS=OFF \
>                     -DCMAKE_SKIP_INSTALL_RPATH=ON -DCMAKE_SKIP_RPATH=ON \
> -                 "
> +                  -DPREFERRED_PYTHON_PATH=${bindir}/python3 \
> +                  -DPYTHON3_PATH=${bindir}/python3 \
> +                  "
>   
>   STAGING_OSCAP_DIR = "${TMPDIR}/work-shared/${MACHINE}/oscap-source"
>   STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"


