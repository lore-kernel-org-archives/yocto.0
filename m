Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web10.2543.1630396391819063671
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Aug 2021 00:53:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QHhI8SJ6;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: ivriabtsov@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id l10so2452411lfg.4
        for <yocto@lists.yoctoproject.org>; Tue, 31 Aug 2021 00:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=K4sz+mEcbCh3i/SOiwg4slCuYjPVxPajtSn6h20X0WE=;
        b=QHhI8SJ6B8J74Ds3jncIQ8ie32xqERRnGke6iMXdjZCMK04DmsQZvMF8XhTQqE8ods
         Hh90j7PRifyswJ1w4VKZ+M7JzA2TNfFPvq89HsjX9AySj54R6BeK6ezUco05uQs/82fu
         Jv7veVikiMCsihOu2JgE3OgKZJwJqO3ZfzYZNmP4mDvm05Q3fBcxQTtCqS0hezvS3MMv
         aIJWb6m+Ed0yuh4LdkjxWLE3nImHJUpjwgxJQtalfMCtRxQIg4r1Ek2gkexBOHbwpqI7
         dWbLLoGCXuW61EkkM8NpvgVuIw4iIymFhkoGN+vpe2IC2Z0a4B1y01q+bGD9CkfH9k9d
         wTvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=K4sz+mEcbCh3i/SOiwg4slCuYjPVxPajtSn6h20X0WE=;
        b=sm3oVyQmrqmaIJRZCJgc74L9X+xlS9XRCnkSV6mO/JSb9eFk2eZdl2qsiAwD+fhnuE
         aYedXqaQajFnJdvEI1AiO0gTyOaB8yvnoBOSs6A+HceDTjiC0C55MNx31ry6GUWlQ02a
         2/AAc+HMWBeo2oIaz6a9S6DR3vbIX05GExhcNMLcGmSng9nRb7ykvOYKl0il+bNO28LF
         V0HxvtqxbSMUKf3Ey8xbssM8iP9QRNyBdjl5q7EqBMaFL2TSxi/DEbStZJsauDwSUIlh
         7YRfBT0381hv2bB/lJ1zr29cEde0ODMVPeRJeT7Xac47dRbRxlN7UdwH4dd9AUf2h88u
         +AnQ==
X-Gm-Message-State: AOAM5317C9xs1UuBJ8s979ZFMa4zf3qEBKdSszBcUIx6aU5WnfoOJhPS
	TMQCgy4hlR+a9AlbQN1qHIDCcgKfB7Cygksq7LM=
X-Google-Smtp-Source: ABdhPJxR7Lr9lWko/tEfm3mJYiy30nsvdSjFY09r+6SyaOgtZIfLYbs+lKHmAhYm7hQNSpl3vIWHegGA4DToq3CrSpw=
X-Received: by 2002:a05:6512:1087:: with SMTP id j7mr20127410lfg.638.1630396389958;
 Tue, 31 Aug 2021 00:53:09 -0700 (PDT)
MIME-Version: 1.0
References: <16A050FBE1213E46.30479@lists.yoctoproject.org>
In-Reply-To: <16A050FBE1213E46.30479@lists.yoctoproject.org>
From: "Ivan Riabtsov" <ivriabtsov@gmail.com>
Date: Tue, 31 Aug 2021 10:52:58 +0300
Message-ID: <CAKAnv4EUDy9Z8M1BCv7rR-_4RBFkbMCXUuf-Po-CPDcmhmjaUA@mail.gmail.com>
Subject: Re: [yocto] editing Makefile after configure stage to disable -Werror
To: ivriabtsov@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

i cleaned out -Werror wherever possible with command:

sed -i 's/-Werror//g' $(find . -type f -exec egrep -l _no_Werror {} \;)

and elfutils is builded

=D0=B2=D1=82, 31 =D0=B0=D0=B2=D0=B3. 2021 =D0=B3. =D0=B2 09:41, Ivan Riabts=
ov via lists.yoctoproject.org
<ivriabtsov=3Dgmail.com@lists.yoctoproject.org>:
>
> Hello, I have the following error:
>
> ../../elfutils-0.166/libelf/libelfP.h:53:30: error: =E2=80=98__elf64_msiz=
e=E2=80=99
> specifies less restrictive attribute than its target =E2=80=98elf64_fsize=
=E2=80=99:
> =E2=80=98const=E2=80=99 [-Werror=3Dmissing-attributes]
>
> i try to solve this by patch:
>
> diff -Naur elfutils-0.166_orig/libelf/libelfP.h elfutils-0.166/libelf/lib=
elfP.h
> --- elfutils-0.166_orig/libelf/libelfP.h 2016-01-12 15:49:19.000000000 +0=
300
> +++ elfutils-0.166/libelf/libelfP.h 2021-08-30 19:38:44.866175082 +0300
> @@ -48,6 +48,8 @@
>
>
>  /* Helper Macros to write 32 bit and 64 bit functions.  */
> +#pragma GCC diagnostic push
> +#pragma GCC diagnostic ignored "-Wmissing-attributes"
>  #define __elfw2_(Bits, Name) __elf##Bits##_##Name
>  #define elfw2_(Bits, Name) elf##Bits##_##Name
>  #define ElfW2_(Bits, Name) Elf##Bits##_##Name
> @@ -632,4 +634,5 @@
>  #define INVALID_NDX(ndx, type, data) \
>    unlikely ((data)->d_size / sizeof (type) <=3D (unsigned int) (ndx))
>
> +#pragma GCC diagnostic pop
>  #endif  /* libelfP.h */
>
>
> But the patch does  not work, error appears again.
>
>
> i try to add --disable-werror to configure flags, but i have follows warn=
ing:
>
> configure: WARNING: unrecognized options: --disable-werror.
>
>
> The only solution to the problem I could think of is editing the
> Makefile after configuration, please tell me how this can be done?
>
>=20
>
