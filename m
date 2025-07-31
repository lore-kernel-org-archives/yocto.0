Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 825F8C87FCB
	for <webhook@archiver.kernel.org>; Thu, 31 Jul 2025 01:32:36 +0000 (UTC)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web11.51664.1753925552971915476
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Jul 2025 18:32:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GkCPvtna;
 spf=pass (domain: gmail.com, ip: 209.85.215.172, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b4209a0d426so454852a12.1
        for <yocto@lists.yoctoproject.org>; Wed, 30 Jul 2025 18:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753925552; x=1754530352; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=2bmwShsFwK+aqm9eQRDOoq58ym13FrAuCNddujlKnPw=;
        b=GkCPvtnaM8aZynj/2n67o6haF/FiUcLyL41/btpIShYGi3ne48JcEfG+qT2oReA+94
         On+lAtXwBeedRHDgBQfD8zxbEHhzPFsXGQYlh3eHtxzujn99mokMLhYHYUjxhHjhZ0zP
         M4/vXNj92ubPHjNMcgaT0jLQLgPeK2V1DBvoSQjS5F16lEnYjzZkEEfek8zCt6y2iLA/
         ReU7MgQsPKGvPi1ihkUUBW6XUZrP+VQuIyOdzLLGJCX5RiEsj2teIBHpLO8F5hpOdhTl
         MuqtBpJ43wCjRHUsZlC9Zt6+uLxo2yO0kUKd7JyDwX/YK8q0GgxqQ0rtsiQL73VY3OZh
         7zqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753925552; x=1754530352;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2bmwShsFwK+aqm9eQRDOoq58ym13FrAuCNddujlKnPw=;
        b=UVwp0MJYlutli3NPsW61xLcxc7nqJ3zgtX3KKIztunahRqGnUmIo9jeDilT4Ey8Ok0
         Vtp7WqFa4Aa8W5lbnt/8Vni2pst0sFh+HRRWz2O2p2kYPAXOhuuWciVAc6o3Q1ekjtiV
         uZYWuhocIklPqy0/5D7tEMJpz3iQDOZix/HKcKDJR7zkg/tzDH1bczSbjtSS0rDEMah8
         yEBADxa+ZcH6QfkfDwDik9KXp4sf/ls4quNz5X1wgYkywyHduTHwGRP7cYb+TaO4pscn
         AVcEN66YsFh700/sY22w0UR1x/G4qvQHrxfCTZZa6cU/dy93V8Y2m/KyIQ+huEaOwGfu
         bE/A==
X-Gm-Message-State: AOJu0YwGOKFCEMa75+A0RP1KumjBKlpm80XxOHF6PUb8R+pko6/MzINF
	unhmJ0Cfw4UDPb/oU2dMRrmUJqvwDAuBlwXrXlLkrNWWEqEC4A2XFM2r6JLizn0D/6w=
X-Gm-Gg: ASbGncvAVtQ8R5WtVohGnNKcnPPuz1cAgiIrwUGUzX9D1pWJWupz74RMxiSnPuKzqVR
	OmUNjVYzEEHa++wgTu6s1rPnBDMbLTOrUz1fxB+Turgw+O9udvCydVheO26lJGndLn/SxiO8lll
	CSFAqgyC7Mz/Sfr5HgoPCa524mbHHl+cMvQFP0lsyKiZya6d7KapKzymbpMFktLnaWutHZWz64K
	N/CucvWoIDJ0+nZKLF2UhKilLTQs1X27cDevLTrGzs2gh7uWBhKrht/RJLzZM5sQWSuYLoZbRu+
	nXeJ5kBHt+tDvZg1CudpbcomD1ZSajSza7EP8WZBk749xaxUuZXPWrD161pddCm5iwDGx539k+N
	wYxqPF+Zd1xgsxhwHA9cd/17xy88YfFusddvy
X-Google-Smtp-Source: AGHT+IG4Hidjhm9GX+ddcJm1vhA9FRPB1A7Ced5K0WOa66AMkxwaNIiRi6+BzGaJL+3K40sZG3Qogw==
X-Received: by 2002:a17:903:18b:b0:240:11ba:3842 with SMTP id d9443c01a7336-24096b08dd9mr96977335ad.35.1753925551678;
        Wed, 30 Jul 2025 18:32:31 -0700 (PDT)
Received: from [10.15.13.132] ([209.129.148.213])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e899adc3sm3298685ad.118.2025.07.30.18.32.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 18:32:30 -0700 (PDT)
Message-ID: <82477f52-5602-438f-9bf3-403920a79ea0@gmail.com>
Date: Wed, 30 Jul 2025 18:32:27 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] User login fails despite successful creation with useradd
 class on NVIDIA Jetson AGX Orin #nvidia-jetson-agx-orin #yocto
