Return-Path: <mohammad.rasim96@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20CCAE00CED; Fri, 27 Jul 2018 02:38:36 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF71EE00CE0
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 02:38:34 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id h9-v6so4419125wro.3
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 02:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=IpEygioOR/T/c9k1aRZbRI09MkoV8+IYy2nMfSEsGe0=;
	b=SUE++a1AWI46ycR8Fh0LaIcLc06ZEoullYqiVR/XeNoTuyxzO9TXCCoJCVLwIrH9Cj
	3PjePs3wd/NEleIpC7uQ1/VN298mXpN2VALDroJVYHwuouAiNUlpWxes9bX83Q0cGqhH
	1+3TeGjwKh9dN9nfHH13LLkGCOACLdKRItv0Obh2AoUqMD2Fvx8QhOuaFAK27GZdqD/j
	TuTkPdQKdsGkU5RNuBoQ3rwUklqsVP54Q+mwxuCX5oKcOOETgkGBFVeo3smjqPmxG9dN
	d6TsysIPGK7sOkAIdFG/3HaNI0rAAM72i0GX1XLxsS0i5TNxqFZ8W96CeE/6p5mV8nzT
	YwFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=IpEygioOR/T/c9k1aRZbRI09MkoV8+IYy2nMfSEsGe0=;
	b=gybedTK5m62lPR+Kr2GXcLDb3s7P4u23xGBy544+jDKOLnS311gARf37bUTuYH+GL0
	lc/i0X+ViCZUEQDgRx2TiGPhLdQr6tSD4XfKVcPHf/7mEbb3gmKeJzmbroxk9MgiAPhF
	IsZhJ6ndk9wMAFDzrjUuwLTiWX+f6FU1hQC34oCa33I2B03OTQ3mQ0DrM6lF4AqUnu8x
	VK6TTdgHXuaip4evaNtPuJf6AfPf3foAPmhxfg/VubtkelhqXflb/bq213aWpeSGuGiz
	r0AZ6smieubA7XhlmxSRV3VaNvZc678xI0+m7e6RkeNb4iK3MNSLKYkeovuAoQn9poeN
	qbzA==
X-Gm-Message-State: AOUpUlH1PDOhu4ATZF/rE0/fws3uwhUmucd5y+I+zJZzFZKVHK0hbhgd
	acobfg1WmgTBFRe2NmrHZXU8kX5AvMo=
X-Google-Smtp-Source: AAOMgpe10m51taKeryALceOfXIwHuVpYL/crLtjxbgEpM1/WoPmWTbsAD3P9r45RRGWC/n4iQHGgeg==
X-Received: by 2002:a5d:61ca:: with SMTP id
	q10-v6mr4114585wrv.33.1532684313586; 
	Fri, 27 Jul 2018 02:38:33 -0700 (PDT)
Received: from [192.168.88.227] ([37.237.210.11])
	by smtp.gmail.com with ESMTPSA id
	c10-v6sm2775494wrs.6.2018.07.27.02.38.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 27 Jul 2018 02:38:32 -0700 (PDT)
To: "Burton, Ross" <ross.burton@intel.com>
References: <051ffcba-0255-4d93-e8f8-01993e967ef2@gmail.com>
	<2d030ea4-b2df-58fe-9947-e1c4e40ea17b@gmail.com>
	<CAJ86T=WtLMKA3M5-fWR1pm-x8PRRGwFihuwpuhbzEtQaGwFRTA@mail.gmail.com>
	<CAJTo0La3pkW79pJGaADvcTaC1M9viTYmWSH5VuiFCRzur2C5Xw@mail.gmail.com>
	<80ed21d8-8667-cf7b-82d9-8742b71c3274@gmail.com>
	<CAJTo0Lbb634SaeP-MAohKtTyLLaO-4Fj4CvFEgWZyBa3WjZ1+Q@mail.gmail.com>
From: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
Message-ID: <7034c53e-7246-9c2a-001e-afac84ba36b7@gmail.com>
Date: Fri, 27 Jul 2018 12:38:25 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0Lbb634SaeP-MAohKtTyLLaO-4Fj4CvFEgWZyBa3WjZ1+Q@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: bitbake is corrupting my files during unpacking
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
X-List-Received-Date: Fri, 27 Jul 2018 09:38:36 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US-large

Can you send the patch yourself since you already know how to do it ?


On 07/27/2018 12:34 PM, Burton, Ross wrote:
> We don't take patches via pull requests (that repo is a mirror for
> convenience and should have PRs disabled), but patches on the
> openembedded-core mailing list.
>
> https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines has
> details as to the required patch formatting.  Summary:
>
> Commit message should be of the form 'recipe: summary'.  The patch
> you're adding also needs a summary explaining what it does, an
> Upstream-Status value (Pending I guess, as upstream is dead we can't
> submit it) and your Signed-off-by.
>
> Ross
>
> On 27 July 2018 at 10:27, MOHAMMAD RASIM <mohammad.rasim96@gmail.com> wrote:
>> Yes I made a pull request to the master branch
>> https://github.com/openembedded/openembedded-core/pull/34
>>
>> note that this issue can be replicated by unzipping any linux-kernel (I
>> think), I tested that it exist in the zip file of torvalds tree
>> https://github.com/torvalds/linux/archive/master.zip
>>
>> so it's easy to replicate and test
>>
>> Also, to anyone how face the same issue and find this message, I solved the
>> issue without patching unzip by using tar.gz file instead of unzip file
>> (thanks to github for providing that) so instead of
>> https://github.com/torvalds/linux/archive/master.zip use
>> https://github.com/torvalds/linux/archive/master.tar.gz
>>
>>
>> Thanks
>>
>>
>>
>> On 07/23/2018 09:51 PM, Burton, Ross wrote:
>>> Yes, please do.  Mohammad, as you can replicate this on demand, would
>>> you be able to fix the unzip recipe with the patch in that bug and
>>> send a patch?
>>>
>>> Ross
>>>
>>> On 23 July 2018 at 19:42, Andre McCurdy <armccurdy@gmail.com> wrote:
>>>> On Sat, Jul 21, 2018 at 12:55 AM, MOHAMMAD RASIM
>>>> <mohammad.rasim96@gmail.com> wrote:
>>>>> well apparently this is caused by the unzip binary that is compiled by
>>>>> the
>>>>> openembedded unzip recipe.
>>>>> If I unzip the same zip file with the unzip binary that is shipped with
>>>>> my
>>>>> system(manjaro) then the files are not corrupted but when I use the
>>>>> unzip
>>>>> binary compiled by the openembedded recipe I get error and file
>>>>> corruptions.
>>>>> These are some of the errors I get when unzipping with the openembedded
>>>>> unzip:
>>>>> ...
>>>>> symlink error: File name too long
>>>>>
>>>>> This error happens to multiple files where the file is symlinked to the
>>>>> content of the file and not to a path !
>>>>> Where should I report this bug ? openembedded ? unzip upstream ?
>>>> If you google the "symlink error" you should find multiple hits, which
>>>> all indicate a known bug in upstream unzip 6.0.
>>>>
>>>> So, it should be reported upstream. However, given that the last unzip
>>>> release is now over 9 years old and there doesn't appear to be a
>>>> public upstream development branch, the chances of getting a timely
>>>> response don't look too good.
>>>>
>>>> We should probably add the fix to the unzip recipe in oe-core:
>>>>
>>>>     https://bugzilla.redhat.com/show_bug.cgi?id=972427
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>


