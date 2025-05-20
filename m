Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07C14C3ABDD
	for <webhook@archiver.kernel.org>; Tue, 20 May 2025 11:18:42 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web11.18573.1747739914655289299
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 May 2025 04:18:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cQ0r4beZ;
 spf=pass (domain: gmail.com, ip: 209.85.208.45, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-601d66f8cafso3415103a12.3
        for <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 04:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747739913; x=1748344713; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RMBOt9YAfbpklx5WycdqtwPltTHE9WJfLt1pKod2Oo4=;
        b=cQ0r4beZhmX1ds+Zf0LA53wg1PRonDO3SrNHnBm3WmTckoIF5ARM1OCMFN9K/vakHG
         hU0hrY/YVa62z0+BFtAzK733Kc4FhajEPsis2iAiMjr2CXFhQsWFRpxuxF7p6V1PYehY
         iTcKMG4756Uv2+r/nn/mtK633dFVAS4CzZM1+xvvaA4h0/NjYMWdBm1ezELGZX7bMS16
         NuL43W7SOD3WcfZFeb+uZ08Phe2H6ABpesEUhjo2KHV4U6N4tmWt7rMjyzzEHUtmohwP
         CL3YKFAGoXVpMPcz4XABY4h38BS6segJ3VYxkIc0VkAgKKkgYQsUSCbNSFibEfGGPS0T
         NvIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747739913; x=1748344713;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RMBOt9YAfbpklx5WycdqtwPltTHE9WJfLt1pKod2Oo4=;
        b=aBfx8I5bqaOmWAd14V10lxzEWHiXJUl9RoOMNH5p1SIcLhvjwAZ9l3xve2eDsBKWCO
         TN3DZIWXCmqXKpWxxd/vdYrJZIFG8kzOaplw4oTFvyAMDKMLInSP+WGtqXD0uCROk3TB
         mxTRfeGUJ+HcfsV+cGnHd/AlFdovHK2UyZDAp9d3mEHI+/yAiFQQbN4ikLBn+C/gKSqj
         Jt3KibELxLJuBIf7/pJz8woMODhQjzkhV0c3kHjWMK0+MyulkBhmQoOb+6aTfs0lI9cX
         La4LFWa1d4nXweyneRI9kqFHLIIU31bKaOmvPIXY+arqhPtkMUQYprUU00c9+zTFdmMS
         KbDQ==
X-Gm-Message-State: AOJu0YxH23QUUVcaYyKO43RtB/z452qHlYi5/jirZEmMWpQNxVCRAKeP
	T0OIKl/oHSKZhVnzXfPXQJpNqhHogMxea5lGnYnFO9jo9wcdKwIueTF6
X-Gm-Gg: ASbGncuJN6NlyWc8E3lu4NqTVReHwUlykMrI7RVcHqaIK1Yxgcu7UMD7EyykqeZlbHV
	HobQjxRgHz2cg/JMP3RiJR7UnnY2kdKozYcGrSk15O3dNUmiwtwAum+fpJgjVnInZDAxxtsDgnW
	L5iFH2VE5dNKBIf9LnlPtc3YWfIhfM0mDIqLOIf4+0DEYYCIoh7QGB1UUBXr5fGOSVhmBacELmZ
	mjcsmEqdkHxSjkmwVsJKWWlBht2J9ZtBmQR3x4zarojHC/f2U/DMGRC6xD4QonlcwF1/pO6s0UZ
	h9QuVTEfTjTeZcdsgXSD3R+Ln95jn/DiiyK3exMfARu8r+HL+JXXxxVlzH8=
X-Google-Smtp-Source: AGHT+IHyD9SagOBOao2lYXxRJApxbIO+cerl1DGHYuKCO1QvZM86/GLfCOi/AdjNn2Avy3yPP2kI3g==
X-Received: by 2002:a05:6402:5114:b0:5fb:6172:c0fc with SMTP id 4fb4d7f45d1cf-601140886f9mr13638946a12.11.1747739912752;
        Tue, 20 May 2025 04:18:32 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6005ac32f5csm6991065a12.62.2025.05.20.04.18.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 04:18:32 -0700 (PDT)
Message-ID: <c129290c-090d-4296-9bac-50c23e3abfce@gmail.com>
Date: Tue, 20 May 2025 13:18:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Graph Node Recipe does not correspond to any known layer
 ([]) Error [Under Investigation] [ ref:_00D307Mm._500UhRY1zs:ref ]
To: Amrita Mehra <mehraamrita6@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <CAEqf1PJHFpL01XNBCsEqjGNL+W08hhTm7+v8maX7_ftXNOTiPw@mail.gmail.com>
 <fac08383-5ffa-4299-9354-0941635411e0@gmail.com>
 <CAEqf1PJcQF9C=3x3gAtFAsCDGvabTpazGkiqf1EJdx6U74Z2-w@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CAEqf1PJcQF9C=3x3gAtFAsCDGvabTpazGkiqf1EJdx6U74Z2-w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 11:18:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65368


On 5/20/25 13:03, Amrita Mehra wrote:
> Is it because the recipes are inside folders with name recipes-xxx?
> We are not using the default meta-qcom. We have made a few changes on
> top of it. 
> The structure in my project is as below
> [qc-gen]amehra@core9-swbs002:~/code/9x50_branches/01.15_br/meta-qcom$
> ls -lrt
> total 16
> drwxr-xr-x.  2 amehra domain_users 4096 May 12 15:39 classes
> drwxr-xr-x.  3 amehra domain_users 4096 May 12 15:39 files
> drwxr-xr-x. 76 amehra domain_users 4096 May 12 15:39 *recipes*
> drwxr-xr-x.  4 amehra domain_users 4096 May 20 18:52 conf
>
> [qc-gen]amehra@core9-swbs002:~/code/9x50_branches/01.15_br/meta-qcom$
> cat conf/layer.conf
> BBFILES += "${LAYERDIR}/recipes/*/*.bb ${LAYERDIR}/recipes/*/*.bbappend"
> BBPATH .= ":${LAYERDIR}"
> BBFILE_COLLECTIONS += "qcom"
> BBFILE_PRIORITY_qcom = "15"
> BBFILE_PATTERN_qcom := "^${LAYERDIR}/"
> LICENSE_PATH += "${LAYERDIR}/files/qcom-licenses"
>
> I believe this should be fine. Let me know

Yeah, this looks okay at the first sight.
Does your image/recipe build fine when you run it with bitbake? If it
emits some errors or other information, that would be helpful.

>
> On Mon, May 19, 2025 at 9:20 PM Gyorgy Sarvari <skandigraun@gmail.com>
> wrote:
>
>
>
>     On 5/19/25 16:36, Amrita Mehra via lists.yoctoproject.org
>     <http://lists.yoctoproject.org> wrote:
>     > Hi Team,
>     >
>     > I am working on a blackduck scan using detect10.sh script. While I
>     > execute this script, I see below error
>     >
>     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
>     'acdbloader
>     >
>     do_build\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     > <http://acdbloader_git.bb>' does not correspond to any known
>     layer ([])
>     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
>     'acdbloader
>     >
>     do_compile\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     > <http://acdbloader_git.bb>' does not correspond to any known
>     layer ([])
>     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
>     'acdbloader
>     >
>     do_configure\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     > <http://acdbloader_git.bb>' does not correspond to any known
>     layer ([])
>     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
>     'acdbloader
>     >
>     do_install\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     > <http://acdbloader_git.bb>' does not correspond to any known
>     layer ([])
>     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
>     'acdbloader
>     >
>     do_package\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     > <http://acdbloader_git.bb>' does not correspond to any known
>     layer ([])
>     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
>     'acdbloader
>     >
>     do_package_qa\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     > <http://acdbloader_git.bb>' does not correspond to any known
>     layer ([])
>     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
>     'acdbloader
>     >
>     do_package_write_ipk\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     > <http://acdbloader_git.bb>' does not correspond to any known
>     layer ([])
>     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
>     'acdbloader
>     >
>     do_packagedata\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     > <http://acdbloader_git.bb>' does not correspond to any known
>     layer ([])
>     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
>     'acdbloader
>     >
>     do_patch\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     > <http://acdbloader_git.bb>' does not correspond to any known
>     layer ([])
>     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
>     'acdbloader
>     >
>     do_populate_lic\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     > <http://acdbloader_git.bb>' does not correspond to any known
>     layer ([])
>     > 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe
>     'acdbloader
>     >
>     do_populate_sysroot\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
>     <http://acdbloader_git.bb>
>     > <http://acdbloader_git.bb>' does not correspond to any known
>     layer ([])
>     >
>     >  
>     >
>     > What is the cause of this error? How can we fix it?
>     >
>
>     I'm not familiar with blackduck scan, but have you configured the
>     BBFILES variable in a way to include this recipe?
>     If this meta-qcom layer is based on
>     https://git.yoctoproject.org/meta-qcom, then its default BBFILES
>     variable expects the recipes to be in "recipes-*" folder[1] - note the
>     hyphen in the pattern.
>
>     [1]: https://git.yoctoproject.org/meta-qcom/tree/conf/layer.conf#n5
>
>     >
>     >
>     > --
>     > Regards
>     > Amrita :)
>     >
>     > -=-=-=-=-=-=-=-=-=-=-=-
>     > Links: You receive all messages sent to this group.
>     > View/Reply Online (#65356):
>     https://lists.yoctoproject.org/g/yocto/message/65356
>     > Mute This Topic: https://lists.yoctoproject.org/mt/113193372/6084445
>     > Group Owner: yocto+owner@lists.yoctoproject.org
>     <mailto:yocto%2Bowner@lists.yoctoproject.org>
>     > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>     [skandigraun@gmail.com]
>     > -=-=-=-=-=-=-=-=-=-=-=-
>     >
>
>
>
> -- 
> Regards
> Amrita :)


