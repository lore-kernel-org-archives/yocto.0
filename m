Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FDD9C3DA6D
	for <webhook@archiver.kernel.org>; Tue, 20 May 2025 14:07:53 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web11.21927.1747750067047537482
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 May 2025 07:07:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kd1sfcAt;
 spf=pass (domain: gmail.com, ip: 209.85.218.43, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ad51ba0af48so882435066b.0
        for <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 07:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747750065; x=1748354865; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j7O7cqU5Tp8ilR3OJbCsWCQNAMyfsD8cK+FZLcRMX7s=;
        b=kd1sfcAt4z0D1TE7LwOfYLo65h6uEqVmQ4+WTX4kJeumZCrMl73FxhGTzH0zTWLfxC
         spQWV+g2wfrOatygOijRqIrKTsFO3btCzCU9kpTpzlIwyEo58qq3Zi+QS3UL0USG6dcX
         gAnMiFHUjs0LnvYoxuQ8XeiR5XY1TMBiwdSJZ0gzr/8DvGofSNROvd77/9RT+ltpsjJk
         Rm4+8Sdd9pAirUDtNgGUANetfyA9G7WHmXyXi7QajSh1ysg9DecEGOgnRFokAs2BZTa4
         3MDuE7cqeNJDo14RH3EB6XK2Nhop9h18Z79Xb/HuTxgmHi8mEYrxvyC+csFPDJVlWcGK
         jICA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747750065; x=1748354865;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j7O7cqU5Tp8ilR3OJbCsWCQNAMyfsD8cK+FZLcRMX7s=;
        b=go162aF0T7tkQBioRUM+4yE8K0YN1oAklMIyIenQxAzqkIxTFAwMXexJcX+FG3pALc
         WUkI9qNUImUk7r8V77+Lkspo/2OJf3daAdQx5o8+zLBn26kLzFwB+QLnbSv0b4G4W47u
         ysMdcAKyUUqNEjjKsN1UhLOd0tKJajf3sKjw3yu4ri+AhU8XOFr6ezh1IBXYoODDGsgs
         nGN+MoMfAKAtQQ7c59wdk7rlRWS3qcBaqFd0Fb4SBfID5IVmHnrU2IIuLGz/36U1+oJQ
         HwirFvDBah3dTHfsPXMjtHym2ISF0mOpMYI3OL0qD+DYC0EybVEJvlFazBNAraz4OWRL
         +GJQ==
X-Gm-Message-State: AOJu0Ywj8q1UKt0dwXlpHv0M9bnq0Bk15e4OE8AFjJt0l4htUIxzZ91F
	W/uNsRVzQHY8/FcfdP+aiSPjCwxlqOlgdFRWt+FmzDXwvrp+3UL3qxeo
X-Gm-Gg: ASbGncvjs1d7uPv5tmhZSiQMo/cM4FZN/TmkPR0wKiB+7qAgvmCzkR32GcpEUYl0f4c
	LnShS+DlUSS2OzS79ET5yaXVqDKHEq/PeKf6i4pdYu8kRW6wWoVmJloVvbJ251vx+oLgHiPQyit
	eLNp9EDPFBSXbojmuqK7aqWS0d3CyhZ2hWB9BMLncacNCKT8723pk+jPAUqSaFMRhdMqayxdfiH
	Fb3fLqCr4Aj8Qf3nnqQ/HsFIXcUD+wb0Dq0jn2c2eQS0sqNOQD1o4KZ/d0xGiUBhrqR8Fq9JvNd
	C8Wjjn8S7+CfOkDcISKAEJD8U0Al5Jbaq5oRGfEDZ5H/vzINAAJ4OXVStDI=
X-Google-Smtp-Source: AGHT+IEeTu4ThWGTHK6bKGestmLK25G26GId4VYqjpUmeNI0kG4v/IClQsS7zZHsEQyNNCCcATP6UA==
X-Received: by 2002:a17:907:7f1e:b0:ad2:50dd:dbb5 with SMTP id a640c23a62f3a-ad52ea9b0a2mr1658967666b.0.1747750061833;
        Tue, 20 May 2025 07:07:41 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d2779efsm737393766b.77.2025.05.20.07.07.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 07:07:40 -0700 (PDT)
Message-ID: <d6c9b551-70b8-448f-8521-53e45d067fbd@gmail.com>
Date: Tue, 20 May 2025 16:07:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Graph Node Recipe does not correspond to any known layer
 ([]) Error [Under Investigation] [ ref:_00D307Mm._500UhRY1zs:ref ]
To: Amrita Mehra <mehraamrita6@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <CAEqf1PJHFpL01XNBCsEqjGNL+W08hhTm7+v8maX7_ftXNOTiPw@mail.gmail.com>
 <fac08383-5ffa-4299-9354-0941635411e0@gmail.com>
 <CAEqf1PJcQF9C=3x3gAtFAsCDGvabTpazGkiqf1EJdx6U74Z2-w@mail.gmail.com>
 <c129290c-090d-4296-9bac-50c23e3abfce@gmail.com>
 <CAEqf1PJDBwbA2YVpCiBf0gzTPgP_64zaXn98h1SZZh0GBjMnbg@mail.gmail.com>
 <a7cb1d4c-767c-4a74-8eb0-9d30d2e095c5@gmail.com>
 <CAEqf1PLVO9dn_2qj9C_zoXSP+gDL2oi9S=Sdn1HvDL+vqnE5Sg@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CAEqf1PLVO9dn_2qj9C_zoXSP+gDL2oi9S=Sdn1HvDL+vqnE5Sg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 14:07:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65373

On 5/20/25 15:50, Amrita Mehra wrote:
> Is this error a bitbake error?
> Could you confirm? According to blackduck team it's a bitbake error.
>
>
Since you didn't share what the problem is (how the actual bitbake
behavior differs from the expected one, preferably with steps to
reproduce and with version information), it is not possible to confirm
anything unfortunately.

