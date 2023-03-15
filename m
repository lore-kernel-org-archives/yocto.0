Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B27C61DA4
	for <webhook@archiver.kernel.org>; Wed, 15 Mar 2023 23:48:43 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web10.730.1678924114212004676
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Mar 2023 16:48:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=w/NgQQRp;
 spf=pass (domain: mistywest.com, ip: 209.85.214.170, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pl1-f170.google.com with SMTP id ix20so15336201plb.3
        for <yocto@lists.yoctoproject.org>; Wed, 15 Mar 2023 16:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112; t=1678924113;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GbYlG+rWEQOD2YRZLxlY/cmCUP4pXTYDWBieZPW3Owo=;
        b=w/NgQQRpfpdFkS5zU5pKRnDIeSM+sOaPCpmFlSKCxuSU4N0cWGZ9cDjc2rkokuBz/S
         ULYMvtpMZ1SfUwXeOGFhsaXVQtPLZJ8DCSF3kg/nAAtysI9qj7wML8RP0WHb6ZNjuMDP
         yK+Sg9e7pzE4PMildjYPBmT070EbxS6b8psYleD0kKSqkHVZ1/lBfThUJZrRjaYka3DH
         Pm/rWWTLAja45bBjmKWHsdLxSll2y1ohwG3zMDEwp9D50ffv+cd4/RRZA2ijPw7ffLKn
         yRPvbh0pWBQla5oVRB8ALXoJjQGHQWveb8EEauSaaCl45bJLIcOSzFaSDKK+CUp0iriu
         l26w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678924113;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GbYlG+rWEQOD2YRZLxlY/cmCUP4pXTYDWBieZPW3Owo=;
        b=O925kPtdZAaUTditw2n+7wJRZ/uA9rNqoqGi2faTqs8O9oeifZwcCExxltB4qtCkxa
         wxLNCpyAa3/Bkp7vS+RJ2QyQBrFipn+I4YMC0FyCBJhcV40YPHaos/FFF2nsb9GVVjDq
         Yx1yIoG7+0ju0ahmPdV1mu4PWUCE6vCYCNTBu/01cEll/In+ZxQW2LhsjDKHIUD/bYPj
         jEMTku7PruAKV0oCdK+eGpoT+PboYeRaLUxFX2FVP9T/dXv3XIaF7vhaEgp8waHOa3Wg
         Y2I9md06gBes8PgfPimepA+JmGZyIgbUyt1h5J1dluoP1CBJfl66MJsypRZYccsGINs3
         Cl+w==
X-Gm-Message-State: AO0yUKV8jVCf8M21W8fzST0/5iMB6HthfxyTPTST6SVj/mfSDq7D5joI
	Jv7eC6a5xpHIBSVepLvXZ21E5sSmy9xQLObLRLzriw==
X-Google-Smtp-Source: AK7set+qqN6Gyz7ToKgTuOZctvNVF8eBBSv2iTPlwpqh4qJaQF9cHWbarJfs4WVQSd4Rq2KsncAWEg==
X-Received: by 2002:a17:902:ce92:b0:19c:fd73:5586 with SMTP id f18-20020a170902ce9200b0019cfd735586mr1425270plg.38.1678924113301;
        Wed, 15 Mar 2023 16:48:33 -0700 (PDT)
Received: from [192.168.100.190] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id s15-20020a170902ea0f00b0019602274208sm4126293plg.186.2023.03.15.16.48.32
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 16:48:33 -0700 (PDT)
Message-ID: <dbf1c020-3984-2404-e925-829db386f538@mistywest.com>
Date: Wed, 15 Mar 2023 16:48:32 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: yocto@lists.yoctoproject.org
Content-Language: en-US
From: Ron Eggler <ron.eggler@mistywest.com>
Subject: unable to apply patch: "git am" did not work - dubious ownership
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Mar 2023 23:48:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59435

Hi,

I'm trying to apply a patch to the kernel sources for trouble shooting a 
problem but the patch doesn't seem to apply, I get the following error:

| (2/4) 0002-add-phy_debug_logs.patch
| [INFO]: check of .kernel-meta//patches///0002-add-phy_debug_logs.patch 
with "git am" did not pass, trying reduced context.
| [INFO]: Context reduced git-am of 
.kernel-meta//patches///0002-add-phy_debug_logs.patch with "git am" did 
not work, trying "apply".
| error: patch failed: drivers/net/mdio/of_mdio.c:286
| error: drivers/net/mdio/of_mdio.c: patch does not apply
| [ERROR]: Application of 
.kernel-meta//patches///0002-add-phy_debug_logs.patch failed.
|          Patch needs to be refreshed. Sample resolution script:
|              .git/rebase-apply/resolve_rejects
| ERROR: Could not apply patches for smarc-rzg2l.
| ERROR: Patch failures can be resolved in the linux source directory 
/home/yocto/rzg_vlp_v3.0.0/build/tmp/work-shared/smarc-rzg2l/kernel-source)
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of 
'/home/yocto/rzg_vlp_v3.0.0/build/tmp/work/smarc_rzg2l-poky-linux/linux-renesas/5.10.83-cip1+gitAUTOINC+e52825e45b-r1/temp/run.do_patch.22155' 
failed with exit code 1
ERROR: Task 
(/home/yocto/rzg_vlp_v3.0.0/build/../meta-renesas/recipes-common/recipes-kernel/linux/linux-renesas_5.10.bb:do_patch) 
failed with exit code '1'
NOTE: Tasks Summary: Attempted 5186 tasks of which 4784 didn't need to 
be rerun and 1 failed.

So I tried to launch a devshell with $ bitbake -c devshell linux-renesas

I confirmed the availability of my patch in 
build/tmp/work-shared/smarc-rzg2l/kernel-source/.kernel-meta/patches/ 
invoked "git am" and got the following:

# git am 0002-add-phy_debug_logs.patch
fatal: detected dubious ownership in repository at 
'/home/yocto/rzg_vlp_v3.0.0/build/tmp/work-shared/smarc-rzg2l/kernel-source'
To add an exception for this directory, call:

         git config --global --add safe.directory 
/home/yocto/rzg_vlp_v3.0.0/build/tmp/work-shared/smarc-rzg2l/kernel-source

I'm not sure about what would be dubious about the ownership of my 
files. I'm running out of a container and all files in 
/home/yocto/rzg_vlp_v3.0.0/build/tmp/work-shared/smarc-rzg2l/kernel-source 
are owned by uid 1000, I double checked that with

# tree -upf 
/home/yocto/rzg_vlp_v3.0.0/build/tmp/work-shared/smarc-rzg2l/kernel-source 
| grep -v 1000

For reference, the patch looks like:

diff --git a/of_mdio.c b/of_mdio.c
index 4daf94bb..8ce36727 100644
--- a/drivers/net/mdio/of_mdio.c
+++ b/drivers/net/mdio/of_mdio.c
@@ -286,8 +286,10 @@ int of_mdiobus_register(struct mii_bus *mdio, 
struct device_node *np)

                 if (of_mdiobus_child_is_phy(child))
                         rc = of_mdiobus_register_phy(mdio, child, addr);
+                       printk("of_mdiobus_child_is_phy returned true, 
expected! \nof_mdiobus_register_phy() rc %d", rc);
                 else
                         rc = of_mdiobus_register_device(mdio, child, addr);
+                       printk("of_mdiobus_child_is_phy returned false, 
not expected! \nof_mdiobus_register_phy()rc %d\n", rc);

                 if (rc == -ENODEV)
                         dev_err(&mdio->dev,

Can anyone help me out here to find what the problem might be?

-- 
Rron

