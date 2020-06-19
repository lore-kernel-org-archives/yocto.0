Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com [209.85.216.65])
 by mx.groups.io with SMTP id smtpd.web10.1907.1592610263163251201
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jun 2020 16:44:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=wTVLsJG/;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.216.65, mailfrom: akuster@mvista.com)
Received: by mail-pj1-f65.google.com with SMTP id k2so4754275pjs.2
        for <yocto@lists.yoctoproject.org>; Fri, 19 Jun 2020 16:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=8CuzMTKZykL3YkIgOpHbp24QE8qj5GqCcJWe0kjpUhU=;
        b=wTVLsJG/gVclGsYG7mHDJNS5q7aMAmLQTa04NSxApNXVHwYnacEvGfX37Q27YUvWAf
         asrb6ceawYFUsOTthYwMaD0Bs2YxGV8UlehxjJpduu57Tegxxa9PBdq3s1zyvSAhIYpv
         gPwXcdwrE9W3b4F+5L22ECtnH6z9HgG/caj1q6yCBaukE9y8fLirl3FvqmekT6wW6FRK
         nBb90TRhRMZuUMOXwh3u2YnUUys70sTXc1EpgLeXywTbnVcV1Wa0pHhcrI6o8SdhCo5L
         JQvcAPH8fk/nKYDYygxS5xEiEgGe7woC8x0uV3aPky5C3Yvga7MF7M0pQ+q+MktaE74l
         eEEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=8CuzMTKZykL3YkIgOpHbp24QE8qj5GqCcJWe0kjpUhU=;
        b=r/uc0WST3OWJWKYj+o8MHJqK8b2KT2WBkqVc8JW3pxD1apb1GFX8sdWZCfx6QU+i0k
         EVNE1iz3x0kNfHqGoNKtFKzSuJBCYmj2oOwhV2kYpSztSpCXLPGlP1S9nQBV61+Ihhf3
         vzW/i2X+w1ADRL/EKyB2pvqXR5ym1crdwNRLZhrRVdS0OrUdnf/G2d9jPuHhJDjAKMKf
         ezM7rEvuCjHm+kMSNvqyZXYCaPgrNWKjDYAD1fpJAb3tiYqqUDI3inYZtEJLFTaIcBKx
         T/vIiYm3t03WuDzplOyllIP3oaqmKSoz/6ajDq77n5WOHDqTcGe0frFOBi6mK0oAz5bm
         1DtA==
X-Gm-Message-State: AOAM530YPyD3ro+jTr5D6IUR3ODAeP7cwj/37PZj1llDRxJ9D+SzNwdY
	AONQ2Rb6mJXVeBhA0n3K7XvhBEpLpPY=
X-Google-Smtp-Source: ABdhPJw+1mPvC/Ap6MuSKRGEI+XVVcVGCRA2m5KQjuG1xVt3TZ/VeE48U9X/WC10EuS6AhgH3Ye1mQ==
X-Received: by 2002:a17:90a:1d46:: with SMTP id u6mr6187325pju.146.1592610262362;
        Fri, 19 Jun 2020 16:44:22 -0700 (PDT)
Return-Path: <akuster@mvista.com>
Received: from ?IPv6:2601:202:4180:a5c0:445a:f005:22f0:213c? ([2601:202:4180:a5c0:445a:f005:22f0:213c])
        by smtp.gmail.com with ESMTPSA id d9sm5951361pgg.74.2020.06.19.16.44.21
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 16:44:21 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] samhain: dnmalloc hash fix for aarch64 and mips64
To: yocto@lists.yoctoproject.org
References: <20200420062719.25771-1-Haseeb_Ashraf@mentor.com>
From: "Armin Kuster" <akuster@mvista.com>
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <ba759588-3f9d-f506-a172-da8685386217@mvista.com>
Date: Fri, 19 Jun 2020 16:44:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200420062719.25771-1-Haseeb_Ashraf@mentor.com>
Content-Type: multipart/alternative;
 boundary="------------B3EE2A45EC6828AE83C02D84"
Content-Language: en-US

--------------B3EE2A45EC6828AE83C02D84
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

merged

