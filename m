Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
 by mx.groups.io with SMTP id smtpd.web12.767.1595267255479220712
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 10:47:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jZvVspoC;
 spf=pass (domain: gmail.com, ip: 209.85.128.65, mailfrom: jpewhacker@gmail.com)
Received: by mail-wm1-f65.google.com with SMTP id 17so360378wmo.1
        for <yocto@lists.yoctoproject.org>; Mon, 20 Jul 2020 10:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=q1prXkX1TbnG7y8OUiN3h9OTzHHPv5GoJSIb6n0asu8=;
        b=jZvVspoCL91WNKwp17awymZZORhpr6LAkeEzU2S0uYld2Ntt5RUhU37C5jz/19rq/y
         A3ur4ZeuzhmJVYc4gLACuV5kheEE/BIbF5XYEv7UVWgog80JK9ihgEm+q2ux1O9Q46og
         JFIFS1yivADq5tN5fhQmoPIwcCkS4B9klV/7gcVzZoHb8w9ujiU6+wozoiJoYZwLebqU
         qfB1H/2gLq7Z5t683UR9Oyjf2OX7R0WoSnDqI815H128ZWE88StaFrVh7hmRZ1Rqo2VS
         y9Wvxpd5BMVPxXLXZv9Yuw8xNZSAbMCkB2D0peenut0Z1eXTPHThZmTc28RUUwknCTvl
         WHXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=q1prXkX1TbnG7y8OUiN3h9OTzHHPv5GoJSIb6n0asu8=;
        b=hGU8xlHASixahYz2eBoyO2KOw+37dQhvjCgCgf4wDFBTpwq/f79cFJ4vzuwgzwY8Un
         uvF9Mx9XHoiG2PIklArCjk4+j9eezSvrRJqQPtOY0IHTzdts0Ie8URUn2GQBUJcKaAzD
         a4PV0nsCbAGcUXJjXHTODA/XJtGNcgHx9eAkPg+UKR0eBX6Q/pRpr2G8Yb/5f9NCScz9
         9PQMaAAlgJHPP2TA0A+XndmR2JuX0WuClNNkebgSsL70FxK5O0NuAgP1L+P29Un4hwNB
         0ODLCZLa0BLst3H8OUQ61C9pLFn+AIoXtfIHXm+XeGuGx5UwGy7HZMJjuo8ogkoeD2QV
         xrcQ==
X-Gm-Message-State: AOAM530CutOsbKkU45jCL3oWgzKQNRkmwZgVkW9ur3HV4T+A+qrd45gd
	tnr6RJbJ2ib+6JQ8g5f2CX1EB3UtPhzPgaRTBJg=
X-Google-Smtp-Source: ABdhPJwlBhB0tU57i01d4r0e6WjrkaAFMzn8RyZVJIGhdaakOvYVNr7qtdJb+/0+AHQX9m51SVr3bjsTOPWGTLo4+DM=
X-Received: by 2002:a7b:c394:: with SMTP id s20mr436834wmj.31.1595267253992;
 Mon, 20 Jul 2020 10:47:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200718160325.18297-1-oleksandr.s.popovych@globallogic.com>
In-Reply-To: <20200718160325.18297-1-oleksandr.s.popovych@globallogic.com>
From: "Joshua Watt" <JPEWhacker@gmail.com>
Date: Mon, 20 Jul 2020 12:47:22 -0500
Message-ID: <CAJdd5GZtu8Noxd4Cp1ezLuTzwo3bjmHCkt5YJ4hFVC5B_vkB1w@mail.gmail.com>
Subject: Re: [meta-mingw][PATCH] expat: Switch platform to Windows in CMake toolchain file
To: Oleksandr Popovych <oleksandr.s.popovych@globallogic.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Sat, Jul 18, 2020 at 11:03 AM Oleksandr Popovych
<oleksandr.s.popovych@globallogic.com> wrote:
>
> GNU Autotools build system is considered in upstream as potentially
> deprecated (https://github.com/libexpat/libexpat/issues/330), and
> expat library will be switched to use CMake.
>
> So this patch depends on "expat: Added ptest" patch for 'meta' layer,
> and fixes CMake toolchain file to work correctly with 'meta-mingw'
> layer.
> ---
>  recipes-core/expat/expat_%.bbappend | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/recipes-core/expat/expat_%.bbappend b/recipes-core/expat/expat_%.bbappend
> index 626ea5b..0fe3aa0 100644
> --- a/recipes-core/expat/expat_%.bbappend
> +++ b/recipes-core/expat/expat_%.bbappend
> @@ -1,3 +1,9 @@
>
>  FILES_${PN}-bin_mingw32 = "${bindir}/*.exe ${sbindir}/*.exe"
>
> +cmake_do_generate_toolchain_file_append_mingw32() {
> +    cat >> ${WORKDIR}/toolchain.cmake <<EOF
> +set( CMAKE_SYSTEM_NAME Windows )
> +EOF
> +}
> +

Hmm, this seems like the kind of thing that should be set for all
mingw32 builds....

> --
> 2.17.1
>
