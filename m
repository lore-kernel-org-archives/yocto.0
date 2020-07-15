Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.327.1594786723500804606
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jul 2020 21:18:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=g42GS2ii;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16FF2E01E6B; Tue, 14 Jul 2020 21:18:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,NICE_REPLY_A,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 NICE_REPLY_A Looks like a legit reply (A)
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com [209.85.167.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55CF8E01E69
	for <yocto@yoctoproject.org>; Tue, 14 Jul 2020 21:18:41 -0700 (PDT)
Received: by mail-oi1-f195.google.com with SMTP id h17so1152713oie.3
        for <yocto@yoctoproject.org>; Tue, 14 Jul 2020 21:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=fE9EoyRWMLI0UF1alRGzYNeBcvXqn75bxTIEZVh6Iic=;
        b=g42GS2iiG3YVBX/5xJN/BpGDJ+HmrKC8XmqL8fLgTmSLo+6M77PanbEJcwFewsApBD
         WqEfNSpgV/MiPOPcUtomImSqYYZ5uSeVDa6ZLUEKSPWdEYAeGvwus5N+EpjVh6eS1qAy
         /tHUCL2i7o27mPEklderxwADh6c5LORJAdaG7q7li5H2bZo4aIB4heuS+FPY3rO9VTnS
         WWWWJTAVs2ho0G3oQMGcy77W1MBzAnhlNqoxe+jog1kVjkf32FT+7x5BGaqOaxG4vrQb
         xQGVzAgcxxUscyYwLFr83dSw3W1yX/BgfvMiTj7U85qWsawtBi0dTUGIxxpQ7GVA3q0Z
         w/Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=fE9EoyRWMLI0UF1alRGzYNeBcvXqn75bxTIEZVh6Iic=;
        b=fzwaJbEEYSl1F6xv+bp9c7n2Hr0w2J7yHAcchPA3bmm5SKFqwbjwS9WZ0u+CXEIRhj
         RvOgh4Z4sxGh8PiLtaEXQj0QLpMrjoO+6MrAXh1ZjACXeo92P47lxIp3XTeV2/1OJlXX
         pLr8tEkWu2FYrQqbwQk7fUbDO9Z1MpV8ZIYdaldhc9CZlx1JbBWYOYHMkSvDu+X8prbO
         ljAxQ527Z/5jNxRhTpEnB4IpHUZEjzK2THnC7pLW8L4LBceEwr7jxWJlk+T2hDNIJFOU
         B56y4o8296hdXtOgU51FlKCfCP2DSYao3/ZoovkP49MFNoYT5VZ/+9Ka+UYxcjxZE/Bq
         6lcA==
X-Gm-Message-State: AOAM533TJ33TrcXBPIQY37LEBX3UKngoI8nUOvDQG+5IEzkN3HV3Xd9L
	UFHGSu/UlWthT/2uzJp4l6egsvvwBg8=
X-Google-Smtp-Source: ABdhPJzCF3kC/WfLs+xmWR23rcyI5WYy2H5x6GHmy3DAD2vtv5VCI7nohtWV4HZIfWdnq4D6PgRjgw==
X-Received: by 2002:a17:90a:22ab:: with SMTP id s40mr8646217pjc.117.1594786402179;
        Tue, 14 Jul 2020 21:13:22 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:7df4:7f73:717d:af68? ([2601:202:4180:a5c0:7df4:7f73:717d:af68])
        by smtp.gmail.com with ESMTPSA id t13sm487889pjs.17.2020.07.14.21.13.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 21:13:21 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] bastille: Deleted redundant inherit to fix error when enable multilib.
To: zhengruoqin <zhengrq.fnst@cn.fujitsu.com>, yocto@yoctoproject.org
References: <1594364643-125858-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <aeb1d67e-409c-771d-3081-fb49c2c6a881@gmail.com>
Date: Tue, 14 Jul 2020 21:13:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1594364643-125858-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
Content-Type: multipart/alternative;
 boundary="------------9A6DEFE33DF831F84276B802"
