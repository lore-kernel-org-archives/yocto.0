Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
 by mx.groups.io with SMTP id smtpd.web12.1834.1592610178827912782
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jun 2020 16:42:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=h4I2ikk+;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.214.194, mailfrom: akuster@mvista.com)
Received: by mail-pl1-f194.google.com with SMTP id d10so2688378pls.5
        for <yocto@lists.yoctoproject.org>; Fri, 19 Jun 2020 16:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=KkSNrpjome7mg++9n9xlLp5VFy6o37ZSjQo3gypxxrc=;
        b=h4I2ikk+NNB4b/wxjIJCX1FDuFlbwBKBoyPfX6z5I4I7PSE57eTwnqn62TLjRNhY4K
         ZSf8EqYLXx1+EHVr1gmZF0xk8k/HWTnVf+tleqMwQYcB2FpriQiwxU78vCdRMx7Ds2ol
         QsbtgfSyfROPqk2+p50BPAiy5gU8mCnGXzro8YI68sN38WT1VpFNaJVrlDNxIW+rUOIW
         crpRYow0mp+BchUETZGZRmtD6Be93SCEoDDliWOQtwGk5QQ9lFf9JSDVJm4wWwQO02jW
         iw1wmW1aZyq1He8yCirp4gr+mISNvJ9Fv2WBB2MsWcYkQWkpJM34DXqyjC5lr+U0P1MT
         oMtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=KkSNrpjome7mg++9n9xlLp5VFy6o37ZSjQo3gypxxrc=;
        b=mlWuwHThWQPUiG1+UWlJmsIMNvhkYOoMiq0t42BTh3nWSZgb4LMmKO2hr1kyKapdFI
         ElJ0e9pkR7exj8o1UyenorsOT768H4nN57CAs23lml17nLL6l0a1lGC23lrxLVnrnOCe
         ppPbMCQ3e1MG8ss8ec7edVyfUlTolWFbf3ksjg0bufWKjH5FYTPKK5Nsc3AKyti/fUdW
         4J8CRktX+VaMlPbrhPNs2ErB+XvfbyBeZ6zeRVZnoLEdZxYeLw74zCqnfIMJF5G+k/+h
         6me3j4zlj8/mNFCIrGvv4fcnBYkCsl9++Hd4Leo2Zj5nTrTOs7TpLcBw+oWehZAMVjjb
         4O9w==
X-Gm-Message-State: AOAM5306hpuMId48bzrXujCIT+TjhpHdE5oSSCx15x78DUxLumT6HE6T
	iNqvING4F9xpraQeG9SK4whCQ7rKYS8=
X-Google-Smtp-Source: ABdhPJwxwV8/Ql6BGKMIEca6BmtDPIH1b4Bs8Oc9NI4tlukCXOnur/beTuXsKBQcnF18JHZyK8cLhQ==
X-Received: by 2002:a17:90a:a08d:: with SMTP id r13mr5649677pjp.96.1592610177899;
        Fri, 19 Jun 2020 16:42:57 -0700 (PDT)
Return-Path: <akuster@mvista.com>
Received: from ?IPv6:2601:202:4180:a5c0:445a:f005:22f0:213c? ([2601:202:4180:a5c0:445a:f005:22f0:213c])
        by smtp.gmail.com with ESMTPSA id s197sm6861442pfc.188.2020.06.19.16.42.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 16:42:56 -0700 (PDT)
Subject: Re: [yocto] [meta-security][master|dunfell][PATCH 1/2] clamav: resolve multilib issues
To: Jeremy Puhlman <jpuhlman@mvista.com>, yocto@lists.yoctoproject.org
References: <20200613021919.1871-1-jpuhlman@mvista.com>
From: "Armin Kuster" <akuster@mvista.com>
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <b17e0ee0-d415-4165-f357-2eeed28fd86d@mvista.com>
Date: Fri, 19 Jun 2020 16:42:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200613021919.1871-1-jpuhlman@mvista.com>
Content-Type: multipart/alternative;
 boundary="------------CF821085CAC38D9D68015D65"
Content-Language: en-US

--------------CF821085CAC38D9D68015D65
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

merged to both.

thanks
armin

