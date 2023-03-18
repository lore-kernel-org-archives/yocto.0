Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBFA9C761A6
	for <webhook@archiver.kernel.org>; Sat, 18 Mar 2023 05:02:12 +0000 (UTC)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web11.1613.1679115727988208435
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Mar 2023 22:02:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=JL63udaK;
 spf=pass (domain: mistywest.com, ip: 209.85.214.169, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pl1-f169.google.com with SMTP id p20so7359148plw.13
        for <yocto@lists.yoctoproject.org>; Fri, 17 Mar 2023 22:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112; t=1679115727;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9c/OuRyJJDQ+yd+VBBg1WY9DcxCH8zIpDacTMnD4x4Y=;
        b=JL63udaKwzt3sTFRFvE1ejvoZl9QqcGjEYs9bM2Vnnz4zpOfRm6Lbs3pcCxKtMgX0c
         CKBZUCECDfjhxJst60IIDq03gx7ZSNoBxlW1UsPBKjpgr6dsZpa7jpu7U9TCV1TLP+X2
         m1OimAIwPgjyjfTdX113dgMjDklgfcGDE+Hm+VqTWAI/tmcSZ1XxJ1JRcfOqxTnp+2ty
         PHYsy+0kGlfjOB4LKJDFar9prNwsttRlPzygf67QREDnPYa2SqH418GtEhg3La72wXz9
         454/hbpF9F9IwK71kfUe1nTbdSVejZcVWb/Ax2qaPxIAX/6HHIWG7yTCGBGHNru4ouK9
         3OeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679115727;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9c/OuRyJJDQ+yd+VBBg1WY9DcxCH8zIpDacTMnD4x4Y=;
        b=Ykoj75gKe3stxb49TK0xLZX3xwtWvm4S0hIkHmEkADYgbMLVGDlVEi/vaAgR5Y2wHS
         kZfIqZKKXPYT0BaWs2xCIsefpSU48WJOF3jU8iomkgHZKemEcZk564b2Albz49/tQuKp
         Nn+K5hM2JtbydjMYmRUarF8rPHIzLjqltABUHkDpg6Gj5eK2zBrww6t0zGWANlGLmH41
         k81TfqEmUexLDuQJhhtZXdLz6+vSvPi6oIkdxMQ6XZP4zHWeCd7dGsVpPBpb6RfgYfjP
         h2lMNKKnUls5ifmbv7XtrU7SXQ7SAbdLzLT8J2YenY0ChzYeyEnPa+9eR3dMn4/ZGQ4M
         4nRw==
X-Gm-Message-State: AO0yUKX4/AZV/q79bKjuk7a9/m1TAlgz0Gc0uW4CLp0ZcDlipFWJP/Re
	5RgrDIkl2Ewl8zC50qXPhB8l6vvvOqvKxT7tzmwEDg==
X-Google-Smtp-Source: AK7set8uKmc9u8FgUriJAFEsjF9K7E7R8G7FH8DqqAb7jq7bdQ+K3/Nwbou0hlza6fqgay+/s3UtsQ==
X-Received: by 2002:a17:902:d1d3:b0:19a:945d:e31 with SMTP id g19-20020a170902d1d300b0019a945d0e31mr7338824plb.13.1679115726986;
        Fri, 17 Mar 2023 22:02:06 -0700 (PDT)
Received: from [192.168.99.7] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id iz4-20020a170902ef8400b0019aa4c00ff4sm2344357plb.206.2023.03.17.22.02.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 22:02:06 -0700 (PDT)
Message-ID: <883c5336-1156-2684-e166-7a4487c89e2c@mistywest.com>
Date: Fri, 17 Mar 2023 22:02:05 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [yocto] unable to apply patch: "git am" did not work - dubious
 ownership
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <174CBC963DBF1469.18629@lists.yoctoproject.org>
 <174CC7DD0B78FDCC.18629@lists.yoctoproject.org>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <174CC7DD0B78FDCC.18629@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 05:02:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59451

Turns out, my patch did not apply because I used indentation with spaces 
instead of with tabs which would cause it to stumble.
Double check your indentation is correct if you get here with a search 
engine!

Ron

On 2023-03-15 20:15, Mistyron via lists.yoctoproject.org wrote:
> 
> On 2023-03-15 16:48, Mistyron via lists.yoctoproject.org wrote:
>> Hi,
>>
>> I'm trying to apply a patch to the kernel sources for trouble shooting 
>> a problem but the patch doesn't seem to apply, I get the following error:
>>
>> | (2/4) 0002-add-phy_debug_logs.patch
>> | [INFO]: check of 
>> .kernel-meta//patches///0002-add-phy_debug_logs.patch with "git am" 
>> did not pass, trying reduced context.
>> | [INFO]: Context reduced git-am of 
>> .kernel-meta//patches///0002-add-phy_debug_logs.patch with "git am" 
>> did not work, trying "apply".
>> | error: patch failed: drivers/net/mdio/of_mdio.c:286
>> | error: drivers/net/mdio/of_mdio.c: patch does not apply
>> | [ERROR]: Application of 
>> .kernel-meta//patches///0002-add-phy_debug_logs.patch failed.
>> |          Patch needs to be refreshed. Sample resolution script:
>> |              .git/rebase-apply/resolve_rejects
>> | ERROR: Could not apply patches for smarc-rzg2l.
>> | ERROR: Patch failures can be resolved in the linux source directory 
>> /home/yocto/rzg_vlp_v3.0.0/build/tmp/work-shared/smarc-rzg2l/kernel-source)
>> | WARNING: exit code 1 from a shell command.
>> | ERROR: Execution of 
>> '/home/yocto/rzg_vlp_v3.0.0/build/tmp/work/smarc_rzg2l-poky-linux/linux-renesas/5.10.83-cip1+gitAUTOINC+e52825e45b-r1/temp/run.do_patch.22155' failed with exit code 1
>> ERROR: Task 
>> (/home/yocto/rzg_vlp_v3.0.0/build/../meta-renesas/recipes-common/recipes-kernel/linux/linux-renesas_5.10.bb:do_patch) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 5186 tasks of which 4784 didn't need to 
>> be rerun and 1 failed.
>>
>> So I tried to launch a devshell with $ bitbake -c devshell linux-renesas
>>
>> I confirmed the availability of my patch in 
>> build/tmp/work-shared/smarc-rzg2l/kernel-source/.kernel-meta/patches/ 
>> invoked "git am" and got the following:
>>
>> # git am 0002-add-phy_debug_logs.patch
>> fatal: detected dubious ownership in repository at 
>> '/home/yocto/rzg_vlp_v3.0.0/build/tmp/work-shared/smarc-rzg2l/kernel-source'
>> To add an exception for this directory, call:
>>
>>         git config --global --add safe.directory 
>> /home/yocto/rzg_vlp_v3.0.0/build/tmp/work-shared/smarc-rzg2l/kernel-source
>>
>> I'm not sure about what would be dubious about the ownership of my 
>> files. I'm running out of a container and all files in 
>> /home/yocto/rzg_vlp_v3.0.0/build/tmp/work-shared/smarc-rzg2l/kernel-source are owned by uid 1000, I double checked that with
>>
>> # tree -upf 
>> /home/yocto/rzg_vlp_v3.0.0/build/tmp/work-shared/smarc-rzg2l/kernel-source | grep -v 1000
>>
>> For reference, the patch looks like:
>>
>> diff --git a/of_mdio.c b/of_mdio.c
>> index 4daf94bb..8ce36727 100644
>> --- a/drivers/net/mdio/of_mdio.c
>> +++ b/drivers/net/mdio/of_mdio.c
>> @@ -286,8 +286,10 @@ int of_mdiobus_register(struct mii_bus *mdio, 
>> struct device_node *np)
>>
>>                 if (of_mdiobus_child_is_phy(child))
>>                         rc = of_mdiobus_register_phy(mdio, child, addr);
>> +                       printk("of_mdiobus_child_is_phy returned true, 
>> expected! \nof_mdiobus_register_phy() rc %d", rc);
>>                 else
>>                         rc = of_mdiobus_register_device(mdio, child, 
>> addr);
>> +                       printk("of_mdiobus_child_is_phy returned 
>> false, not expected! \nof_mdiobus_register_phy()rc %d\n", rc);
>>
>>                 if (rc == -ENODEV)
>>                         dev_err(&mdio->dev,
>>
>> Can anyone help me out here to find what the problem might be?
> Oh okay,
> 
> It appears like the "dubious ownership" error appears because the 
> default user in the devshell is root, changing back to the yocto user 
> (with which bitbake is run outside devshell) and reinvocation of git am 
> gives the following:
> # su yocto
> Password:
> $ git am 0002-add-phy_debug_logs.patch
> Patch format detection failed.
> 
> and using git apply instead doesn't print any errorsd but the patch 
> dtill doesn't appear to be applied to the soyurce file:
> 
> $ git apply 0002-add-phy_debug_logs.patch
>>
>>
>>
>>
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59436): https://lists.yoctoproject.org/g/yocto/message/59436
> Mute This Topic: https://lists.yoctoproject.org/mt/97640471/7254380
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ron.eggler@mistywest.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

