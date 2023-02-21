Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC036C636D7
	for <webhook@archiver.kernel.org>; Tue, 21 Feb 2023 04:20:04 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web11.35471.1676953201275343850
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Feb 2023 20:20:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=csdDwPsr;
 spf=pass (domain: mistywest.com, ip: 209.85.216.54, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pj1-f54.google.com with SMTP id ei9-20020a17090ae54900b002349a303ca5so3426998pjb.4
        for <yocto@lists.yoctoproject.org>; Mon, 20 Feb 2023 20:20:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=subject:from:content-language:to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ojXcAuWAYsjnHJfzCMmwfScLP7JTUkxjfIZ6iHP/0OE=;
        b=csdDwPsr/tuCBLJhT4zW7E2INZR4Qef6HGjX+bNGWEZq77NICok9XrN8JCdvbFz4JL
         mfWFzXS+zVXm7C0ykulbBUd1RYSKf8sNjPs3G9msKqVkO0qUXN1yPJS6nrAdfNrL8xJP
         W4G9CN4SOFCEZjbzAvSpFQt28LwyJ7Kp32PcMNZHf1spF9QhgshocLcNNXbrc9/J+QpJ
         e6HfVXBVC4PxJOBFwKuHFYVPTgiL7zrOHx9U2pedPUCzhniJmkE4AhffUlNlWntFsDKa
         iFSumBgccMfMWAI0UR6j6ZPmL/N0XM1BSyqYzP98xfrqwqIGnDlJyqKABf5iDxxkBvur
         dZmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=subject:from:content-language:to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ojXcAuWAYsjnHJfzCMmwfScLP7JTUkxjfIZ6iHP/0OE=;
        b=0PNfuDmUKiqTMTpO7NIibrryN+srf74kLxR9ls+QkgDi757bJRaHyPKwet4qjYvvUf
         ZiCgWUG0QUj6b3ytHrfQpnVCEELMcgiJ98NikG2pjEc+3I19W6HUJZU5r03Ls4yRGi97
         3PlFlRtWbnXWwN4RdNpVCIFLMDDrpiWZKunSKpHRa9sFoyLwFF5VcHAYqXz+QoQvZmt5
         +ghYiE7ZSNuhWusW2ASuyvDe0Vcj2DN2EP6ASAAZDfJcuWqox+rplveqPGzyely6f4iU
         jwxifCABnc9fQR92NKBjxRwNTqE/8dFawDYZ2I+/kn9q80Ia5RUnle1d8IQZGQn/NULC
         gy5g==
X-Gm-Message-State: AO0yUKU6TCuQ/TTbwqsbca4LDzsOyHW3eiOZLvNHhpBQsPZnHkil53Vo
	qvHvIc71R4VenTdgGFKK2bPBWvftA0Jnzgss8WM=
X-Google-Smtp-Source: AK7set9vxwZW1lWfUEvcDSapCX2O+Dhyu/LOKRxaogLmDN/7wJfaRX4ZAQdzyoXalKUQigR9+xE0Xw==
X-Received: by 2002:a17:903:27c5:b0:19a:9182:40fd with SMTP id km5-20020a17090327c500b0019a918240fdmr3105980plb.65.1676953200351;
        Mon, 20 Feb 2023 20:20:00 -0800 (PST)
Received: from [192.168.1.222] (S01067898e84c4253.vc.shawcable.net. [24.87.53.111])
        by smtp.gmail.com with ESMTPSA id bh4-20020a170902a98400b00192a3e13b39sm2224391plb.264.2023.02.20.20.19.59
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Feb 2023 20:20:00 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------d4Voo6YBtr2qIMe36RNpc078"
Message-ID: <e0c2ab60-7907-dc4c-521d-eec2f408ab4d@mistywest.com>
Date: Mon, 20 Feb 2023 20:19:59 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Language: en-US
From: Ron Eggler <ron.eggler@mistywest.com>
Subject: trying to install files when those files already exist
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Feb 2023 04:20:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59263

This is a multi-part message in MIME format.
--------------d4Voo6YBtr2qIMe36RNpc078
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

I'm running into a "is trying to install files into a shared area when 
those files already exist." error and am not sure how to resolve it. I 
get the following:

ERROR: linux-renesas-5.10.83-cip1+gitAUTOINC+e52825e45b-r1 
do_packagedata: The recipe linux-renesas is trying to install files into 
a shared area when those files already exist. Those files and their 
manifest location are:
/home/yocto/rzg_vlp_v3.0.0/build/tmp/pkgdata/smarc-rzg2l/runtime/kernel-module-cfg80211-5.10.83-cip1-yocto-standard
     (matched in 
manifest-smarc_rzg2l-kernel-module-lwb5p-backports-laird.packagedata)
/home/yocto/rzg_vlp_v3.0.0/build/tmp/pkgdata/smarc-rzg2l/runtime/kernel-module-cfg80211-5.10.83-cip1-yocto-standard.packaged
     (matched in 
manifest-smarc_rzg2l-kernel-module-lwb5p-backports-laird.packagedata)
/home/yocto/rzg_vlp_v3.0.0/build/tmp/pkgdata/smarc-rzg2l/runtime/lib32-kernel-module-cfg80211-5.10.83-cip1-yocto-standard
     (matched in 
manifest-smarc_rzg2l-kernel-module-lwb5p-backports-laird.packagedata)
Please verify which recipe should provide the above files.

It obviously has something to do with the drivers for the lwb5p laird 
module I'm trying to add.

How do I go about resolving this on my dunfell based build?

-- 
RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com
--------------d4Voo6YBtr2qIMe36RNpc078
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><font size="2">Hi,</font></p>
    <p><font size="2">I'm running into a "is trying to install files
        into a shared area when those files already exist." error and am
        not sure how to resolve it. I get the following:</font></p>
    <p><font size="2">ERROR:
        linux-renesas-5.10.83-cip1+gitAUTOINC+e52825e45b-r1
        do_packagedata: The recipe linux-renesas is trying to install
        files into a shared area when those files already exist. Those
        files and their manifest location are:<br>
         
/home/yocto/rzg_vlp_v3.0.0/build/tmp/pkgdata/smarc-rzg2l/runtime/kernel-module-cfg80211-5.10.83-cip1-yocto-standard<br>
            (matched in
        manifest-smarc_rzg2l-kernel-module-lwb5p-backports-laird.packagedata)<br>
         
/home/yocto/rzg_vlp_v3.0.0/build/tmp/pkgdata/smarc-rzg2l/runtime/kernel-module-cfg80211-5.10.83-cip1-yocto-standard.packaged<br>
            (matched in
        manifest-smarc_rzg2l-kernel-module-lwb5p-backports-laird.packagedata)<br>
         
/home/yocto/rzg_vlp_v3.0.0/build/tmp/pkgdata/smarc-rzg2l/runtime/lib32-kernel-module-cfg80211-5.10.83-cip1-yocto-standard<br>
            (matched in
        manifest-smarc_rzg2l-kernel-module-lwb5p-backports-laird.packagedata)<br>
        Please verify which recipe should provide the above files.<br>
      </font></p>
    <p><font size="2">It obviously has something to do with the drivers
        for the lwb5p laird module I'm trying to add.<br>
      </font></p>
    <p><font size="2">How do I go about resolving this on my dunfell
        based build?</font><br>
    </p>
    <div class="moz-signature">-- <br>
      RON EGGLER
      Firmware Engineer
      (he/him/his)
      <a class="moz-txt-link-abbreviated" href="http://www.mistywest.com">www.mistywest.com</a></div>
  </body>
</html>

--------------d4Voo6YBtr2qIMe36RNpc078--

