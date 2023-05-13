Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A186AC77B7C
	for <webhook@archiver.kernel.org>; Sat, 13 May 2023 10:09:38 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.web11.44682.1683972575926893970
 for <yocto@lists.yoctoproject.org>;
 Sat, 13 May 2023 03:09:36 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=rJjrm31b;
 spf=pass (domain: gmail.com, ip: 209.85.128.181, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-55a79671a4dso164517667b3.2
        for <yocto@lists.yoctoproject.org>; Sat, 13 May 2023 03:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683972575; x=1686564575;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WV/rfsirPSMxsnJiIFUBxVGLyIoRxIomfjkNn9QCZmw=;
        b=rJjrm31b2QlbiK/WWr+smYBuRtXVN3CaB0dHPay7Wr0xM1Kjvd7B/DXquPBd4LmSCg
         ieeC2Jmtdoz0yDWPAccd3gkyirCyc7puPppe9IgIa7Iaof9ue1mjwDb0MnXDasv+IatL
         DnU0VbIkTWXFYhWP7aLvj477aNFl1V9o/Iri16yjVh8pFB9JGtcpRVWZ7xO/uZwItGdM
         FE/0VOWP0IR6IQ3+03eo0xj8lRJZbey0wYE7zgsB3JpdSpD2FRp3y3XPoICqFIa1ZzLK
         keCiqpn8HPEcU1pYt+gqgofxgYeIpxQkacxY7YvHFdxsSHM2hTMoa9UKb+k2UC6QneNh
         6gTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683972575; x=1686564575;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WV/rfsirPSMxsnJiIFUBxVGLyIoRxIomfjkNn9QCZmw=;
        b=XY2fy4I/y3pahbHF8lmFXrbr5Llc34bB/bDD1hI4kXDmZSNWylYHrema+eFwQpSkNc
         BhOqSzZL2ogzhTdUc5MRn3a67xdLFeHrZZ3WXMCn8aP0+zqgSQWzLBunhXSkTnzeaTBU
         C/MGkH3pbktCrSTbVEtN3kkJgidzV1OomZRy0tXpYUCzU+7E3IwBvQVwwYxjm5dZKxj7
         CDc8tar6TEQANbN7iqSLPpzrzx9YqpmateV/HSz9sxwYF99yKGz2J5dhLzOxdLG2qEVs
         jv+ZC4dA2FWM34MXZXMgD22coIFjjZJ4U3KBHRdeg2tC7pGYRgwyqcj8TUnQt/bVNsfw
         r+Lg==
X-Gm-Message-State: AC+VfDzU464LeOrXugGuYkQyfvobwGTr+bdQW8FHaCaTwj09raVE5Iwr
	vmz6Lt0l+Ars8e6+EFyq2quj2ENWMpY=
X-Google-Smtp-Source: ACHHUZ7RbKnRXAaHJQLsqYV2lrxy0HzNdbzkdOiYgxPxLVsLiKR0WofzS0z2KZ9KAbtbzJVRbljwlQ==
X-Received: by 2002:a0d:ef03:0:b0:55a:592d:9ec0 with SMTP id y3-20020a0def03000000b0055a592d9ec0mr25470301ywe.20.1683972574931;
        Sat, 13 May 2023 03:09:34 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:8df5:b412:d499:5840? ([2600:1700:9190:ba10:8df5:b412:d499:5840])
        by smtp.gmail.com with ESMTPSA id u124-20020a814782000000b00545a08184d0sm6317883ywa.96.2023.05.13.03.09.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 May 2023 03:09:34 -0700 (PDT)
Message-ID: <3ef0a789-928b-9faf-6c36-43dd1cc18a8a@gmail.com>
Date: Sat, 13 May 2023 06:09:34 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [meta-security][PATCH 0/4] dm-verity: add instructions for
 systemd x86-64
Content-Language: en-US
To: paul.gortmaker@windriver.com
Cc: yocto@lists.yoctoproject.org
References: <20230510150442.2427548-1-paul.gortmaker@windriver.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20230510150442.2427548-1-paul.gortmaker@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 May 2023 10:09:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60008



On 5/10/23 11:04 AM, paul.gortmaker@windriver.com wrote:
> From: Paul Gortmaker <paul.gortmaker@windriver.com>
>
> This second series continues in the same general theme of making it
> easier to use dm-verity within the Yocto/OE framework by adding a worked
> example that can boot on x86-64 in QEMU and on physical hardware.
>
> A couple small clarifications to exisitng files are also added.
>
> Based on my reading, I believe there are still two things that would be
> nice to support if time permits.  They are somewhat intertwined.
>
> Firstly, the dm-verity basically has two places to store the hash data -
> at the end of the filesystem data in an "oversized" partition, or in a
> completely separate partition/device.  Our current support is hardwired
> to the append single partition support.
>
> Secondly, we currently call veritysetup from within the initramfs with
> all the parameters (hash size, location etc.) - which was sensible for
> a sysV init based system.  However my reading seems to indicate that
> recent systemd supports direct enablement of dm-verity device(s) from
> either boot arguments or autodetection via GPT UUIDs assigned to
> dm-verity (and dm-verity-hash).  Meaning (in theory) we should not
> need to be manually calling veritysetup in a systemd initramfs at all.
>
> So we'll see how that goes.  Might lead to another wks.in example?

Merged
thanks
> ---
>
> Paul Gortmaker (4):
>    dm-verity: ensure people don't ignore the DISTRO_FEATURES warning
>    dm-verity: don't make read-only-rootfs sound like a requirement
>    dm-verity: document the meta-intel dependency in the systemd example
>    dm-verity: add x86-64 systemd based example instructions
>
>   docs/dm-verity-systemd-x86-64.txt    | 77 ++++++++++++++++++++++++++++
>   docs/dm-verity.txt                   | 13 ++++-
>   wic/systemd-bootdisk-dmverity.wks.in |  1 +
>   3 files changed, 89 insertions(+), 2 deletions(-)
>   create mode 100644 docs/dm-verity-systemd-x86-64.txt
>


