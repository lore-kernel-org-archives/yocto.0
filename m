Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
 by mx.groups.io with SMTP id smtpd.web12.271.1594786359118297912
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jul 2020 21:12:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CaTXlaBC;
 spf=pass (domain: gmail.com, ip: 209.85.214.195, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f195.google.com with SMTP id x8so1654085plm.10
        for <yocto@lists.yoctoproject.org>; Tue, 14 Jul 2020 21:12:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=sqnzpaZBJlyIudLB8K8YNeL0GvJPewKtNpQowQQEgF0=;
        b=CaTXlaBCeSZX1ob6TVn0KbTngIxh7dQL7WiqyY0pmQlGylC0hYxi6fmB3/91C2sbUp
         kmPrRgCwTclhzaF93KV+KzQzxoAOuA7jkvln+EgI0sI0szmwGGe2c1xOI4hq+lEEjgcc
         pxpZPWwLVXkWm2KPH00IyPZVMnvYQiGDJNhHQUjDEh3wAESnyvwZuUr0ukpXySNGkI4v
         yMbjFyuKPx3u4nAcXAJH0vdLiw+3hUqkwKv0lkoh7LxvYpU/oEIy1tR9iGQ7d45fJLSN
         rPrGJ8Vr3ZDgUBA1hawHzwRbstPCWOWgsq/Ro+8yK+FwvEGCebkqtXZR0wzR1TvkhKRf
         saOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=sqnzpaZBJlyIudLB8K8YNeL0GvJPewKtNpQowQQEgF0=;
        b=fw9yNo3DY69e75fFPxuQO3vgLBbDPNkeO69n/dkTj1bD4ONns0OBIRuIVYOMLguWsO
         tO3hXyL2kN6KFVCLRN+iIPOu5B7T53QbxhflUfQ4cn+Gn7r/aQUPhkfHzfy3Jqzq0acl
         MNHj/G/x328Ii6mT32nFjEloZ10Z0VxNT3nM6fqziDkeqTKuFWlXd5O5vEz6JuZR+VJ0
         LCT1z3sq0VsHI82IPkHTLp85JvH7oPIP85INXok2yRfNG0LINm9SOByKKVjZ0kJ4KlSR
         jKnVq36uD4JfMfj67xM7JnISXvgRyq5ZItMzD7U+N/rv6lIj4RII1t1qcTrnOUWyOHoq
         MFqQ==
X-Gm-Message-State: AOAM533zcEmk7QO6ywZKaG8J8x1YrjQTymEZ7XTv39WZ+WjxKk+1sM44
	47aw22R/5pWX938hXHwRj8MI4ow+2pk=
X-Google-Smtp-Source: ABdhPJzdd725IVxVkWnZEMIk7XdJYreqXjRcTGHGpWM247CwMtMvZlxJ/emnO7sbDh70SkWiZRmpgg==
X-Received: by 2002:a17:902:bc49:: with SMTP id t9mr6813599plz.17.1594786358357;
        Tue, 14 Jul 2020 21:12:38 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:7df4:7f73:717d:af68? ([2601:202:4180:a5c0:7df4:7f73:717d:af68])
        by smtp.gmail.com with ESMTPSA id nv9sm512720pjb.6.2020.07.14.21.12.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 21:12:37 -0700 (PDT)
Subject: Re: [yocto] [meta-security][master|dunfell][PATCH 1/2] cryptsetup-tpm-incubator: RPROVIDES cryptsetup and cryptsetup-dev
To: Jeremy Puhlman <jpuhlman@mvista.com>, yocto@lists.yoctoproject.org
References: <1594699201-14545-1-git-send-email-jpuhlman@mvista.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <7a3929c7-32ac-e736-f13e-3039f8e1eda7@gmail.com>
Date: Tue, 14 Jul 2020 21:12:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1594699201-14545-1-git-send-email-jpuhlman@mvista.com>
Content-Type: multipart/alternative;
 boundary="------------5B04C30E1289F6C827F11B78"
Content-Language: en-US

--------------5B04C30E1289F6C827F11B78
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 7/13/20 9:00 PM, Jeremy Puhlman wrote:
> From: Jeremy Puhlman <jpuhlman@mvista.com>
>
> Without this we get weird conflict when you include dev packages:
> rror: Transaction check error:
>   file /usr/include/libcryptsetup.h conflicts between attempted installs of
> cryptsetup-tpm-incubator-dev-0.9.9-r0.corei7_64 and
> lib32-cryptsetup-dev-2.3.2-r0.1.i586
>   file /usr/lib64/libcryptsetup.so conflicts between attempted installs of
> cryptsetup-tpm-incubator-dev-0.9.9-r0.corei7_64 and
> cryptsetup-dev-2.3.2-r0.1.corei7_64
>   file /usr/lib64/pkgconfig/libcryptsetup.pc conflicts between attempted
> installs of cryptsetup-tpm-incubator-dev-0.9.9-r0.corei7_64 and
> cryptsetup-dev-2.3.2-r0.1.corei7_64
>   file /usr/lib/libcryptsetup.so conflicts between attempted installs of
> lib32-cryptsetup-tpm-incubator-dev-0.9.9-r0.i586 and
> lib32-cryptsetup-dev-2.3.2-r0.1.i586
>   file /usr/lib/pkgconfig/libcryptsetup.pc conflicts between attempted installs
> of lib32-cryptsetup-tpm-incubator-dev-0.9.9-r0.i586 and
> lib32-cryptsetup-dev-2.3.2-r0.1.i586

I plan on taking this for Dunfell. Master no long compiles do to core
package updates.

not sure what I am going to do for Master yet.

thanks for the patch.
Armin
> Signed-off-by: Jeremy Puhlman <jpuhlman@mvista.com>
> ---
>  .../cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb       | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb b/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
> index b706d15..2617162 100644
> --- a/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
> +++ b/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
> @@ -36,7 +36,12 @@ FILES_${PN} += "${libdir}/tmpfiles.d"
>  RDEPENDS_${PN} += "lvm2 libdevmapper"
>  RRECOMMENDS_${PN} += "lvm2-udevrules"
>  
> +RPROVIDES_${PN} = "cryptsetup"
>  RREPLACES_${PN} = "cryptsetup"
>  RCONFLICTS_${PN}  ="cryptsetup"
>  
> +RPROVIDES_${PN}-dev = "cryptsetup-dev"
> +RREPLACES_${PN}-dev = "cryptsetup-dev"
> +RCONFLICTS_${PN}-dev  ="cryptsetup-dev"
> +
>  BBCLASSEXTEND = "native nativesdk"
>
> 


--------------5B04C30E1289F6C827F11B78
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 7/13/20 9:00 PM, Jeremy Puhlman
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:1594699201-14545-1-git-send-email-jpuhlman@mvista.com">
      <pre class="moz-quote-pre" wrap="">From: Jeremy Puhlman <a class="moz-txt-link-rfc2396E" href="mailto:jpuhlman@mvista.com">&lt;jpuhlman@mvista.com&gt;</a>

Without this we get weird conflict when you include dev packages:
rror: Transaction check error:
  file /usr/include/libcryptsetup.h conflicts between attempted installs of
cryptsetup-tpm-incubator-dev-0.9.9-r0.corei7_64 and
lib32-cryptsetup-dev-2.3.2-r0.1.i586
  file /usr/lib64/libcryptsetup.so conflicts between attempted installs of
cryptsetup-tpm-incubator-dev-0.9.9-r0.corei7_64 and
cryptsetup-dev-2.3.2-r0.1.corei7_64
  file /usr/lib64/pkgconfig/libcryptsetup.pc conflicts between attempted
installs of cryptsetup-tpm-incubator-dev-0.9.9-r0.corei7_64 and
cryptsetup-dev-2.3.2-r0.1.corei7_64
  file /usr/lib/libcryptsetup.so conflicts between attempted installs of
lib32-cryptsetup-tpm-incubator-dev-0.9.9-r0.i586 and
lib32-cryptsetup-dev-2.3.2-r0.1.i586
  file /usr/lib/pkgconfig/libcryptsetup.pc conflicts between attempted installs
of lib32-cryptsetup-tpm-incubator-dev-0.9.9-r0.i586 and
lib32-cryptsetup-dev-2.3.2-r0.1.i586
</pre>
    </blockquote>
    <br>
    I plan on taking this for Dunfell. Master no long compiles do to
    core package updates.<br>
    <br>
    not sure what I am going to do for Master yet.<br>
    <br>
    thanks for the patch.<br>
    Armin<br>
    <blockquote type="cite"
      cite="mid:1594699201-14545-1-git-send-email-jpuhlman@mvista.com">
      <pre class="moz-quote-pre" wrap="">
Signed-off-by: Jeremy Puhlman <a class="moz-txt-link-rfc2396E" href="mailto:jpuhlman@mvista.com">&lt;jpuhlman@mvista.com&gt;</a>
---
 .../cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb       | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb b/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
index b706d15..2617162 100644
--- a/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
@@ -36,7 +36,12 @@ FILES_${PN} += "${libdir}/tmpfiles.d"
 RDEPENDS_${PN} += "lvm2 libdevmapper"
 RRECOMMENDS_${PN} += "lvm2-udevrules"
 
+RPROVIDES_${PN} = "cryptsetup"
 RREPLACES_${PN} = "cryptsetup"
 RCONFLICTS_${PN}  ="cryptsetup"
 
+RPROVIDES_${PN}-dev = "cryptsetup-dev"
+RREPLACES_${PN}-dev = "cryptsetup-dev"
+RCONFLICTS_${PN}-dev  ="cryptsetup-dev"
+
 BBCLASSEXTEND = "native nativesdk"
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------5B04C30E1289F6C827F11B78--