To: yocto@lists.yoctoproject.org, felix.beck@karevo.de
References: <ANWW.1753893894898680818.ORHP@lists.yoctoproject.org>
Content-Language: en-US
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: <ANWW.1753893894898680818.ORHP@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 31 Jul 2025 01:32:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65727



On 7/30/25 9:44 AM, felix.beck via lists.yoctoproject.org wrote:
> Hello Yocto community,
> I'm experiencing a persistent login issue with a custom Yocto image for 
> **NVIDIA Jetson AGX Orin (64GB)** (MACHINE = "p3737-0000-p3701-0005", in 
> meta-tegra/conf/machine). The build, flashing, and booting all work 
> correctly, but I cannot login with the created user account through 
> either the GUI login screen or tty2 console. I can only see a user "jetson".
> **Setup:**
> - Custom distro based on Poky
> - Target: NVIDIA Jetson AGX Orin (64GB)
> - Base image: core-image-base
> - User creation via useradd class following official documentation
> **User creation recipe implementation:**
> ```bash
> inherit useradd
> USERADD_PACKAGES = "${PN}"
> USERADD_PARAM:${PN} = "-u 1200 -d /home/myuser -m -s /bin/bash -p '\$6\ 
> $...(SHA-512 hash)...' myuser"
> GROUPADD_PARAM:${PN} = "-g 999 docker"
> GROUPMEMS_PARAM:${PN} = "-g docker -a myuser"
> pkg_postinst_ontarget:${PN}() {
>      cp ${datadir}/${PN}/myuser-sudoers /etc/sudoers.d/myuser
>      chmod 0440 /etc/sudoers.d/myuser
>      chown root:root /etc/sudoers.d/myuser
>      echo 'root:$6$...(same hash)...' | chpasswd -e
> }
> ```
> **Verification by mounting rootfs.ext4:**
> - User exists in /etc/passwd: `myuser:x:1200:1200::/home/myuser:/bin/bash`
> - Password hash exists in /etc/shadow: `myuser:$6$...:...:...`
> - Home directory /home/myuser exists with correct ownership
> - User is member of docker group in /etc/group
> - local.conf has `EXTRA_IMAGE_FEATURES:remove = "debug-tweaks"`
> **What I've tried:**
> - Both MD5 and SHA-512 password hashes (generated with Python crypt.crypt)
> - Following meta-skeleton/recipes-skeleton/useradd/useradd-example.bb 
> pattern
> - Verified against useradd class documentation
> - Simplified sudoers configuration: `myuser ALL=(ALL) NOPASSWD: ALL`
> The user account appears correctly created in the filesystem, but 
> authentication consistently fails at runtime. Are there additional 
> dependencies or runtime configurations needed for password 
> authentication on NVIDIA Jetson platforms that differ from the standard 
> useradd approach?
> Any insights would be greatly appreciated.

We have something to this in Yoe, which might give some hints for you

https://github.com/YoeDistro/yoe-distro/blob/master/conf/projects/jetson-agx-orin-devkit/config.conf#L91-L101


> Best regards,
> Felix
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#65723): https://lists.yoctoproject.org/g/yocto/message/65723
> Mute This Topic: https://lists.yoctoproject.org/mt/114452095/1997914
> Mute #nvidia-jetson-agx-orin:https://lists.yoctoproject.org/g/yocto/mutehashtag/nvidia-jetson-agx-orin
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


