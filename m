Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
 by mx.groups.io with SMTP id smtpd.web09.14040.1583421482065000526
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Mar 2020 07:18:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=OgIA4afO;
 spf=pass (domain: gmail.com, ip: 209.85.210.194, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f194.google.com with SMTP id c144so2910231pfb.10
        for <yocto@lists.yoctoproject.org>; Thu, 05 Mar 2020 07:18:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=4YKicd72WbKYwHimV445TRAHgMtbtqqv0yaDzGpag4w=;
        b=OgIA4afOfqH6JR+JxWcJNQ533FGfiFF8HRmaNG4UxbTF2ZBQ7PPqfRaFiTSo6o7hof
         UFX9TAXUadrp3JjSSh8vJIsUUnT48UgMm47gSMBTSyT0ltMR7neDxIdEyaHBiFODzM68
         lljo+76W50wrwcQDxMsr/A16obYYRbZ8QTYo8jhtLQGHxfM5VamSff7wzNK9U5MJcdgA
         RjwD3hAHeioocj0B1JpLrIw4ApxzbDemFTbOnJyGV6/EZ0nRIV6mUWw4emTogas45wz4
         Y6uWCifQdQYUG72OH1JFPj9zWas1K4QwFDWt9k3M+lcM3bh7d/tbKEXRn/Pjj6wcpmES
         00dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=4YKicd72WbKYwHimV445TRAHgMtbtqqv0yaDzGpag4w=;
        b=M1NjsXu9kYbeesy9IsAgO4izOcjvSD2Pykg4G0VizmiM1+EtfH23MTFSYWKq5TvIu7
         58EhSJMKgcxe5F3B4n8jNlkeje0SITTRoDRmfc9pZ0sOh17RCaM4i+zCygLjc/PYSDve
         ItcctUZ/u8y/tG/8h711T9XFtqrQKTLfGDE4myXHoIQuXbPC/dL7SnBX4FSPLRghr0ZE
         oPzvnNbgVfM4VyauXQW9p1MAMYy9el7PQanwfFe2TToEvBZ5p1VbXt4ts4gj8HTLT7ty
         19L3z5eNBz8LJRZbCLOK44bJe9P2xe16CS4Ty0dxfSOhjdbKsVX1HqGQLvoD35lINF0e
         rTdA==
X-Gm-Message-State: ANhLgQ3XwTYAQqcu9sGNVyhenkUBojl6JUGyM4+GMJv4ktK1iFFthA+b
	q90iMHoPLfA0uQB8jAR6gntkv4j1
X-Google-Smtp-Source: ADFU+vv/deh7172aXzYIf1dnbha/W6o5LEI28ghCZg6ISrEgWBwXGcwgxQevGaY2n30ZPzmB7YdbMQ==
X-Received: by 2002:aa7:9732:: with SMTP id k18mr8605841pfg.231.1583421481222;
        Thu, 05 Mar 2020 07:18:01 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:2c7d:95e8:14a7:6e0e? ([2601:202:4180:a5c0:2c7d:95e8:14a7:6e0e])
        by smtp.gmail.com with ESMTPSA id z3sm32669802pfz.155.2020.03.05.07.18.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2020 07:18:00 -0800 (PST)
Subject: Re: [yocto] [meta-security][PATCH 1/3] sssd: Add PACKAGECONFIG for python2
To: =?UTF-8?Q?Jonatan_P=c3=a5lsson?= <jonatan.p@gmail.com>,
 yocto@lists.yoctoproject.org
References: <20200305124740.2582832-1-jonatan.p@gmail.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 xsFNBFnlUP4BEADpKf+FQdLykenQXKk8i6xJNxDow+ypFeVAy8iFJp7Dsev+BtwUFo8VG7hx
 Jmd71vHMw+coBetWC3lk+IKjX815Ox0puYXQVRRtI+yMCgd6ib3oGxoQ8tCMwhf9c9/aKjaz
 mP97lWgGHbiEVsDpjzmMZGlJ6pDVZzxykkJExKaosE46AcA8KvfhRQg5zRyYBtinzs8Zu8AP
 aquZVHNXxPwjKPaSEEYqQjFeiNgFTavV+AhM2dmPmGUWCX9RZisrqA4slGwEB0srMdFf12Zg
 mD35Y9jZ80qpu5LPtJCFcsaAlebqR+dg36pIpiRR+olhN1wmC6LYP1vw6uMEYBjkTa2Rnb6+
 C4FDzCJD4UCrUvLMNeTW810DY0bjMMj3SfmSGSfQUssaaaTXCVlLGuGxyCr/kza1rHaXMKum
 Ek4EFj1fyn7AfkSLEHfJfY4sO1tpgigvs4eD/4ZSQEXSu/TjVvyKx4EvUbhlGMRyH2CPwD/H
 7DFF8tcVtJvCwUUW+zKtjxjSSLrhniNMXAOQJZ6CdaqCe4OyJQT5aRdr+FWbBRjpaRCCf5nf
 dTc88NMU9PrBT3vu0QJ5WNPO6MJpnb+d8iMNLZAz8tv8JMm2l+sMcNKSJ6lhX8peoBsfMVqc
 FgiykEO0fUt7DCbUYR5tLjM/3E5tHvTjMooVJyOxoufVLYtTtQARAQABzSFha3VzdGVyODA4
 IDxha3VzdGVyODA4QGdtYWlsLmNvbT7CwX0EEwEIACcFAlnlUP4CGyMFCQlmAYAFCwkIBwIG
 FQgJCgsCBBYCAwECHgECF4AACgkQ7ou0mfRW5/kuhRAAlR2FTq5572jrX5nnPR7AqI2bvSVb
 vqGLlvv739WhghvagbC+tu05QguopAhWW1/DcHK2+QtfIoC9UZrSW4RaO0CCo5sPjqK7l1KT
 ngWX/rGjF6xTF2QN0U/btcpMyVN2CNtVLwsDF9e+GHKoUcnFkP+JP8vHGokN9k6E/c97hLaL
 IJPeKl8LZXc2Efk+MaW1NXkfDJdcp/p+voajbihSQO6OZ/o+x9d2I3ZybKfTZ71+ek5Hxzjz
 g6KkMOI7KJjlmBlrQFAtVbS+CFAKrwkYznE6ggkcmGv3N7DeUBTUR78hf+EZEAM+ajeLMtrG
 rXE00pIb+gLGYPZxba5pCdQ+qWUW38qi9UnIRPm6fq7Ypx1r6XwJvbgCOkhbxo3D4YUdyC0b
 FE9lgrg8htbc9in4j2+hVI6ALswNjLprzXdzdKrd+T3Egx36o3Z/qrYsW2o5/A5sVvvASVKi
 wRPuEKhEhfmiHUPLvuKqhMoymHaz3fg5D2Q8G0gSDkLgeEpAjiWqf4+AGLx+MSDai7DSOsmI
 t61kWxs7cFTB32UrB/TDoVNn3Fm88ZFQpA/bngikE9jgEm045mSY86fNlbFj2mcCd0Ha1i1n
 aYc97RpgfjNMWyHDVHOGrNg/hJjkGa5RsAXkfyBwltHRw0Hj4urUQ3rr8um8PLe43SezPwXA
 oRoyDxDOwU0EWeVQ/gEQALNHwj5VSPdnvXy1RXUuH+rclMx4x8zaqDyY0YqHfA7b/d8Y0VAt
 Y6YpzDeFTwD8A0Wfb7kZ2mlDIE6ODCB71uT/E3C6b+FiiN+lgzslznjUW+9l8ddDhRrC8HMG
 37vrXF5h++PTXUKEKUlkDib1w093tu3mlJXUvIAzl8CEHkptF6Br0L9XxFwuWoNUfjT9IorQ
 0SVIhvq5PhVAITXUD5fD7/N8B4TYegmHFRo1UaaKSnSHwlJJkzKpeWOH8QTYrP0RHxX86Obv
 IZuwbAo3F3oojcvLJt9NxWnbEmEALkleklLZnukgu7q5Wp1VDwhUbMFTLb6qmnBa/Xi30uOk
 0l1TMHDbeQswvQDOZBAMukSRqyBetKxQ3iTfZ/3z1ubQRcVDbVlMDScSHQq0LK3F9yMOMM/6
 0QPqJjl13xn/+Bn7WJiAIXXwzAV7uo6i0khFfjDtCDQ40aeffqOLxp1yMLkc3EKJGcQ5F6O2
 ycEf4QXCYUbMXjxB0EJB8y7z+xOi5Mmd/pPlVmZ2gQK84NAL90p7n7jRlyf3gOUY+JOl4c5e
 UFiIhOzmuqNrvPOiZ02GXh6SGUU5y7IgSoIKvXSFgHAn2OG/tcspBmkyv6IuNVpmbmEgYn4I
 Rnt40UXVQkxTh0dENFhk2cjunMYozV/OqYCgmZLFSeJd8kAo4yn+yOtNABEBAAHCwWUEGAEI
 AA8FAlnlUP4CGwwFCQlmAYAACgkQ7ou0mfRW5/nNcg//R63cbOS6zLtvdnPub3Ssp1Ft8Wmv
 mni+kccuNApuDV7d63QckYxjAfUv2zYMLpbh87gVbLyCq9ASn552EbfRhTvHdk44CgbHBVcI
 ZBEdZWgRR5ViJakQSYHpP2e5AGNFnx9gSIuRTaa5rvZM+4xeoZ2vJiq93TtaYPr7UFNfK+c4
 vv4C66lkt9l95/I10eSc3RqbOKZW47emlg4X3ygEoB9k2lPrpspyf6sUuSEi0WrlSxoLAr6p
 JG8rTUErYNeXe6JCdL31odDx1Dh5sdKIj2RicUYZNilxu9f1M7jZwf2ra1FGAlKj2ybqmgpZ
 EFteaiCinEYsvDyZyOiWHjAFI+RZIPQQL3AnVp4l7wYD3r9hnqYPww0slyMDcb9262RoFkHq
 dDwxPYarrNjWUpOzxB6bFxOgNRdCTgvQl8Ftk8a/yXB6vHeUSm1vPFCBxQPZytyfOLhEWm0J
 /mkVL0Z6iRK3p1LKnpLYCS4/esL2u7RrhPyCs2SsL58YcQF/g+PpeT9geZ+oyZ/4IQ+TWJoU
 PNHndk8VBTpzrmOaJxrebNL/W6C8JCmbLM11TAUMmHYi9JDytN8Au78hWpDbIdKwg1LeSxpw
 ZZD/OqOc0DBvHOpQhzkSrtR1lVlDV/+9E8J1T4uDhrGmZwYV+4xQetypHax8aAHisYbjXdVa
 8CS2NxU=
Message-ID: <296ae9eb-acb9-b823-b931-398a8cb4ae50@gmail.com>
Date: Thu, 5 Mar 2020 07:17:59 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200305124740.2582832-1-jonatan.p@gmail.com>
Content-Type: multipart/alternative;
 boundary="------------0A7143132C8F9B70F2642A22"
Content-Language: en-US

--------------0A7143132C8F9B70F2642A22
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 3/5/20 4:47 AM, Jonatan Pålsson wrote:
> Fixes the following build error:
>
>     .. snip ..
>     | checking for python2... no
>     | checking for python3... (cached) python3.8
>     | configure: error:
>     | The program python2 was not found in search path.
>     | Please ensure that it is installed and its directory is included in the search
>     | path. It is required for building python2 bindings. If you do not want to build
>     | them please use argument --without-python2-bindings when running configure.
>     | WARNING: exit code 1 from a shell command.
>
> Signed-off-by: Jonatan Pålsson <jonatan.p@gmail.com>
> ---
>  recipes-security/sssd/sssd_1.16.4.bb | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
> index c381c32..9feba14 100644
> --- a/recipes-security/sssd/sssd_1.16.4.bb
> +++ b/recipes-security/sssd/sssd_1.16.4.bb
> @@ -33,6 +33,7 @@ PACKAGECONFIG[ssh] = "--with-ssh, --with-ssh=no, "
>  PACKAGECONFIG[samba] = "--with-samba, --with-samba=no, samba"
>  PACKAGECONFIG[selinux] = "--with-selinux, --with-selinux=no --with-semanage=no, libselinux"
>  PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
> +PACKAGECONFIG[python2] = "--with-python2-bindings, --without-python2-bindings, python, python"
Python2 is not supported in Master so maybe append EXTRA_OECONF  with
--without-python2-binding. I can take this for zeus thou.

- armi

||

>  PACKAGECONFIG[python3] = "--with-python3-bindings, --without-python3-bindings"
>  PACKAGECONFIG[nss] = "--with-crypto=nss, ,nss,"
>  PACKAGECONFIG[cyrpto] = "--with-crypto=libcrypto, , libcrypto"
>
> 


--------------0A7143132C8F9B70F2642A22
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 3/5/20 4:47 AM, Jonatan Pålsson
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20200305124740.2582832-1-jonatan.p@gmail.com">
      <pre class="moz-quote-pre" wrap="">Fixes the following build error:

    .. snip ..
    | checking for python2... no
    | checking for python3... (cached) python3.8
    | configure: error:
    | The program python2 was not found in search path.
    | Please ensure that it is installed and its directory is included in the search
    | path. It is required for building python2 bindings. If you do not want to build
    | them please use argument --without-python2-bindings when running configure.
    | WARNING: exit code 1 from a shell command.

Signed-off-by: Jonatan Pålsson <a class="moz-txt-link-rfc2396E" href="mailto:jonatan.p@gmail.com">&lt;jonatan.p@gmail.com&gt;</a>
---
 recipes-security/sssd/sssd_1.16.4.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
index c381c32..9feba14 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -33,6 +33,7 @@ PACKAGECONFIG[ssh] = "--with-ssh, --with-ssh=no, "
 PACKAGECONFIG[samba] = "--with-samba, --with-samba=no, samba"
 PACKAGECONFIG[selinux] = "--with-selinux, --with-selinux=no --with-semanage=no, libselinux"
 PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
+PACKAGECONFIG[python2] = "--with-python2-bindings, --without-python2-bindings, python, python"</pre>
    </blockquote>
    Python2 is not supported in Master so maybe append EXTRA_OECONF 
    with --without-python2-binding. I can take this for zeus thou.<br>
    <br>
    - armi<br>
    <pre><code>
</code></pre>
    <blockquote type="cite"
      cite="mid:20200305124740.2582832-1-jonatan.p@gmail.com">
      <pre class="moz-quote-pre" wrap="">
 PACKAGECONFIG[python3] = "--with-python3-bindings, --without-python3-bindings"
 PACKAGECONFIG[nss] = "--with-crypto=nss, ,nss,"
 PACKAGECONFIG[cyrpto] = "--with-crypto=libcrypto, , libcrypto"
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------0A7143132C8F9B70F2642A22--
