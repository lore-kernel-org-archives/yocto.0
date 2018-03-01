Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5242DE00DFD; Wed, 28 Feb 2018 18:16:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.44 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f44.google.com (mail-pl0-f44.google.com
	[209.85.160.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06077E00DC3
	for <yocto@yoctoproject.org>; Wed, 28 Feb 2018 18:16:13 -0800 (PST)
Received: by mail-pl0-f44.google.com with SMTP id d4-v6so2759791pll.5
	for <yocto@yoctoproject.org>; Wed, 28 Feb 2018 18:16:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=FGTI3o2ck4SKlL929gEn0/kUPpr2CS1sG1VgXcOXibo=;
	b=WX46WBB1cpI1KqancwupPW6KEgd3o17eTTvsDbH9yW+HIGGrCDelsAhNqH98AIxahY
	9mSPhV5ruIl4BN3NvsVXzYw412KfIq6ZdJo6hXTkAiamzs6edVZj3MRCZE3oy78aaFEF
	85uSA95/FWfciO/HRtHxWPZ0DRK4m7OlrHlivFzGr08bHKKlqyChDAIoH7D6wNe02Ynu
	bii5v/uR6S+Nh0yogql6HGOu8OZ8Bl3SYUbEjyUgjnZdWBC3pJX73nTHxCIWxxZvN5Ba
	jzkUMym32weDHTj6YdbaMJQCG2iSWaJpwmsCFqb9kw8ea5K3O433TROTltoAAbbPKw9K
	KSEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=FGTI3o2ck4SKlL929gEn0/kUPpr2CS1sG1VgXcOXibo=;
	b=bunAeZBS2ypnoiEGe731QiiO+4kdH3sD63i91gvhHDjymy7TTtpTvrTSkuMkft5zNX
	Ani7cGn4fyiQBpptldHKrqPR4ZheIH81/8HcPmC1xZqBGN/FrU1ToxoMNh2FBstnRO2s
	9yLyPI5qwT5+xDy7dRuturM8Lxr7B1Jl32OaOE7JcitTfe9cZubBHxHgSSL7s2LBIFf0
	NtEtyGkfVl4oYNtci4OgN8JUl98cSpxOvnlj9p2HS8UtJqECEsL43dsshZUuSto0zwY7
	J4vR11V8XJoN0wErfUgw1rfNhGjlifmunf5UJgzyppYTtB8dwm+aADT8DBLsKCvEP8gM
	vcHA==
X-Gm-Message-State: APf1xPAoE2+TPGdaBhTB5VLLZGjuM6K4tqiGw3Jy9A1MO0rAzeKb5egz
	nd1nk9ECOV6lfKOuK0rdm5MDnyik
X-Google-Smtp-Source: AG47ELt1S0GlbH851Jl9jR5S7/WtsGgTiWIoKhLXEWCbjZqZQu7c0dEuR2Z7XmXWexL111D24ZQdfA==
X-Received: by 2002:a17:902:b28a:: with SMTP id
	u10-v6mr256921plr.292.1519870572569; 
	Wed, 28 Feb 2018 18:16:12 -0800 (PST)
Received: from [10.238.241.18] ([73.93.153.50])
	by smtp.gmail.com with ESMTPSA id
	h80sm5671286pfj.181.2018.02.28.18.16.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 28 Feb 2018 18:16:11 -0800 (PST)
To: Jakob Hasse <jakob.hasse@smart-home-technology.ch>,
	Bruce Ashfield <bruce.ashfield@windriver.com>, yocto@yoctoproject.org
References: <aa633a5b-a067-b6e8-4097-740c1b6dbab6@smart-home-technology.ch>
	<384be7fc-2992-0654-0bcb-54080d95c608@windriver.com>
	<80d24e33-0efa-4c2c-ce9d-a2dfd16eadbe@smart-home-technology.ch>
	<9456defc-e475-2072-555f-078e0932cead@windriver.com>
	<23cfe332-36a8-eabd-2db2-2c756266107f@smart-home-technology.ch>
	<2e1d0375-9b85-37c6-7c9c-119ac8ad513c@windriver.com>
	<d1acc1a7-a602-da62-03d4-16b35a3ea04e@smart-home-technology.ch>
	<560f3b7c-8d65-be23-7456-0847253e889e@windriver.com>
	<deb8c959-1c58-52a3-3c0e-efa48a7a7fcd@smart-home-technology.ch>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <40f44aed-0c71-22a1-1ebb-17b44db10949@gmail.com>
Date: Wed, 28 Feb 2018 18:16:10 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:58.0)
	Gecko/20100101 Thunderbird/58.0
MIME-Version: 1.0
In-Reply-To: <deb8c959-1c58-52a3-3c0e-efa48a7a7fcd@smart-home-technology.ch>
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
X-List-Received-Date: Thu, 01 Mar 2018 02:16:15 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2/28/18 2:05 AM, Jakob Hasse wrote:
> Hello Bruce,
> 
> I kind of fixed the problem by creating a link with the name of the
> interpreter which the docker executable expects, pointing to the normal
> /lib/ld-linux-armhf.so.3 interpreter. After that, docker would run.
> 

you might be better served if you can find the underlying ldso name and
ABI being used. link might work on loading it but there could be further
runtime issues.

> All the Best,
> Jakob
> 
> On 06.02.2018 02:15, Bruce Ashfield wrote:
>> On 2018-02-05 4:58 PM, Jakob Hasse wrote:
>>> Hello Bruce,
>>>
>>> Thanks for the reply!
>>> No, the interpreter seems to be different, other executables are e.g.:
>>>
>>> # file /usr/bin/python2.7
>>> /usr/bin/python2.7: ELF 32-bit LSB executable, ARM, EABI5 version 1
>>> (SYSV), dynamically linked, interpreter /lib/ld-linux-armhf.so.3, for
>>> GNU/Linux 3.2.0,
>>> BuildID[sha1]=b7d18ea9c9088e4b238dc8aeaaf47d6d4941079c, stripped
>>>
>>> # file /usr/bin/udevadm
>>> /usr/bin/udevadm: ELF 32-bit LSB executable, ARM, EABI5 version 1
>>> (SYSV), dynamically linked, interpreter /lib/ld-linux-armhf.so.3, for
>>> GNU/Linux 3.2.0,
>>> BuildID[sha1]=cf639576658cfa150a456672666c2560d58c5f1b, stripped
>>>
>>> custom app:
>>> # file /usr/bin/goms
>>> /usr/bin/goms: ELF 32-bit LSB executable, ARM, EABI5 version 1
>>> (SYSV), dynamically linked, interpreter /lib/ld-linux-armhf.so.3, for
>>> GNU/Linux 3.2.0,
>>> BuildID[sha1]=2d6df18a0b70632a94caee30d4e21c35da235d34, stripped
>>>
>>
>> So this is what Khem was saying, docker is built with softfloat
>> while the rest of the system is hard float.
>>
>> Given that this is an older branch, the go build infrastructure
>> is different, but you'll need to look at the arch that is being
>> exported in the recipe and make sure that it is arm hard float, not
>> soft.
>>
>> Bruce
>>
>>> All the Best,
>>> Jakob
>>>
>>> On 05.02.2018 19:05, Bruce Ashfield wrote:
>>>> On 02/02/2018 11:21 AM, Jakob Hasse wrote:
>>>>> Hello,
>>>>>
>>>>> file says:
>>>>> # file /usr/bin/docker
>>>>> /usr/bin/docker: ELF 32-bit LSB executable, ARM, EABI5 version 1
>>>>> (SYSV), dynamically linked, interpreter /lib/ld-linux.so.3, for
>>>>> GNU/Linux 3.2.0,
>>>>> BuildID[sha1]=87db889a25d481762a8d2c7aaa1bd52af2458915, not stripped
>>>>>
>>>>
>>>> Sorry for the slow reply, I was away for a bit.
>>>>
>>>> And does that description match your target (and the other executables)
>>>> that do work ? If the kernel doesn't recognize the binary interpreter
>>>> of an executable, the message you are seeing is what you get.
>>>>
>>>> Cheers,
>>>>
>>>> Bruce
>>>>
>>>>> Regards,
>>>>> Jakob
>>>>>
>>>>> On 02.02.2018 17:14, Bruce Ashfield wrote:
>>>>>> On 2018-02-02 10:57 AM, Jakob Hasse wrote:
>>>>>>> Hello Bruce,
>>>>>>>
>>>>>>> Thank you for the advice with the morty branch, this worked
>>>>>>> perfectly.
>>>>>>>
>>>>>>> Now, however, docker is installed on my Yocto-system but I can't
>>>>>>> run it:
>>>>>>>
>>>>>>> ~# docker
>>>>>>> -sh: /usr/bin/docker: No such file or directory
>>>>>>
>>>>>> I've seen this before. It normally means that the executable isn't
>>>>>> in a format that your target recognizes. It could very well be the
>>>>>> go support in the older branch isn't building the right thing.
>>>>>>
>>>>>> What does 'file' say about the executable ?
>>>>>>
>>>>>> Bruce
>>>>>>
>>>>>>>
>>>>>>> Is "docker" the client to control and run containers (e.g.
>>>>>>> "docker run hello-world")?
>>>>>>> On my Ubuntu machine, this works, I installed docker and
>>>>>>> docker.io via apt, then I could run "docker run hello-world".
>>>>>>>
>>>>>>> All the Best and many thanks in advance!
>>>>>>> Jakob
>>>>>>>
>>>>>>> On 26.01.2018 14:05, Bruce Ashfield wrote:
>>>>>>>> On 2018-01-26 6:52 AM, Jakob Hasse wrote:
>>>>>>>>> Hello,
>>>>>>>>>
>>>>>>>>> we're trying to include meta-virtualization in to our project,
>>>>>>>>> in particular, we want to use docker. However, as soon as I
>>>>>>>>> include the layer in to our project, bitbake complains:
>>>>>>>>>
>>>>>>>>> bitbake -C compile core-image-base
>>>>>>>>> NOTE: Started PRServer with DBfile:
>>>>>>>>> /home/jakob/workspace/beerstation/cache/prserv.sqlite3, IP:
>>>>>>>>> 127.0.0.1, PORT: 46136, PID: 5713
>>>>>>>>> ERROR: Execution of event handler 'virt_bbappend_distrocheck'
>>>>>>>>> failed
>>>>>>>>> Traceback (most recent call last):
>>>>>>>>>    File
>>>>>>>>> "/usr/local/dey-2.2/sources/meta-virtualization/classes/sanity-meta-virt.bbclass",
>>>>>>>>> line 4, in virt_bbappend_distrocheck(e=<bb.event.SanityCheck
>>>>>>>>> object at 0x7f945e05d3c8>):
>>>>>>>>>       python virt_bbappend_distrocheck() {
>>>>>>>>>      >    skip_check =
>>>>>>>>> e.data.getVar('SKIP_META_VIRT_SANITY_CHECK') == "1"
>>>>>>>>>           if 'virtualization' not in
>>>>>>>>> e.data.getVar('DISTRO_FEATURES').split() and not skip_check:
>>>>>>>>> TypeError: getVar() missing 1 required positional argument:
>>>>>>>>> 'expand'
>>>>>>>>>
>>>>>>>>> ERROR: Command execution failed: Traceback (most recent call
>>>>>>>>> last):
>>>>>>>>>    File
>>>>>>>>> "/usr/local/dey-2.2/sources/poky/bitbake/lib/bb/command.py",
>>>>>>>>> line 101, in runAsyncCommand
>>>>>>>>>      self.cooker.updateCache()
>>>>>>>>>    File
>>>>>>>>> "/usr/local/dey-2.2/sources/poky/bitbake/lib/bb/cooker.py",
>>>>>>>>> line 1627, in updateCache
>>>>>>>>>      bb.event.fire(bb.event.SanityCheck(False),
>>>>>>>>> self.databuilder.mcdata[mc])
>>>>>>>>>    File
>>>>>>>>> "/usr/local/dey-2.2/sources/poky/bitbake/lib/bb/event.py", line
>>>>>>>>> 201, in fire
>>>>>>>>>      fire_class_handlers(event, d)
>>>>>>>>>    File
>>>>>>>>> "/usr/local/dey-2.2/sources/poky/bitbake/lib/bb/event.py", line
>>>>>>>>> 124, in fire_class_handlers
>>>>>>>>>      execute_handler(name, handler, event, d)
>>>>>>>>>    File
>>>>>>>>> "/usr/local/dey-2.2/sources/poky/bitbake/lib/bb/event.py", line
>>>>>>>>> 96, in execute_handler
>>>>>>>>>      ret = handler(event)
>>>>>>>>>    File
>>>>>>>>> "/usr/local/dey-2.2/sources/meta-virtualization/classes/sanity-meta-virt.bbclass",
>>>>>>>>> line 4, in virt_bbappend_distrocheck
>>>>>>>>>      skip_check = e.data.getVar('SKIP_META_VIRT_SANITY_CHECK')
>>>>>>>>> == "1"
>>>>>>>>> TypeError: getVar() missing 1 required positional argument:
>>>>>>>>> 'expand'
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> Summary: There were 2 ERROR messages shown, returning a
>>>>>>>>> non-zero exit code.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> Do we need to checkout a specific branch or so (though I can't
>>>>>>>>> find one right now)?
>>>>>>>>> Do we need to change some kernel configuration? I added all
>>>>>>>>> virtualization drivers in the "drivers" section of the kernel
>>>>>>>>> config already.
>>>>>>>>>
>>>>>>>>> We're using DIGI embedded Yocto 2.2 (poky).
>>>>>>>>>
>>>>>>>>
>>>>>>>> You need to check out the matching branch to the release you've
>>>>>>>> been given as an enablement, since some of the APIs, etc, have
>>>>>>>> changed and the meta-virt sanity check that was added later than
>>>>>>>> the 2.2 release isn't working.
>>>>>>>>
>>>>>>>> 2.2 was the 'morty' release, and meta-virt does have a branch for
>>>>>>>> that:
>>>>>>>>
>>>>>>>> ----------
>>>>>>>> % git whatchanged origin/morty
>>>>>>>>
>>>>>>>> commit eb6b5129561eda9ea1f47e85ab9ed9e5a6b8f64c
>>>>>>>> Author: Fabio Berton <fabio.berton@ossystems.com.br>
>>>>>>>> Date:   Tue Nov 28 09:15:59 2017 -0200
>>>>>>>>
>>>>>>>>     python-*: use https for pypi URLs
>>>>>>>>
>>>>>>>>     Several of the recipes here were using http URLs for source
>>>>>>>> hosted on
>>>>>>>>     pypi - pypi apparently no longer supports http so switch to
>>>>>>>> https
>>>>>>>>     instead.
>>>>>>>>
>>>>>>>>     Apply this commit [1] to morty branch.
>>>>>>>>     [1]
>>>>>>>> https://www.mail-archive.com/meta-virtualization@yoctoproject.org/msg02821.html
>>>>>>>>
>>>>>>>>
>>>>>>>>     Signed-off-by: Fabio Berton <fabio.berton@ossystems.com.br>
>>>>>>>>     Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
>>>>>>>> ---------
>>>>>>>>
>>>>>>>> So check out the morty branch and you'll have better luck.
>>>>>>>>
>>>>>>>> Bruce
>>>>>>>>
>>>>>>>>
>>>>>>>>> Thanks and all the best,
>>>>>>>>> Jakob
>>>>>>>>>
>>>>>>>>
>>>>>>>
>>>>>>
>>>>>
>>>>
>>>
>>
> 


