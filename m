Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web08.341.1624556077214314631
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Jun 2021 10:34:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=o3m+lm7i;
 spf=pass (domain: gmail.com, ip: 209.85.216.41, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id x21-20020a17090aa395b029016e25313bfcso3940644pjp.2
        for <yocto@lists.yoctoproject.org>; Thu, 24 Jun 2021 10:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Kv+F6T1posox+tBiRhZdsK5NuEjH9saz9PRR7THMfHc=;
        b=o3m+lm7iXKO9hbjziCeJsKlCtasscO69wODpUWnpXf/pgx4NxwY6qM3B3GZZjekrC8
         oI86peCBjE/IurQadnTgJnwVD0rdFtTLYeHX7xYxEK5A5zmAxaYm+wkXjz4MP94S85SY
         bKjEIuMWNPgPRSINgCNR0eohqmOvo5iAgxkRvGb1IOTskolwT6uHAauIdWz0wKJdEiXB
         afaT06uFO9yndGKrSb5RC1lemL4oXs8eA8moEAdX9YPR3uTlfrE0s4Oq93cCED0ImqPP
         LBHYVFxhN/Lsv587Per6EtCg6nLpj94RSY/CG7L/6s1L0kGu5xFSY5T1o0ptUiUk/ru8
         phRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=Kv+F6T1posox+tBiRhZdsK5NuEjH9saz9PRR7THMfHc=;
        b=kfKkxaCNVchHYY+nCmQj7DeiPTpVtiN5C0zN1SemzdArLKZgvh9U26PAzWf6/Wh4VU
         D0rH53rEUieEQIEySirg9472aWuEKWv8pKqt2dg159bv2re/vZcb27+shA35u6RVmd4C
         IH24eD1tlTgNrDlnLggUpkSaatwT1T1LEC3F/iYEnlzf8OVBmGd6nd74s+zf65ExFhY4
         GKYsyAHLmNnK/5cg2WIyt81OeEm7PMtyPg0KQVC/9j7mAM5bsCjL15Owm37mIh/EfnYa
         DAXb5FXKY5sSYPTrZGjLrubD8itvQAK9Rxdea80NDfd8J1vlZ0+G2h62bu9z8Y6RcsSJ
         Yinw==
X-Gm-Message-State: AOAM5306DXOR2jHelWuZeTjlv0CL2Yfzx+BsaOWxEb4/jrubIonMcka4
	YxKikBm7Js+NKIaaJ0vmU5qjiyy3hOAnmQ==
X-Google-Smtp-Source: ABdhPJyORLPMgImWuCA/fkR+GEvWEgA7ogCrsc9Q6XMSaLIWfsnYLDTDcx3G3w+xiXHa8NBqX7f6rg==
X-Received: by 2002:a17:902:934b:b029:121:1215:66fd with SMTP id g11-20020a170902934bb0290121121566fdmr5211063plp.19.1624556076233;
        Thu, 24 Jun 2021 10:34:36 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:89a7:dc85:dd20:c47e? ([2601:646:9200:a0f0:89a7:dc85:dd20:c47e])
        by smtp.gmail.com with ESMTPSA id d129sm2277092pfd.218.2021.06.24.10.34.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jun 2021 10:34:35 -0700 (PDT)
Subject: Re: [yocto] devtool deploy-target with strip option: failed to preserve ownership #devtool #dunfell
To: florian.amstutz@scs.ch, yocto@lists.yoctoproject.org
References: <zJVX.1624529473224576314.Ee3t@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <943318c3-f716-9f12-207d-005841b16bb4@gmail.com>
Date: Thu, 24 Jun 2021 10:34:34 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <zJVX.1624529473224576314.Ee3t@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 6/24/21 3:11 AM, florian.amstutz@scs.ch wrote:
> Hi all,
> when I use "devtool deploy-target" with the --strip option in the eSDK, 
> the ownership cannot be preserved during copying the files from "image" 
> to "deploy-target-stripped":
> devtool deploy-target --strip --no-host-check --no-preserve less 
> root@192.168.7.2
> cp: failed to preserve ownership for 
> '/home/yocto/sdk/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/bin/less': 
> Operation not permitted
> cp: failed to preserve ownership for 
> '/home/yocto/sdk/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/bin/lesskey': 
> Operation not permitted
> cp: failed to preserve ownership for 
> '/home/yocto/sdk/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/bin/lessecho': 
> Operation not permitted
> cp: failed to preserve ownership for 
> '/home/yocto/sdk/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/bin': 
> Operation not permitted
> cp: failed to preserve ownership for 
> '/home/yocto/sdk/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/share/man/man1/less.1': 
> Operation not permitted
> cp: failed to preserve ownership for 
> '/home/yocto/sdk/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/share/man/man1/lesskey.1': 
> Operation not permitted
> cp: failed to preserve ownership for 
> '/home/yocto/sdk/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/share/man/man1/lessecho.1': 
> Operation not permitted
> cp: failed to preserve ownership for 
> '/home/yocto/sdk/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/share/man/man1': 
> Operation not permitted
> cp: failed to preserve ownership for 
> '/home/yocto/sdk/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/share/man': 
> Operation not permitted
> cp: failed to preserve ownership for 
> '/home/yocto/sdk/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr/share': 
> Operation not permitted
> cp: failed to preserve ownership for 
> '/home/yocto/sdk/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped/usr': 
> Operation not permitted
> cp: failed to preserve ownership for 
> '/home/yocto/sdk/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped': 
> Operation not permitted
> INFO: Successfully deployed 
> /home/yocto/sdk/tmp/work/cortexa9t2hf-neon-poky-linux-gnueabi/less/551-r0/deploy-target-stripped
> On the target, the deployed files have then the ownership of the eSDK user:
> root@qemu:~# ls -lah /usr/bin/less
> -rwx------    1 1002     1003      116.7K Jun 24 08:53 /usr/bin/less
> "devtool deploy-target" without the --strip option works as expected. 
> The files are owned by root.
> The eSDK has been built and installed on the same machine (tested on 
> Ubuntu 16.04, 18.04 and 20.04).
> Used Yocto release: 3.1.8
> Thanks in advance for any help!


Can you file a ticket in bugzilla for this as well please.

> Best regards,
> Florian
> 
> 
> 
> 
