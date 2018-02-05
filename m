Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E16EE00E7D; Mon,  5 Feb 2018 10:29:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.45 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f45.google.com (mail-pl0-f45.google.com
	[209.85.160.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AE59E0085E
	for <yocto@yoctoproject.org>; Mon,  5 Feb 2018 10:29:50 -0800 (PST)
Received: by mail-pl0-f45.google.com with SMTP id v3so12322624plg.3
	for <yocto@yoctoproject.org>; Mon, 05 Feb 2018 10:29:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=J48Sa9KaFbVNNBPXLoeh3+/y/cI+xaItKzr9OqHRvoQ=;
	b=ff1Cq7No2a7uW+vQpRfrd0TiccvyjWsS9tWIblse7AzSuUBY73MPa3hlD98HdCP0+Y
	sl3zABVwh5PXyswp4pMljAxEa8BBtZkEbFsfaNw8q6ivuYH4nR5jMm62ZHj7GrAyzbz/
	LmncyaMILxW1ufJPQSszf2cZ4PhYPp9+WxIUbokG73Roe/w5q3EtmREBkP6S6rSOTe50
	zQkNqV8KcGkqce0SPidJI4KHZDUj5mT7PSN9c+30lzABZYeppZFJQVRx+z5TxI1HIo/3
	Yja3OdQL0MCgO3KDCpNdq+xYTxU3Nbv5YXLvK+jo3UdLoDPA1jonex/wqCH5KD86ZMnB
	bMEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=J48Sa9KaFbVNNBPXLoeh3+/y/cI+xaItKzr9OqHRvoQ=;
	b=XDaM/uslcF8s10hnp08OmQ2+sOCYY0qNCwTif3JuWyJM64KE3YucsrECfvP0XLMNMo
	v9ATKmGy6PEiPGZciXk9KYBpyHfdFrwdGrCkQuDW7uGX7ti6psJTaCu9nh0ScyX1TGUJ
	qZt0R1DX2CYkws/XfEgjHwPDmRW8eMhPfyfpIGa+0T1OFxU2COTBKXL9dtQ40Fi+ro0P
	jbLdWHyxeOgLys/qepVnr4pcxDmZkQWDYM0Bim2LULYGqSofAh8zod9I3SnTsWbSijNJ
	o+4LJcGXElNUxKpdqOkYneDC3IH52GiGwVdzLAeQvRc/J/4B/AJ2BAx4ioY0FvKZL8+k
	8x4w==
X-Gm-Message-State: AKwxytcWcQXNJzAr+Ew3aOohDRw4Oz0KQh3iLjqKzzpse0ht15oRQ9/1
	RXMcx+NWe/s88QTxTY35qujcnKGS
X-Google-Smtp-Source: AH8x227dvsvC1B0xPtbdc5XB4M8VX5N90i19c1gle2/xjEjjuIerYQmFOXDVBgtdyOUOh5Lzpj6bQA==
X-Received: by 2002:a17:902:7486:: with SMTP id
	h6-v6mr14538153pll.236.1517855390158; 
	Mon, 05 Feb 2018 10:29:50 -0800 (PST)
Received: from ?IPv6:2601:647:4c00:6cf9:8c68:858d:e4d9:273b?
	([2601:647:4c00:6cf9:8c68:858d:e4d9:273b])
	by smtp.gmail.com with ESMTPSA id
	f21sm13465332pgv.42.2018.02.05.10.29.49 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Feb 2018 10:29:49 -0800 (PST)
To: yocto@yoctoproject.org
References: <aa633a5b-a067-b6e8-4097-740c1b6dbab6@smart-home-technology.ch>
	<384be7fc-2992-0654-0bcb-54080d95c608@windriver.com>
	<80d24e33-0efa-4c2c-ce9d-a2dfd16eadbe@smart-home-technology.ch>
	<9456defc-e475-2072-555f-078e0932cead@windriver.com>
	<23cfe332-36a8-eabd-2db2-2c756266107f@smart-home-technology.ch>
	<2e1d0375-9b85-37c6-7c9c-119ac8ad513c@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <112b2aba-9b38-ba17-4556-e56997cf23a3@gmail.com>
Date: Mon, 5 Feb 2018 10:29:48 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:58.0)
	Gecko/20100101 Thunderbird/58.0
MIME-Version: 1.0
In-Reply-To: <2e1d0375-9b85-37c6-7c9c-119ac8ad513c@windriver.com>
Subject: Re: Running Docker
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
X-List-Received-Date: Mon, 05 Feb 2018 18:29:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2/5/18 10:05 AM, Bruce Ashfield wrote:
> On 02/02/2018 11:21 AM, Jakob Hasse wrote:
>> Hello,
>>
>> file says:
>> # file /usr/bin/docker
>> /usr/bin/docker: ELF 32-bit LSB executable, ARM, EABI5 version 1
>> (SYSV), dynamically linked, interpreter /lib/ld-linux.so.3, for


this tells me that this binary is compiled with soft-float ABI
and I suspect that your rootfs is using hard-float by default.
can you check /lib/ld-* on rootfs

>> GNU/Linux 3.2.0,
>> BuildID[sha1]=87db889a25d481762a8d2c7aaa1bd52af2458915, not stripped
>>
> 
> Sorry for the slow reply, I was away for a bit.
> 
> And does that description match your target (and the other executables)
> that do work ? If the kernel doesn't recognize the binary interpreter
> of an executable, the message you are seeing is what you get.
> 
> Cheers,
> 
> Bruce
> 
>> Regards,
>> Jakob
>>
>> On 02.02.2018 17:14, Bruce Ashfield wrote:
>>> On 2018-02-02 10:57 AM, Jakob Hasse wrote:
>>>> Hello Bruce,
>>>>
>>>> Thank you for the advice with the morty branch, this worked perfectly.
>>>>
>>>> Now, however, docker is installed on my Yocto-system but I can't run
>>>> it:
>>>>
>>>> ~# docker
>>>> -sh: /usr/bin/docker: No such file or directory
>>>
>>> I've seen this before. It normally means that the executable isn't
>>> in a format that your target recognizes. It could very well be the
>>> go support in the older branch isn't building the right thing.
>>>
>>> What does 'file' say about the executable ?
>>>
>>> Bruce
>>>
>>>>
>>>> Is "docker" the client to control and run containers (e.g. "docker
>>>> run hello-world")?
>>>> On my Ubuntu machine, this works, I installed docker and docker.io
>>>> via apt, then I could run "docker run hello-world".
>>>>
>>>> All the Best and many thanks in advance!
>>>> Jakob
>>>>
>>>> On 26.01.2018 14:05, Bruce Ashfield wrote:
>>>>> On 2018-01-26 6:52 AM, Jakob Hasse wrote:
>>>>>> Hello,
>>>>>>
>>>>>> we're trying to include meta-virtualization in to our project, in
>>>>>> particular, we want to use docker. However, as soon as I include
>>>>>> the layer in to our project, bitbake complains:
>>>>>>
>>>>>> bitbake -C compile core-image-base
>>>>>> NOTE: Started PRServer with DBfile:
>>>>>> /home/jakob/workspace/beerstation/cache/prserv.sqlite3, IP:
>>>>>> 127.0.0.1, PORT: 46136, PID: 5713
>>>>>> ERROR: Execution of event handler 'virt_bbappend_distrocheck' failed
>>>>>> Traceback (most recent call last):
>>>>>>    File
>>>>>> "/usr/local/dey-2.2/sources/meta-virtualization/classes/sanity-meta-virt.bbclass",
>>>>>> line 4, in virt_bbappend_distrocheck(e=<bb.event.SanityCheck
>>>>>> object at 0x7f945e05d3c8>):
>>>>>>       python virt_bbappend_distrocheck() {
>>>>>>      >    skip_check =
>>>>>> e.data.getVar('SKIP_META_VIRT_SANITY_CHECK') == "1"
>>>>>>           if 'virtualization' not in
>>>>>> e.data.getVar('DISTRO_FEATURES').split() and not skip_check:
>>>>>> TypeError: getVar() missing 1 required positional argument: 'expand'
>>>>>>
>>>>>> ERROR: Command execution failed: Traceback (most recent call last):
>>>>>>    File
>>>>>> "/usr/local/dey-2.2/sources/poky/bitbake/lib/bb/command.py", line
>>>>>> 101, in runAsyncCommand
>>>>>>      self.cooker.updateCache()
>>>>>>    File
>>>>>> "/usr/local/dey-2.2/sources/poky/bitbake/lib/bb/cooker.py", line
>>>>>> 1627, in updateCache
>>>>>>      bb.event.fire(bb.event.SanityCheck(False),
>>>>>> self.databuilder.mcdata[mc])
>>>>>>    File "/usr/local/dey-2.2/sources/poky/bitbake/lib/bb/event.py",
>>>>>> line 201, in fire
>>>>>>      fire_class_handlers(event, d)
>>>>>>    File "/usr/local/dey-2.2/sources/poky/bitbake/lib/bb/event.py",
>>>>>> line 124, in fire_class_handlers
>>>>>>      execute_handler(name, handler, event, d)
>>>>>>    File "/usr/local/dey-2.2/sources/poky/bitbake/lib/bb/event.py",
>>>>>> line 96, in execute_handler
>>>>>>      ret = handler(event)
>>>>>>    File
>>>>>> "/usr/local/dey-2.2/sources/meta-virtualization/classes/sanity-meta-virt.bbclass",
>>>>>> line 4, in virt_bbappend_distrocheck
>>>>>>      skip_check = e.data.getVar('SKIP_META_VIRT_SANITY_CHECK') == "1"
>>>>>> TypeError: getVar() missing 1 required positional argument: 'expand'
>>>>>>
>>>>>>
>>>>>> Summary: There were 2 ERROR messages shown, returning a non-zero
>>>>>> exit code.
>>>>>>
>>>>>>
>>>>>> Do we need to checkout a specific branch or so (though I can't
>>>>>> find one right now)?
>>>>>> Do we need to change some kernel configuration? I added all
>>>>>> virtualization drivers in the "drivers" section of the kernel
>>>>>> config already.
>>>>>>
>>>>>> We're using DIGI embedded Yocto 2.2 (poky).
>>>>>>
>>>>>
>>>>> You need to check out the matching branch to the release you've
>>>>> been given as an enablement, since some of the APIs, etc, have
>>>>> changed and the meta-virt sanity check that was added later than
>>>>> the 2.2 release isn't working.
>>>>>
>>>>> 2.2 was the 'morty' release, and meta-virt does have a branch for
>>>>> that:
>>>>>
>>>>> ----------
>>>>> % git whatchanged origin/morty
>>>>>
>>>>> commit eb6b5129561eda9ea1f47e85ab9ed9e5a6b8f64c
>>>>> Author: Fabio Berton <fabio.berton@ossystems.com.br>
>>>>> Date:   Tue Nov 28 09:15:59 2017 -0200
>>>>>
>>>>>     python-*: use https for pypi URLs
>>>>>
>>>>>     Several of the recipes here were using http URLs for source
>>>>> hosted on
>>>>>     pypi - pypi apparently no longer supports http so switch to https
>>>>>     instead.
>>>>>
>>>>>     Apply this commit [1] to morty branch.
>>>>>     [1]
>>>>> https://www.mail-archive.com/meta-virtualization@yoctoproject.org/msg02821.html
>>>>>
>>>>>
>>>>>     Signed-off-by: Fabio Berton <fabio.berton@ossystems.com.br>
>>>>>     Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
>>>>> ---------
>>>>>
>>>>> So check out the morty branch and you'll have better luck.
>>>>>
>>>>> Bruce
>>>>>
>>>>>
>>>>>> Thanks and all the best,
>>>>>> Jakob
>>>>>>
>>>>>
>>>>
>>>
>>
> 


