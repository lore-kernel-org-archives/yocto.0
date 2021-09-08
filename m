Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web08.12255.1631111041277850812
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Sep 2021 07:24:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=b3NOELxR;
 spf=pass (domain: gmail.com, ip: 209.85.128.41, mailfrom: blenkmax@gmail.com)
Received: by mail-wm1-f41.google.com with SMTP id j17-20020a05600c1c1100b002e754875260so1695259wms.4
        for <yocto@lists.yoctoproject.org>; Wed, 08 Sep 2021 07:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=iqET2ferpaYh7umTVgIGdO3949nB2LYm62DhnOi47Gc=;
        b=b3NOELxRUbBkNCh6HAK3BGzRi8W6dZDE1NXSxCWGlYGHXwjr0WbmDoAdgamhbkyoVE
         kPXthxHrxho9zbXEhC2Sjz3UNoaX9nMkPi122pNU9bGjXEB6HKq/z9DcS+ZB48m8QvZ+
         ZW3PoiuQ7d/CLL4+9UeZvggR1vrNDrU9fX3fwLtOSKn6FwOVp2R9z8RRIXUSaYMc41mC
         BSplKu2Zj6g9mZvBzl305j4bc7cmp1VMALYTJnAhir1IF69hkmXCcfKHrYNUAup6t/sY
         8jiKHqRseWOD9lwqRJSwZ/TaXcuOYV+uipycy50N3XR2mDi8phbS4+oL5Z+6mucidfcO
         SJXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=iqET2ferpaYh7umTVgIGdO3949nB2LYm62DhnOi47Gc=;
        b=j3dRWMpMOlf3DIgdpSWl9g5kXyEZol7YbnfoUeQhTDMuAzxNAsPPvFqjrelF9QuzmK
         DOUPng0E9mfdcQqnrJ+/3LyF90MhP5JvbcxpoJsp+KHLj/7i/S9AOBS039aDN9Uik6hN
         7TB2YwHWKt+R38v2zjcxSGLqwU1TM0CsPJUtOolhFUFNuHxDvXp1wxbTT6AYpxtF3Hpj
         /veeP7RNNZ3alc7B70DpHZZrYqraOye/2iKPXTAFHrSaN1/IG8V9Kh3OfvqO9liSOO8K
         xJd2U6/3Nu/t44E8SGi6VUPL7Wd687no8GVBxEzw7qiVaa0PknxG4fsInvTDj/3bAcWd
         69Fg==
X-Gm-Message-State: AOAM5318i3n6i3SPCdBMMCmXx0sHBSvpu4cSuhXXtFcdpfQjZQycpOYX
	KbnCh6X8iwDP15iltE8sewD3gX58qqSaexev
X-Google-Smtp-Source: ABdhPJxMIti+CWzqL/46QvrGIttdEVkq1sZz0Rim8ae2oZ9SXlTjHxhgfvhOyen548rooZU6E2ko2w==
X-Received: by 2002:a05:600c:4786:: with SMTP id k6mr3794271wmo.177.1631111039788;
        Wed, 08 Sep 2021 07:23:59 -0700 (PDT)
Return-Path: <blenkmax@gmail.com>
Received: from [10.242.8.101] ([212.118.206.70])
        by smtp.gmail.com with ESMTPSA id c9sm2331307wrf.77.2021.09.08.07.23.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Sep 2021 07:23:58 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH 1/2] image-with-hardened-binaries: add class
From: "Maximilian Blenk" <blenkmax@gmail.com>
To: Robert Berger <robert.berger.yocto.user@gmail.com>, akuster808@gmail.com,
 yocto@lists.yoctoproject.org
References: <20210813131801.1258469-1-Maximilian.Blenk@bmw.de>
 <a3782aee-77c5-117a-12cf-e2d1cbf4e248@gmail.com>
 <8c8973b3-0688-45e1-0492-edd56ab4c99a@gmail.com>
 <195fee4b-a186-0519-2e77-da854b4f6603@gmail.com>
Message-ID: <e47a2596-665e-39f8-dd7d-34bbaabe117c@gmail.com>
Date: Wed, 8 Sep 2021 16:26:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <195fee4b-a186-0519-2e77-da854b4f6603@gmail.com>
Content-Type: multipart/alternative;
 boundary="------------2D5DF9E2B4537EE464165541"
Content-Language: en-US

--------------2D5DF9E2B4537EE464165541
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

I'm really not used to this e-mail process :-D
forwording my original answer to the mailing list...

BR Max

