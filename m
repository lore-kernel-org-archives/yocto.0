Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D19CAC4332F
	for <webhook@archiver.kernel.org>; Fri, 25 Nov 2022 21:44:00 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web11.57619.1669412638809441002
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Nov 2022 13:43:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=I2u4zdFf;
 spf=pass (domain: mistywest.com, ip: 209.85.216.54, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pj1-f54.google.com with SMTP id b11so4608307pjp.2
        for <yocto@lists.yoctoproject.org>; Fri, 25 Nov 2022 13:43:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Wyrmbrmkymj3uU7NVQ5c4rYyB4/pZVtAgqeuG5vmpSc=;
        b=I2u4zdFfUvdGZrm76MI87YheKAWFRI5P6p10Rv1fd3X4ay8VnhXHv+B5si4c+W9g/9
         TksGYjCFxqsN5r3S9LVmqg9hV7Y55QmMbeIlYMC/r/rezK0ur39/ypy81fYwoOSQOpVB
         JZnaBAu0p8APNpzm3AOqNqDVDK82R9GmWHS8uGHIzheWMUBP5IE/RvPsywcvELgqv0wD
         LE6kdJII5rLVbLzm/r4DHHS8x8uLNSmaWDFIfvNCofFL47/WruO+aTwQg+C9il9EJRMg
         gE+IzVnQUMrASBkZwnPKqnDSE0/ekl6T1rucahBOok7mJIcso54wGb95klq/WoU7WmMF
         4wLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wyrmbrmkymj3uU7NVQ5c4rYyB4/pZVtAgqeuG5vmpSc=;
        b=zMi+YqiIL1VOVC7x1pdqOsee7RYsQ5C6IPSmvFgM9gM6RUYPhRCD6JKrWJVqK8w+Zz
         ySDl2nG9hW5Wzi91aDg6CEvTwYiCWjfRbqjKHKE++argnI8zBPBqFt8gJsef61s3rP0e
         FxTBAchRxnFeYMZ/kvI402pEI7+lErxStYWf9DkOklpXMhe5Pucf4X+kN/a6QMa/tTdP
         RMCUskhmQU4XSXvfx+VQB5Q5q5CMhFOM3sfPdmhjsqf7IMDTebxMt2bpCsZ21GDA2Wfs
         qFMj7SAi0rLob4ZiiWkZaj7FWNite3cQ5MIZ+PCzqS6+weIGSR8tDrxbGAhtgdszXALj
         wNOg==
X-Gm-Message-State: ANoB5pk8pF5LO0/vZsiIwHY0Hx67WU7ofB2EgX0XDtj5NNFjsTUS0Yjx
	wtTJx8qT7VaeA+po++mQ0kp/+22XQXbm73Ok
X-Google-Smtp-Source: AA0mqf6hNYSqhCm/Y7J2zYQpjy6OtItaAwfoZyqvOIlDJpMs1GouumUh0qpqAu35lz/hnKOrAQJBWQ==
X-Received: by 2002:a17:903:252:b0:189:d3b:6201 with SMTP id j18-20020a170903025200b001890d3b6201mr21998471plh.153.1669412637874;
        Fri, 25 Nov 2022 13:43:57 -0800 (PST)
Received: from [192.168.99.2] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id s5-20020a632c05000000b0047781f8ac17sm3035285pgs.77.2022.11.25.13.43.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 13:43:57 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------j0Qc7Pa0w8pJvXfUWUvokyi4"
Message-ID: <f31abf8c-c187-2dcc-2976-f592228d51c7@mistywest.com>
Date: Fri, 25 Nov 2022 13:43:55 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: Ron Eggler <ron.eggler@mistywest.com>
Subject: unable to find u-boot config file in existing BSP
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Nov 2022 21:44:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58635

This is a multi-part message in MIME format.
--------------j0Qc7Pa0w8pJvXfUWUvokyi4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'm interested in extracting the u-boot config from an existing BSP. It 
does compile u-boot but I cannot find the config file and I definitely 
can invoke bitbake u-boot separately, i.e. there must be a .config file 
somewhere.
Background: I want to be able to compile u-boot separately with make, 
outside of Yocto and re-use the same configuration.
Can anyone give me any hints?

Thanks,

Ron

-- 
RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com
--------------j0Qc7Pa0w8pJvXfUWUvokyi4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><font size="2">Hi,</font></p>
    <p><font size="2">I'm interested in extracting the u-boot config
        from an existing BSP. It does compile u-boot but I cannot find
        the config file and I definitely can invoke bitbake u-boot
        separately, i.e. there must be a .config file somewhere. <br>
        Background: I want to be able to compile u-boot separately with
        make, outside of Yocto and re-use the same configuration. <br>
        Can anyone give me any hints?</font></p>
    <p><font size="2">Thanks,</font></p>
    <p><font size="2">Ron</font><br>
    </p>
    <div class="moz-signature">-- <br>
      RON EGGLER
      Firmware Engineer
      (he/him/his)
      <a class="moz-txt-link-abbreviated" href="http://www.mistywest.com">www.mistywest.com</a></div>
  </body>
</html>

--------------j0Qc7Pa0w8pJvXfUWUvokyi4--

