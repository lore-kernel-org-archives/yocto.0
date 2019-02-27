Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DB46E00CEE; Wed, 27 Feb 2019 14:58:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.166 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DC0DE00A54
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 14:58:50 -0800 (PST)
Received: (qmail 11309 invoked by uid 1003); 27 Feb 2019 22:58:50 -0000
Received: from unknown (HELO ?192.168.11.100?)
	(philip@opensdr.com@73.152.143.112)
	by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
	27 Feb 2019 22:58:50 -0000
To: Jean-Christian de Rivaz <jean-christian.derivaz@innodelec.ch>,
	Adrian Bunk <bunk@stusta.de>, Tom Rini <trini@konsulko.com>
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
	<93dcfef4-e49f-a683-0f5b-3acdb9dbb663@innodelec.ch>
	<20190227200902.GG12046@bill-the-cat>
	<20190227214037.GA11051@localhost>
	<8a83e39d-9f90-19d3-f310-41c5cebe840a@innodelec.ch>
From: Philip Balister <philip@balister.org>
Openpgp: preference=signencrypt
Autocrypt: addr=philip@balister.org; prefer-encrypt=mutual; keydata=
	xsBNBE6PN4EBCADXwOSVOvTrJ370tH2RmiR22OuCBcKfnKTLztyV5zA0veDB1kmrIajh+sJe
	HWNqsib0v19S3wdrvqzKrztSfNAgUctvkAuTOloU81dmbAjDSge6nFxjzIIz6XjNvmP5xl9J
	rstPm4i4dhAs5436xf4Bh0vn3C/Bp4fKwXBSW/Xto7vuiuSK03ojon3F8O2WNEmKxHyubFP1
	2tNvXOp/PeAR4LTnYq6fdAAofvbpbPDBg8qICe6j1UXaIyU93IbW+bJp1RFbeakWxiTw+eQ2
	fVjG5XnubNX0YBlmjHDJhjeqV1uwkImNHlZknecLjT7g37vIMwz+PTfPIhmIGffzqtHlABEB
	AAHNJVBoaWxpcCBCYWxpc3RlciA8cGhpbGlwQGJhbGlzdGVyLm9yZz7CwH4EEwECACgCGyMG
	CwkIBwMCBhUIAgkKCwQWAgMBAh4BAheABQJYM1D9BQkRKOdqAAoJEMDJd4rr0merDX4H/3Pr
	nYKDnml7LRiikoOTFJb4r7ub04skrkGI2DAYvRUPH110KXaan84Qo2Yl4r/ma15Lpqx+cdPR
	3KbFlSWyjgY6CMN/BclutsK4mFkoxnmhdYJvc5M2TDfZLxBPMTeQiHo0MwxUB5v81mv812bx
	YKfEOg3ndk7C/TE0Q8ZER7p6fU3ol/e0ilLyaCpd85nkEcOEI7BdBBGhKWii+Cwvv8g2ofQZ
	3wAsqQFp7PFxlEjo5Xc1QGqo7L+UlDG23QjUn33n+wZMZm9EUZFu1c1MAGZsvXiqKw8P07Mj
	yyf6h6EMVP8wME7gnkxsZkpKv04mSvKpDLIInmRW9ZlHXaJ4YxjOwE0ETo83gQEIAPs+ZC0R
	gF4blrRIiVHdkARncAxUwSUbti5Ku23dQ0iBizozh4YGucgW48gxsvJCkCc9s/4C9e3vYiCZ
	GVGC8x6Ll3vE7xwRQ/euVqJ0mXG7tNK1zAPpSgI6aooPSZCW7PBvwY8uMvzzCzP+EBd0+oA5
	uXQSEcyOJUYy4beferoHUiBjBkyNd+v2iaJf7KjAYYxJOcPvtnq/VL09hlmtCD5zghOn80rt
	LqF66BJkHmATopSWyor1qz7gmowdCkFkUJDNW7yJT1wVANqDd9P5A8vYhngwJTHsvXVftmvB
	gLiJjYuKst36G2AOHgm4ls5jRMa/k7jWue1RKM5LxzgBtLUAEQEAAcLAZQQYAQIADwIbDAUC
	WDNRbAUJESjn5AAKCRDAyXeK69Jnq1qYB/93aiBdenAuu0H/zGWEFFB14cdhDR4S4q0EbfXl
	1z9o3Irazw6WMtLe12zJ4/Xl41Mh/IH8/+AgDnigisrkKRN1TkiOGDUVnS0akkhML3ONbeFd
	ocYEwBAPDTxAaWNoyjDe/bORokSJn31cFoG6QYyzUct79npHorbaXW0zW+KC77Do53yUKQ8+
	icWpfiCMk1YzSHCr0y5NZNVxac9a0+IDzH/YBbNdJLNaMvXcuege1Qqz85pdR0P4XuCVRD2j
	ZAbcGJzZXlu9ZzpIHjtZoyF8paJRMQwzWEO3/Txksmm7K8eu8Tz2JVpjiOIj44MOTKoRGKjO
	6eUfr0u7CwnEyqiQ
