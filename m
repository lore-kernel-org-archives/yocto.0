Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web09.867.1582239677768870550
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 15:01:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=o/w9Cgjq;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: parse error for token &{10 18 _netblocks.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.214.177, mailfrom: akuster@mvista.com)
Received: by mail-pl1-f177.google.com with SMTP id y8so1291pll.13
        for <yocto@lists.yoctoproject.org>; Thu, 20 Feb 2020 15:01:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=r0jAk4455G/adBd7vgFYHYBi6Xz9eNVOWAcgQkHvXUI=;
        b=o/w9CgjqQb9B52QbbObOyiCkM/8pSBpwnd3gueBuJVQU08wS4gKenPLREAnhsWMepF
         dzojReEdqf1+h2ZbEypXcDinIt02EluW+wq/nztqFfWBmP9Kj6UEfMZILMVxVzjZUiZh
         bspSfVpqtcVBPePjW8VepR3cbb37c33dPBFsvCXtBjutHGzyfjDMz94PNvAJjN4w2ZOt
         PelkYgtAiBn7azYLA1TaKTt4rwBJrwWJWQa3h/IheZnw8Nfg2xJURRGgvEfQVtNo0y0T
         4xfxna9VPrTIjoUBugLuhFrekEekVkZZg1zFer1vNHjci2xeku0cywboTLV8/EDqZoTw
         hkxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=r0jAk4455G/adBd7vgFYHYBi6Xz9eNVOWAcgQkHvXUI=;
        b=l6FznLPYWTm+RYwLBTOs5Qt044uAoluMd4uY8FGBrPgVfochoMBWwKHbHFFTE8crQO
         Sg4TMM8/UawH8Qltj7hKN//G/EIfmjVFr0dQPZsKvQ+pE+O87LfIen/sH9nQcCdM+iMp
         g+AY1MSmI4ERWTQmNyKME01s4E6I9AV5q5YBJnCiBZzDNh6ESuvZtQikbuO+H1Wo8ivT
         x3ZGBO+RMC1qn7haG/ig1+8RVOd9nA4HbT0nYshCCBxFx+1GP1oVMygp144nI2CKrIbI
         SP8FA2FIc8PbfK4/QjklbnNnk9swJ5ZT9+fxvQx1Ft7g6I6+EFr+a/uSJgJb1qgLh7zs
         tW8w==
X-Gm-Message-State: APjAAAU3aHlpdriyfQf/eMXVKBWYTGFSnkwZQCxJO0T8WZcfRm6bYvbA
	+2zrmA09XlCD62EDwaHcHvlvTA==
X-Google-Smtp-Source: APXvYqxCCee1+GoVvSOsco6UpsLxXefvoQtiqMQ7cNh1YAHdgXeyjxhELf+Q5B70mhLdRoG81hlo1A==
X-Received: by 2002:a17:90a:2e86:: with SMTP id r6mr6200151pjd.104.1582239677224;
        Thu, 20 Feb 2020 15:01:17 -0800 (PST)
Return-Path: <akuster@mvista.com>
Received: from ?IPv6:2601:202:4180:a5c0:88be:17f0:935c:9e35? ([2601:202:4180:a5c0:88be:17f0:935c:9e35])
        by smtp.gmail.com with ESMTPSA id w8sm594125pfn.186.2020.02.20.15.01.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 15:01:16 -0800 (PST)
Subject: Re: [yocto] QA Cycle report for build (yocto-3.0.2.rc2)
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 "Jain, Sangeeta" <sangeeta.jain@intel.com>,
 "Mittal, Anuj" <anuj.mittal@intel.com>, akuster808 <akuster808@gmail.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>,
 "Sangal, Apoorv" <apoorv.sangal@intel.com>,
 "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>,
 "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
 "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
 "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
References: <CY4PR11MB1879657C3887087DEC4B7573E3100@CY4PR11MB1879.namprd11.prod.outlook.com>
 <c5548ebb-b027-40da-5c93-d944aed949d0@gmail.com>
 <c49287d5cf34bb5318b34e60028eda8ab3efe088.camel@linuxfoundation.org>
 <C0207330DF60C5409302EC78C3FE68F3034491FD@PGSMSX101.gar.corp.intel.com>
 <CY4PR11MB1879F1750C572C67229F7824E3130@CY4PR11MB1879.namprd11.prod.outlook.com>
 <004690a057a50b8554de69a4259b0045de0a7d99.camel@linuxfoundation.org>
From: "Armin Kuster" <akuster@mvista.com>
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <36541185-212c-167c-eaaa-8aa1e3c11d21@mvista.com>
Date: Thu, 20 Feb 2020 15:01:14 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <004690a057a50b8554de69a4259b0045de0a7d99.camel@linuxfoundation.org>
Content-Type: multipart/alternative;
 boundary="------------129167173C4B69B8DFAC3858"
Content-Language: en-US

--------------129167173C4B69B8DFAC3858
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 2/20/20 2:44 PM, Richard Purdie wrote:
> I discussed this quickly in bug triage today with Armin. We agreed
> that:
>
> * The openssh bug is minor and doesn't affect release
> * Anuj resolved one of the bugs as being execution error so again it
> doesn't affect release
> * The bash issue does affect release
>
> We're proposing we build and release an rc3 with the bash CVE reverted.
> This would also include the bitbake memory optimisation during parsing
> which merged.
>
> We wouldn't rerun the manual QA for rc3, just check the automated test
> results.
>
> Does anyone have any objection to that? If not, QA should see an rc3
> email but we're just expecting to check the test results if that works
> for everyone?
Works for me.
>
> Vineela: Not sure how this affects release process, we'll just have to
> figure that out.

List them as Known issues?

- armin
>
> Cheers,
>
> Richard
>
>
> 


--------------129167173C4B69B8DFAC3858
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 2/20/20 2:44 PM, Richard Purdie
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:004690a057a50b8554de69a4259b0045de0a7d99.camel@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">I discussed this quickly in bug triage today with Armin. We agreed
that:

* The openssh bug is minor and doesn't affect release
* Anuj resolved one of the bugs as being execution error so again it
doesn't affect release
* The bash issue does affect release

We're proposing we build and release an rc3 with the bash CVE reverted.
This would also include the bitbake memory optimisation during parsing
which merged.

We wouldn't rerun the manual QA for rc3, just check the automated test
results.

Does anyone have any objection to that? If not, QA should see an rc3
email but we're just expecting to check the test results if that works
for everyone?</pre>
    </blockquote>
    Works for me.<br>
    <blockquote type="cite"
cite="mid:004690a057a50b8554de69a4259b0045de0a7d99.camel@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">

Vineela: Not sure how this affects release process, we'll just have to
figure that out.</pre>
    </blockquote>
    <br>
    List them as Known issues?<br>
    <br>
    - armin<br>
    <blockquote type="cite"
cite="mid:004690a057a50b8554de69a4259b0045de0a7d99.camel@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">

Cheers,

Richard

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------129167173C4B69B8DFAC3858--
