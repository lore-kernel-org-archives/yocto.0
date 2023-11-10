Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE0FBC4332F
	for <webhook@archiver.kernel.org>; Fri, 10 Nov 2023 21:19:28 +0000 (UTC)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web11.39646.1699651160147330544
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Nov 2023 13:19:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20230601.gappssmtp.com header.s=20230601 header.b=cZastBjl;
 spf=pass (domain: mistywest.com, ip: 209.85.215.170, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-5bd85b1939aso1809042a12.2
        for <yocto@lists.yoctoproject.org>; Fri, 10 Nov 2023 13:19:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20230601.gappssmtp.com; s=20230601; t=1699651159; x=1700255959; darn=lists.yoctoproject.org;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=HQ8FTp3Y33wHRTQi1jdsMtYtkbcNZeJADnofdDCOvO4=;
        b=cZastBjlbpku9ila96LI9nTbFlVVHpLJAs6Hfgrgj93zSkF5LTKH94sapzH/RgV2V1
         qjSi9K0ETa2GbdNo9Fdyd7VS/HgMmoixhw4dHQYE6lrP1+WZvFBeDBeV3XHnsKUgP/+T
         OFUYFknuoGEgTA+r6yzYdVosEWYIG01BZGj01Y0pFbzmRc1z57Sa9xyuEWZgmcH2TFPr
         V8ZFU0DyEDaI8D5mrEeNqCyWxYfaP9yupt5vFSZeiB+lUXE+KdlXdy4S2FL//qGySQLX
         4P3CSgYDrhby+DP4VLbv67DNHdVXxxbr8FCOrVn5TKT4RMuPfa2E+AgZVMTbjtKlOXZR
         OM9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699651159; x=1700255959;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HQ8FTp3Y33wHRTQi1jdsMtYtkbcNZeJADnofdDCOvO4=;
        b=J0C/L32cJ//IRDLtw1HCcZG/Yfw1CKXCbuYSW6DkRX51HHuq+T5ni1Zd3O4tbUDx8Q
         2zxo0nH1GT8Ia8lXr7YjMujyL5GO8jr/yEgMdpPlgyGUbfsOLUoUPsxjREYB51QcA2u0
         L3zec226/jhdzWC73eQV30yleibah6gmSHN2nAjroGcsyk1rz640c6BHDmAkaF/noTbX
         2rJnJ/8ohtZ+efKys7gIPI9WvQgBVCy7k42ywcye7o5p/aPPc3wJIn4E/PK8OEKynzjn
         ckwb/bq9Mtue0F2uAZJW7x9HD8t4UJyPgLG4Ld4XDPmG8dwCsKy+s5NdZItQG3CwMBR0
         7FdA==
X-Gm-Message-State: AOJu0YzF2fT5uwhA9Za+4l+FoJqG/QA+5CADeC1qeJZpCz3I8iqjM6dX
	VC5pvtJ0XBLoqoQB9uiKvgg3Yp7/iK27UV++VAo=
X-Google-Smtp-Source: AGHT+IGTJulTH30zb7gGMx/IY/kc+WfzOE0evesSMhulsvLoJxbl7lrM0tSINA9W0LUN0OQEAbV4iA==
X-Received: by 2002:a17:90a:bd03:b0:27d:546b:4258 with SMTP id y3-20020a17090abd0300b0027d546b4258mr247732pjr.31.1699651159232;
        Fri, 10 Nov 2023 13:19:19 -0800 (PST)
Received: from [192.168.100.190] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id g13-20020a17090ae58d00b0027d12b1e29dsm2089369pjz.25.2023.11.10.13.19.18
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Nov 2023 13:19:18 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------qt0vE8lZuf1KnY5VoA0ssCrN"
Message-ID: <4145e228-b61f-42ac-ac13-5150e3b6cbe7@mistywest.com>
Date: Fri, 10 Nov 2023 13:19:21 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: Ron Eggler <ron.eggler@mistywest.com>
Subject: bitbake error about files/directories installed but not shipped
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Nov 2023 21:19:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61653

This is a multi-part message in MIME format.
--------------qt0vE8lZuf1KnY5VoA0ssCrN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

I'm struggling with a Yocto build for my board, I get an error like:
```
ERROR: omx-user-module-1.1.0-r0 do_package: QA Issue: omx-user-module: 
Files/directories were installed but not shipped in any package:
   /usr/lib64
Please set FILES such that these items are packaged. Alternatively if 
they are unneeded, avoid installing them or delete them within do_install.
omx-user-module: 1 installed and not shipped files. [installed-vs-shipped]
ERROR: omx-user-module-1.1.0-r0 do_package: Fatal QA errors found, 
failing task.
ERROR: Logfile of failure stored in: 
/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/omx-user-module/1.1.0-r0/temp/log.do_package.1434925
ERROR: Task 
(/home/yocto/rzv_vlp_v3.0.0/build/../poky/meta/recipes-multimedia/gstreamer/omx-user-module.bb:do_package) 
failed with exit code '1'
```
The recipe `omx-user-module.bb` is needed by my image (in 
image.bbappend) and the omx-user-module.bb contains:

FILES:${PN} += " \
     ${libdir}/*.so \
"

FILES:${PN}-dev = " \
     ${includedir} \
     ${libdir}/*.la \
"


can anyone help me further with this?

Thanks,

Ron

-- 
*ron
*
--------------qt0vE8lZuf1KnY5VoA0ssCrN
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi,<br>
      <br>
      I'm struggling with a Yocto build for my board, I get an error
      like:<br>
      ```<br>
      ERROR: omx-user-module-1.1.0-r0 do_package: QA Issue:
      omx-user-module: Files/directories were installed but not shipped
      in any package:<br>
        /usr/lib64<br>
      Please set FILES such that these items are packaged. Alternatively
      if they are unneeded, avoid installing them or delete them within
      do_install.<br>
      omx-user-module: 1 installed and not shipped files.
      [installed-vs-shipped]<br>
      ERROR: omx-user-module-1.1.0-r0 do_package: Fatal QA errors found,
      failing task.<br>
      ERROR: Logfile of failure stored in:
/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/omx-user-module/1.1.0-r0/temp/log.do_package.1434925<br>
      ERROR: Task
(/home/yocto/rzv_vlp_v3.0.0/build/../poky/meta/recipes-multimedia/gstreamer/omx-user-module.bb:do_package)
      failed with exit code '1'<br>
      ```<br>
      The recipe `omx-user-module.bb` is needed by my image (in
      image.bbappend) and the omx-user-module.bb contains:</p>
    <p>FILES:${PN} += " \<br>
          ${libdir}/*.so \<br>
      "<br>
      <br>
      FILES:${PN}-dev = " \<br>
          ${includedir} \<br>
          ${libdir}/*.la \<br>
      "</p>
    <p><br>
    </p>
    <p>can anyone help me further with this?</p>
    <p>Thanks,</p>
    <p>Ron<br>
    </p>
    <div class="moz-signature">-- <br>
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <title></title>
      <b>ron <br>
      </b></div>
  </body>
</html>

--------------qt0vE8lZuf1KnY5VoA0ssCrN--

