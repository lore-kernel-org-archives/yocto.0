Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com [209.85.216.67])
 by mx.groups.io with SMTP id smtpd.web11.18820.1583172961795882439
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Mar 2020 10:16:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=baxlWMbx;
 spf=pass (domain: gmail.com, ip: 209.85.216.67, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f67.google.com with SMTP id a16so123316pju.3
        for <yocto@lists.yoctoproject.org>; Mon, 02 Mar 2020 10:16:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=aXBSA1hFWredr2BJS6qQnNIzYiPTJ0jnfyXJUfOZcA0=;
        b=baxlWMbxYmUSnIdyAf7qjh0s91/4Q+RwfH7EPp9yh6v1vzQoWWr1SUbS7CY7WtOAIB
         +mtqpFsnMdxyujvnKEAp/k13WyGlkQ7rn5m9Z+zOXyAG4hkv4m/Qqdm9LMnztYXkE4u2
         DRKJpi/atQ9qNuTewNM23aHOZ+dz0id/GIu6hNqCRE+oojr9L+aqJSrRCA//42VCR+8h
         iBoCnj7QRrBTkkB69oSWmSoG1KZQman9+pHXLcamWZt66Y1aTRI/XYQ039kPOTTkAlth
         Qc6RXvwOLohCjrtxQUeZEY1mpeJmA7JirrTIgx1d7ayt20k5nxR813YfQ/uLiKoFtcAk
         TN9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=aXBSA1hFWredr2BJS6qQnNIzYiPTJ0jnfyXJUfOZcA0=;
        b=i+jXSKpP33p692aeWu0OCGpKB/nLkqnQL1QL8NvNrM0ktwY1jFm+SdQbXDKdylUQwI
         /ZurvXh5AdIjHlKQorQjcTB1TIT59ZNRhatZSMNWr1IJCl6p9zovXNwnrNy1DQD7hn9m
         n86ed4QTEjbiQnEKt06DRBQ6XCrMnwYy8NEFjqCsJ3yVBZuoh/ZwmAJSY+i4EraN0QT4
         MeTNUA0/MpIk4vuLw4fkgMNWL1a2w+SQQU6O0yMaJdoIGctnwfwdy9Hs8fWax/LtD1d1
         9pDe37pzskY5F6gbPcc3cZ6dC9KtPcIlemo9owWrliyVOgSSjgh4h/OlTKk+wBLVnP/y
         C5pQ==
X-Gm-Message-State: ANhLgQ0WSTkKjMNqMH/eqHtoEt7qauKCn9KO/R9AuqtZSptSlDf6WC64
	Z1VJOIixqG6nsyL7iHdq85w=
X-Google-Smtp-Source: ADFU+vsC0VX+KWp/F3/fhVT0V407mThdNtd3XO8ewY4F3VyqgUeIgVJ4azj6G7fr3Uoc+JPo57qKxg==
X-Received: by 2002:a17:902:ab95:: with SMTP id f21mr395388plr.188.1583172961245;
        Mon, 02 Mar 2020 10:16:01 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:48ca:eebd:2075:4053? ([2601:202:4180:a5c0:48ca:eebd:2075:4053])
        by smtp.gmail.com with ESMTPSA id d77sm8685805pfd.109.2020.03.02.10.15.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2020 10:16:00 -0800 (PST)
Subject: Re: [yocto] [PATCH] gcc-cross-canadian: Enable wildcard expansion support
To: Mark Hatle <mark.hatle@kernel.crashing.org>,
 yocto@lists.yoctoproject.org, jpewhacker@gmail.com
References: <20200302173939.106352-1-mark.hatle@kernel.crashing.org>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <4f79320e-349c-52e2-764b-b0ebc2fd208b@gmail.com>
Date: Mon, 2 Mar 2020 10:15:59 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200302173939.106352-1-mark.hatle@kernel.crashing.org>
Content-Type: multipart/alternative;
 boundary="------------E88935BBB240C7C8676A8989"
Content-Language: en-US

--------------E88935BBB240C7C8676A8989
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 3/2/20 9:39 AM, Mark Hatle wrote:
> In gcc 8, the behavior of GCC changed and expansion of wild cards to calls
> of gcc were disabled by default.  This behavior may be required by some
> (poorly written) makefiles.
>
> This will allow someone to do:
>
> gcc *.c -o myoutput

with backports to zeus & warrior?

-armin
>
> Signed-off-by: Mark Hatle <mark.hatle@kernel.crashing.org>
> ---
>  recipes-devtools/gcc/gcc-cross-canadian_%.bbappend | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
> index 9c0d828..e0463c6 100644
> --- a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
> +++ b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
> @@ -1,5 +1,5 @@
>  INSANE_SKIP_${PN}_append_sdkmingw32 = " staticdev"
> -EXTRA_OECONF_append_sdkmingw32 = " --disable-nls"
> +EXTRA_OECONF_append_sdkmingw32 = " --disable-nls --enable-mingw-wildcard"
>  LDFLAGS_append_sdkmingw32 = " -Wl,-static"
>  EXEEXT_sdkmingw32 = ".exe"
>  ELFUTILS_sdkmingw32 = ""
>
> 


--------------E88935BBB240C7C8676A8989
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 3/2/20 9:39 AM, Mark Hatle wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20200302173939.106352-1-mark.hatle@kernel.crashing.org">
      <pre class="moz-quote-pre" wrap="">In gcc 8, the behavior of GCC changed and expansion of wild cards to calls
of gcc were disabled by default.  This behavior may be required by some
(poorly written) makefiles.

This will allow someone to do:

gcc *.c -o myoutput</pre>
    </blockquote>
    <br>
    with backports to zeus &amp; warrior?<br>
    <br>
    -armin<br>
    <blockquote type="cite"
      cite="mid:20200302173939.106352-1-mark.hatle@kernel.crashing.org">
      <pre class="moz-quote-pre" wrap="">

Signed-off-by: Mark Hatle <a class="moz-txt-link-rfc2396E" href="mailto:mark.hatle@kernel.crashing.org">&lt;mark.hatle@kernel.crashing.org&gt;</a>
---
 recipes-devtools/gcc/gcc-cross-canadian_%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
index 9c0d828..e0463c6 100644
--- a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
+++ b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
@@ -1,5 +1,5 @@
 INSANE_SKIP_${PN}_append_sdkmingw32 = " staticdev"
-EXTRA_OECONF_append_sdkmingw32 = " --disable-nls"
+EXTRA_OECONF_append_sdkmingw32 = " --disable-nls --enable-mingw-wildcard"
 LDFLAGS_append_sdkmingw32 = " -Wl,-static"
 EXEEXT_sdkmingw32 = ".exe"
 ELFUTILS_sdkmingw32 = ""
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------E88935BBB240C7C8676A8989--
