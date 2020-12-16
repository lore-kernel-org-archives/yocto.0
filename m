Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.11107.1608137376568604612
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 08:49:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ai9G+NUy;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: kent.dorfman766@gmail.com)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 06EF838C0630
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 16:49:36 +0000 (UTC)
Received: by mail-yb1-f180.google.com with SMTP id w127so23012038ybw.8
        for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 08:49:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=cVgOghTMOa7Qx4/aWUIyUpDlrYLzFF1jdFtRpEv0gfw=;
        b=ai9G+NUy/jh5CuvdLDb+M6jx1BhYk2SVmW51Na8bzL7128OCunDE4wBFE7mJHFkda/
         H45pz7jSUr9ROFJnvywqcnXq8oXemPL8OAbqe0LNV9znM/tAfayatKpvDCetOvykgU8M
         U2+ecDAtqSQCYtj7Kh2NVeROcf+8HNty/UdRQrJ3/JPJ5xI+k3bcD6AkieXtD0AzzyJ7
         5xzPiUgh04dD662vwXIdwEZCOI3R3pWXpxEOPt38BiMu1sJCQzNMZ4hN36qZM56Cruob
         ozFr5ccxUhfeKOwmrm2Q22A4r4b9pmlpo+SiK0tbN+yj47W+4jQ9fCrR6yk5bC8BcoDN
         ZZ7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=cVgOghTMOa7Qx4/aWUIyUpDlrYLzFF1jdFtRpEv0gfw=;
        b=kgeK3MfOwo/A4nsysi2i06qEyPSMNItKAQkwA7kXSb0y/B2vj1EwL9OaXh2hqjEXf9
         u5eh2BIiMDBXwJTeDXwWGRi43JajOOga2uQwSJB5abzXLHL8ut7N/DwsAL6aZi9+ckWt
         /CKfrezTyz5ViP2ogJHxxLufTikDTr1kXPVGXPFCCJoEPKvI3Y/W+zuptEJu1MnKgVcd
         Qm/tFp4jXWLoBISJwT6PxiILV7gNFlNrIbA9UKiTlXhS05MgmuC8FKNv/V6frZnBgJmX
         4uqtE3m38bJ884dYiOC0sr299LhU4MPBriID2mRlcxr04i8t0xOADyY4He8AQu6QkOg6
         Hvdw==
X-Gm-Message-State: AOAM533u7Tq985KJT+B/VqZGyGR9gtPVOuZX0yIMyyYL9DZcMUVOaOdE
	AdJs4e05XZhh9tDrhLRhR5Xuj4iufpfZB1uoe3g=
X-Google-Smtp-Source: ABdhPJwcU2LLCuZOjqWvieq8zi/cYzycwRxyGfZLRVAK13xKE7rgAHsPA+hl16CLS6TLVTyMSu/NGtPAx/JiVXkuHAA=
X-Received: by 2002:a25:9c07:: with SMTP id c7mr52595505ybo.21.1608137374837;
 Wed, 16 Dec 2020 08:49:34 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7110:11b:b029:30:2b88:4a85 with HTTP; Wed, 16 Dec 2020
 08:49:34 -0800 (PST)
In-Reply-To: <20201216130822.28476-2-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com> <20201216130822.28476-2-hongxu.jia@windriver.com>
From: "Kent Dorfman" <kent.dorfman766@gmail.com>
Date: Wed, 16 Dec 2020 11:49:34 -0500
Message-ID: <CAK4PFCWshC+D2x6WP9KHvL+XCWKWQTSBUUmGD-0Z2_TvmP9AyQ@mail.gmail.com>
Subject: Re: [yocto] [meta-tensorflow][PATCH 1/25] openjdk-8-native: 212b04 -> 275b01
To: hongxu <hongxu.jia@windriver.com>
Cc: yocto@yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Is there a project policy reason that all these patches are posted in
the main list instead of a dev list?  Isn't there a list specifically
for this kind of thing, to separate questions and info sharing from
the software maintenance aspect?


On 12/16/20, hongxu <hongxu.jia@windriver.com> wrote:
> Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> ---
>  ...njdk-8-native_212b04.bb => openjdk-8-native_275b01.bb} | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>  rename recipes-devtools/openjdk/{openjdk-8-native_212b04.bb =>
> openjdk-8-native_275b01.bb} (78%)
>
> diff --git a/recipes-devtools/openjdk/openjdk-8-native_212b04.bb
> b/recipes-devtools/openjdk/openjdk-8-native_275b01.bb
> similarity index 78%
> rename from recipes-devtools/openjdk/openjdk-8-native_212b04.bb
> rename to recipes-devtools/openjdk/openjdk-8-native_275b01.bb
> index 788612a..dcc1780 100644
> --- a/recipes-devtools/openjdk/openjdk-8-native_212b04.bb
> +++ b/recipes-devtools/openjdk/openjdk-8-native_275b01.bb
> @@ -3,13 +3,13 @@ builds using source code from OpenJDK project"
>  LICENSE = "GPL-2.0-with-classpath-exception"
>  LIC_FILES_CHKSUM = "file://LICENSE;md5=3e0b59f8fac05c3c03d4a26bbda13f8f"
>
> -SRC_URI[md5sum] = "8082ad8dafec378f2a4b24cbfdb4a9a4"
> -SRC_URI[sha256sum] =
> "ef6a3050a1c3477a6e13c24d10ab36decad548649a260559d466467401db15de"
> +SRC_URI[md5sum] = "52c1f769ab67b58b4300713fb5d46a47"
> +SRC_URI[sha256sum] =
> "fccaa6cc14571813dbb427ac08d5acd034782a2654e6090ad4d63e7200011ac4"
>  SRC_URI = " \
> -
> https://github.com/ojdkbuild/contrib_jdk8u-ci/releases/download/jdk8u212-b04/jdk-8u212-ojdkbuild-linux-x64.zip
> \
> +
> https://github.com/ojdkbuild/contrib_jdk8u-ci/releases/download/jdk8u275-b01/jdk-8u275-ojdkbuild-linux-x64.zip
> \
>  "
>
> -S = "${WORKDIR}/jdk-8u212-ojdkbuild-linux-x64"
> +S = "${WORKDIR}/jdk-8u275-ojdkbuild-linux-x64"
>
>  do_patch[noexec] = "1"
>  do_configure[noexec] = "1"
> --
> 2.21.0
>
>
