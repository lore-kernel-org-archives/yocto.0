Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBB3EE00D90; Fri,  5 Jul 2019 14:42:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [216.168.135.166 listed in list.dnswl.org]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF3F0E00D83
	for <yocto@yoctoproject.org>; Fri,  5 Jul 2019 14:42:25 -0700 (PDT)
Received: (qmail 5327 invoked by uid 1003); 5 Jul 2019 21:42:25 -0000
Received: from unknown (HELO ?192.168.11.100?)
	(philip@opensdr.com@73.152.143.112)
	by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
	5 Jul 2019 21:42:25 -0000
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>,
	Nicolas Dechesne <nicolas.dechesne@linaro.org>,
	Thomas Roos <Thomas.Roos@industronic.de>,
	"Volosincu, Andreea S" <andreea.volosincu@windriver.com>
References: <OFDFFF8F9D.BA13B49C-ONC125842D.00221F33-C125842D.002264A7@INDUSTRONIC.DE>
	<CAP71Wjy4RwRpjFD31wA_b8CpZn5u+2wHHscwCvS7zFCp9pruoQ@mail.gmail.com>
	<e31b617f50e44913a1bb0203e39527c4@xbox06.axis.com>
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
Message-ID: <bb27d70f-608c-ec0c-bfa0-3b89a953e45a@balister.org>
Date: Fri, 5 Jul 2019 17:42:23 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <e31b617f50e44913a1bb0203e39527c4@xbox06.axis.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: yocto dev day ELCE 2019 Lyon ?
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
X-List-Received-Date: Fri, 05 Jul 2019 21:42:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 7bit

In 07/04/2019 06:38 AM, Peter Kjellerstedt wrote:
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org>
>> On Behalf Of Nicolas Dechesne
>> Sent: den 4 juli 2019 08:45
>> To: Thomas Roos <Thomas.Roos@industronic.de>; Volosincu, Andreea S
>> <andreea.volosincu@windriver.com>
>> Cc: Yocto list discussion <yocto@yoctoproject.org>
>> Subject: Re: [yocto] yocto dev day ELCE 2019 Lyon ?
>>
>> Hi Thomas,
>>
>> On Thu, Jul 4, 2019 at 8:18 AM Thomas Roos <Thomas.Roos@industronic.de>
>> wrote:
>>>
>>> Hi,
>>> are there any plans to organize a yocto dev day in October 2019,
>>> Lyon. Embedded Linux Conference Europe?
>>> cheers, Thomas
>>
>> Yes, in fact we are trying something new for the first time at ELC-E
>> this year, see:
>> https://lists.yoctoproject.org/pipermail/yocto/2019-May/045088.html
>>
>> There will be a 2-day "Yocto Project Summit" with a mix of
>> presentations/talks, training classes and developers meetings,
>> including a social event in the evening.
>>
>> cc'ing Andreea if there are more questions.
> 
> Will this replace OEDEM too?

Yes. 5 days of conference sessions meetings is enough for anyone :)

Philip


> 
> //Peter
> 

