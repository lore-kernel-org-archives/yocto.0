Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com [209.85.216.67])
 by mx.groups.io with SMTP id smtpd.web11.1781.1592610215203645231
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jun 2020 16:43:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=M9BSjPeS;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.216.67, mailfrom: akuster@mvista.com)
Received: by mail-pj1-f67.google.com with SMTP id u8so4748357pje.4
        for <yocto@lists.yoctoproject.org>; Fri, 19 Jun 2020 16:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=MmHBHYXjnKDAYcAR9bcCc5Uf1Q0d3eL5rQBubX9jeFQ=;
        b=M9BSjPeShQKcbxb9GyQsrE6Dy7Cgf0+ETdJHzehQyOLinEBkFS2GuJs5gthKG3VOyd
         JGbBA7ahYe4yKFCCXU6Ub/YzCPqBHSIGIu+EOrQKwWvCrtPkXB4c1kp5F2VxKdY+nTKx
         e5RFg69zaYXXIw5e5Ig0dBQa2KsyJ7SOe42lHBdGnzSQBDXCq86rTdJu28awpLNStK/9
         ImjpLuKmcsVltU50e/tFyvYgAoqD3AOrxmcG2wGol2gNAj96HHp3BLABMkfmXyb468g3
         LBqwielKvmFPvtZiDX8Cf5UcgZSCQHPuil3iRoImFMser2gRtrEEOLPTH9d8AY28f0gI
         WQpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=MmHBHYXjnKDAYcAR9bcCc5Uf1Q0d3eL5rQBubX9jeFQ=;
        b=gNwAfAk2lM88cueuAr+0/L6jBxFV9V4FLovqgKgAwfo0Y6Kcw/lnLr/AedW56C1qmX
         SgxZnZnuXnbdppvfu2FvcUjcGii1JyEMZgVHlf/yk2UGu+26SDHoCBlNkWAgOfvqQu4z
         PC51T3U1EbCrqYPWG0lvZvpECooDdeefxDFmCDZLKjPxeQGh8t74vBkgpRMHVDQfO+UV
         nROk9cBMp1qtHyvo7LlXYduBhWD8+dohvhSrzmaWsPFAvdariVPoqWV993hfXKqT0tY1
         rJeql256UgGBR/YFkZeUasPI88R6CY/c67W9SZBIzF/Ec26mQMYX7NmBqu6eijs7LOsa
         yIDA==
X-Gm-Message-State: AOAM530EUOLZWPVoOgRW1qneXfQWaWsAw73HPVFdkNyhFvnqPjaKcnDC
	6Nwg0dvZEWxJcatOh5TgEMjizEoB/is=
X-Google-Smtp-Source: ABdhPJyiL9xjOafIiXmM25Gd6uH1hwEHYDaQfTGRNGr1wE3N0B+/0N2v8Y5ZKIpF/TulcRAQ4kfJRg==
X-Received: by 2002:a17:90a:3489:: with SMTP id p9mr5917796pjb.56.1592610214327;
        Fri, 19 Jun 2020 16:43:34 -0700 (PDT)
Return-Path: <akuster@mvista.com>
Received: from ?IPv6:2601:202:4180:a5c0:445a:f005:22f0:213c? ([2601:202:4180:a5c0:445a:f005:22f0:213c])
        by smtp.gmail.com with ESMTPSA id n64sm5904795pga.38.2020.06.19.16.43.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 16:43:33 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] apparmor: pull in coreutils/findutils only when not using systemd as init manager
To: yocto@lists.yoctoproject.org
References: <20200608100046.10153-1-alex.kanavin@gmail.com>
From: "Armin Kuster" <akuster@mvista.com>
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <3f0d2941-a6b4-2f98-dd51-f7b7969d5cbc@mvista.com>
Date: Fri, 19 Jun 2020 16:43:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200608100046.10153-1-alex.kanavin@gmail.com>
Content-Type: multipart/alternative;
 boundary="------------2F7B718E4C3E30DF68308800"
Content-Language: en-US

--------------2F7B718E4C3E30DF68308800
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

merged

On 6/8/20 3:00 AM, Alexander Kanavin wrote:
> The utilities from those packages (xargs, comm) are only used in sysvinit
> scripts, and so there is no need to pull them in when systemd is in use.
> Both are gpl3 licensed, so this is beneficial for builds where gpl3 is not
> allowed.
>
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  recipes-mac/AppArmor/apparmor_2.13.4.bb | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-mac/AppArmor/apparmor_2.13.4.bb b/recipes-mac/AppArmor/apparmor_2.13.4.bb
> index d6f61b3..552cac7 100644
> --- a/recipes-mac/AppArmor/apparmor_2.13.4.bb
> +++ b/recipes-mac/AppArmor/apparmor_2.13.4.bb
> @@ -191,7 +191,8 @@ PACKAGES += "mod-${PN}"
>  FILES_${PN} += "/lib/apparmor/ ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}"
>  FILES_mod-${PN} = "${libdir}/apache2/modules/*"
>  
> -RDEPENDS_${PN} +=  "coreutils findutils ${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
> +# Add coreutils and findutils only if sysvinit scripts are in use
> +RDEPENDS_${PN} +=  "${@["coreutils findutils", ""][(d.getVar('VIRTUAL-RUNTIME_init_manager') == 'systemd')]} ${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
>  RDEPENDS_${PN}_remove += "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
>  RDEPENDS_${PN}-ptest += "perl coreutils dbus-lib bash"
>  
>
> 


--------------2F7B718E4C3E30DF68308800
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    merged<br>
    <br>
    <div class="moz-cite-prefix">On 6/8/20 3:00 AM, Alexander Kanavin
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20200608100046.10153-1-alex.kanavin@gmail.com">
      <pre class="moz-quote-pre" wrap="">The utilities from those packages (xargs, comm) are only used in sysvinit
scripts, and so there is no need to pull them in when systemd is in use.
Both are gpl3 licensed, so this is beneficial for builds where gpl3 is not
allowed.

Signed-off-by: Alexander Kanavin <a class="moz-txt-link-rfc2396E" href="mailto:alex.kanavin@gmail.com">&lt;alex.kanavin@gmail.com&gt;</a>
---
 recipes-mac/AppArmor/apparmor_2.13.4.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-mac/AppArmor/apparmor_2.13.4.bb b/recipes-mac/AppArmor/apparmor_2.13.4.bb
index d6f61b3..552cac7 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.4.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.4.bb
@@ -191,7 +191,8 @@ PACKAGES += "mod-${PN}"
 FILES_${PN} += "/lib/apparmor/ ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}"
 FILES_mod-${PN} = "${libdir}/apache2/modules/*"
 
-RDEPENDS_${PN} +=  "coreutils findutils ${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
+# Add coreutils and findutils only if sysvinit scripts are in use
+RDEPENDS_${PN} +=  "${@["coreutils findutils", ""][(d.getVar('VIRTUAL-RUNTIME_init_manager') == 'systemd')]} ${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
 RDEPENDS_${PN}_remove += <a class="moz-txt-link-rfc2396E" href="mailto:${@bb.utils.contains('PACKAGECONFIG','perl','','perl',d)}">"${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"</a>
 RDEPENDS_${PN}-ptest += "perl coreutils dbus-lib bash"
 
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------2F7B718E4C3E30DF68308800--
