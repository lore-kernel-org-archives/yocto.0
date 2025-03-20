Return-Path: <leon.anavi@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F876C28B30
	for <webhook@archiver.kernel.org>; Thu, 20 Mar 2025 10:53:58 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web10.4401.1742468028544194781
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Mar 2025 03:53:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=jJ+TjRwX;
 spf=pass (domain: konsulko.com, ip: 209.85.208.45, mailfrom: leon.anavi@konsulko.com)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5e686d39ba2so1325391a12.2
        for <yocto@lists.yoctoproject.org>; Thu, 20 Mar 2025 03:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1742468027; x=1743072827; darn=lists.yoctoproject.org;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XQ8krh8P2UHpnHtOeWe6CIhhsUpBzd+wrYxiZD0J+bY=;
        b=jJ+TjRwX98IamPpz6c/7kfZTYVMZEEnbKMKnMKcUC5qKMzQ2+Unlrj72gIzhu9ZW6X
         ihO6CZRLpNDMKjT9jkJpD1bJW4ubukBRgR0DgHsvwNWXkrc4SkeELB2UEXOyOjOfr2qK
         XjOXDigoVaaUyTH/VHdsKBx9ZMN0R4qwKtqO4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742468027; x=1743072827;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XQ8krh8P2UHpnHtOeWe6CIhhsUpBzd+wrYxiZD0J+bY=;
        b=eRnbkRTb+s7Z5yJaF5AQr/kb6U/lrFTFyED2hRtVYfKkxiYOL1s8mdo7mnkp/0Sl6t
         FFnq6f/oRqQPUwsCZNSeSlhxsmBvh9OuHPtnKncfuxdGzLurD4XRQ1dzPcvks37dE6lR
         DaC0vNZ2R9fVEkMD5Ih4GT07Usz0+1q0O5f069FeLT0Oc1weZ6cyqMzJ8mJSFpo8Wi7/
         p9axArcSj/1/h1sZV0Gtn4W+PA/AKqtB7jcnWBB7M4ypI9tEZ9OZOwAEcLKourL8OfLk
         S0uWtH/V8mzzNBk6flDpSbddiWNVs//mboXPLRqMDrNsNIz5nxyFjUVGyb2DPuTC1ukt
         6ukw==
X-Forwarded-Encrypted: i=1; AJvYcCXBU23DP3cUBDSaTFyvZwdfK+hAnb1Y97AeqVcZXrMoKoObRDaUlHO2NZIRMpjokIxfk2y6IA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxGcD6mS/MfkULssvGj0Zonei0eygcn3liGa3dZlkTgKQhC7UiO
	oJHT8Xl1tpFYPNbY3m0TMPIMUdQOXg3S547avHCffANCC3JB807DvC+Hcz46I0E=
X-Gm-Gg: ASbGnctqWN7rlhDSAnLJyPy6p0AAgkfUlKxQPAYsDw1NZkYlzNsPkDyrZ9qxInOgi+s
	9HV1jbsfuD+SLqjnnPhLb+QA2CfiEYH7gqLqtVu5W/xrDMv1a7X37OdPVhqVRlwZj6953raqU0C
	wQoRgzkqxsu2yJKsWUx95YDFymwp75ipVcKZi3msseIdxryQz2vBDJjzu3OYnXIftZeR15nJ/v3
	oSOYZ0z5jpST1FyYay2JdX0A5AghEZ/j5XItuBRKoUEpHyGmYIC7TTqlIiKPzRiCFwEOtZfGa5f
	mbOz2ExIsXC15Cr6uZ3Ij8AzkjVvfyY9jp40iRHLq1n8VcytUKavyLYYb3mb7es=
X-Google-Smtp-Source: AGHT+IHDCt2bkn79XAlXDnLAf4iapj2VFYGIzGFFSJd9buZOQ+F0eqU0FT991mVoQRjaCVuHCJAukQ==
X-Received: by 2002:a05:6402:5189:b0:5e7:8827:2c33 with SMTP id 4fb4d7f45d1cf-5eb80cdbbcemr6258667a12.11.1742468026747;
        Thu, 20 Mar 2025 03:53:46 -0700 (PDT)
Received: from [192.168.5.161] ([46.55.231.62])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e81692e5b7sm10104551a12.13.2025.03.20.03.53.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Mar 2025 03:53:46 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------LhY60ed6iXeBudM0gGPYSoLZ"
Message-ID: <9eadbb33-7272-413d-9610-7bd9bc9bb050@konsulko.com>
Date: Thu, 20 Mar 2025 12:53:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] How to build a yocto image with two different python3
 versions ? #yocto #python #scarthgap #sdk #toolchain
To: 283982@ust.com, yocto@lists.yoctoproject.org
References: <aa28d980-f0d2-47ad-8d46-003555b2a8fc@konsulko.com>
 <20431.1742453702008361364@lists.yoctoproject.org>
Content-Language: en-US
From: Leon Anavi <leon.anavi@konsulko.com>
In-Reply-To: <20431.1742453702008361364@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Mar 2025 10:53:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64989

