Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78EAC4332F
	for <webhook@archiver.kernel.org>; Sat, 24 Dec 2022 05:28:13 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web11.91220.1671859687640054707
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Dec 2022 21:28:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=tLZE6/kr;
 spf=pass (domain: mistywest.com, ip: 209.85.216.49, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pj1-f49.google.com with SMTP id p4so6612296pjk.2
        for <yocto@lists.yoctoproject.org>; Fri, 23 Dec 2022 21:28:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=subject:from:content-language:to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Jtl6Nl8FwB5a2NaGlG6SlIWTdujtS80bQCPe4ize1HI=;
        b=tLZE6/krklyO2EFke484Oya2hhd3wQ3z9wkFhtKNL1W0E2XBs9uBDPHaUIprlSDf4D
         7ECu2l7Z2RI6naYSwJmnd/WFoS5UyK2gvEPgq1boaRdSfZ+HZS2IfokeQQ6B6+iZpqjO
         haMtOFyWz7/hstQ35f0DNJMLb/z8OhxpOiLY+tB3b1Q59PsAKfqbb9SfhuCSs/GQ9h/H
         NM9wFYjFxz6Wuxl/R0wJt0XERvzve5b0AcrLayy9DcE4hOa4Kf/BN/pE+5S6rBeIEB4S
         /zkPllakWDUD6AID/X9+YpBQOb536KUMxbVApFQANYyvzpLrWgzLncmaSHsXS8Pc+tDV
         v2Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=subject:from:content-language:to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jtl6Nl8FwB5a2NaGlG6SlIWTdujtS80bQCPe4ize1HI=;
        b=Hlq/4aXwMZhQL8WvLBNXzR6Nn0Fhf5zQDTSWCd1+7Gb7o3mYsOi6cTTWuKVqzvSxCp
         qvMdm3jZyXAhLCwxZKhGsLVtjmPrf7rxGy2XENfggKQiBC6CTVKmicNSAt7kvOe/pPNm
         Ct7C8zAIxz+atxj/w0cQOwabx/AIQV9PpXwyYLXYSVOhRK/rvbZzLvdWp0NXbXU3sopS
         KLo3C+k4s4dCuBqkbZE+KqM3NhpCylZOurX2M2JUPi8jjktugSEYe8677ZETSSK8qtBB
         IbOV1k9paKz4F02GVTcqCW3O2m47EeMOeatAUJthHS06YDtLsQkc0yViveGspUDzaE1n
         urJA==
X-Gm-Message-State: AFqh2kr/1vCHX0IeMLhesMubxA1RlLHYLm1CWi8Q0v6UJ+uhes4XKNhp
	KlGuUZ9MYLMpSsfOgxJqiApJpuAVTgXQGv8A3Zo=
X-Google-Smtp-Source: AMrXdXsowLhaX/mBtg0MKxUz3rDZI72x9cCYdTzcOgmKM0ue1Tniz+yrzGipEsiLwXtUqtk9O9AUiw==
X-Received: by 2002:a17:902:ec89:b0:185:441e:2314 with SMTP id x9-20020a170902ec8900b00185441e2314mr17172537plg.10.1671859686627;
        Fri, 23 Dec 2022 21:28:06 -0800 (PST)
Received: from [192.168.99.1] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id m12-20020a170902d18c00b00186bc66d2cbsm3273735plb.73.2022.12.23.21.28.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Dec 2022 21:28:06 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------X0NveHyB09hyAwZTFFAhpTyJ"
Message-ID: <350433e2-a9a5-f7f4-3b7c-ed04700907c2@mistywest.com>
Date: Fri, 23 Dec 2022 21:28:04 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: yocto@lists.yoctoproject.org
Content-Language: en-US
From: Ron Eggler <ron.eggler@mistywest.com>
Subject: lsusb
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 24 Dec 2022 05:28:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58857

This is a multi-part message in MIME format.
--------------X0NveHyB09hyAwZTFFAhpTyJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I want to inlude "lsusb" to investigate the connected usb devices to my 
system.
I found that adding

IMAGE_INSTALL_append = " usbutils"

to my configuration should solve the issue. I've added this to my 
local.conf and invoked a rebuild of my packages but still, after the 
rebuild, my package.manifest file still does not list lsusb.

How can I get lsusb included in my image?

-- 
RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com
--------------X0NveHyB09hyAwZTFFAhpTyJ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><font size="2">Hi,</font></p>
    <p><font size="2">I want to inlude "lsusb" to investigate the
        connected usb devices to my system.<br>
        I found that adding <br>
      </font></p>
    <p><font size="2">IMAGE_INSTALL_append = " usbutils"</font></p>
    <p><font size="2">to my configuration should solve the issue. I've
        added this to my local.conf and invoked a rebuild of my packages
        but still, after the rebuild, my package.manifest file still
        does not list lsusb. <br>
      </font></p>
    <p><font size="2">How can I get lsusb included in my image?</font><br>
    </p>
    <div class="moz-signature">-- <br>
      RON EGGLER
      Firmware Engineer
      (he/him/his)
      <a class="moz-txt-link-abbreviated" href="http://www.mistywest.com">www.mistywest.com</a></div>
  </body>
</html>

--------------X0NveHyB09hyAwZTFFAhpTyJ--

