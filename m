Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
 by mx.groups.io with SMTP id smtpd.web08.1162.1626885133673231797
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jul 2021 09:32:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=G3OL1ZCD;
 spf=pass (domain: gmail.com, ip: 209.85.210.41, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f41.google.com with SMTP id 42-20020a9d012d0000b02904b98d90c82cso2598787otu.5
        for <yocto@lists.yoctoproject.org>; Wed, 21 Jul 2021 09:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=DzCFYJJn3F2f0rQGgT55bXN4SplSh6wyWLoMjp2tDr8=;
        b=G3OL1ZCDpshJfGDYXlIUnt2jETSnvhPFEPo9KC3TiHc0X0pgOxVRIeadVERDWjGIle
         Tf7dZD4xDESp4bT+GVn9Wap2KLyxowBJ2WGZPZZq29PKpQMDku4kBKzNfkElWXsVCQmK
         X/xTlKG6TAkF/y/mm9IZneD2EFOZ37U0sDY3OVjHZ9XvR0bgk82yTreG+8eHubJcZjqi
         DFXtINdugIbcyh55rlwbMmT2MBa4IXnuhfCANI1Nsenj1+mJm9s/ZXAY1ISiIH7uenij
         cxG7zgV4QCBimEHiCM7q+9CfNTutrx1rEpJfpEbl5DusYv6eVNYWimJ7tvNYwcUEuBAj
         lCgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=DzCFYJJn3F2f0rQGgT55bXN4SplSh6wyWLoMjp2tDr8=;
        b=ice29hFDQ3EMnlhoiKDEXmSpgbFIZPZ13wCP6sH8osmY+gzQq6VGs+hAjPL9IrJTEi
         7Tcak1oNzbE6Gr1ZhTHwXXvQI2RL4EKaHBbP9fLP+RhJZI/yVz+YWVuwz2KbJr++bmvA
         RF+2zngAB+BCW0dikhITKwWtrh87z4K4LFiHtl3W3zHSiGUrhH/jUTvjrGoBxn48KFJu
         2RbHbEzEirhNfG2LdMnFU5OsGV40ZKakb3b4udmU70irTzCfNwiB0G5gNSSYlJdg07Ou
         nKn/2Ip7Kz7HKTTvqRcgasFb6td0r+QiJp41l4VPkAbN/5IQ344xPBNwhy3+NVtRRK3J
         A1RA==
X-Gm-Message-State: AOAM531YSBOwoVJSyPqibtB4lGBmyPotlpENOjBnr8OTu1yNMXlcijPV
	UANOyXut8a5cAjefbTnFtFXMh0iCPaWWhg==
X-Google-Smtp-Source: ABdhPJxzlIFVEg8ubf5kCsEU6eERwZkuGiroSRV+xNuGRUjZtXskMsqR+FrhsYPMeSigVhNwmxhoHQ==
X-Received: by 2002:a9d:5e0d:: with SMTP id d13mr26875847oti.274.1626885132817;
        Wed, 21 Jul 2021 09:32:12 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id j22sm4825661otl.46.2021.07.21.09.32.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jul 2021 09:32:12 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto] How to pass arguments to a shell function from python task bb.build.exec_func ? #yocto #bitbake
To: Bel Hadj Salem Talel <bhstalel@gmail.com>, yocto@lists.yoctoproject.org
References: <kJcG.1626882308938472767.cDax@lists.yoctoproject.org>
Message-ID: <982d592f-c0f5-5a95-7456-ddfd0184ea5e@gmail.com>
Date: Wed, 21 Jul 2021 11:32:11 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <kJcG.1626882308938472767.cDax@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------1DAE42CF6B83B98F7E0DE6B1"
Content-Language: en-US

--------------1DAE42CF6B83B98F7E0DE6B1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

AFAIK, passing arguments from a python function to a shell function is 
not allowed

On 7/21/21 10:45 AM, Bel Hadj Salem Talel wrote:
> Hi All,
>
> I have this example that can call a shell function from a python task:
>
> *shell_function(){*
> *    bbwarn "This is a shell function, arg1 = $1"*
> *}*
>
> *python do_something(){*
> *   bb.build.exec_func('shell_function', d)*
> *}*
>
> How to pass arguments to the shell function ?
>
> I tried this : "*bb.build.exec_func('shell_function 1', d)"* but it 
> fails with the error: "shell_function 1" not found.
>
> Thanks,
> Talel
>
> 
>

--------------1DAE42CF6B83B98F7E0DE6B1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>AFAIK, passing arguments from a python function to a shell
      function is not allowed<br>
    </p>
    <div class="moz-cite-prefix">On 7/21/21 10:45 AM, Bel Hadj Salem
      Talel wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:kJcG.1626882308938472767.cDax@lists.yoctoproject.org">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      Hi All,<br>
      <br>
      I have this example that can call a shell function from a python
      task:<br>
      <br>
      <strong>shell_function(){</strong><br>
      <strong>    bbwarn "This is a shell function, arg1 = $1"</strong><br>
      <strong>}</strong><br>
      <br>
      <strong>python do_something(){</strong><br>
      <strong>   bb.build.exec_func('shell_function', d)</strong><br>
      <strong>}</strong><br>
      <br>
      How to pass arguments to the shell function ?<br>
      <br>
      I tried this : "<strong>bb.build.exec_func('shell_function 1', d)"</strong>
      but it fails with the error: "shell_function 1" not found. <br>
      <br>
      Thanks,<br>
      Talel
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------1DAE42CF6B83B98F7E0DE6B1--
