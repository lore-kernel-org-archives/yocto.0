Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E96BE01450; Wed,  6 Jun 2018 08:05:52 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47932E00E0D
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2018 08:05:50 -0700 (PDT)
Received: (qmail 6713 invoked by uid 1003); 6 Jun 2018 15:05:48 -0000
Received: from unknown (HELO ?192.168.11.100?)
	(philip@opensdr.com@73.152.143.112)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	6 Jun 2018 15:05:48 -0000
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>,
	Mihaela Apetroaie-Cristea <apetroaiecristeamihaela@gmail.com>
References: <443D9650-0A26-433A-AC22-F61DBFDE1221@gmail.com>
	<CAALXFYwLpD0yr1s2CA9XT0X2iRhi_ApaAjW1Mra6ZonJb+s_kA@mail.gmail.com>
	<A33D6C2E-A641-476F-8ECA-CF92032A47E4@gmail.com>
	<CAGAf8LzmY0ZFaDZbEbt8NXi=tH5F0qh=BhP60QvMA3KHmfyb6g@mail.gmail.com>
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
Message-ID: <99a836f0-ec2e-fa6a-899d-da44008846b7@balister.org>
Date: Wed, 6 Jun 2018 11:05:47 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <CAGAf8LzmY0ZFaDZbEbt8NXi=tH5F0qh=BhP60QvMA3KHmfyb6g@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: partitions resizing on the fly
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
X-List-Received-Date: Wed, 06 Jun 2018 15:05:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 8bit

On 06/06/2018 04:46 AM, Zoran Stojsavljevic wrote:
> Before asking this question to YOCTO community, the simplier question
> will be to ask if anybody knows any Linux distro (RHEL, Fedora,
> Debian, Ubuntu, SuSE etc.), with the feature which can do this?
> 
> I am dealing with Linux for years, but such a mechanism did not
> see/experience. As well, never found anybody who asked this question
> as a such even for the normal distros.
> 
> In contrary, it is impossible to expand/shrink dynamically active
> (mounted) partitions, AFAIK.

man resize2fs :)

A carefully crafted script that uns on first boot should expand a
partition to fill all available space.

Philip


> 
> For this to happen, somebody needs to invent the new dynamically
> expanding active fs (the feature of it), which can do that.
> 
> Zoran
> _______
> 
> On Tue, Jun 5, 2018 at 4:59 PM, Mihaela Apetroaie-Cristea
> <apetroaiecristeamihaela@gmail.com> wrote:
>> Hi,
>>
>> Thanks for your answer. However, my question is whether there is a mechanism
>> such that the root will keep it’s minimal size, but be able to expand if
>> there is free space on the disk when new files are added (not necessarily to
>> occupy the whole free space), and shrink back if files are deleted. At the
>> moment I am happy to flash it with the minimal size, but it runs out of
>> space when I want to add something to the partitions, although there is
>> extra space on the disk that it could take. I know the implementation of
>> this is complicated, but I am wondering if anyone knows a solution for this.
>>
>> Thank you
>>
>>
>> On 5 Jun 2018, at 15:50, Iván Castell <icastell@nayarsystems.com> wrote:
>>
>> I managed this issue redefining this script in my custom layer (rocko
>> branch):
>>
>>     scripts/lib/wic/canned-wks/mkefidisk.wks
>>
>> and setting a bigger size for the root partition (80GB in my case):
>>
>>     part / --source rootfs --ondisk sda --fstype=ext4 --label platform
>> --align 1024 --use-uuid --size 80000
>>
>> Its not very nice, I know. But yocto can't know the real size of your root
>> device until writing the final image.
>>
>> I don't know if this is the best way to fix this  but it works.
>>   -- Ivan
>>
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>

