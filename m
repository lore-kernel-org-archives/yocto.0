Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7144FE00D24; Fri, 29 Mar 2019 06:47:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [216.168.135.167 listed in list.dnswl.org]
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87294E00BAF
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 06:47:02 -0700 (PDT)
Received: (qmail 20291 invoked by uid 1003); 29 Mar 2019 13:47:06 -0000
Received: from unknown (HELO ?192.168.11.100?)
	(philip@opensdr.com@73.152.143.112)
	by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
	29 Mar 2019 13:47:06 -0000
To: Dimitris Tassopoulos <dimtass@gmail.com>,
	Alexander Kanavin <alex.kanavin@gmail.com>
References: <CACKFPN0H50ax69a33VOs6wymGz7SoFi1_atBM2WNh3f9MV6=kQ@mail.gmail.com>
	<CANNYZj_VMX8FdBhMCwvq_hMYNa3n_Ng-kMacAo4Eg1ug+VuPcQ@mail.gmail.com>
	<CANNYZj9vrTD_+ZAmpEU28TQ8-MwQ-aD6qAGpX_wSALpq6gpj+A@mail.gmail.com>
	<CACKFPN3_mGg4fgCkOn_KWA3trR66WKay9148F5grke5DC7sJtA@mail.gmail.com>
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
Message-ID: <81b39501-ee95-830d-a9ea-805d9a6e5e4b@balister.org>
Date: Fri, 29 Mar 2019 09:46:59 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <CACKFPN3_mGg4fgCkOn_KWA3trR66WKay9148F5grke5DC7sJtA@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Image introspection
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
X-List-Received-Date: Fri, 29 Mar 2019 13:47:03 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 7bit

On 03/29/2019 05:50 AM, Dimitris Tassopoulos wrote:
> Hi Alexander,
> 
> in this case the 3g is added by default from the poky distro in
> the DISTRO_FEATURES_DEFAULT var in:
> *meta/conf/distro/include/default-distrovars.inc*
> 
> And because the poky distro is the base distro for the image
> this is inherited. Therefore it needs to be removed with the
> DISTRO_FEATURES_remove unless there is another way,
> which I'm not aware to easily remove/adjust without having
> to create a new distro.

Tweaking poky distro features makes the end result not poky, so the best
thing to do is create your own distro.

Philip

> 
> Regards,
> Dimitris
> 
> On Fri, Mar 29, 2019 at 10:38 AM Alexander Kanavin <alex.kanavin@gmail.com>
> wrote:
> 
>> You can do that using
>>
>> bitbake -e <image> and looking for how DISTRO_FEATURES is formed in
>> the output of the command.
>>
>> Alex
>>
>> On Fri, 29 Mar 2019 at 10:37, Alexander Kanavin <alex.kanavin@gmail.com>
>> wrote:
>>>
>>> On Fri, 29 Mar 2019 at 09:51, Dimitris Tassopoulos <dimtass@gmail.com>
>> wrote:
>>>
>>>> To do that, add this to your build/conf/local.conf file
>>>>
>>>>> DISTRO_FEATURES_remove = " 3g"
>>>
>>> This works around the issue after the fact. It's better to track down
>>> where 3g is added in the first place, and adjust that.
>>>
>>> Alex
>>
> 
> 
> 

