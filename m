Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21D1EC3DA6D
	for <webhook@archiver.kernel.org>; Tue, 20 May 2025 11:39:32 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web10.18590.1747741169827743596
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 May 2025 04:39:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MFRMoJ7q;
 spf=pass (domain: gmail.com, ip: 209.85.208.42, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-601aa44af77so4926336a12.3
        for <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 04:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747741168; x=1748345968; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IO1uASia7Lu7V56Ing2aV4ynbU+SCO13ESD7NxJ8bI8=;
        b=MFRMoJ7qZqP6FPqLN1uphb5sOrewIcKBF+KonEqNvw5f8pyLETyS7b18drGgnJsx37
         WwzVR5SJpkw9RTbUQftxvrRAYm2QGh46v+awq7sb8b3d0FzaN7i3e2LGAIbSJHFxra6b
         4DQVU5f5pzXBOmTEJaOUm5E1XOmyu9F/BKU24lhZwxr4l0N8yHgYVr4yeQ9ALmmnSyTQ
         8Fx4SFjhtUzHtmEK9WvkhonK3eCMCI4M6mjA0egGyWu9SMnB2mNqvMT15wowMrmfNCYw
         OewGL8tpc9oI+4dQG/vqQCij95JdaTgzVzgqhxWp0Wr6I+gyeVQYTsrI/IYC1Xsu/Znj
         F3nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747741168; x=1748345968;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IO1uASia7Lu7V56Ing2aV4ynbU+SCO13ESD7NxJ8bI8=;
        b=oRMb+Gm84URSabdb7sgW3y8ghVKVQp8qUsSVRAlu1cqu5Spy+rCAzR8GtHqevd95CW
         DJTMO+PUfT+klVHRJTNydveOBINjHvultxkX4yHBWPTwY8D8hejxJODMWZ2qRwddTBKE
         j2IgHkIb4i8H9+qSq7goxB3kfXXEZDFWCyYGMsjsmOQX2BYiLBrbvKYY9WXdBCPPaYKM
         pKN0ixtYA/iNa3W1xYLouKsAmMNfiaYY2IVgYyXMQ6ncOv0xCJp2g/ppY3JSvWyaKz8v
         ro7vd5j4XPB7S03I/1LiDyxnka4d0acfcyVbp1Zmk/n0AMPZ7zafWaAMK6Imsz0xZcwE
         IbeQ==
X-Gm-Message-State: AOJu0YyhU26FAsMlKRz1erBwOFKcXKPALvB1/nSIcpqONM7RatZS16dA
	96mPcBzbhqkx+j92sDSk4FQCtSAS75f66YiZdNyQeJAc2j398TB+f/en
X-Gm-Gg: ASbGncsLLcHaXyMjuSRQpencdpxu8y5ZvpeoHfXAnl/sTB9lR6K2B30/dHBhIUCJqR3
	MdTzuy0LNnV997czUW4OaYQRA/zK+ICFoDku9erUSeSd5rasKEckFhi5pXoPdH7bl8JV+q0SU7r
	LI63qchueq08zi/03cNi56xLe5OvQSfXqrb/V+sCeiTeQX/O6rvZlpEex6IzL1cLUP4sANDGfPq
	mKf75ONvnZ0H8ngeWifRLCBoxi7U2y5ATQAyL7nIof/57V+7eDozD7yz6ciEJQ8LW3qz4WyiXQc
	RH9jqSsSuZOx+xngwlx6MiGMw7EpW8x/SuDiTh5bPPy5JBfVcDpkPsCtrwA=
X-Google-Smtp-Source: AGHT+IFeelmr78YBxMjV/gJD73BH3Oz4JQiTOmF9B6OPJJ3nCre/9J9BmHRhiIlIUNDx/E/LKxTCKQ==
X-Received: by 2002:a05:6402:5191:b0:5f8:36b2:dc1a with SMTP id 4fb4d7f45d1cf-600900f3345mr13868692a12.16.1747741167704;
        Tue, 20 May 2025 04:39:27 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6004d50364dsm7047949a12.32.2025.05.20.04.39.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 04:39:27 -0700 (PDT)
Message-ID: <a7cb1d4c-767c-4a74-8eb0-9d30d2e095c5@gmail.com>
Date: Tue, 20 May 2025 13:39:26 +0200
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
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CAEqf1PJDBwbA2YVpCiBf0gzTPgP_64zaXn98h1SZZh0GBjMnbg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 11:39:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65370

On 5/20/25 13:28, Amrita Mehra wrote:
> Yes image/recipe build fine when you run it with bitbake. The issue
> happens only when blackduck tries to scan and this error is thrown
> post it does bitbake -g mdm-xxxx.
>
> This looks to be a bitbake error, which is why we want to understand
> what can cause this error? Do you need *.dot files for more analyses?
> Is there a possibility that dot files are not generated as expected?

Sorry, but I'm not familiar with this tool, don't know why it is
emitting any errors - it sounds like it would be a better question for
blackduck support/manual, what their script is actually complaining
about. If there is something that would need to be fixed in bitbake,
then it would be easier to know what that is exactly.

FWIW, a search gives only a very few results about this error, and they
say it was displayed erroneously until it was fixed.

>
> On Tue, May 20, 2025 at 4:48 PM Gyorgy Sarvari <skandigraun@gmail.com>
> wrote:
>
>
>     On 5/20/25 13:03, Amrita Mehra wrote:
>     > Is it because the recipes are inside folders with name recipes-xxx?
>     > We are not using the default meta-qcom. We have made a few
>     changes on
>     > top of it. 
>     > The structure in my project is as below
>     >
>     [qc-gen]amehra@core9-swbs002:~/code/9x50_branches/01.15_br/meta-qcom$
>     > ls -lrt
>     > total 16
>     > drwxr-xr-x.  2 amehra domain_users 4096 May 12 15:39 classes
>     > drwxr-xr-x.  3 amehra domain_users 4096 May 12 15:39 files
>     > drwxr-xr-x. 76 amehra domain_users 4096 May 12 15:39 *recipes*
>     > drwxr-xr-x.  4 amehra domain_users 4096 May 20 18:52 conf
>     >
>     >
>     [qc-gen]amehra@core9-swbs002:~/code/9x50_branches/01.15_br/meta-qcom$
>     > cat conf/layer.conf
>     > BBFILES += "${LAYERDIR}/recipes/*/*.bb
>     ${LAYERDIR}/recipes/*/*.bbappend"
>     > BBPATH .= ":${LAYERDIR}"
>     > BBFILE_COLLECTIONS += "qcom"
>     > BBFILE_PRIORITY_qcom = "15"
>     > BBFILE_PATTERN_qcom := "^${LAYERDIR}/"
>     > LICENSE_PATH += "${LAYERDIR}/files/qcom-licenses"
>     >
>     > I believe this should be fine. Let me know
>
>     Yeah, this looks okay at the first sight.
>     Does your image/recipe build fine when you run it with bitbake? If it
>     emits some errors or other information, that would be helpful.
>
>     >
>     > On Mon, May 19, 2025 at 9:20 PM Gyorgy Sarvari
>     <skandigraun@gmail.com>
>     > wrote:
>     >
>     >
>     >
>     >     On 5/19/25 16:36, Amrita Mehra via lists.yoctoproject.org
>     <http://lists.yoctoproject.org>
>     >     <http://lists.yoctoproject.org> wrote:
>     >     > Hi Team,
>     >     >
>     >     > I am working on a blackduck scan using detect10.sh script.
>     While I
>     >     > execute this script, I see below error
>     >     >
>     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
>     >     'acdbloader
>     >     >
>     >   
>      do_build\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     >     <http://acdbloader_git.bb>
>     >     > <http://acdbloader_git.bb>' does not correspond to any known
>     >     layer ([])
>     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
>     >     'acdbloader
>     >     >
>     >   
>      do_compile\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     >     <http://acdbloader_git.bb>
>     >     > <http://acdbloader_git.bb>' does not correspond to any known
>     >     layer ([])
>     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
>     >     'acdbloader
>     >     >
>     >   
>      do_configure\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     >     <http://acdbloader_git.bb>
>     >     > <http://acdbloader_git.bb>' does not correspond to any known
>     >     layer ([])
>     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
>     >     'acdbloader
>     >     >
>     >   
>      do_install\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     >     <http://acdbloader_git.bb>
>     >     > <http://acdbloader_git.bb>' does not correspond to any known
>     >     layer ([])
>     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
>     >     'acdbloader
>     >     >
>     >   
>      do_package\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     >     <http://acdbloader_git.bb>
>     >     > <http://acdbloader_git.bb>' does not correspond to any known
>     >     layer ([])
>     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
>     >     'acdbloader
>     >     >
>     >   
>      do_package_qa\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     >     <http://acdbloader_git.bb>
>     >     > <http://acdbloader_git.bb>' does not correspond to any known
>     >     layer ([])
>     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
>     >     'acdbloader
>     >     >
>     >   
>      do_package_write_ipk\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     >     <http://acdbloader_git.bb>
>     >     > <http://acdbloader_git.bb>' does not correspond to any known
>     >     layer ([])
>     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
>     >     'acdbloader
>     >     >
>     >   
>      do_packagedata\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     >     <http://acdbloader_git.bb>
>     >     > <http://acdbloader_git.bb>' does not correspond to any known
>     >     layer ([])
>     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
>     >     'acdbloader
>     >     >
>     >   
>      do_patch\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     >     <http://acdbloader_git.bb>
>     >     > <http://acdbloader_git.bb>' does not correspond to any known
>     >     layer ([])
>     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
>     >     'acdbloader
>     >     >
>     >   
>      do_populate_lic\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     >     <http://acdbloader_git.bb>
>     >     > <http://acdbloader_git.bb>' does not correspond to any known
>     >     layer ([])
>     >     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
>     >     'acdbloader
>     >     >
>     >   
>      do_populate_sysroot\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     >     <http://acdbloader_git.bb>
>     >     > <http://acdbloader_git.bb>' does not correspond to any known
>     >     layer ([])
>     >     >
>     >     >  
>     >     >
>     >     > What is the cause of this error? How can we fix it?
>     >     >
>     >
>     >     I'm not familiar with blackduck scan, but have you
>     configured the
>     >     BBFILES variable in a way to include this recipe?
>     >     If this meta-qcom layer is based on
>     >     https://git.yoctoproject.org/meta-qcom, then its default BBFILES
>     >     variable expects the recipes to be in "recipes-*" folder[1]
>     - note the
>     >     hyphen in the pattern.
>     >
>     >     [1]:
>     https://git.yoctoproject.org/meta-qcom/tree/conf/layer.conf#n5
>     >
>     >     >
>     >     >
>     >     > --
>     >     > Regards
>     >     > Amrita :)
>     >     >
>     >     > -=-=-=-=-=-=-=-=-=-=-=-
>     >     > Links: You receive all messages sent to this group.
>     >     > View/Reply Online (#65356):
>     >     https://lists.yoctoproject.org/g/yocto/message/65356
>     >     > Mute This Topic:
>     https://lists.yoctoproject.org/mt/113193372/6084445
>     >     > Group Owner: yocto+owner@lists.yoctoproject.org
>     <mailto:yocto%2Bowner@lists.yoctoproject.org>
>     >     <mailto:yocto%2Bowner@lists.yoctoproject.org
>     <mailto:yocto%252Bowner@lists.yoctoproject.org>>
>     >     > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>     >     [skandigraun@gmail.com]
>     >     > -=-=-=-=-=-=-=-=-=-=-=-
>     >     >
>     >
>     >
>     >
>     > --
>     > Regards
>     > Amrita :)
>
>
>
> -- 
> Regards
> Amrita :)


