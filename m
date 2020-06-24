Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com [209.85.215.193])
 by mx.groups.io with SMTP id smtpd.web11.994.1593042648645776061
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jun 2020 16:50:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=drZlMksP;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.215.193, mailfrom: akuster@mvista.com)
Received: by mail-pg1-f193.google.com with SMTP id g67so1432612pgc.8
        for <yocto@lists.yoctoproject.org>; Wed, 24 Jun 2020 16:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=CT8OZ5lU2V7DciurZq5DfNf3jHzvgHQ6mORR8oLKdQk=;
        b=drZlMksPq6CUqoUsKnIiHRzU+7dlqPmUUvmVqfHrQ+v/KIaGTLu6dy/X3GG0jgbpdb
         CEiPnbn4Q8fzfYN/Sr0a+fhOtKsFmWbDxqdSjlagABW4a1sZabY0irEY0QY14zTUyHNI
         7p5/6WiLNqEgnogn8WHcXjEW5lSlQSQ2vR7E6ES37piZMF2LSNA+eBFNFmjpKPwDV7XP
         D9go/X1PT3rJABGApIbaOeXo+QWtyZmMXTN0F+zs95myA8NRt3Ysmmp7/lBtj5H3KOe3
         J6DUu0N7Mw0L3ALcWk3I7ZtmMNcz4a8lytrzlxQJaDjt7fH2SWr2bf5xqBmMPNOJF0Pc
         J2Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=CT8OZ5lU2V7DciurZq5DfNf3jHzvgHQ6mORR8oLKdQk=;
        b=C91Vh+k1+b4nk/jwiwP7xTCX95E2l7LtsyKM1HEBkVsZ9OVfzIzF7d13jDJ+dKgUmA
         JnzbBRCdXoLQf+32gKeWNW5rIvrecScSZ0zxDkwc0B7wdJLMX+tWisYeGKKaYnxM6zVk
         t478ttZXEC5eMPaF5Wu0IWBvzS+KL6aCJdsa1RD6xTuCgjAxUi9qD5Xn5klwyWhQHUP3
         VE1Zgq3ZqaStW7j3X1DpJG7U1150zgtIaxfnb8pSQJxadpU6WO6tE7o8qKvfLOrUe9oe
         nf0/G+KSE9h/8+wSXDdvh9ACiYM5j0z7PeuT9SWeWc+LDik2kXWcE2atA0wvBN1PRrVh
         ZgeQ==
X-Gm-Message-State: AOAM530PNrRDl6z3HIoe2E3PkOEiFVP7rpGmfzG6tDLvjwTyKT/ibvBU
	jD+48DM0yIIi4Lezvlkjw9EXidhJXlc=
X-Google-Smtp-Source: ABdhPJzvVMkXQeVlomeeE/a4W+nQnxdDHJy9PpH2NYCrRQz1Ca9adsiLkhg2FwAs3uCWd/OMX16L1g==
X-Received: by 2002:aa7:9d01:: with SMTP id k1mr32545218pfp.6.1593042647697;
        Wed, 24 Jun 2020 16:50:47 -0700 (PDT)
Return-Path: <akuster@mvista.com>
Received: from ?IPv6:2601:202:4180:a5c0:c6b:ea9b:6226:355f? ([2601:202:4180:a5c0:c6b:ea9b:6226:355f])
        by smtp.gmail.com with ESMTPSA id 5sm20690613pfc.143.2020.06.24.16.50.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 16:50:46 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] sssd: disable build secrets
To: kai <kai.kang@windriver.com>,
 "Armin Kuster (akuster808@gmail.com)" <akuster808@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <161937E0092D8EB5.18675@lists.yoctoproject.org>
 <6d15f66c-1e3c-bcca-6f9e-4eeeee9683fc@windriver.com>
From: "Armin Kuster" <akuster@mvista.com>
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <cdff4d84-c1c4-92d2-fa3b-4538c1509d54@mvista.com>
Date: Wed, 24 Jun 2020 16:50:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <6d15f66c-1e3c-bcca-6f9e-4eeeee9683fc@windriver.com>
Content-Type: multipart/alternative;
 boundary="------------7F33FC627CF68699973EB1EB"
Content-Language: en-US

--------------7F33FC627CF68699973EB1EB
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 6/22/20 8:24 PM, kai wrote:
> On 6/17/20 11:41 AM, kai wrote:
>> From: Kai Kang <kai.kang@windriver.com>
>>
>> It requires http_parser.h to build secrets:
>>
>> | configure: error:
>> | You must have the header file http_parser.h installed to build sssd
>> | with secrets responder. If you want to build sssd without secret responder
>> | then specify --without-secrets when running configure.
>>
>> The header file is from package http-parser[1] rather than apache2. But
>> there is no recipe http-parser in openembedded. So disable build secrets
>> for sssd and remove related systemd service and socket files.
>>
>> Reference:
>> 1. https://github.com/nodejs/http-parser
>
> Ping.
>
Ah, yes thanks.

merged.