Content-Language: en-US

--------------9A6DEFE33DF831F84276B802
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

merged

On 7/10/20 12:04 AM, zhengruoqin wrote:
> There is no need to inherit module-base. Because this inherit will stop
> bastille to build to lib32-bastille.
>
> Signed-off-by: Zheng Ruoqin <zhengrq.fnst@cn.fujitsu.com>
> ---
>  recipes-security/bastille/bastille_3.2.1.bb | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/recipes-security/bastille/bastille_3.2.1.bb b/recipes-security/bastille/bastille_3.2.1.bb
> index e9accb5..0290cae 100644
> --- a/recipes-security/bastille/bastille_3.2.1.bb
> +++ b/recipes-security/bastille/bastille_3.2.1.bb
> @@ -9,8 +9,6 @@ DEPENDS = "virtual/kernel"
>  RDEPENDS_${PN} = "perl bash tcl perl-module-getopt-long perl-module-text-wrap lib-perl perl-module-file-path perl-module-mime-base64 perl-module-file-find perl-module-errno perl-module-file-glob perl-module-tie-hash-namedcapture perl-module-file-copy perl-module-english perl-module-exporter perl-module-cwd libcurses-perl coreutils"
>  FILES_${PN} += "/run/lock/subsys/bastille"
>  
> -inherit module-base
> -
>  SRC_URI = "http://sourceforge.net/projects/bastille-linux/files/bastille-linux/3.2.1/Bastille-3.2.1.tar.bz2 \
>             file://AccountPermission.pm \
>             file://FileContent.pm \
>
> 


--------------9A6DEFE33DF831F84276B802
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    merged<br>
    <br>
    <div class="moz-cite-prefix">On 7/10/20 12:04 AM, zhengruoqin wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:1594364643-125858-1-git-send-email-zhengrq.fnst@cn.fujitsu.com">
      <pre class="moz-quote-pre" wrap="">There is no need to inherit module-base. Because this inherit will stop
bastille to build to lib32-bastille.

Signed-off-by: Zheng Ruoqin <a class="moz-txt-link-rfc2396E" href="mailto:zhengrq.fnst@cn.fujitsu.com">&lt;zhengrq.fnst@cn.fujitsu.com&gt;</a>
---
 recipes-security/bastille/bastille_3.2.1.bb | 2 --
 1 file changed, 2 deletions(-)

diff --git a/recipes-security/bastille/bastille_3.2.1.bb b/recipes-security/bastille/bastille_3.2.1.bb
index e9accb5..0290cae 100644
--- a/recipes-security/bastille/bastille_3.2.1.bb
+++ b/recipes-security/bastille/bastille_3.2.1.bb
@@ -9,8 +9,6 @@ DEPENDS = "virtual/kernel"
 RDEPENDS_${PN} = "perl bash tcl perl-module-getopt-long perl-module-text-wrap lib-perl perl-module-file-path perl-module-mime-base64 perl-module-file-find perl-module-errno perl-module-file-glob perl-module-tie-hash-namedcapture perl-module-file-copy perl-module-english perl-module-exporter perl-module-cwd libcurses-perl coreutils"
 FILES_${PN} += "/run/lock/subsys/bastille"
 
-inherit module-base
-
 SRC_URI = "<a class="moz-txt-link-freetext" href="http://sourceforge.net/projects/bastille-linux/files/bastille-linux/3.2.1/Bastille-3.2.1.tar.bz2">http://sourceforge.net/projects/bastille-linux/files/bastille-linux/3.2.1/Bastille-3.2.1.tar.bz2</a> \
            <a class="moz-txt-link-freetext" href="file://AccountPermission.pm">file://AccountPermission.pm</a> \
            <a class="moz-txt-link-freetext" href="file://FileContent.pm">file://FileContent.pm</a> \
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------9A6DEFE33DF831F84276B802--