Message-ID: <273c69ba-6bb8-3d32-2e75-9cde78012717@balister.org>
Date: Wed, 27 Feb 2019 17:58:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <8a83e39d-9f90-19d3-f310-41c5cebe840a@innodelec.ch>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Removing busybox
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
X-List-Received-Date: Wed, 27 Feb 2019 22:58:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 8bit

On 02/27/2019 05:24 PM, Jean-Christian de Rivaz wrote:
> Le 27.02.19 à 22:40, Adrian Bunk a écrit :
>> On Wed, Feb 27, 2019 at 03:09:02PM -0500, Tom Rini wrote:
>>> On Wed, Feb 27, 2019 at 09:06:38PM +0100, Jean-Christian de Rivaz wrote:
>>> ...
>>>> So as expected systemd is there and busybox is not. But there is a lot of
>>>> useful commands missing on the resulting QEMU image:
>>>>
>>>> root@qemux86:~# ps
>>>> ~sh: ps: command not found
>>>> root@qemux86:~# w
>>>> ~sh: w: command not found
>>>> root@qemux86:~# find
>>>> ~sh: find: command not found
>>>> root@qemux86:~# grep
>>>> ~sh: grep: command not found
>>>> root@qemux86:~# ip addr
>>>> ~sh: ip: command not found
>>>>
>>>> I expected that all the limited busybox commands would be replaced by
>>>> the full
>>>> featured commands. How to fix that ?
>>> Correct, you're missing a lot of stuff.  Somewhere on my (and other
>>> folks too) TODO list is a packagegroup that includes procps and psmisc
>>> and grep and tar and various network packages and less and more and...
>> "all the limited busybox commands would be replaced" would be a huge 
>> list from dc through gawk, minicom and wget to vim.
>>
>> And would vim-tiny qualify as "the full featured command" of busybox vi,
>> or should this include vim with full features?
>>
>> The nice thing about busybox is that it is so small,
>> in many cases one full featured command alone
>> is bigger than busybox.
>>
>> It is not obvious to me what usecases people have in mind for
>> getting rid of busybox, and whether everyone is aware that
>> something like "all busybox commands replaced" is *very*
>> expensive regarding filesystem size.
> 
> The project I work for need nodejs and chromium (and a >100MB database
> on some nodes), so space is not an issue. I need to deliver an useful
> distribution with usual commands, tools and a working console + keyboard
> for my locale. If  Poky is only maintained to be tested with sysvinit +
> busybox and US locale, then I wonder if it's the appropriate choice for
> that project. There nothing wrong in providing a sysvinit + busybox
> based small distribution, this is simply not the best fit for that project.

I have exactly the same needs. Customers with large sd card root for
filesystems want to see desktop commands, not the simpler busybox
commands. We should support both systems.

Philip

> 
> Jean-Christian
> 
>>
>>> Tom
>> cu
>> Adrian
>>
> 

