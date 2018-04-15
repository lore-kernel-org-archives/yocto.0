Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94995E00BF8; Sun, 15 Apr 2018 14:04:29 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A1BEE00843
	for <yocto@yoctoproject.org>; Sun, 15 Apr 2018 14:04:27 -0700 (PDT)
Received: (qmail 17652 invoked by uid 1003); 15 Apr 2018 21:04:27 -0000
Received: from unknown (HELO ?192.168.11.100?)
	(philip@opensdr.com@73.152.143.112)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	15 Apr 2018 21:04:27 -0000
To: "Burton, Ross" <ross.burton@intel.com>,
	Richard Collins <richard.collins@guidedknowledge.com>
References: <CAD-1PJi4SCi_QjuDdcvSy+qFAdKvK8iYi95r+Zk76uzN4GFViQ@mail.gmail.com>
	<37b0eb72-940b-71bb-a3e5-50857e490a2f@linux.intel.com>
	<CAD-1PJj+=U6K=HLfo5YYnBmr0RotyGPct0jRULO6v6qCgrMUag@mail.gmail.com>
	<CAJTo0LZhxZNxHwOLzkWBXixKqU6i=pUQB+ZncMsCaXEwuCEJog@mail.gmail.com>
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
Message-ID: <ffb3d1d9-cf58-33ba-3e4d-bceca5ab74aa@balister.org>
Date: Sun, 15 Apr 2018 17:04:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZhxZNxHwOLzkWBXixKqU6i=pUQB+ZncMsCaXEwuCEJog@mail.gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Getting the version of Yocto that is being used.
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
X-List-Received-Date: Sun, 15 Apr 2018 21:04:29 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 7bit

I like:

https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/classes/image-buildinfo.bbclass

Philip

On 04/12/2018 08:47 AM, Burton, Ross wrote:
> I think the message here is that we need to embed the oe-core version
> in the metadata somewhere...
> 
> On 12 April 2018 at 13:11, Richard Collins
> <richard.collins@guidedknowledge.com> wrote:
>> I get the following for DISTRO.
>>
>> DISTRO            = "yogurt"
>> DISTRO_VERSION    = "BSP-Yocto-RK3288-PD17.1.1"
>>
>> Can't find any reference to yogurt so I assume this is something the
>> supplier of our SOM's has done. Looking on their Wiki it seems to be based
>> on 2.1.2 (Krogoth)
>>
>>
>> Thanks for the help. :)
>>
>> On 12 April 2018 at 11:21, Alexander Kanavin
>> <alexander.kanavin@linux.intel.com> wrote:
>>>
>>> On 04/12/2018 12:44 PM, Richard Collins wrote:
>>>>
>>>> I've inherited a Yocto project that I know to be an old version. So one
>>>> of my tasks is to update to the latest version. Before I do this I would
>>>> like to know what version I have. The only information I can find is the
>>>> bitbake version, BB_VERSION        = "1.32.0".
>>>
>>>
>>> When you run bitbake, it should also print the values of DISTRO and
>>> DISTRO_VERSION. Those should give a clue where you are at.
>>>
>>> Alex
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>

