Return-Path: <mohammad.rasim96@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93226E00CD5; Thu, 26 Jul 2018 03:09:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mohammad.rasim96[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45012E00C82
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 03:09:53 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id g6-v6so1131488wrp.0
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 03:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=5TWonH6+ZzmIIHa+ftAaYZblGWfXFN6AbXYEjdhwUOU=;
	b=GK1yeKJyhZS2JJubhJRNqq3thuicgB2dhlNxU14VhQmY8u1eO6PM4LWic2VjkTxocD
	pac5/tj5HM4VYXrrI9W4MJXrYJefkHatfNv1khLzO2xN9+ljDc++LVsFanDrWOS8Hv/M
	4aismRb/i9pr8qL1ixK1pTt5ibq3SasKdmfAvMDiV896p1paT0F30/gml1pVM7ycfVWs
	FMpXD/KmKOuMFwxPs1Hd5wFWzNKm9fKHQypUCWOagNNxee31lOzvHjuYHUofhxWwKJNY
	XACTvQrphUubM+Emue1P0I2XhXo9VBGlxONd6qUGDvp+AWhzS1Ll42uoM34KF18NsaCS
	uc5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=5TWonH6+ZzmIIHa+ftAaYZblGWfXFN6AbXYEjdhwUOU=;
	b=GAIqny3tRVMk3y+5BT9UyTxAiNkLpBOX+Tb6/6kPTH/yrtzSLga5mR7SWZybDZxyI9
	JUP5Jl7bnLiDeoAkoAhKq/LIyyz75x+LdmUG37hO+oTGGc55vHLpA3vy1C8g/xMzK63S
	LUcNH1JH4b0tlHRwD9mjOMaZ8ZUxCve3exh/JmOXo4xa97wND0FOSy2c/ez0gUxJzmBa
	KuPHJPSDJi6AnLQDivHqxYNFy4sLbze5+kyfy46m8qhNwFBFf6iDBS0jrVQf2VCm/ExW
	YCEIZLV9AN7dasnCSIGvSXJ4x1V38kTErxn0LAwxi5J77Q2ak2Ukc26GXPteNK1SnbLH
	KXDQ==
X-Gm-Message-State: AOUpUlF1YtCiEqOFaEGEc9AwbZEbwAIwIQZ/UPanr6VveTNnfC8+c8nf
	NCdPUMGZN0i2pk/9DETvyUG9+xwvfL4Jng==
X-Google-Smtp-Source: AAOMgpfNamgggjZk2zBmuKQPh2fMPJd6iuKk2gcc8bzaPhSBna/PkRtcS0Vrt2oFMLGHl8Q1+SDnhA==
X-Received: by 2002:adf:9996:: with SMTP id
	y22-v6mr1114921wrb.69.1532599792047; 
	Thu, 26 Jul 2018 03:09:52 -0700 (PDT)
Received: from [192.168.88.227] ([37.237.211.59])
	by smtp.gmail.com with ESMTPSA id
	l19-v6sm948849wmc.3.2018.07.26.03.09.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 26 Jul 2018 03:09:51 -0700 (PDT)
To: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Alexander Kanavin <alex.kanavin@gmail.com>
References: <1aa737c1-9930-4a32-2060-6c6103142d88@gmail.com>
	<14049c37-db6d-c5b3-b60c-4cdfb00a6f44@gmail.com>
	<4930421.VRI8zmqDti@localhost.localdomain>
From: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
Message-ID: <a2a07618-2378-4563-109b-a6654ab29220@gmail.com>
Date: Thu, 26 Jul 2018 13:09:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <4930421.VRI8zmqDti@localhost.localdomain>
Cc: yocto@yoctoproject.org
Subject: Re: can bitbake build offline ?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 26 Jul 2018 10:09:55 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US-large

Well, actually I used the find command in that wiki page to find the 
recipe that uses tag name to chose github revision and it found only one 
recipe

 >meta-openembedded/meta-initramfs/recipes-devtools/mtd/ubi-utils-klibc_1.5.1.bb

I masked this recipe in the local.conf file and bitbake failed at 
parsing other recipes, looking at those recipes I saw that they don't 
use tag names but they use

 >SRCREV = "${AUTOREV}"

which is logical since bitbake has to issue ls-remote to know what is 
the latest revision on the remote git repo (maybe the wiki page needs 
update to point this ?)

Now I can't remove this AUTOREV in these recipes since I need bitbake to 
fetch the latest updates ( I push updates regularly on that repo and I 
don't want to update the recipe file each time to add the latest revision)

So, here comes the hard part, Is it possible to tell bitbake to issue 
ls-remote if there is network and to use the latest fetched revision in 
the sources directory if the network is disabled ? that way I can use 
${AUTOREV} in my recipes and bitbake will build from the local repo in 
the sources directory unless there is network to update the local repo, 
probably there is no such thing :) .

Thanks


On 07/26/2018 09:26 AM, Paul Eggleton wrote:
> Hi Mohammad,
>
> If it's failing during parsing that means you still have a recipe that does
> not have a proper SRCREV set, which you need to fix as described by the page
> that Alex linked. The error will be reporting which recipe that is.
>
> Cheers,
> Paul
>
> On Thursday, 26 July 2018 5:44:26 AM CEST MOHAMMAD RASIM wrote:
>> I tried that and bitbake still fails when disabling the network
>>
>>
>> On 07/21/2018 11:42 AM, Alexander Kanavin wrote:
>>> This page has a tip on what might be causing 'git ls-remote':
>>>
>>> https://wiki.yoctoproject.org/wiki/
> How_do_I#Q:_How_do_I_create_my_own_source_download_mirror_.3F
>>> Alex
>>>
>>> 2018-07-21 10:32 GMT+02:00 MOHAMMAD RASIM <mohammad.rasim96@gmail.com>:
>>>> Hi, is there a way I can run a bitbake build offline? I have all the
>>>> required sources of the target in the sources directory, and I have built
>>>> the target multiple times with internet connection, but when I build
> offline
>>>> it fails because it needs internet access during parsing recipes.
>>>> Can I tell bitbake to skip running `git ls-remote` during parsing recipes
> so
>>>> I can build offline?
>>>>
>>>> Thanks
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>