- armin
>
>
>> Signed-off-by: Kai Kang <kai.kang@windriver.com>
>> ---
>>  recipes-security/sssd/sssd_1.16.4.bb | 7 +++----
>>  1 file changed, 3 insertions(+), 4 deletions(-)
>>
>> diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
>> index 7ea1586..2c3c803 100644
>> --- a/recipes-security/sssd/sssd_1.16.4.bb
>> +++ b/recipes-security/sssd/sssd_1.16.4.bb
>> @@ -39,8 +39,7 @@ PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd',
>> PACKAGECONFIG[autofs] = "--with-autofs, --with-autofs=no"
>>  PACKAGECONFIG[crypto] = "--with-crypto=libcrypto, , libcrypto"
>> -PACKAGECONFIG[curl] = "--with-secrets --with-kcm, --without-secrets --without-kcm, curl jansson"
>> -PACKAGECONFIG[http] = "--with-secrets, --without-secrets, apache2"
>> +PACKAGECONFIG[curl] = "--with-kcm, --without-kcm, curl jansson"
>>  PACKAGECONFIG[infopipe] = "--with-infopipe, --with-infopipe=no, "
>>  PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
>>  PACKAGECONFIG[nl] = "--with-libnl, --with-libnl=no, libnl"
>> @@ -60,6 +59,7 @@ EXTRA_OECONF += " \
>>      --without-python2-bindings \
>>      --enable-pammoddir=${base_libdir}/security \
>>      --without-python2-bindings \
>> +    --without-secrets \
>>  "
>>  
>>  do_configure_prepend() {
>> @@ -85,6 +85,7 @@ do_install () {
>>      # Remove /var/run as it is created on startup
>>      rm -rf ${D}${localstatedir}/run
>>  
>> +    rm -f ${D}${systemd_system_unitdir}/sssd-secrets.*
>>  }
>>  
>>  pkg_postinst_ontarget_${PN} () {
>> @@ -109,8 +110,6 @@ SYSTEMD_SERVICE_${PN} = " \
>>      sssd-pam-priv.socket \
>>      sssd-pam.service \
>>      sssd-pam.socket \
>> -    sssd-secrets.service \
>> -    sssd-secrets.socket \
>>      sssd.service \
>>  "
>>  SYSTEMD_AUTO_ENABLE = "disable"
>>
>
> -- 
> Kai Kang
> Wind River Linux
>
> 


--------------7F33FC627CF68699973EB1EB
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 6/22/20 8:24 PM, kai wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:6d15f66c-1e3c-bcca-6f9e-4eeeee9683fc@windriver.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <div class="moz-cite-prefix">On 6/17/20 11:41 AM, kai wrote:<br>
      </div>
      <blockquote type="cite"
        cite="mid:161937E0092D8EB5.18675@lists.yoctoproject.org">
        <pre class="moz-quote-pre" wrap="">From: Kai Kang <a class="moz-txt-link-rfc2396E" href="mailto:kai.kang@windriver.com" moz-do-not-send="true">&lt;kai.kang@windriver.com&gt;</a>

It requires http_parser.h to build secrets:

| configure: error:
| You must have the header file http_parser.h installed to build sssd
| with secrets responder. If you want to build sssd without secret responder
| then specify --without-secrets when running configure.

The header file is from package http-parser[1] rather than apache2. But
there is no recipe http-parser in openembedded. So disable build secrets
for sssd and remove related systemd service and socket files.

Reference:
1. <a class="moz-txt-link-freetext" href="https://github.com/nodejs/http-parser" moz-do-not-send="true">https://github.com/nodejs/http-parser</a></pre>
      </blockquote>
      <p>Ping.</p>
    </blockquote>
    Ah, yes thanks.<br>
    <br>
    merged.<br>
    <br>
    - armin<br>
    <blockquote type="cite"
      cite="mid:6d15f66c-1e3c-bcca-6f9e-4eeeee9683fc@windriver.com">
      <p><br>
      </p>
      <blockquote type="cite"
        cite="mid:161937E0092D8EB5.18675@lists.yoctoproject.org">
        <pre class="moz-quote-pre" wrap="">Signed-off-by: Kai Kang <a class="moz-txt-link-rfc2396E" href="mailto:kai.kang@windriver.com" moz-do-not-send="true">&lt;kai.kang@windriver.com&gt;</a>
---
 recipes-security/sssd/sssd_1.16.4.bb | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
index 7ea1586..2c3c803 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -39,8 +39,7 @@ PACKAGECONFIG += <a class="moz-txt-link-rfc2396E" href="mailto:${@bb.utils.contains('DISTRO_FEATURES','systemd','systemd',PACKAGECONFIG[autofs]=" moz-do-not-send="true">"${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd',
 
 PACKAGECONFIG[autofs] = "</a>--with-autofs, --with-autofs=no"
 PACKAGECONFIG[crypto] = "--with-crypto=libcrypto, , libcrypto"
-PACKAGECONFIG[curl] = "--with-secrets --with-kcm, --without-secrets --without-kcm, curl jansson"
-PACKAGECONFIG[http] = "--with-secrets, --without-secrets, apache2"
+PACKAGECONFIG[curl] = "--with-kcm, --without-kcm, curl jansson"
 PACKAGECONFIG[infopipe] = "--with-infopipe, --with-infopipe=no, "
 PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
 PACKAGECONFIG[nl] = "--with-libnl, --with-libnl=no, libnl"
@@ -60,6 +59,7 @@ EXTRA_OECONF += " \
     --without-python2-bindings \
     --enable-pammoddir=${base_libdir}/security \
     --without-python2-bindings \
+    --without-secrets \
 "
 
 do_configure_prepend() {
@@ -85,6 +85,7 @@ do_install () {
     # Remove /var/run as it is created on startup
     rm -rf ${D}${localstatedir}/run
 
+    rm -f ${D}${systemd_system_unitdir}/sssd-secrets.*
 }
 
 pkg_postinst_ontarget_${PN} () {
@@ -109,8 +110,6 @@ SYSTEMD_SERVICE_${PN} = " \
     sssd-pam-priv.socket \
     sssd-pam.service \
     sssd-pam.socket \
-    sssd-secrets.service \
-    sssd-secrets.socket \
     sssd.service \
 "
 SYSTEMD_AUTO_ENABLE = "disable"
</pre>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
      </blockquote>
      <p><br>
      </p>
      <pre class="moz-signature" cols="72">-- 
Kai Kang
Wind River Linux</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------7F33FC627CF68699973EB1EB--
