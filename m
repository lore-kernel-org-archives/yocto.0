Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1448EC2D0CD
	for <webhook@archiver.kernel.org>; Mon, 19 May 2025 15:50:35 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web11.54377.1747669827156170149
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 May 2025 08:50:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HyMuLrhQ;
 spf=pass (domain: gmail.com, ip: 209.85.218.51, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ad5394be625so548165066b.2
        for <yocto@lists.yoctoproject.org>; Mon, 19 May 2025 08:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747669825; x=1748274625; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ScIKHwjOzo9I/xeMZffs1y7/kQPz2oZtKcGeChxSuzE=;
        b=HyMuLrhQByOvzJXRcnRpA7/FNGKX6dm0OZkkgcXxx5OaQU5RmUnMgkGxGIkJ+n4hW7
         rLg5os0sAs93CNuzpoE1QIEWqaE32CJkYOYH9iBr4kYezF4DWSGAIvWLm62sNy3Vz3Gx
         +QNDRvegfEFRiYbmqmZE2VQVIC1bths7lx+JdG4a9NgJ8czT02BYif+NAqamcb/CEiLd
         SgcYQE6Nc5ftyFds8Qrn/Pwhm7uoAv7J1ns7Vfd5jSBo+/Z87YfMNW5ewXBhVbbBg5Mw
         D4EcFNaefChuQueQIiDrtB2IZwP9Hbm1k4fDVHcL/Zz6He7pee6xrcCOEky6RARadRhW
         YZYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747669825; x=1748274625;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ScIKHwjOzo9I/xeMZffs1y7/kQPz2oZtKcGeChxSuzE=;
        b=GAww4k3iy5d0/tbWoGLJt6VaGSvM4z7QZhLr4sWZ/VKe3fJviM4zvBSfujzEKBcIBU
         r1gMqe5mAstfNgA7LUAGpIc9QAn7TzDR0ZRbdPNzQhxGFrwlK3/LblMggGeHmjDnrzdO
         JDXsd+agU4+576StDSFL6wSs1DcK7zErYHE6SmBNToUVY5KROzr0cksgspDHG+igOFuR
         YJA6mS0b27JauEGp+fogTdtdL3Eq3EveM1PwePFFm+anZvFcDXQTB7bCoGhrmdZmQxbX
         M+Vz1SiiJn1UrFiQBxm1LrVwgQ0zQdBez0lclEte56NaoLtfmnATIjrwbGfX/xhxD4VE
         XOvQ==
X-Gm-Message-State: AOJu0YybZIWHEfeKKyocyHJrVBCH2bCUJZOzrzMNbux63bmIJ5jltI3C
	u7611VPpwL5QmVfalf+JXoTP6/dQqecIKGuXIIqM0DBBC4A9JP5tJb42pr3ybQ==
X-Gm-Gg: ASbGncu/9f6vFD3DreCQ6E/h5K7bo0sE3Xrfe/3dMsWq2WOMJSKpEK6m3tKOAYY2UjS
	4eSEaJAJ5chG99eHXWff4tUA9aaUBob3pOU+zYLaVBMg1VPi50B/ErnHL3l2sT8vAYAKnyu4M//
	kxleAo5sYcRK37KoBJekhSaM/0InL/KssbBVLhC2Nag67nDY/woOuF30q8ivGZ9TdJOSYZzXDUL
	1YWl082MgqWyipq2F2fhgBzIuz4NUx5FRYH5L+7XOqUxZwj6rb0azwNonE6Y9sOXPzRfd5R6yIW
	oH2WX3YX0auZBnp18xo1wGpRvAHldVksrKgt71tH43MXPNUaLHX10ggeJRQ=
X-Google-Smtp-Source: AGHT+IG4gIlZLsqtzRCHWl0au0Hc+Fu88kHPtTbJlUa0ihV8FooUk0tmf8QhU3cH8lc8hbZjsYpwgQ==
X-Received: by 2002:a17:907:7f8e:b0:ad2:2a2f:7064 with SMTP id a640c23a62f3a-ad536bdfe79mr1120842566b.25.1747669825134;
        Mon, 19 May 2025 08:50:25 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d4909e1sm599776866b.125.2025.05.19.08.50.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 May 2025 08:50:24 -0700 (PDT)
Message-ID: <fac08383-5ffa-4299-9354-0941635411e0@gmail.com>
Date: Mon, 19 May 2025 17:50:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Graph Node Recipe does not correspond to any known layer
 ([]) Error [Under Investigation] [ ref:_00D307Mm._500UhRY1zs:ref ]
To: yocto@lists.yoctoproject.org, mehraamrita6@gmail.com
References: <CAEqf1PJHFpL01XNBCsEqjGNL+W08hhTm7+v8maX7_ftXNOTiPw@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CAEqf1PJHFpL01XNBCsEqjGNL+W08hhTm7+v8maX7_ftXNOTiPw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 May 2025 15:50:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65357



On 5/19/25 16:36, Amrita Mehra via lists.yoctoproject.org wrote:
> Hi Team,
>
> I am working on a blackduck scan using detect10.sh script. While I
> execute this script, I see below error
>
> 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe 'acdbloader
> do_build\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
> <http://acdbloader_git.bb>' does not correspond to any known layer ([])
> 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe 'acdbloader
> do_compile\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
> <http://acdbloader_git.bb>' does not correspond to any known layer ([])
> 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe 'acdbloader
> do_configure\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
> <http://acdbloader_git.bb>' does not correspond to any known layer ([])
> 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe 'acdbloader
> do_install\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
> <http://acdbloader_git.bb>' does not correspond to any known layer ([])
> 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe 'acdbloader
> do_package\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
> <http://acdbloader_git.bb>' does not correspond to any known layer ([])
> 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe 'acdbloader
> do_package_qa\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
> <http://acdbloader_git.bb>' does not correspond to any known layer ([])
> 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe 'acdbloader
> do_package_write_ipk\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
> <http://acdbloader_git.bb>' does not correspond to any known layer ([])
> 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe 'acdbloader
> do_packagedata\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
> <http://acdbloader_git.bb>' does not correspond to any known layer ([])
> 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe 'acdbloader
> do_patch\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
> <http://acdbloader_git.bb>' does not correspond to any known layer ([])
> 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe 'acdbloader
> do_populate_lic\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
> <http://acdbloader_git.bb>' does not correspond to any known layer ([])
> 2025-05-16 21:26:25 CST WARN  [main] --- Graph Node recipe 'acdbloader
> do_populate_sysroot\n:git-8bbb02aec139ad24856fd5df7a82ff9fa6376e10-r7\n/home/amehra/code/01.14.25.98_branc/mdm9x50/apps_proc/oe-core/meta-qcom/recipes/acdbloader/acdbloader_git.bb
> <http://acdbloader_git.bb>' does not correspond to any known layer ([])
>
>  
>
> What is the cause of this error? How can we fix it?
>

I'm not familiar with blackduck scan, but have you configured the
BBFILES variable in a way to include this recipe?
If this meta-qcom layer is based on
https://git.yoctoproject.org/meta-qcom, then its default BBFILES
variable expects the recipes to be in "recipes-*" folder[1] - note the
hyphen in the pattern.

[1]: https://git.yoctoproject.org/meta-qcom/tree/conf/layer.conf#n5

>
>
> -- 
> Regards
> Amrita :)
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65356): https://lists.yoctoproject.org/g/yocto/message/65356
> Mute This Topic: https://lists.yoctoproject.org/mt/113193372/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


