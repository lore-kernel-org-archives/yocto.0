Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65C6DE00D40; Tue,  7 May 2019 13:57:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.193 listed in list.dnswl.org]
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28206E00B5F
	for <yocto@yoctoproject.org>; Tue,  7 May 2019 13:57:29 -0700 (PDT)
Received: by mail-pg1-f193.google.com with SMTP id d31so8906900pgl.7
	for <yocto@yoctoproject.org>; Tue, 07 May 2019 13:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=zTPRY2AcF3K+SAlw6mnJ/xYr7i+RTADAchrXJp+8Rgc=;
	b=KSc7kuKuMTiAPWxwmBhYAkdSi7Vp2+ILRYeRnWn6PrsrA5kBPaJOfvOS8yzIC+zfB9
	pa11ZkhonjZj3wlJ5HCQ0lJspZi3mUMtJ36CETO78tJVh5LjjqP9T+3HJBM3knNvCG+p
	1jXv13/+WgG5EG6OYIl6RelhxsUZrq6wKUkye/zgcDzOX/U7/vNLv78oxyhGD50gx6uE
	gfZE+S9qDpiEH/OX0mMmpSq1wIDv7uwRzyQB0VDdmDDi81YgSt/MY89T7rCF+G5xJbNx
	Hx8FN+F5Vo4KdTQd11XsZOUF6XnoGShGBUE2cr22hzYBJeTs2MomJD2MxQvMH+715aut
	taYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=zTPRY2AcF3K+SAlw6mnJ/xYr7i+RTADAchrXJp+8Rgc=;
	b=fcEyc9gDKY/rlHiFNYltMrFlv7LzwnUWUwhJLIgKSsGnT4TiMdx75K+kCHwqpJMzyV
	JbPYA1wpmwbk2nwttnZi8pzWdQJZfNeaPJkswHJdCaRSkMUmPOzIuolnLFFKP4FQbxNi
	K/NVGkJndxRc/dApGCr943MtT9O6zaBEdydEcVPlO6n5RIFc+nMc/J4+tPMWDD4R1HUj
	3P8QHy9acDc4oVWqmC6Gw9wHVs3OznYj9nv/VzX3U3QC3yGjnGTHTk5XwTbgzXkGgtw+
	jiBWndQ0J2QYV8VzzuAW3o+wmB2Y9h6kNeUTo8XIKm08kQ6XAHoOTuJ98ZFkU+ZEx65i
	RkmA==
X-Gm-Message-State: APjAAAXFxU9T1amNQsecNnzr2hgojNinWWyWTIdGowwxpfZ679UzMKOn
	Q0d30KGHn17qzndGb29YJ1qOfjj1
X-Google-Smtp-Source: APXvYqxB1tsBY2v24v/TKPnE+ijOLMTmVHqPf0YUY182KmNCh+n225IiUseM0RayTFUO9gyo9LvyrQ==
X-Received: by 2002:a63:5041:: with SMTP id q1mr42607941pgl.386.1557262648542; 
	Tue, 07 May 2019 13:57:28 -0700 (PDT)
Received: from [172.31.25.184] ([45.19.219.178])
	by smtp.gmail.com with ESMTPSA id
	u76sm5178141pgc.84.2019.05.07.13.57.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 07 May 2019 13:57:27 -0700 (PDT)
To: Teemu K <maillinglists18@gmail.com>
References: <CAAmVmrrHV-j3dHe8XAdPdKgOHqE28p4__B=U0k9NiTZ0Fz=dWA@mail.gmail.com>
	<e91ee356-42ba-1e7c-8490-49e0ab076da0@mvista.com>
	<CAAmVmroW=-u6NMC5DnEo8UY50bNooqfd7aR_UTk=p-a_OBF6Zw@mail.gmail.com>
	<CAAmVmroRz2Edu76-tBued3_JjJjiweJHCrDL9RsMB+6sb=+m8A@mail.gmail.com>
	<CAAmVmrq_Q_Ykcma6AF8FgJiT1n9mWEjV+DUKfMwpKH_68mOuwg@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <04e0032b-c1e8-2efb-a9d8-b546cbee9748@gmail.com>
Date: Tue, 7 May 2019 13:57:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAAmVmrq_Q_Ykcma6AF8FgJiT1n9mWEjV+DUKfMwpKH_68mOuwg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: SDK build fails at latest thud
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
X-List-Received-Date: Tue, 07 May 2019 20:57:33 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Teemu,