On 6/12/20 7:19 PM, Jeremy Puhlman wrote:
> From: Jeremy Puhlman <jpuhlman@mvista.com>
>
> Signed-off-by: Jeremy Puhlman <jpuhlman@mvista.com>
> ---
>  recipes-scanners/clamav/clamav_0.101.5.bb | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-scanners/clamav/clamav_0.101.5.bb b/recipes-scanners/clamav/clamav_0.101.5.bb
> index f4625b1..2ea2c9b 100644
> --- a/recipes-scanners/clamav/clamav_0.101.5.bb
> +++ b/recipes-scanners/clamav/clamav_0.101.5.bb
> @@ -25,7 +25,7 @@ S = "${WORKDIR}/git"
>  LEAD_SONAME = "libclamav.so"
>  SO_VER = "9.0.2"
>  
> -inherit autotools pkgconfig useradd systemd
> +inherit autotools pkgconfig useradd systemd multilib_header multilib_script
>  
>  CLAMAV_UID ?= "clamav"
>  CLAMAV_GID ?= "clamav"
> @@ -45,6 +45,8 @@ PACKAGECONFIG[bz2] = "--with-libbz2-prefix=${CLAMAV_USR_DIR}, --disable-bzip2, b
>  PACKAGECONFIG[ncurses] = "--with-libncurses-prefix=${CLAMAV_USR_DIR}, --without-libncurses-prefix, ncurses, "
>  PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_unitdir}/system/, --without-systemdsystemunitdir, "
>  
> +MULTILIB_SCRIPTS = "${PN}-dev:${bindir}/clamav-config ${PN}-cvd:${localstatedir}/lib/clamav/mirrors.dat"
> +
>  EXTRA_OECONF_CLAMAV = "--without-libcheck-prefix --disable-unrar \
>              --disable-mempool \
>              --program-prefix="" \
> @@ -93,6 +95,7 @@ do_install_append_class-target () {
>          install -d ${D}${sysconfdir}/tmpfiles.d
>          install -m 0644 ${WORKDIR}/tmpfiles.clamav ${D}${sysconfdir}/tmpfiles.d/clamav.conf
>      fi
> +    oe_multilib_header clamav-types.h
>  }
>  
>  pkg_postinst_ontarget_${PN} () {
>
> 


--------------CF821085CAC38D9D68015D65
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    merged to both.<br>
    <br>
    thanks<br>
    armin<br>
    <br>
    <div class="moz-cite-prefix">On 6/12/20 7:19 PM, Jeremy Puhlman
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20200613021919.1871-1-jpuhlman@mvista.com">
      <pre class="moz-quote-pre" wrap="">From: Jeremy Puhlman <a class="moz-txt-link-rfc2396E" href="mailto:jpuhlman@mvista.com">&lt;jpuhlman@mvista.com&gt;</a>

Signed-off-by: Jeremy Puhlman <a class="moz-txt-link-rfc2396E" href="mailto:jpuhlman@mvista.com">&lt;jpuhlman@mvista.com&gt;</a>
---
 recipes-scanners/clamav/clamav_0.101.5.bb | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/recipes-scanners/clamav/clamav_0.101.5.bb b/recipes-scanners/clamav/clamav_0.101.5.bb
index f4625b1..2ea2c9b 100644
--- a/recipes-scanners/clamav/clamav_0.101.5.bb
+++ b/recipes-scanners/clamav/clamav_0.101.5.bb
@@ -25,7 +25,7 @@ S = "${WORKDIR}/git"
 LEAD_SONAME = "libclamav.so"
 SO_VER = "9.0.2"
 
-inherit autotools pkgconfig useradd systemd
+inherit autotools pkgconfig useradd systemd multilib_header multilib_script
 
 CLAMAV_UID ?= "clamav"
 CLAMAV_GID ?= "clamav"
@@ -45,6 +45,8 @@ PACKAGECONFIG[bz2] = "--with-libbz2-prefix=${CLAMAV_USR_DIR}, --disable-bzip2, b
 PACKAGECONFIG[ncurses] = "--with-libncurses-prefix=${CLAMAV_USR_DIR}, --without-libncurses-prefix, ncurses, "
 PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_unitdir}/system/, --without-systemdsystemunitdir, "
 
+MULTILIB_SCRIPTS = "${PN}-dev:${bindir}/clamav-config ${PN}-cvd:${localstatedir}/lib/clamav/mirrors.dat"
+
 EXTRA_OECONF_CLAMAV = "--without-libcheck-prefix --disable-unrar \
             --disable-mempool \
             --program-prefix="" \
@@ -93,6 +95,7 @@ do_install_append_class-target () {
         install -d ${D}${sysconfdir}/tmpfiles.d
         install -m 0644 ${WORKDIR}/tmpfiles.clamav ${D}${sysconfdir}/tmpfiles.d/clamav.conf
     fi
+    oe_multilib_header clamav-types.h
 }
 
 pkg_postinst_ontarget_${PN} () {
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------CF821085CAC38D9D68015D65--