On 06.09.21 10:18, Maximilian Blenk wrote:
>
> Hi Robert, Hi Armin,
>
> sorry for the late reply.
>
> Regarding  Armins question:
> If the config file you've used (e.g. th eon ein the selftest) enables 
> all the tests, then it should be fine indeed. I'm not completely sure 
> what the core-mage-minimal includes though. It if it contains systemd 
> the build should be failing if the rpath check is enabled (you would 
> have to whitelist the binaries in the config file)
> Currently there is no test for failing. Should i add one?
>
> Sure i can remove the ".py", i just want to avoid confusion of 
> "checksec.sh" and "checksec.py" (which are completely different tools)
>
> Regarding Roberts question:
> In case the tooling finds a violation it fails the build and outputs 
> an error message containing the buildsystem paths to the binaries and 
> the actual check it is failing. The message also contains some 
> reasoning on why the used feature shouldn't be used. The bitbake class 
> basically take the output you pasted (there is a json mode) and checks 
> it against the whitelist (and some other unreasonable things, such as 
> usage of relro in statically linked applications)
>
>
> Br Max
>
> On 21.08.21 18:59, Robert Berger wrote:
>> Hi,
>>
>> On 21/08/2021 18:35, Armin Kuster wrote:
>>>
>>> Regarding the selftest, is there test for failure?
>>>
>>> I ran this against core-image-minimal and nothing was printed out. Does
>>> that mean its fine?
>>>
>>> You may want to remove the ".py" from
>>> python3-checksec.py-native_0.6.1.bb, its not needed.
>>
>> If you run checksec manually against some binary e.g. ls.coreutils it 
>> outputs something like this:
>>
>> https://pastebin.com/JkeN1h3k
>>
>> Not sure what this should output.
>>
>>>
>>> -armin
>>>>
>>
>> 
>>

--------------2D5DF9E2B4537EE464165541
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi,<br>
      <br>
      I'm really not used to this e-mail process :-D<br>
      forwording my original answer to the mailing list...<br>
      <br>
      BR Max<br>
    </p>
    <div class="moz-cite-prefix">On 06.09.21 10:18, Maximilian Blenk
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:195fee4b-a186-0519-2e77-da854b4f6603@gmail.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <p>Hi Robert, Hi Armin,<br>
        <br>
        sorry for the late reply.<br>
        <br>
        Regarding  Armins question: <br>
        If the config file you've used (e.g. th eon ein the selftest)
        enables all the tests, then it should be fine indeed. I'm not
        completely sure what the core-mage-minimal includes though. It
        if it contains systemd the build should be failing if the rpath
        check is enabled (you would have to whitelist the binaries in
        the config file)<br>
        Currently there is no test for failing. Should i add one?<br>
        <br>
        Sure i can remove the ".py", i just want to avoid confusion of
        "checksec.sh" and "checksec.py" (which are completely different
        tools)<br>
        <br>
        Regarding Roberts question:<br>
        In case the tooling finds a violation it fails the build and
        outputs an error message containing the buildsystem paths to the
        binaries and the actual check it is failing. The message also
        contains some reasoning on why the used feature shouldn't be
        used. The bitbake class basically take the output you pasted
        (there is a json mode) and checks it against the whitelist (and
        some other unreasonable things, such as usage of relro in
        statically linked applications)<br>
        <br>
        <br>
        Br Max<br>
      </p>
      <div class="moz-cite-prefix">On 21.08.21 18:59, Robert Berger
        wrote:<br>
      </div>
      <blockquote type="cite"
        cite="mid:8c8973b3-0688-45e1-0492-edd56ab4c99a@gmail.com">Hi, <br>
        <br>
        On 21/08/2021 18:35, Armin Kuster wrote: <br>
        <blockquote type="cite"> <br>
          Regarding the selftest, is there test for failure? <br>
          <br>
          I ran this against core-image-minimal and nothing was printed
          out. Does <br>
          that mean its fine? <br>
          <br>
          You may want to remove the ".py" from <br>
          python3-checksec.py-native_0.6.1.bb, its not needed. <br>
        </blockquote>
        <br>
        If you run checksec manually against some binary e.g.
        ls.coreutils it outputs something like this: <br>
        <br>
        <a class="moz-txt-link-freetext"
          href="https://pastebin.com/JkeN1h3k" moz-do-not-send="true">https://pastebin.com/JkeN1h3k</a>
        <br>
        <br>
        Not sure what this should output. <br>
        <br>
        <blockquote type="cite"> <br>
          -armin <br>
          <blockquote type="cite"> <br>
          </blockquote>
        </blockquote>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
        <pre class="moz-quote-pre" wrap="">

</pre>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------2D5DF9E2B4537EE464165541--
