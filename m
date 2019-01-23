Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 451DEE00CE4; Wed, 23 Jan 2019 13:39:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.168.135.166 listed in list.dnswl.org]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6936E0053F
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 13:39:39 -0800 (PST)
Received: (qmail 4930 invoked by uid 1003); 23 Jan 2019 21:39:39 -0000
Received: from unknown (HELO ?192.168.11.100?)
	(philip@opensdr.com@73.152.143.112)
	by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
	23 Jan 2019 21:39:38 -0000
To: Randy MacLeod <randy.macleod@windriver.com>,
	"Smith, Virgil (US)" <Virgil.Smith@flir.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <b4bcd0b5992346bd8512a00ff6caf425@flir.com>
	<f1a31b6f-4a7f-7a8b-d7dc-0c79c6e98529@windriver.com>
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
Message-ID: <80ec3d5f-e34a-4c32-e891-adfe00066844@balister.org>
Date: Wed, 23 Jan 2019 16:39:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <f1a31b6f-4a7f-7a8b-d7dc-0c79c6e98529@windriver.com>
Cc: Peter Balazovic <balazovic.peter@gmail.com>
Subject: Re: Yocto Project support for Numeric/Scientific Python
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
X-List-Received-Date: Wed, 23 Jan 2019 21:39:41 -0000
Content-Type: text/plain; charset=windows-1252
Content-Language: en-MW
Content-Transfer-Encoding: 8bit

I care :)

On 01/23/2019 04:28 PM, Randy MacLeod wrote:
> On 1/23/19 2:54 PM, Smith, Virgil (US) wrote:
>> Is there a current or relatively recent recipe for SciPy and related
>> libraries?
> 
> People have worked on it at least once before but found some problems
> with blas and atlas:
> 
> https://lists.yoctoproject.org/pipermail/yocto/2018-March/thread.html#40348
> 
> I'd say that there is interest.
> I CCed Peter who started one of the threads
> and BCCed 5 other people who seemed to be interested
> since I didn't want to drag them all into the thread.
> 
> 
>>
>> Further and more importantly, is having a maintainer for (recipes for)
>> those libraries a priority for the active members of the Project?
>> (i.e. does interest rise above the general welcoming of participants
>> to periodically asking “Hey has anyone put out a call to fill this
>> slot?” if/when the slot is vacant).
> 
> It's always nice to have a maintainer but community members sometimes
> keep recipes up to date even if they aren't direct users.
> 
>>
>> BTW: If this is the wrong list for this query, please let me know.
> 
> It a reasonable list for general discussion.
> If you get to a point where patches are being submitted,
> it should probably go to another list such as:
> 
>>
>> Why?  We are trying to gauge community interest before making long
>> term plans.
>>
>> We would like to know if this horse is at all likely to have
>> healthcare before betting on it (without sacrificing other patients to
>> obtain the proper veterinary degree and keep up practice to treat it
>> ourselves).
> heh.
> 
> Thanks!
> ../Randy
> 
>>
>> NOTE:  I see from the RRS emails that Derek Straka is currently
>> maintaining the python-numpy recipe.  THANK YOU!
>>
>>
>> ------------------------------------------------------------------------
>>
>> Notice to recipient: This email is meant for only the intended
>> recipient of the transmission, and may be a communication privileged
>> by law, subject to export control restrictions or that otherwise
>> contains proprietary information. If you receive this email by
>> mistake, please notify us immediately by replying to this message and
>> then destroy it and do not review, disclose, copy or distribute it.
>> Thank you in advance for your cooperation.
>>
> 
> 