On 5/1/19 11:50 PM, Teemu K wrote:
> On Thu, Mar 28, 2019 at 6:36 AM Teemu K <maillinglists18@gmail.com> wrote:
>> On Mon, Mar 18, 2019 at 7:21 AM Teemu K <maillinglists18@gmail.com> wrote:
>>> On Fri, Mar 15, 2019 at 2:17 AM akuster <akuster@mvista.com> wrote:
>>>>
>>>>
>>>> On 3/13/19 9:50 PM, Teemu K wrote:
>>>>
>>>> Hi,
>>>>
>>>> I noticed that when trying to build sdk on thud it fails on latest
>>>> version. Actually it broke somewhere between commits:
>>>>
>>>> 1cab405d88149fd63322a867c6adb4a80ba68db3 (old)
>>>> 7c76c5d78b850a9c1adccf8b11ed0164da608f1c (new)
>>>>
>>>> I'm using it with meta-freescale - layer to build image to iMX8.
>>>>
>>>> I'm using command 'populate_sdk' and it works fine on older version,
>>>> but newer version it fails with error:
>>>>
>>>> Can you provide the steps to reproduce?
>>> bitbake my-image-name -c populate_sdk
>>>
>>>> ==
>>>> The following packages have unmet dependencies:
>>>>  target-sdk-provides-dummy : Conflicts: coreutils
>>>> E: Unable to correct problems, you have held broken packages.
>>>>
>>>>
>>>> There is a change sitting in stable/thud-next:
>>>>
>>>> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=stable/thud-next&id=af5cf78b275ab5226354337d25d8dc1c41a08904
>>>>
>>>> which might be related. Can you try that branch?
>>>>
>>>> git://git.yoctoproject.org/poky-contrib  stable/thud-next
>>> That did not solve the problem. I have coreutils in my image and it
>>> kept conflicting. When I removed coreutils from my image it solved
>>> that problem, but there were some problems with perl etc. From the
>>> working version all those are missing from
>>> target-sdk-provices-dummy.bb and my original image works just fine.
>> I see that thud-branch has gotten even more 'fixes' for this sdk thing
>> in last week, but the actual problem still stays. If image-recipe uses
>> coreutils - recipe sdk build fails there because
>> target-sdk-provides-dummy.bb has it listed. And if I remove that then
>> it fails on next package.In my case it's bash-dev.
>>
>> Does those changes need something different how sdk is build or how to
>> build sdk with those changes? I'm not sure why they are listed there
>> in the first place if it overrides the actual package and does not
>> provide 'dummy' if/when needed.
>>
>> To create sdk I use this command: bitbake <image-recipe> -c populate_sdk
>>
>> -Teemu
> I updated to latest thud and this is still an issue. Isn't anyone else
> building sdk or what I'm doing wrong?
>
> I use command: bitbake <image-recipe> -c populate_sdk to generate sdk.
>
> With unedited poky - meta layer it stops at error:
>
> --
> The following packages have unmet dependencies:
>  target-sdk-provides-dummy : Conflicts: coreutils
> --
>
> If I remove that from poky/meta/recipes-core/meta/target-sdk-provides-dummy.bb
>
> The next error is:
> --
> The following packages have unmet dependencies:
>  apt-dev : Depends: apt (= 1.2.24-r0) but it is not going to be installed
>            Recommends: bash-dev
> --
>
> If I remove that from file mentioned before the next error is about
> perl-dev. If I remove that it ends up on this error:
>
> --
>
> The following packages have unmet dependencies:
>  target-sdk-provides-dummy-dev : Depends: target-sdk-provides-dummy (=
> 1.0-r0) but it is not going to be installed
> --
>
> For testing purposes I removed everything from that file except bash
> and after that the sdk generated just fine.
>
> I don't know enough about yocto/poky so what is the use of this
> target-sdk-provides-dummy thingie and why things are added there that
> keep breaking the sdk generation or do I need to generate sdk now
> someway differently? Atm. I'm either stuck on that older thud -
> version or I have to manually edit this
> target-sdk-provides-dummy-dev.bb - file.

Can you log a bug. We are not seeing this in the AutoBuilders.

https://bugzilla.yoctoproject.org/
>
> -Teemu