All we have is that a random tool throws some random errors, which is
not particularly informative nor helpful. Once you can share some
information about the actual meaning of the script output, it will be
easier to evaluate.

>
> Regards
> Amrita :)
>
> On Tue, May 20, 2025, 17:09 Gyorgy Sarvari <skandigraun@gmail.com> wrote:
>
>     On 5/20/25 13:28, Amrita Mehra wrote:
>     > Yes image/recipe build fine when you run it with bitbake. The issue
>     > happens only when blackduck tries to scan and this error is thrown
>     > post it does bitbake -g mdm-xxxx.
>     >
>     > This looks to be a bitbake error, which is why we want to understand
>     > what can cause this error? Do you need *.dot files for more
>     analyses?
>     > Is there a possibility that dot files are not generated as expected?
>
>     Sorry, but I'm not familiar with this tool, don't know why it is
>     emitting any errors - it sounds like it would be a better question for
>     blackduck support/manual, what their script is actually complaining
>     about. If there is something that would need to be fixed in bitbake,
>     then it would be easier to know what that is exactly.
>
>     FWIW, a search gives only a very few results about this error, and
>     they
>     say it was displayed erroneously until it was fixed.
>
>     >
>     > On Tue, May 20, 2025 at 4:48 PM Gyorgy Sarvari
>     <skandigraun@gmail.com>
>     > wrote:
>     >
>     >
>     >     On 5/20/25 13:03, Amrita Mehra wrote:
>     >     > Is it because the recipes are inside folders with name
>     recipes-xxx?
>     >     > We are not using the default meta-qcom. We have made a few
>     >     changes on
>     >     > top of it. 
>     >     > The structure in my project is as below
>     >     >
>     >   
>      [qc-gen]amehra@core9-swbs002:~/code/9x50_branches/01.15_br/meta-qcom$
>     >     > ls -lrt
>     >     > total 16
>     >     > drwxr-xr-x.  2 amehra domain_users 4096 May 12 15:39 classes
>     >     > drwxr-xr-x.  3 amehra domain_users 4096 May 12 15:39 files
>     >     > drwxr-xr-x. 76 amehra domain_users 4096 May 12 15:39 *recipes*
>     >     > drwxr-xr-x.  4 amehra domain_users 4096 May 20 18:52 conf
>     >     >
>     >     >
>     >   
>      [qc-gen]amehra@core9-swbs002:~/code/9x50_branches/01.15_br/meta-qcom$
>     >     > cat conf/layer.conf
>     >     > BBFILES += "${LAYERDIR}/recipes/*/*.bb
>     >     ${LAYERDIR}/recipes/*/*.bbappend"
>     >     > BBPATH .= ":${LAYERDIR}"
>     >     > BBFILE_COLLECTIONS += "qcom"
>     >     > BBFILE_PRIORITY_qcom = "15"
>     >     > BBFILE_PATTERN_qcom := "^${LAYERDIR}/"
>     >     > LICENSE_PATH += "${LAYERDIR}/files/qcom-licenses"
>     >     >
>     >     > I believe this should be fine. Let me know
>     >
>     >     Yeah, this looks okay at the first sight.
>     >     Does your image/recipe build fine when you run it with
>     bitbake? If it
>     >     emits some errors or other information, that would be helpful.
>     >
>     >     >
>     >     > On Mon, May 19, 2025 at 9:20 PM Gyorgy Sarvari
>     >     <skandigraun@gmail.com>
>     >     > wrote:
>     >     >
>     >     >
>     >     >
>     >     >     On 5/19/25 16:36, Amrita Mehra via
>     lists.yoctoproject.org <http://lists.yoctoproject.org>
>     >     <http://lists.yoctoproject.org>
>     >     >     <http://lists.yoctoproject.org> wrote:
>     >     >     > Hi Team,
>     >     >     >
>     >     >     > I am working on a blackduck scan using detect10.sh
>     script.
>     >     While I
>     >     >     > execute this script, I see below error
>     >     >     >
>     >     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node
>     recipe
>     >     >     'acdbloader
>     >     >     >
>     >     >   
>     >   
>       do_build\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     >     <http://acdbloader_git.bb>
>     >     >     <http://acdbloader_git.bb>
>     >     >     > <http://acdbloader_git.bb>' does not correspond to
>     any known
>     >     >     layer ([])
>     >     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node
>     recipe
>     >     >     'acdbloader
>     >     >     >
>     >     >   
>     >   
>       do_compile\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     >     <http://acdbloader_git.bb>
>     >     >     <http://acdbloader_git.bb>
>     >     >     > <http://acdbloader_git.bb>' does not correspond to
>     any known
>     >     >     layer ([])
>     >     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node
>     recipe
>     >     >     'acdbloader
>     >     >     >
>     >     >   
>     >   
>       do_configure\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     >     <http://acdbloader_git.bb>
>     >     >     <http://acdbloader_git.bb>
>     >     >     > <http://acdbloader_git.bb>' does not correspond to
>     any known
>     >     >     layer ([])
>     >     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node
>     recipe
>     >     >     'acdbloader
>     >     >     >
>     >     >   
>     >   
>       do_install\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     >     <http://acdbloader_git.bb>
>     >     >     <http://acdbloader_git.bb>
>     >     >     > <http://acdbloader_git.bb>' does not correspond to
>     any known
>     >     >     layer ([])
>     >     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node
>     recipe
>     >     >     'acdbloader
>     >     >     >
>     >     >   
>     >   
>       do_package\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     >     <http://acdbloader_git.bb>
>     >     >     <http://acdbloader_git.bb>
>     >     >     > <http://acdbloader_git.bb>' does not correspond to
>     any known
>     >     >     layer ([])
>     >     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node
>     recipe
>     >     >     'acdbloader
>     >     >     >
>     >     >   
>     >   
>       do_package_qa\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     >     <http://acdbloader_git.bb>
>     >     >     <http://acdbloader_git.bb>
>     >     >     > <http://acdbloader_git.bb>' does not correspond to
>     any known
>     >     >     layer ([])
>     >     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node
>     recipe
>     >     >     'acdbloader
>     >     >     >
>     >     >   
>     >   
>       do_package_write_ipk\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     >     <http://acdbloader_git.bb>
>     >     >     <http://acdbloader_git.bb>
>     >     >     > <http://acdbloader_git.bb>' does not correspond to
>     any known
>     >     >     layer ([])
>     >     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node
>     recipe
>     >     >     'acdbloader
>     >     >     >
>     >     >   
>     >   
>       do_packagedata\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     >     <http://acdbloader_git.bb>
>     >     >     <http://acdbloader_git.bb>
>     >     >     > <http://acdbloader_git.bb>' does not correspond to
>     any known
>     >     >     layer ([])
>     >     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node
>     recipe
>     >     >     'acdbloader
>     >     >     >
>     >     >   
>     >   
>       do_patch\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     >     <http://acdbloader_git.bb>
>     >     >     <http://acdbloader_git.bb>
>     >     >     > <http://acdbloader_git.bb>' does not correspond to
>     any known
>     >     >     layer ([])
>     >     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node
>     recipe
>     >     >     'acdbloader
>     >     >     >
>     >     >   
>     >   
>       do_populate_lic\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     >     <http://acdbloader_git.bb>
>     >     >     <http://acdbloader_git.bb>
>     >     >     > <http://acdbloader_git.bb>' does not correspond to
>     any known
>     >     >     layer ([])
>     >     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node
>     recipe
>     >     >     'acdbloader
>     >     >     >
>     >     >   
>     >   
>       do_populate_sysroot\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     >     <http://acdbloader_git.bb>
>     >     >     <http://acdbloader_git.bb>
>     >     >     > <http://acdbloader_git.bb>' does not correspond to
>     any known
>     >     >     layer ([])
>     >     >     >
>     >     >     >  
>     >     >     >
>     >     >     > What is the cause of this error? How can we fix it?
>     >     >     >
>     >     >
>     >     >     I'm not familiar with blackduck scan, but have you
>     >     configured the
>     >     >     BBFILES variable in a way to include this recipe?
>     >     >     If this meta-qcom layer is based on
>     >     >     https://git.yoctoproject.org/meta-qcom, then its
>     default BBFILES
>     >     >     variable expects the recipes to be in "recipes-*"
>     folder[1]
>     >     - note the
>     >     >     hyphen in the pattern.
>     >     >
>     >     >     [1]:
>     >     https://git.yoctoproject.org/meta-qcom/tree/conf/layer.conf#n5
>     >     >
>     >     >     >
>     >     >     >
>     >     >     > --
>     >     >     > Regards
>     >     >     > Amrita :)
>     >     >     >
>     >     >     > -=-=-=-=-=-=-=-=-=-=-=-
>     >     >     > Links: You receive all messages sent to this group.
>     >     >     > View/Reply Online (#65356):
>     >     >     https://lists.yoctoproject.org/g/yocto/message/65356
>     >     >     > Mute This Topic:
>     >     https://lists.yoctoproject.org/mt/113193372/6084445
>     >     >     > Group Owner: yocto+owner@lists.yoctoproject.org
>     <mailto:yocto%2Bowner@lists.yoctoproject.org>
>     >     <mailto:yocto%2Bowner@lists.yoctoproject.org
>     <mailto:yocto%252Bowner@lists.yoctoproject.org>>
>     >     >     <mailto:yocto%2Bowner@lists.yoctoproject.org
>     <mailto:yocto%252Bowner@lists.yoctoproject.org>
>     >     <mailto:yocto%252Bowner@lists.yoctoproject.org
>     <mailto:yocto%25252Bowner@lists.yoctoproject.org>>>
>     >     >     > Unsubscribe:
>     https://lists.yoctoproject.org/g/yocto/unsub
>     >     >     [skandigraun@gmail.com]
>     >     >     > -=-=-=-=-=-=-=-=-=-=-=-
>     >     >     >
>     >     >
>     >     >
>     >     >
>     >     > --
>     >     > Regards
>     >     > Amrita :)
>     >
>     >
>     >
>     > --
>     > Regards
>     > Amrita :)
>


