Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com [209.85.215.195])
 by mx.groups.io with SMTP id smtpd.web10.1886.1592610194200888109
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jun 2020 16:43:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=pj1MXpyb;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.215.195, mailfrom: akuster@mvista.com)
Received: by mail-pg1-f195.google.com with SMTP id v11so5176593pgb.6
        for <yocto@lists.yoctoproject.org>; Fri, 19 Jun 2020 16:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=NsUoVGCduE2Ie/QRw17RGq7X/FbmwkENKuMcLN+yqI0=;
        b=pj1MXpybEFCLQMx8hPxb0jYLfxa1WMrK52apbfNIBfV+EzgpuDSINvePNEiK4IACpH
         CzhuCXtRme6rXy1oAbrxJXMc9b7z6DKV2Ewaxj9wjULdrnMuyQChxcVJvosnJ5mPSSuq
         LG7O17Msb0UlalI7MXb4vVLZOj8cg8S+DbcpIbk+XSqovBa+e9RqSqcehZWAG3XOet0s
         wgtuJgvpTq61mlZru7PelE3K0uZMPXVhRO6+cBHmGcne768uJAUdOHBudpHiMzKu9q6d
         w5jrIIoucUdQvBDZ0t9R3mojjrTql0aCCLVgmxRpjF7OzgR6XGDsQzXsk/ubldjThO+2
         HWTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=NsUoVGCduE2Ie/QRw17RGq7X/FbmwkENKuMcLN+yqI0=;
        b=rJaB+oz5KDycYGoUTIFCeJCi1WAQkQIoTs1HQ4p2O9J7wkneZOJYxzT8WmUeJUgyxO
         pwxSoxU0noBSYqrSoy1GK2hiykHCt7XoyvFB2zsXJ9Lk2Zcg8H/qCOPkI6Iekp4tDqB1
         Qke2oCR9hreT5ISbAYV4t9jOe1VhxnfI0Nu3aBS4Q2NIOcVWDMsFcIiZGu9dijiV1nqg
         5TqogBA4CrKwme69NfUHa6Ob+P7Hfdp5CF2gwdvv0YbHYl6/e1DsEdY1T4S8bYegCNYO
         nPeVzH8xqIL/6+bcy+oYvHhqoUre+9T3fXtgNOzg5pkT+WYI2uLzStvFsr41e0B0l6pz
         s4sA==
X-Gm-Message-State: AOAM5319WROl/AZGjxBsAdSi4lGTpgGatsUynufrY7LuV9dhAhUq+hwI
	uE9xWWBCnZ/mK6TQ/fDcqCcWifPlAwc=
X-Google-Smtp-Source: ABdhPJwixVPcXOM1pvAgE8lIFoLmy3IfsVtxkyEcgCd3ICQFol5ZtcjmLS+0rQHD03dKqZpZj6gBlw==
X-Received: by 2002:a63:e74b:: with SMTP id j11mr4762276pgk.237.1592610193321;
        Fri, 19 Jun 2020 16:43:13 -0700 (PDT)
Return-Path: <akuster@mvista.com>
Received: from ?IPv6:2601:202:4180:a5c0:445a:f005:22f0:213c? ([2601:202:4180:a5c0:445a:f005:22f0:213c])
        by smtp.gmail.com with ESMTPSA id p12sm6075958pgk.40.2020.06.19.16.43.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 16:43:12 -0700 (PDT)
Subject: Re: [yocto] [meta-security][master|dunfell][PATCH 2/2] tripwire: Remove makefiles from the man directories.
To: Jeremy Puhlman <jpuhlman@mvista.com>, yocto@lists.yoctoproject.org
References: <20200613021919.1871-1-jpuhlman@mvista.com>
 <20200613021919.1871-2-jpuhlman@mvista.com>
From: "Armin Kuster" <akuster@mvista.com>
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
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
Message-ID: <ebbafcf3-c3c7-97f4-3864-f6621abe2b16@mvista.com>
Date: Fri, 19 Jun 2020 16:43:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200613021919.1871-2-jpuhlman@mvista.com>
Content-Type: multipart/alternative;
 boundary="------------6195BB3BBB280F53A49D578C"
Content-Language: en-US

--------------6195BB3BBB280F53A49D578C
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

merged

On 6/12/20 7:19 PM, Jeremy Puhlman wrote:
> From: Jeremy Puhlman <jpuhlman@mvista.com>
>
> Signed-off-by: Jeremy Puhlman <jpuhlman@mvista.com>
> ---
>  recipes-ids/tripwire/tripwire_2.4.3.7.bb | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/recipes-ids/tripwire/tripwire_2.4.3.7.bb b/recipes-ids/tripwire/tripwire_2.4.3.7.bb
> index c26392a..4f50bff 100644
> --- a/recipes-ids/tripwire/tripwire_2.4.3.7.bb
> +++ b/recipes-ids/tripwire/tripwire_2.4.3.7.bb
> @@ -52,6 +52,7 @@ do_install () {
>      install -m 0644 ${S}/man/man4/* ${D}${mandir}/man4
>      install -m 0644 ${S}/man/man5/* ${D}${mandir}/man5
>      install -m 0644 ${S}/man/man8/* ${D}${mandir}/man8
> +    rm ${D}${mandir}/man*/Makefile*
>      install -m 0644 ${S}/policy/templates/* ${D}${docdir}/${BPN}/templates
>      install -m 0644 ${S}/policy/*txt ${D}${docdir}/${BPN}
>      install -m 0644 ${S}/COPYING ${D}${docdir}/${BPN}
>
> 


--------------6195BB3BBB280F53A49D578C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    merged<br>
    <br>
    <div class="moz-cite-prefix">On 6/12/20 7:19 PM, Jeremy Puhlman
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20200613021919.1871-2-jpuhlman@mvista.com">
      <pre class="moz-quote-pre" wrap="">From: Jeremy Puhlman <a class="moz-txt-link-rfc2396E" href="mailto:jpuhlman@mvista.com">&lt;jpuhlman@mvista.com&gt;</a>

Signed-off-by: Jeremy Puhlman <a class="moz-txt-link-rfc2396E" href="mailto:jpuhlman@mvista.com">&lt;jpuhlman@mvista.com&gt;</a>
---
 recipes-ids/tripwire/tripwire_2.4.3.7.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-ids/tripwire/tripwire_2.4.3.7.bb b/recipes-ids/tripwire/tripwire_2.4.3.7.bb
index c26392a..4f50bff 100644
--- a/recipes-ids/tripwire/tripwire_2.4.3.7.bb
+++ b/recipes-ids/tripwire/tripwire_2.4.3.7.bb
@@ -52,6 +52,7 @@ do_install () {
     install -m 0644 ${S}/man/man4/* ${D}${mandir}/man4
     install -m 0644 ${S}/man/man5/* ${D}${mandir}/man5
     install -m 0644 ${S}/man/man8/* ${D}${mandir}/man8
+    rm ${D}${mandir}/man*/Makefile*
     install -m 0644 ${S}/policy/templates/* ${D}${docdir}/${BPN}/templates
     install -m 0644 ${S}/policy/*txt ${D}${docdir}/${BPN}
     install -m 0644 ${S}/COPYING ${D}${docdir}/${BPN}
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------6195BB3BBB280F53A49D578C--