This is a multi-part message in MIME format.
--------------LhY60ed6iXeBudM0gGPYSoLZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

On 20.03.25 г. 8:55 ч., 283982 via Lists.Yoctoproject.Org wrote:
>
> Hi,
>
> The STM32MPU157F has limited RAM (386 MB) and an ARM A7 processor. 
> When I try to install |scipy| via PyPI, it attempts to build from 
> source, but since there is no pre-built wheel file for ARMv7l, the 
> build process consumes too much RAM and crashes the system. For this 
> reason, we are switching to the RZ/V2L, which has an ARM A55 processor 
> and 2GB of RAM.
>

Wait a moment, why are you attempting to build it from source on the 
STM32MPU157F? The standard approach would be to create a python3-scipy 
recipe that inherits pypi and python_mesonpy. Just like the rest of the 
recipes in layer meta-openembedded/meta-python. This way you will be 
able include python3-scipy in your image and bitbake will take care of 
the rest.

> The RZ/V2L Yocto image only includes Python 3.8 by default, but I need 
> Python 3.11 to run certain AI applications. Replacing the default 
> Python version could lead to package conflicts, so I’m considering 
> building a Yocto image that includes both Python 3.8 (default) and 
> Python 3.11 (for my application).
>

I agree with what Alex Kanavin advised you previously. This is not a 
good idea. You better fix the code to work with Python 3.12 from LTS 
release Scarthgap or even 3.13 from master.

Best regards,
Leon


> Since it will take some time for me to receive the RZ/V2L board, I 
> plan to first attempt building an image for the STM32MPU with both 
> Python versions. If successful, I can replicate the process for the 
> RZ/V2L.
>
> When I attempt to compile the |scipy| wheel file in a Docker container 
> (with the platform set to ARMv7l), I encounter an issue with |numpy 
> distutils|. This is because |numpy distutils| is deprecated for Python 
> 3.12 and onwards (starting with |numpy| 1.23), and using versions of 
> |numpy| earlier than 1.23 is not possible due to compatibility issues.
>
--------------LhY60ed6iXeBudM0gGPYSoLZ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi,<br>
    </p>
    <div class="moz-cite-prefix">On 20.03.25 г. 8:55 ч., 283982 via
      Lists.Yoctoproject.Org wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20431.1742453702008361364@lists.yoctoproject.org">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <p data-start="112" data-end="115">Hi,</p>
      <p data-start="117" data-end="472">The STM32MPU157F has limited
        RAM (386 MB) and an ARM A7 processor. When I try to install <code
          data-start="206" data-end="213">scipy</code> via PyPI, it
        attempts to build from source, but since there is no pre-built
        wheel file for ARMv7l, the build process consumes too much RAM
        and crashes the system. For this reason, we are switching to the
        RZ/V2L, which has an ARM A55 processor and 2GB of RAM.</p>
    </blockquote>
    <br>
    Wait a moment, why are you attempting to build it from source on the
    STM32MPU157F? The standard approach would be to create a
    python3-scipy recipe that inherits pypi and python_mesonpy. Just
    like the rest of the recipes in layer meta-openembedded/meta-python.
    This way you will be able include python3-scipy in your image and
    bitbake will take care of the rest.<br>
    <br>
    <blockquote type="cite"
      cite="mid:20431.1742453702008361364@lists.yoctoproject.org">
      <p data-start="474" data-end="778">The RZ/V2L Yocto image only
        includes Python 3.8 by default, but I need Python 3.11 to run
        certain AI applications. Replacing the default Python version
        could lead to package conflicts, so I’m considering building a
        Yocto image that includes both Python 3.8 (default) and Python
        3.11 (for my application).</p>
    </blockquote>
    <br>
    I agree with what Alex Kanavin advised you previously. This is not a
    good idea. You better fix the code to work with Python 3.12 from LTS
    release Scarthgap or even 3.13 from master.<br>
    <br>
    Best regards,<br>
    Leon<br>
    <br>
    <br>
    <blockquote type="cite"
      cite="mid:20431.1742453702008361364@lists.yoctoproject.org">
      <p data-start="780" data-end="989">Since it will take some time
        for me to receive the RZ/V2L board, I plan to first attempt
        building an image for the STM32MPU with both Python versions. If
        successful, I can replicate the process for the RZ/V2L.<br>
        <br>
        When I attempt to compile the <code data-start="526"
          data-end="533">scipy</code> wheel file in a Docker container
        (with the platform set to ARMv7l), I encounter an issue with <code
          data-start="628" data-end="645">numpy distutils</code>. This
        is because <code data-start="663" data-end="680">numpy
          distutils</code> is deprecated for Python 3.12 and onwards
        (starting with <code data-start="738" data-end="745">numpy</code>
        1.23), and using versions of <code data-start="775"
          data-end="782">numpy</code> earlier than 1.23 is not possible
        due to compatibility issues.</p>
    </blockquote>
  </body>
</html>

--------------LhY60ed6iXeBudM0gGPYSoLZ--

