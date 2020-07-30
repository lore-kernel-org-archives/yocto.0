Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web10.2217.1596086838916137053
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jul 2020 22:27:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=zK5gNg2J;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.216.49, mailfrom: akuster@mvista.com)
Received: by mail-pj1-f49.google.com with SMTP id lx9so3565566pjb.2
        for <yocto@lists.yoctoproject.org>; Wed, 29 Jul 2020 22:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=Xa8OezG1KvKFvn9szZFjnQqkItmzUm9en6ka7Gznh7I=;
        b=zK5gNg2JUd+bb30IZLQSE4Ifb1t9ClLaxplesAGga1Uf/3mSY6IJzkSFKXgdTzMt/g
         REhD8D03DqCyJo1wEWYfb/mtgRSwuD9BcOE6FUGA/dzGyY0jkJBJg82frbUkVIkf/tXx
         4E7/8heKRMRGwwoeN8MXyjiOab0vGm6dWnPaWXSo3jhYfwSblHrpgQQ4cwdEe/y+DJwz
         XVkeLLiKngWDdse9xbNXG3NQz777Kk6Sv3BggOox/7arA8pf25fpSSXtIFyWnbXRpUTO
         THznghS6NkWG/2Cg6RC6yL9ZX/rOgzBJykGEx2CdAk/ct/qyLm0hgmJ699LI6x/OgqZs
         yexg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=Xa8OezG1KvKFvn9szZFjnQqkItmzUm9en6ka7Gznh7I=;
        b=QsHb1K+C+zLmhcEXl6TGUhFDfRG/3y8BzMHPiVCqGRMr8DDImdMpmc7vu0tIGcojGJ
         +Filsl20+54nql2afHvtdsE83bDXAjaPTqYVXuSxX4whGNmaLqf4b5Oc6lu6b1udA9XT
         QfhxAFIUDm3PRWQ24oMDim0iuHmCniwZtSrob+dtos90LF1RVVtk8jYalGT3apU59Rhk
         /XGT1/G/7G/NTfb57lkdqve3EspOjrjN9etRDSe5gSSdFFwbDoajaULMGRbcmbFyLxVb
         XL/jOhBatLCJ/MGXtJcClRGiJLMEdHH0pydY1BK6B0Ncu1Q29WC6/+Y3LrVhUUM/0r+Z
         e4XA==
X-Gm-Message-State: AOAM533vd2hZaoR2H14GBIrZekLy5l14r3oPk71bC5955FMo854HBUPX
	Iio4CimLYSGBvYxoHKdtrw+FYTDovC8=
X-Google-Smtp-Source: ABdhPJyk17oX6ZImkYGi3pSzDOK1K9ESKXCUnCSod6zw15SMj++jrRH4ofh5ylV7dWKSwl+reIAr7A==
X-Received: by 2002:a17:90b:112:: with SMTP id p18mr13632157pjz.92.1596086837777;
        Wed, 29 Jul 2020 22:27:17 -0700 (PDT)
Return-Path: <akuster@mvista.com>
Received: from ?IPv6:2601:202:4180:a5c0:dc4d:db68:5141:68ac? ([2601:202:4180:a5c0:dc4d:db68:5141:68ac])
        by smtp.gmail.com with ESMTPSA id a17sm4241754pgw.60.2020.07.29.22.27.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2020 22:27:16 -0700 (PDT)
Subject: Re: [yocto] [meta-security] Clamav libclammspack.so missing from image
To: yoc <yoc.dev@whitetree.xyz>, yocto@lists.yoctoproject.org
References: <464e94c9-7077-bc1c-6ac7-955933fcb4c5@whitetree.xyz>
From: "Armin Kuster" <akuster@mvista.com>
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <1ed8c27b-8532-d574-adbc-223b056fe36a@mvista.com>
Date: Wed, 29 Jul 2020 22:27:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <464e94c9-7077-bc1c-6ac7-955933fcb4c5@whitetree.xyz>
Content-Type: multipart/alternative;
 boundary="------------EF3D3164D17BA3FFBBC82FDB"
Content-Language: en-US

--------------EF3D3164D17BA3FFBBC82FDB
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
You can find it in the 'libmspack' package.

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


--------------EF3D3164D17BA3FFBBC82FDB
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
    You can find it in the 'libmspack' package.<br>
    <br>
    -armin<br>
    <br>
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

--------------EF3D3164D17BA3FFBBC82FDB--
