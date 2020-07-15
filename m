Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com [209.85.167.195])
 by mx.groups.io with SMTP id smtpd.web12.355.1594786876718278988
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jul 2020 21:21:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kX11TT+W;
 spf=pass (domain: gmail.com, ip: 209.85.167.195, mailfrom: akuster808@gmail.com)
Received: by mail-oi1-f195.google.com with SMTP id t4so1133743oij.9
        for <yocto@lists.yoctoproject.org>; Tue, 14 Jul 2020 21:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=kF+4t664/IvHSLgIVewJZYiUXuFOhVcYsVdWrQe9L44=;
        b=kX11TT+W6bW3zvqabRN9qNBUxl7CJ2yN9CiKLHvEcFgPPlYKkd6KPQ1vtdewUpTv+h
         5Tj44DVUgq8iQ2mCzpHdObh0LmNqdzeku4etHNarjDL8a22KcchnrbDvh7T1c6onoEsF
         +o0RPi7bzeb48iKx/flcNh89o2wbGwhFmt/ZvKMJZYR6LNkw2DL+yAfRlL9PjULg5QS4
         JGbjHReiGyvzVmwPKNR72O8wG30alGvhT16pw798DH2/DNo+faN4u0XpTnFhYoGTQLeT
         p2TsLgn6ZEsCImAeCINVx1O9RmyDXm2bIwir1zOTXw+lwvHW/l5OuzFMO6uN6InfkMrJ
         pChA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=kF+4t664/IvHSLgIVewJZYiUXuFOhVcYsVdWrQe9L44=;
        b=Y4pA3x9aG105+qn82r/vUvaQhPV7iVfyV+KNogPuPhpsQmibNiL/XpSR12Mx0gUdTe
         69m3EaLC1Tw3M2IxDNOw1w4tNJaw+7JniEcIQ3LIb8xXXn1wF7q4jZsmUKub5DJCYPUv
         AJ/qG5eVOEaylinytJaZk/6j4cpkbhBxdWbpbxiyHsWE42WO/F/nrx19l6pLTAcK2X1/
         rstbiaYWQ6QVhPgFT/w7tNeEx7YQzFvFXGuCP/8zfWBfd4B4DjFnrkdKQ3TZ7E0zr4kx
         0hzBkO3nGzwOtgY2faAZtIQcJuKtIt1XvFQrEY1xw0io+XGl0IHQXprIuIksQUb5DsRe
         D6iQ==
X-Gm-Message-State: AOAM531pnIF/LqRSxRctbyF046zN3k7/OQ16TL9z1PFZjpEfVL7kXivY
	trvSzKvOYi4f4dgcb0RQSHugpCj9fRQ=
X-Google-Smtp-Source: ABdhPJwl3xk2+HHxe2VlI4IB3rvruAJKLG8kW1sp23qJDoe1SK7AwhZgIBadUcGpup6Iq1k8VRQAPQ==
X-Received: by 2002:a17:90a:cb81:: with SMTP id a1mr8210219pju.11.1594786386620;
        Tue, 14 Jul 2020 21:13:06 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:7df4:7f73:717d:af68? ([2601:202:4180:a5c0:7df4:7f73:717d:af68])
        by smtp.gmail.com with ESMTPSA id 17sm493486pjl.30.2020.07.14.21.13.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 21:13:06 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] ccs-tools:Fix build error when enable multilib.
To: yocto@lists.yoctoproject.org
References: <1594099810-69294-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <bd9300c4-fc21-a566-e8a0-6ddb9b853fec@gmail.com>
Date: Tue, 14 Jul 2020 21:13:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1594099810-69294-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
Content-Type: multipart/alternative;
 boundary="------------F45578DCEAF8580B6C031C87"
Content-Language: en-US

--------------F45578DCEAF8580B6C031C87
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 7/6/20 10:30 PM, zhengruoqin wrote:
> ERROR: lib32-ccs-tools-1.8.4-r0 do_install: oe_runmake failed
> ERROR: lib32-ccs-tools-1.8.4-r0 do_install: Execution of
> '/build-armv8/tmp/work/armv7ahf-neon-mllib32-linux-gnueabi/lib32-ccs-tools/1.8.4-r0/temp/run.do_install.22368'
> failed with exit code 1:
> make: *** No rule to make target 'install'.  Stop.
> WARNING: exit code 1 from a shell command.
>
> Signed-off-by: Zheng Ruoqin <zhengrq.fnst@cn.fujitsu.com>
> ---
>  recipes-mac/ccs-tools/ccs-tools_1.8.4.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
merged.
Thanks

> diff --git a/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb b/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
> index 2e37c0b..79af6a5 100644
> --- a/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
> +++ b/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
> @@ -13,7 +13,7 @@ SRC_URI = "http://osdn.dl.sourceforge.jp/tomoyo/49693/${BPN}-${PV}-${DS}.tar.gz"
>  SRC_URI[md5sum] = "eeee8eb96a7680bfa9c8f6de55502c44"
>  SRC_URI[sha256sum] = "c358b80a2ea77a9dda79dc2a056dae3acaf3a72fcb8481cfb1cd1f16746324b4"
>  
> -S = "${WORKDIR}/${PN}"
> +S = "${WORKDIR}/${BPN}"
>  
>  inherit features_check
>  
>
> 


--------------F45578DCEAF8580B6C031C87
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 7/6/20 10:30 PM, zhengruoqin wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:1594099810-69294-1-git-send-email-zhengrq.fnst@cn.fujitsu.com">
      <pre class="moz-quote-pre" wrap="">ERROR: lib32-ccs-tools-1.8.4-r0 do_install: oe_runmake failed
ERROR: lib32-ccs-tools-1.8.4-r0 do_install: Execution of
'/build-armv8/tmp/work/armv7ahf-neon-mllib32-linux-gnueabi/lib32-ccs-tools/1.8.4-r0/temp/run.do_install.22368'
failed with exit code 1:
make: *** No rule to make target 'install'.  Stop.
WARNING: exit code 1 from a shell command.

Signed-off-by: Zheng Ruoqin <a class="moz-txt-link-rfc2396E" href="mailto:zhengrq.fnst@cn.fujitsu.com">&lt;zhengrq.fnst@cn.fujitsu.com&gt;</a>
---
 recipes-mac/ccs-tools/ccs-tools_1.8.4.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
</pre>
    </blockquote>
    merged.<br>
    Thanks<br>
    <br>
    <blockquote type="cite"
      cite="mid:1594099810-69294-1-git-send-email-zhengrq.fnst@cn.fujitsu.com">
      <pre class="moz-quote-pre" wrap="">
diff --git a/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb b/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
index 2e37c0b..79af6a5 100644
--- a/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
+++ b/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
@@ -13,7 +13,7 @@ SRC_URI = <a class="moz-txt-link-rfc2396E" href="http://osdn.dl.sourceforge.jp/tomoyo/49693/${BPN}-${PV}-${DS}.tar.gz">"http://osdn.dl.sourceforge.jp/tomoyo/49693/${BPN}-${PV}-${DS}.tar.gz"</a>
 SRC_URI[md5sum] = "eeee8eb96a7680bfa9c8f6de55502c44"
 SRC_URI[sha256sum] = "c358b80a2ea77a9dda79dc2a056dae3acaf3a72fcb8481cfb1cd1f16746324b4"
 
-S = "${WORKDIR}/${PN}"
+S = "${WORKDIR}/${BPN}"
 
 inherit features_check
 
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------F45578DCEAF8580B6C031C87--
