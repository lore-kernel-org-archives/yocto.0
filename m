Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web12.64.1596075130751623118
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jul 2020 19:12:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EedjJ5js;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id w17so12945270ply.11
        for <yocto@lists.yoctoproject.org>; Wed, 29 Jul 2020 19:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=A8OOWa1Y0jOO8Nk5R+L/1ZgGmJEyIEhN4WnGQKJEjMc=;
        b=EedjJ5jsd0boD5xJ2FkaAa5RhjnEQlQv1Zyu5fGeZ/D/Nczj871Km5cJShD4EB5po3
         kdD+KdaZi3iQJC4WPXqhFTSrxiaMmItnbXj/pjnOc/48t49LoIK3qM7ddthRfhwux0Gc
         aPDNOeWK8u2AC5GHK/Z04RNOZ5SCOChdqz3bDHhEBOx/LwobSjvzyHUFSOWPi/okQHNh
         +iSrwkOVczXo75TmrLQ1ROA/iCHy8T6oHEOR9yDMm1Me8KHF2Yg23VSE/WFs7johJJU5
         v0W3YTHLfc/bRjn7a4am8SU0xsyirflGYkKhDZicgJ7ZTR/jc1Rd0EFb5gZHqXPCLl1J
         atyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=A8OOWa1Y0jOO8Nk5R+L/1ZgGmJEyIEhN4WnGQKJEjMc=;
        b=r3mHWJh0XQXlUPN0RdqvnRVG6vNwxrG5Qbs1bHRDxoSdL0XR78jdVS6VQK4DqV4W1B
         d7BXZ3LgH8bDcWJDEAyMNFYtx1IKpNRPXEuG9/TuPNnHrqyo+stQ3HHXL5IcHR0wtXX+
         ZWg+C9jqugziOjrGasgT2vhcftBa595VJ2TsoOSJKR1WhM9xzjRYE09JKWxD1i89Ycs9
         tsmzkycP6cxihEcMKxSwKw5fBtPLQic4HowQ7X9tCxwxiCRMesFZIm7t07QW6S5KDel2
         n4oTgfZkk2eOX2CSzNs0f+AmmYtCQcnvUWMyqJovW37enPc4sLqGpDo6oRM4xkFkHGoo
         FyHg==
X-Gm-Message-State: AOAM530waVfL/pwOpakrz5m67lmtSDHTuHKfbIBUj0KgUSgo9YT0ZKqd
	kGdRpqBYbJWkxOzX+bAx0TbYvS7I
X-Google-Smtp-Source: ABdhPJxnvUhP6mazICw0RU4ZgDUF0UkqWgl3lPllgPq6MT77Z6cXjivKNCwrPRU6Hanl4mJgsyhU0w==
X-Received: by 2002:a17:902:bd90:: with SMTP id q16mr840201pls.54.1596075130032;
        Wed, 29 Jul 2020 19:12:10 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:78ea:3c50:1a71:2bae? ([2601:202:4180:a5c0:78ea:3c50:1a71:2bae])
        by smtp.gmail.com with ESMTPSA id 79sm3805754pfu.86.2020.07.29.19.12.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2020 19:12:09 -0700 (PDT)
Subject: Re: [yocto] [meta-security] Clamav libclammspack.so missing from image
To: yoc <yoc.dev@whitetree.xyz>, yocto@lists.yoctoproject.org
References: <464e94c9-7077-bc1c-6ac7-955933fcb4c5@whitetree.xyz>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <598c4053-8ad7-15d5-a0c2-d22d6a54256f@gmail.com>
Date: Wed, 29 Jul 2020 19:12:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <464e94c9-7077-bc1c-6ac7-955933fcb4c5@whitetree.xyz>
Content-Type: multipart/alternative;
 boundary="------------045E97C43D2CE7CC3EF366AA"
Content-Language: en-US

--------------045E97C43D2CE7CC3EF366AA
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 7/29/20 12:34 PM, yoc wrote:
> Hi,
>
> I am adding clamav to my custom image.
>
> I have added the target clamav-libclamav to my image and libclamav.so
> is added, as expected, to /usr/lib but libclammspack.so is not added
> to /usr/lib
>
> How to I make sure that libclammspack.so is include in the image?

You can check the build directory in the package dir and see if it is
there. Then check the package-split to see if it ended up in a different
package.

I am rebuilding dunfell now to see what is up.

-armin
>
> I am using the meta-security layer on the dunfell branch.
>
> Many Thanks,
>
> Charlie
>
>
> 


--------------045E97C43D2CE7CC3EF366AA
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 7/29/20 12:34 PM, yoc wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:464e94c9-7077-bc1c-6ac7-955933fcb4c5@whitetree.xyz">Hi,
      <br>
      <br>
      I am adding clamav to my custom image.
      <br>
      <br>
      I have added the target clamav-libclamav to my image and
      libclamav.so is added, as expected, to /usr/lib but
      libclammspack.so is not added to /usr/lib
      <br>
      <br>
      How to I make sure that libclammspack.so is include in the image?
      <br>
    </blockquote>
    <br>
    You can check the build directory in the package dir and see if it
    is there. Then check the package-split to see if it ended up in a
    different package.<br>
    <br>
    I am rebuilding dunfell now to see what is up. <br>
    <br>
    -armin<br>
    <blockquote type="cite"
      cite="mid:464e94c9-7077-bc1c-6ac7-955933fcb4c5@whitetree.xyz">
      <br>
      I am using the meta-security layer on the dunfell branch.
      <br>
      <br>
      Many Thanks,
      <br>
      <br>
      Charlie
      <br>
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------045E97C43D2CE7CC3EF366AA--
