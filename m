Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD09C46467
	for <webhook@archiver.kernel.org>; Thu, 29 Dec 2022 19:16:17 +0000 (UTC)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web11.1795.1672341373776719958
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Dec 2022 11:16:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=mRBy1YSr;
 spf=pass (domain: mistywest.com, ip: 209.85.215.170, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pg1-f170.google.com with SMTP id f3so12938949pgc.2
        for <yocto@lists.yoctoproject.org>; Thu, 29 Dec 2022 11:16:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uoiRDpuwEGH8t6/t4OnH+o88UgHJfV/FZ4kO9QPgXqU=;
        b=mRBy1YSrHY+6Iw5bKeia/o+HrUsD/eWb5yA4bm7aMf1gWTzeKzQh+EuVJsE8jEdube
         3ot0+/cqLdeAu/XgiZygo+Uof0q5HoQPQu1VszmOXez4+C3kn3AKkMsoHB1O1Sedi4p7
         UZy48GTjyBWesSAUPvr6PcbWjMNPSXw3MRv925W7q0SA7jff55Zcjq61yRMd1VS9wO9e
         Z7YssXxcpZeEz8noRF0q/rYZJYvQD+qjCbzeG/8+TLXNeX9dm+y8IwfjbDUtiKZfTX1H
         3holVfb6mk2NuTJCHCN/na5N4osJ/dHwFRZ/f84PC1f3K8JeoUFWJWgaadJJjVObUXry
         LzPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uoiRDpuwEGH8t6/t4OnH+o88UgHJfV/FZ4kO9QPgXqU=;
        b=TVzHVNQOg92DnD4A587+M3WgT5NSx/FwxZ1Y3ConC0w2X5DIGLGFavlUC9uF/zo4cl
         L4KSHmyTgfWBzTrFWdnpRc6sgCy+/F2FupDYBnpEnSNrE98FZqBcyWujRU1JRxfQuhIE
         RVC3nzfOgU9JElxgxd+CzfXMyan8d9oaJoVudOCmCAFf8I5+92qDDNhbKRwhvRMA3qBF
         g6RT8LUeDRl9Nq4E/3Sb6OspXH5pX2TeVdGfgSTfIZPBBVjbF25ly0uBgMM2z3hRsmIz
         5wC7DxcemwfKkr01dPVki6tcPH/+5TX86pqwEsCRqCjrjdIv8V4DHed1KYxOhMn0tEwX
         9rnA==
X-Gm-Message-State: AFqh2kqDp/A5MmrioNxVvAL4p+hFTpgiUDdMwoRfWQkqZRWKfrX8tefD
	TLcWY2eYXJ8GQwG2bLaoe4irE8xTewnEu6AqcaI=
X-Google-Smtp-Source: AMrXdXu8GsKGpQcfFwWXIbzb3JSNL1yGzpD7uRfuLhQgF9VK7hd6wpQSka1Uw7RvyXtKYUYZMmLFKg==
X-Received: by 2002:aa7:8209:0:b0:581:3328:b468 with SMTP id k9-20020aa78209000000b005813328b468mr12599827pfi.6.1672341372506;
        Thu, 29 Dec 2022 11:16:12 -0800 (PST)
Received: from [192.168.99.1] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id v65-20020a622f44000000b00575d06e53edsm12738780pfv.149.2022.12.29.11.16.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 11:16:12 -0800 (PST)
Message-ID: <b6ecdcfa-a8a0-4a9b-7602-6ab36cb75368@mistywest.com>
Date: Thu, 29 Dec 2022 11:16:09 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: yocto@lists.yoctoproject.org
Content-Language: en-US
From: Ron Eggler <ron.eggler@mistywest.com>
Subject: unable to resolve x11 dependency
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Dec 2022 19:16:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58887

Hi,
I need to add X11 to my build (original BSP is based on wayland) but 
keep running into an issue:
I keep getting "error: Glamor for Xorg requires gbm >= 10.2.0", the 
complete message can be seen below:

| checking for GLAMOR... yes
| checking for GBM... no
| configure: error: Glamor for Xorg requires gbm >= 10.2.0
| NOTE: The following config.log files may provide further information.
| NOTE: 
/home/yocto/rzg_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/xserver-xorg/2_1.20.8-r0/build/config.log
| ERROR: configure failed
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of 
'/home/yocto/rzg_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/xserver-xorg/2_1.20.8-r0/temp/run.do_configure.143696' 
failed with exit code 1
ERROR: Task 
(/home/yocto/rzg_vlp_v3.0.0/build/../poky/meta/recipes-graphics/xorg-xserver/xserver-xorg_1.20.8.bb:do_configure) 
failed with exit code '1'
NOTE: Tasks Summary: Attempted 4840 tasks of which 4796 didn't need to 
be rerun and 1 failed.

Summary: 1 task failed:
/home/yocto/rzg_vlp_v3.0.0/build/../poky/meta/recipes-graphics/xorg-xserver/xserver-xorg_1.20.8.bb:do_configure


I've tried to add dependencies to my image recipe (mesa) that doesn't 
appear to change anything.
Any hints would be greatly appreciated!

-- 
RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com

