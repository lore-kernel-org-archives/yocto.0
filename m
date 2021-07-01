Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
 by mx.groups.io with SMTP id smtpd.web09.9232.1625154790257953782
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Jul 2021 08:53:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=a9zHKXTU;
 spf=pass (domain: gmail.com, ip: 209.85.210.47, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f47.google.com with SMTP id o17-20020a9d76510000b02903eabfc221a9so7047650otl.0
        for <yocto@lists.yoctoproject.org>; Thu, 01 Jul 2021 08:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=Y7zgH2rjv0NDZwe55CSp87F4k81RvS2QALN+64ENV8A=;
        b=a9zHKXTUbch8N/5m7U464J1w+CrrF2hP5bPCDYiAIRYLWiWcWoz6zaWE0wdJLyj0WM
         tIv6Dhbo7j5Fzk67c8Ir7m6rlqIPArqELDZq6OhGXOCWwV2L5FPq3YS+CVeKPNXTBoXP
         1poDqKzdne+QzvBxVWie7tlRzBsQMb/MmMHyalM/zq3SYuKE8y1To0ovP7H6PCGSJvcd
         3IsuAD6vYQs8fjRDjEfAPsjTk7m3qlHwqUNiSlZv+cRZUVQRUcWKQxhm7OoIbNaIacTU
         3f9hrBDqyKry+4D0C+FSYEehlZ6jeBUX33/pI7CwxBfo2pVk510ZL0sGpPfDYksypbjJ
         c7CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=Y7zgH2rjv0NDZwe55CSp87F4k81RvS2QALN+64ENV8A=;
        b=uRNb+VEKU/7tEj6r9bqZ030yU6VOyuG9vVM3dRW8es5AgtBE8jOwK/oIGurqj6N1ld
         xwZaKUXhULBzNEEwnEYbG9u2a6EAnu0FTwiGNkIBUAMXpGTlwJqQoXbjBVfUOaecysHx
         Sff9pY7+1BOcbRhag+j0xudy/Aj9YPJQPkX9+aq8g95exZpi0MOxLqkDB6gAqdUDKcGU
         8MTw8nDq1zLNOS8UwJBKKGRfX2VjxCG1nVWDZZ/pThYhrCvtX5KxiywjAf/Tk2PY7r2n
         kxz7adcmQxDQq3zXJx9b4Oi7XWWFjd16y5waL7F+Y0V1+VqwwU9JYPKQs9U+GWM5NYsI
         aTYQ==
X-Gm-Message-State: AOAM53116JirBtlLCSiBXA0uv3gHjCPY3hLSQdA17bWZqPpakuYA6s1z
	yu8SphAyeqP6A/882GS2C9z2njHU7jM=
X-Google-Smtp-Source: ABdhPJxJkvykdjF+TWxpkB2fujqtOTXmxGZ6+2s4r46Jbc0ecO97bD/SaSViUQ+MoJ7afjUFr419bw==
X-Received: by 2002:a9d:6d17:: with SMTP id o23mr555114otp.13.1625154789409;
        Thu, 01 Jul 2021 08:53:09 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id z19sm24181ooi.32.2021.07.01.08.53.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jul 2021 08:53:08 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto] Zuul - Project Gating System with Yocto Project
To: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>,
 yocto@lists.yoctoproject.org
References: <CAJkqNs31M4AgbfzBcfVH3ekTEMuRAXE2XC7JdqFhkjuSfxLgsw@mail.gmail.com>
Message-ID: <b866d702-9ea0-611d-8997-1973634ae98d@gmail.com>
Date: Thu, 1 Jul 2021 10:53:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAJkqNs31M4AgbfzBcfVH3ekTEMuRAXE2XC7JdqFhkjuSfxLgsw@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------0E33AA267A663E669EB8BBC0"
Content-Language: en-US

--------------0E33AA267A663E669EB8BBC0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 7/1/21 9:48 AM, Tomasz Dziendzielski wrote:
> Hello,
> is anyone here using Zuul along with Yocto Project? We are thinking 
> about integrating Zuul to our project that already uses Yocto, but we 
> are not too familiar with Zuul and we want it to conform to good open 
> source practices, without losing any advantages of both projects and 
> we want to avoid creating some hacky monster.
> Could you share some suggestions on how it can be combined together 
> and what is the best approach/structure to do this? Please also share 
> if you have some "what I wish I'd known" about Zuul integration to 
> Yocto. Any hints are appreciated.


I haven't, but it's on my radar to look at as it seems like it could be 
pretty useful. If you look into it, please share your findings!


>
> Best regards,
> Tomasz Dziendzielski
>
> 
>

--------------0E33AA267A663E669EB8BBC0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 7/1/21 9:48 AM, Tomasz Dziendzielski
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJkqNs31M4AgbfzBcfVH3ekTEMuRAXE2XC7JdqFhkjuSfxLgsw@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Hello,</div>
        <div>is anyone here using Zuul along with Yocto Project? We are
          thinking about integrating Zuul to our project that already
          uses Yocto, but we are not too familiar with Zuul and we want
          it to conform to good open source practices, without losing
          any advantages of both projects and we want to avoid creating
          some hacky monster.</div>
        <div>Could you share some suggestions on how it can be combined
          together and what is the best approach/structure to do this?
          Please also share if you have some "what I wish I'd known"
          about Zuul integration to Yocto. Any hints are appreciated.</div>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>I haven't, but it's on my radar to look at as it seems like it
      could be pretty useful. If you look into it, please share your
      findings!<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
cite="mid:CAJkqNs31M4AgbfzBcfVH3ekTEMuRAXE2XC7JdqFhkjuSfxLgsw@mail.gmail.com">
      <div dir="ltr">
        <div><br>
        </div>
        <div>Best regards,</div>
        <div>Tomasz Dziendzielski<br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------0E33AA267A663E669EB8BBC0--
