Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web08.6.1619626259079726332
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Apr 2021 09:10:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ALOHZDqO;
 spf=pass (domain: gmail.com, ip: 209.85.160.169, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f169.google.com with SMTP id z25so24341186qtn.8
        for <yocto@lists.yoctoproject.org>; Wed, 28 Apr 2021 09:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=E/YC/8m2XiXVnnaQjyvwk3seBvDUWMb/fzZLxxpYFGU=;
        b=ALOHZDqOEUFJ+MDCCL08miVCDZ3OB9sSUc2JnVx8uPXmT4JWRCKtUFQYaagJzk0kar
         1Stv9MtGgORS+iRIV9EaR3anVs2IdHGgWvf9YRzpNK0Uu7DyDu3dV2wDUV1r2tZ5l2VL
         d0Yrl64XhV60huFf1yynVYbXqwfvj6oVjAbmM+pqR6gVLz63V53jM0KRZe2x5teGz3b0
         +/l3TevwKAZWd+kuuX2nyBlvc/tEPlzQmi331JxGUH500CcRzFss8khsPvOzq8ARy4zO
         zlVu/pZhYpMeQojkHM33iq6M6CEweo3UScY6ygSLzTv7PKLoeewe4kxw9LynFO1XaLav
         Cg9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=E/YC/8m2XiXVnnaQjyvwk3seBvDUWMb/fzZLxxpYFGU=;
        b=JWBaIjTKkDJQ+EljQUwmo72aVJVN4N8pKxqRhSj2jDtu4TIX3mtADAzAKhgz+AY5Dg
         VnmtH0zw3iiD8KxFaQTrEyUKFV/04Jt8mWiUYCZfmMwIBt4ad7GMdcEorf33blA50Fvq
         5rwIVt92CMh+by2K8RLJhR8SXrSUBs1w4sgtVUs50MSz757g8SnJ8cR+WXv7ts4GmemV
         hJI2rMR/wggqV4hTzuJAmVZCyo2Sp+fcH2mhueMicrhI/iX7G1drrc4pXxRIG7PTTnqs
         CaM60L2mlMQrQ/dWGtAdmHh7Ew5OPcJemc1ZdD2AbqeVGb4xZo9kcEvdig/xebeCself
         pAmQ==
X-Gm-Message-State: AOAM533N/LG9odkNWDfEpN2gKXzCdb3dSVnmpxHPSxUTbxBR2HTapox9
	qNDxaccS+0wNnr0mVRmVsZC095+xRtFvbb/U3lV/nVkTkJQ=
X-Google-Smtp-Source: ABdhPJxoThcTJfc80mQDKIzUu5Mdv+YjsiCDjb5RPtZMNhDyMhclvrxrJR8SZXniWjwZayXVa16Z3J293mO66BcqyQE=
X-Received: by 2002:ac8:5cc4:: with SMTP id s4mr27011820qta.214.1619626258018;
 Wed, 28 Apr 2021 09:10:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210414020058.875501-1-raj.khem@gmail.com>
In-Reply-To: <20210414020058.875501-1-raj.khem@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 28 Apr 2021 09:10:31 -0700
Message-ID: <CAMKF1srmw0n9-ZR7J9tZbR5USnSW8dbAERy8hAzH+2R=_y48MQ@mail.gmail.com>
Subject: Re: [meta-mingw] [PATCH] mingw-w64: Check for __builtin_ia32_rdtsc
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Joshua Watt <jpewhacker@gmail.com>
Content-Type: text/plain; charset="UTF-8"

ping^1

On Tue, Apr 13, 2021 at 7:01 PM Khem Raj <raj.khem@gmail.com> wrote:
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  ...rincs-Check-for-__builtin_ia32_rdtsc.patch | 33 +++++++++++++++++++
>  .../nativesdk-mingw-w64-runtime_7.0.0.bb      |  2 ++
>  2 files changed, 35 insertions(+)
>  create mode 100644 recipes-devtools/mingw-w64/files/0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch
>
> diff --git a/recipes-devtools/mingw-w64/files/0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch b/recipes-devtools/mingw-w64/files/0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch
> new file mode 100644
> index 0000000..ce4ba81
> --- /dev/null
> +++ b/recipes-devtools/mingw-w64/files/0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch
> @@ -0,0 +1,33 @@
> +From 346de7591f58015d111f4d4f3b001382c04d5557 Mon Sep 17 00:00:00 2001
> +From: Khem Raj <raj.khem@gmail.com>
> +Date: Tue, 13 Apr 2021 18:44:25 -0700
> +Subject: [PATCH] intrincs: Check for __builtin_ia32_rdtsc
> +
> +on modern gcc ( >=4.6 ) __rdtsc function is implemented using
> +special builtin function called __builtin_ia32_rdtsc, its actually
> +a define in gcc, so __has_builtin check fails for __rdtsc even
> +though it is defined to imply __builtin_ia32_rdtsc(), therefore
> +check for existence of __builtin_ia32_rdtsc as well
> +
> +Upstream-Status: Pending
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +---
> + mingw-w64-crt/intrincs/rdtsc.c | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/mingw-w64-crt/intrincs/rdtsc.c b/mingw-w64-crt/intrincs/rdtsc.c
> +index bf9c03b..df04711 100644
> +--- a/mingw-w64-crt/intrincs/rdtsc.c
> ++++ b/mingw-w64-crt/intrincs/rdtsc.c
> +@@ -11,7 +11,7 @@
> +   #define __has_builtin(x) 0
> + #endif
> +
> +-#if !__has_builtin(__rdtsc)
> ++#if !__has_builtin(__rdtsc) && !__has_builtin(__builtin_ia32_rdtsc)
> + unsigned __int64 __rdtsc(void)
> + {
> + #ifdef _WIN64
> +--
> +2.31.1
> +
> diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb
> index 9f79ffe..0368841 100644
> --- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb
> +++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb
> @@ -2,6 +2,8 @@ DESCRIPTION = "Runtime libraries from MinGW-w64 project"
>
>  require mingw-w64.inc
>
> +SRC_URI += "file://0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch;striplevel=2"
> +
>  S = "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-crt"
>  B = "${WORKDIR}/build-${TARGET_SYS}"
>
> --
> 2.31.1
>