On 4/19/20 11:27 PM, Haseeb Ashraf wrote:
> fix runtime error:
> samhain[4069]: FATAL: x_dnmalloc.c: 2790: hashval < AMOUNTHASH
> Killed
>
> The proper fix is not to disable dnmalloc. This change is in
> continuation of samhain-mips64-aarch64-dnmalloc-hash-fix.patch
> which requires CONFIG_ARCH_AARCH64 or CONFIG_ARCH_MIPS64 to be
> defined for the corresponding architecture
>
> Signed-off-by: Haseeb Ashraf <Haseeb_Ashraf@mentor.com>
> ---
>  recipes-ids/samhain/samhain.inc | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
> index 0a5e432..b867bbc 100644
> --- a/recipes-ids/samhain/samhain.inc
> +++ b/recipes-ids/samhain/samhain.inc
> @@ -67,6 +67,9 @@ PACKAGECONFIG[acl] = " --enable-posix-acl , --disable-posix-acl, acl"
>  PACKAGECONFIG[audit] = "ac_cv_header_auparse_h=yes,ac_cv_header_auparse_h=no,audit"
>  PACKAGECONFIG[ps] = "--with-ps-path=${base_bindir}/ps,,,procps"
>  
> +EXTRA_OEMAKE_append_aarch64 = " CPPFLAGS+=-DCONFIG_ARCH_AARCH64=1"
> +EXTRA_OEMAKE_append_mips64 = " CPPFLAGS+=-DCONFIG_ARCH_MIPS64=1"
> +
>  do_unpack_samhain() {
>      cd ${WORKDIR}
>      tar -xzvf samhain-${PV}.tar.gz
> @@ -118,7 +121,6 @@ do_configure () {
>  	--enable-network=${SAMHAIN_MODE} \
>  	--with-pid-file=${localstatedir}/run/samhain.pid \
>  	--with-data-file=${localstatedir}/lib/samhain/samhain_file \
> -	--disable-dnmalloc \
>  	${EXTRA_OECONF}
>  }
>  
>
> 


--------------B3EE2A45EC6828AE83C02D84
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    merged<br>
    <br>
    <div class="moz-cite-prefix">On 4/19/20 11:27 PM, Haseeb Ashraf
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20200420062719.25771-1-Haseeb_Ashraf@mentor.com">
      <pre class="moz-quote-pre" wrap="">fix runtime error:
samhain[4069]: FATAL: x_dnmalloc.c: 2790: hashval &lt; AMOUNTHASH
Killed

The proper fix is not to disable dnmalloc. This change is in
continuation of samhain-mips64-aarch64-dnmalloc-hash-fix.patch
which requires CONFIG_ARCH_AARCH64 or CONFIG_ARCH_MIPS64 to be
defined for the corresponding architecture

Signed-off-by: Haseeb Ashraf <a class="moz-txt-link-rfc2396E" href="mailto:Haseeb_Ashraf@mentor.com">&lt;Haseeb_Ashraf@mentor.com&gt;</a>
---
 recipes-ids/samhain/samhain.inc | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
index 0a5e432..b867bbc 100644
--- a/recipes-ids/samhain/samhain.inc
+++ b/recipes-ids/samhain/samhain.inc
@@ -67,6 +67,9 @@ PACKAGECONFIG[acl] = " --enable-posix-acl , --disable-posix-acl, acl"
 PACKAGECONFIG[audit] = "ac_cv_header_auparse_h=yes,ac_cv_header_auparse_h=no,audit"
 PACKAGECONFIG[ps] = "--with-ps-path=${base_bindir}/ps,,,procps"
 
+EXTRA_OEMAKE_append_aarch64 = " CPPFLAGS+=-DCONFIG_ARCH_AARCH64=1"
+EXTRA_OEMAKE_append_mips64 = " CPPFLAGS+=-DCONFIG_ARCH_MIPS64=1"
+
 do_unpack_samhain() {
     cd ${WORKDIR}
     tar -xzvf samhain-${PV}.tar.gz
@@ -118,7 +121,6 @@ do_configure () {
 	--enable-network=${SAMHAIN_MODE} \
 	--with-pid-file=${localstatedir}/run/samhain.pid \
 	--with-data-file=${localstatedir}/lib/samhain/samhain_file \
-	--disable-dnmalloc \
 	${EXTRA_OECONF}
 }
 
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------B3EE2A45EC6828AE83C02D84--
