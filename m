Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B49DBC4332F
	for <webhook@archiver.kernel.org>; Fri, 11 Nov 2022 06:30:01 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web11.2673.1668148192664414052
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Nov 2022 22:29:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=plYypn1t;
 spf=pass (domain: mistywest.com, ip: 209.85.214.175, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pl1-f175.google.com with SMTP id u6so3483793plq.12
        for <yocto@lists.yoctoproject.org>; Thu, 10 Nov 2022 22:29:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=subject:from:content-language:to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=TXxsdSl6sIrbmv0RV/gcVwYOvVwk/hPbtjV2jw0X0X0=;
        b=plYypn1tFuab19tHZNadGplT4EGlvZOpdk+5vmIB+bgg0EFSpqMHd6cHTXHYQMsPLz
         avdcJWypA4TL2lgfucC0bCPBYpFOLYKXJczJEInIM8uHP81tCVO+ZDKuOOGkC40yUs4Q
         5Q5+uBHY6J8bD5pK0LFs5LURaEkS7Im/L4fHMQbq93Fvy8xNuoEoGZGlLqZJAxxx8HKE
         bSWlw27Pq6wTBOiO8wdR85okBuRQVpuI4SOrD9tCpRD8VldEi/PKglMWoK0YqvFe+CBS
         YJcqmgf3zvS3lz94qdLlw6Dd+F0Jbl49jd4mg4XF6HWUc8B44oKN3ckX8y6RsLEoHjM7
         DN1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=subject:from:content-language:to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TXxsdSl6sIrbmv0RV/gcVwYOvVwk/hPbtjV2jw0X0X0=;
        b=RMeMGFv9kCJrCNFPtiIvBtS5kxAAVy6IYtQrxf4sOZTXZ3VelzNMvD6qoEzk36SXm5
         ifnkohNGSTxAB+pKOy/Fhvqk+XHNY1OQT34AmJMUAbXZcgPZzNHre8dtTEm+dzNLeQee
         7PX8IYml/cSZ3C7Zv+9lfixEGnzS+hwRBzEqIVY7MmZmq606X/VO1ID7glk8pJKDQkQB
         JeArU98dZIPr2bdUGo0Qc80XuntkOGjlx1UbtjMRsy/CTGJB3mKNE/nAo3k4Ak2zYrlW
         caT8ObrVO2Pg6kx7FacVL1JzNwz7G5ED5NXxO8Nre2EIKrUsQpmFb3QqsjMWV3EY9gHl
         l00g==
X-Gm-Message-State: ANoB5pkpNPwSwZTPuTJjoeu5CgI1ItjG5isSJKI/SLcw7227yLY5sdN/
	lRcnpdJqnogi9CyttBmPHxappGYMCUVtJQ+K5Gg=
X-Google-Smtp-Source: AA0mqf6ou0/L4moEnuwK/MQZ3iphSvWEHkHuAqzHyhvgo4IQV8+u8vqE4alJMNbVyMiMUHbtr9Ubxw==
X-Received: by 2002:a17:90a:9746:b0:214:2920:4675 with SMTP id i6-20020a17090a974600b0021429204675mr484180pjw.0.1668148191408;
        Thu, 10 Nov 2022 22:29:51 -0800 (PST)
Received: from [192.168.1.222] (S01067898e84c4253.vc.shawcable.net. [24.87.53.111])
        by smtp.gmail.com with ESMTPSA id e127-20020a621e85000000b0056bb06ce1cfsm770584pfe.97.2022.11.10.22.29.50
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 22:29:50 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------Oy5ZnlWH5M3HXsTRDoBLfBSt"
Message-ID: <e0b47be3-0b36-ef78-de3b-ba6c0f82d080@mistywest.com>
Date: Thu, 10 Nov 2022 22:29:48 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Language: en-US
From: Ron Eggler <ron.eggler@mistywest.com>
Subject: failing postinstall scriptlet
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Nov 2022 06:30:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58540

This is a multi-part message in MIME format.
--------------Oy5ZnlWH5M3HXsTRDoBLfBSt
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

I'm wondering how to resolve the following error:

ERROR: sample-image-cp-lwb5plus-1.0-r0 do_rootfs: Postinstall scriptlets 
of ['lrd-networkmanager-sterling'] have failed. If the intention is to 
defer them to first boot,
then please place them into pkg_postinst_ontarget_${PN} ().
Deferring to first boot via 'exit 1' is no longer supported.
Details of the failure are in 
/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/sample-image-cp-lwb5plus/1.0-r0/temp/log.do_rootfs.
ERROR: Logfile of failure stored in: 
/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/sample-image-cp-lwb5plus/1.0-r0/temp/log.do_rootfs.430788
ERROR: Task 
(/home/yocto/rzv_vlp_v3.0.0/build/../meta-mistylwb5p/meta-laird-cp-pre-3.4/recipes-packages/images/sample-image-cp-lwb5plus.bb:do_rootfs) 
failed with exit code '1'

the log file 
~/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/sample-image-cp-lwb5plus/1.0-r0/temp/log.do_rootfs.430788 
contains the following on the bottom:

...
   wayland-1.18.0-r0.aarch64

Complete!

ERROR: Postinstall scriptlets of ['lrd-networkmanager-sterling'] have 
failed. If the intention is to defer them to first boot,
then please place them into pkg_postinst_ontarget_${PN} ().
Deferring to first boot via 'exit 1' is no longer supported.
Details of the failure are in 
/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/sample-image-cp-lwb5plus/1.0-r0/temp/log.do_rootfs.
DEBUG: Python function do_rootfs finished

and the same does 
/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/sample-image-cp-lwb5plus/1.0-r0/temp/log.do_rootfs

Not very helpful, is it? How can I resolve this?
Ron
-- 
RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com
--------------Oy5ZnlWH5M3HXsTRDoBLfBSt
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><font size="2">Hi,</font></p>
    <p><font size="2">I'm wondering how to resolve the following error:</font></p>
    <p><font face="monospace">ERROR: sample-image-cp-lwb5plus-1.0-r0
        do_rootfs: Postinstall scriptlets of
        ['lrd-networkmanager-sterling'] have failed. If the intention is
        to defer them to first boot,<br>
        then please place them into pkg_postinst_ontarget_${PN} ().<br>
        Deferring to first boot via 'exit 1' is no longer supported.<br>
        Details of the failure are in
/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/sample-image-cp-lwb5plus/1.0-r0/temp/log.do_rootfs.<br>
        ERROR: Logfile of failure stored in:
/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/sample-image-cp-lwb5plus/1.0-r0/temp/log.do_rootfs.430788<br>
        ERROR: Task
(/home/yocto/rzv_vlp_v3.0.0/build/../meta-mistylwb5p/meta-laird-cp-pre-3.4/recipes-packages/images/sample-image-cp-lwb5plus.bb:do_rootfs)
        failed with exit code '1'</font><br>
    </p>
    <div class="moz-signature"><font size="1"><font size="2">the log
          file
~/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/sample-image-cp-lwb5plus/1.0-r0/temp/log.do_rootfs.430788
          contains the following on the bottom:</font></font></div>
    <div class="moz-signature"><font size="1"><br>
      </font></div>
    <div class="moz-signature">   <font face="monospace">...<br>
          wayland-1.18.0-r0.aarch64<br>
        <br>
        Complete!<br>
        <br>
        ERROR: Postinstall scriptlets of ['lrd-networkmanager-sterling']
        have failed. If the intention is to defer them to first boot,<br>
        then please place them into pkg_postinst_ontarget_${PN} ().<br>
        Deferring to first boot via 'exit 1' is no longer supported.<br>
        Details of the failure are in
/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/sample-image-cp-lwb5plus/1.0-r0/temp/log.do_rootfs.<br>
        DEBUG: Python function do_rootfs finished<br>
      </font></div>
    <div class="moz-signature"><br>
    </div>
    <div class="moz-signature"><font face="monospace">and the same does
/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/sample-image-cp-lwb5plus/1.0-r0/temp/log.do_rootfs</font></div>
    <div class="moz-signature"><font size="2" face="monospace"><br>
      </font></div>
    <div class="moz-signature"><font size="2">Not very helpful, is it?
        How can I resolve this?<br>
      </font></div>
    <div class="moz-signature"><font size="2">Ron</font><font
        face="monospace"><br>
      </font></div>
    <div class="moz-signature">-- <br>
      RON EGGLER
      Firmware Engineer
      (he/him/his)
      <a class="moz-txt-link-abbreviated" href="http://www.mistywest.com">www.mistywest.com</a></div>
  </body>
</html>

--------------Oy5ZnlWH5M3HXsTRDoBLfBSt--

