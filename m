Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web12.14271.1576258606713794185
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 09:36:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=bGpGQFnl;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: parse error for token &{10 18 _netblocks.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.216.45, mailfrom: akuster@mvista.com)
Received: by mail-pj1-f45.google.com with SMTP id j11so28814pjs.1
        for <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2019 09:36:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=FpwgluHLrZFCDexCB1E+Zz778vp7NQOVB8bt3NUEQyE=;
        b=bGpGQFnlXswCwI2R7C54j4A6BPZmJCHFMTd1Xw1DuqiUNCq12h22fJW2MI76PduZ90
         ECN6pCrKZWkxDWFgBe81HBpx6rstL5YEF65D64DhdA3Bc0qD6h0DEc0TonCejHM9p0xf
         sEmqFZ8P3PZmcfsfaoMYpAQLcCdsGUgkkpnR4tVR/AX4uldO0Ww7rnPX97HWefgE7CsU
         4oEUee7PJskgc1znALxRBI/LxBfr0kjEoLqpTK6wR6dW6i48H0yjxUFm1maMQkA74gk/
         /Pl44DmOr+HEb3tuTkGXQx7QM2eh/vA6OjJL+LbqKKVx8aBSp80wv9x2gU9QmN2gpQeS
         FpOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=FpwgluHLrZFCDexCB1E+Zz778vp7NQOVB8bt3NUEQyE=;
        b=JnQQZINXduBoS0EKyZIICRlsUXAlV/tfdlDsdkz7SFsTYPg7b+qhbZgef2+L7Dm1WU
         b7LvaOomj5JpOEn+cke1+UDWN/rJU2OieYkwVbm7qdOpyg/4tdWeVKyzA/Rpk262QAA2
         B5aRjL8jFJ7M63UGXQqwlJSy+VxRaXwkBKWywN5WAOIcxiXUU6D3Iv1mk9v9tZHmwJxS
         vpYIpnHt9S2Foq+73rowrxaXXFJFCLB5iYlo4Rzwhv2AnaqHCooIoLaoBOVT/UOPd9xP
         oPX9u3pbpXKChCKemDnJLlw32B91ECcx77/jd7cfWnQ6Vyn8zh4NMmGAJX3gzVjnd7TM
         E61g==
X-Gm-Message-State: APjAAAW5/rzTMabINP/eH5UsUkkVCW6kZxwkB3VFyIooW7z5kmTg91tX
	GyVgAiL37jphH/2f2weKrPqMcCdtcN4=
X-Google-Smtp-Source: APXvYqztOuyXU2RJZAHzUi+ltlxW3ok4kAXRCkArx5cl8ZhvFqb/xzgSqUeUMbyiGH5F95YnQc3/HA==
X-Received: by 2002:a17:902:a507:: with SMTP id s7mr506481plq.22.1576258605681;
        Fri, 13 Dec 2019 09:36:45 -0800 (PST)
Return-Path: <akuster@mvista.com>
Received: from ?IPv6:2601:202:4180:a5c0:61a6:377d:99d6:41b5? ([2601:202:4180:a5c0:61a6:377d:99d6:41b5])
        by smtp.gmail.com with ESMTPSA id b21sm12770046pfp.0.2019.12.13.09.36.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Dec 2019 09:36:45 -0800 (PST)
Subject: Re: [yocto] Yocto server is down
To: FLoraVLogs <eripflo@gmail.com>, yocto@lists.yoctoproject.org
References: <CAGhBkzwu3B2PWu4FZexiYxcnnKpZLjJaMohm85MKGz9Gur9T+g@mail.gmail.com>
From: "Armin Kuster" <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <48c351bc-7116-e7d7-bad8-9d595eedbcdf@mvista.com>
Date: Fri, 13 Dec 2019 09:36:42 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAGhBkzwu3B2PWu4FZexiYxcnnKpZLjJaMohm85MKGz9Gur9T+g@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------3A8B94740BAF4689C24C226B"
Content-Language: en-US

--------------3A8B94740BAF4689C24C226B
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 12/13/19 7:46 AM, FLoraVLogs wrote:
> Hi,
>
> I went to "http://downloads.yoctoproject.org/" and I get the
> following message:
>
>
>   Gateway Timeout
>
> Server error - server 198.145.29.63 is unreachable at this moment.
>
> Please retry the request or contact your administrator.
>
> Kindly assist here.
>

Thanks. The LF IT department is aware of  this and working towards a
solution.

No ETA.

Regards,
Armin
>
> Regards,
>
> Ripu
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47662): https://lists.yoctoproject.org/g/yocto/message/47662
> Mute This Topic: https://lists.yoctoproject.org/mt/68533979/1024635
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [akuster@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-


--------------3A8B94740BAF4689C24C226B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 12/13/19 7:46 AM, FLoraVLogs wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAGhBkzwu3B2PWu4FZexiYxcnnKpZLjJaMohm85MKGz9Gur9T+g@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">Hi,
        <div><br>
        </div>
        <div>I went to "<a href="http://downloads.yoctoproject.org/"
            target="_blank" moz-do-not-send="true">http://downloads.yoctoproject.org/</a>"
          and I get the following message:</div>
        <div>
          <h1 style="color:rgb(0,0,0);font-family:&quot;Times New
            Roman&quot;"><font size="2">Gateway Timeout</font></h1>
          <p style="color:rgb(0,0,0);font-family:&quot;Times New
            Roman&quot;">Server error - server 198.145.29.63 is
            unreachable at this moment.<br>
            <br>
            Please retry the request or contact your administrator.</p>
          <p style="color:rgb(0,0,0)"><font face="arial, sans-serif">Kindly
              assist here.</font></p>
        </div>
      </div>
    </blockquote>
    <br>
    <font face="arial, sans-serif">Thanks. The LF IT department is aware
      of  this and working towards a solution.<br>
      <br>
      No ETA.<br>
      <br>
      Regards,<br>
      Armin<br>
    </font>
    <blockquote type="cite"
cite="mid:CAGhBkzwu3B2PWu4FZexiYxcnnKpZLjJaMohm85MKGz9Gur9T+g@mail.gmail.com">
      <div dir="ltr">
        <div>
          <p style="color:rgb(0,0,0)"><font face="arial, sans-serif">Regards,</font></p>
          <p style="color:rgb(0,0,0)"><font face="arial, sans-serif">Ripu</font></p>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.

View/Reply Online (#47662): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/47662">https://lists.yoctoproject.org/g/yocto/message/47662</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/68533979/1024635">https://lists.yoctoproject.org/mt/68533979/1024635</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a>  [<a class="moz-txt-link-abbreviated" href="mailto:akuster@mvista.com">akuster@mvista.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------3A8B94740BAF4689C24C226B--
