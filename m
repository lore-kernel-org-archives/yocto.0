Return-Path: <abeltran@linux.microsoft.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D26C433F5
	for <webhook@archiver.kernel.org>; Wed,  5 Jan 2022 21:59:58 +0000 (UTC)
Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
 by mx.groups.io with SMTP id smtpd.web09.205.1641419997146815077
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Jan 2022 13:59:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linux.microsoft.com header.s=default header.b=pvbnx+7z;
 spf=pass (domain: linux.microsoft.com, ip: 13.77.154.182,
 mailfrom: abeltran@linux.microsoft.com)
Received: from [192.168.1.103] (unknown [186.69.115.196])
	by linux.microsoft.com (Postfix) with ESMTPSA id 749B720B7179;
	Wed,  5 Jan 2022 13:59:55 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 749B720B7179
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1641419996;
	bh=oVGVpeV9PL/R7otIf2aMIj7fmMMwqLpuawd5t2ufI0Y=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=pvbnx+7zxkZDKW21aKT5ZGlRfcX5cgXHhRqPfcP/nQa4q/eTjqiN7NWgAOk8Ey/9E
	 W3cMOUj0VAxEQgdg6cDpvx6FODOKBms6A6V8SdzM+2ccGP2RkmJSxdf/YJV9XywkFJ
	 NxzOg7JWvSIL1rf3LUdbpghMgVvuRCNsfMZkYbFg=
Message-ID: <ee24bf2e-8fcc-e44c-aeed-950e0e826b8d@linux.microsoft.com>
Date: Wed, 5 Jan 2022 16:59:52 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [yocto] spdx: Extending SPDX SBOMs for SDKs
Content-Language: en-US
To: raj.khem@gmail.com
Cc: yocto@lists.yoctoproject.org, Saul.Wold@windriver.com,
 Joshua Watt <jpewhacker@gmail.com>
References: <16BE4FA6969E32DE.28785@lists.yoctoproject.org>
 <6a61f35f-6684-a5ce-a697-acd2f3743a6d@linux.microsoft.com>
 <CAJdd5GYxf3HgrgnExCY9HQb_tHR_uqOs-j+ZH859Ah+Ljw_NfA@mail.gmail.com>
From: Andres Beltran <abeltran@linux.microsoft.com>
In-Reply-To: 
 <CAJdd5GYxf3HgrgnExCY9HQb_tHR_uqOs-j+ZH859Ah+Ljw_NfA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Jan 2022 21:59:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55745

+ Khem Raj (clang recipes)

On 12/15/2021 5:45 PM, Joshua Watt wrote:
> On Wed, Dec 15, 2021 at 3:33 PM Andres Beltran
> <abeltran@linux.microsoft.com> wrote:
>> + Joshua, Saul
>>
>> On 12/6/2021 6:54 PM, Andres Beltran wrote:
>>
>> Hello,
>>
>>
>> I've been working on extending SPDX SBOMs for SDKs. In poky/meta/classes/create-spdx.bbclass I added:
>>
>>
>>
>> do_populate_sdk[recrdeptask] += "do_create_spdx do_create_runtime_spdx"
>>
>>
>>
>> I ran into a dependency loop when I try to build an SDK that contains nativesdk-clang (it works fine for other SDKs):
>>
>>
>>
>> ERROR:
>>
>> Dependency loop #1 found:
>>
>> Task mc:lnx-sdk:/__w/1/s/sources/poky/../meta-clang/recipes-devtools/clang/clang-crosssdk_git.bb:do_create_spdx (dependent Tasks ['glibc_2.31.bb:do_create_spdx', 'binutils-crosssdk_2.34.bb:do_create_spdx', 'clang_git.bb:do_create_spdx', 'quilt-native_0.66.bb:do_populate_sysroot', 'nativesdk-clang-glue.bb:do_create_spdx'])
>>
>>
>>
>> Task mc:lnx-sdk:virtual:nativesdk:/__w/1/s/sources/poky/../meta-clang/recipes-devtools/clang/clang_git.bb:do_create_spdx (dependent Tasks ['clang_git.bb:do_packagedata', 'cmake-native_3.16.5.bb:do_create_spdx', 'swig_3.0.12.bb:do_create_spdx', 'libedit_20191231-3.1.bb:do_create_spdx', 'binutils-crosssdk_2.34.bb:do_create_spdx', 'chrpath_0.16.bb:do_create_spdx', 'libffi_3.3.bb:do_create_spdx', 'clang-crosssdk_git.bb:do_create_spdx', 'zlib_1.2.11.bb:do_create_spdx', 'clang_git.bb:do_package', 'python3_3.8.2.bb:do_create_spdx', 'libxml2_2.9.10.bb:do_create_spdx', 'python3_3.8.2.bb:do_create_spdx', 'pkgconfig_git.bb:do_create_spdx', 'binutils_2.34.bb:do_create_spdx', 'quilt-native_0.66.bb:do_populate_sysroot', 'libedit_20191231-3.1.bb:do_create_spdx', 'libxml2_2.9.10.bb:do_create_spdx', 'ninja_1.10.0.bb:do_create_spdx'])
>>
>>
>>
>> Task mc:lnx-sdk:/__w/1/s/sources/poky/../meta-clang/recipes-devtools/clang/nativesdk-clang-glue.bb:do_create_spdx (dependent Tasks ['gcc-runtime_9.3.bb:do_create_spdx', 'glibc_2.31.bb:do_create_spdx', 'nativesdk-clang-glue.bb:do_package', 'gcc-crosssdk_9.3.bb:do_create_spdx', 'chrpath_0.16.bb:do_create_spdx', 'quilt-native_0.66.bb:do_populate_sysroot', 'nativesdk-clang-glue.bb:do_packagedata', 'clang_git.bb:do_create_spdx'])
> Looks like the loop is:
>    nativesdk-clang-glue.bb:do_create_spdx ->
> clang_git.bb:do_create_spdx -> clang-crosssdk_git.bb:do_create_spdx ->
> nativesdk-clang-glue.bb:do_create_spdx
>
> I don't know enough about the clang recipes to be able to help you
> much beyond that however
>
>>
>>
>> Any help on this would be appreciated.
>>
>>
>>
>> Thanks,
>>
>> Andres Beltran
>>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#55489): https://lists.yoctoproject.org/g/yocto/message/55489
>> Mute This Topic: https://lists.yoctoproject.org/mt/87554396/6294599
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [abeltran@linux.microsoft.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>

