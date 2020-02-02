Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1867.1580667516286599637
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Feb 2020 10:18:37 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: balister.org, ip: 140.211.169.56, mailfrom: philip@balister.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4095E01690; Sun,  2 Feb 2020 10:18:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [216.168.135.166 listed in list.dnswl.org]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F5A2E0049C
	for <yocto@yoctoproject.org>; Sun,  2 Feb 2020 10:18:33 -0800 (PST)
Received: (qmail 378 invoked by uid 1003); 2 Feb 2020 18:17:04 -0000
Received: from unknown (HELO ?192.168.0.219?) (philip@opensdr.com@85.28.110.72)
  by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP; 2 Feb 2020 18:17:04 -0000
Subject: Re: [yocto] Yocto Project Status WW04'20
To: Adrian Bunk <bunk@stusta.de>, Stephen Jolley <sjolley.yp.pm@gmail.com>
Cc: yocto@yoctoproject.org
References: <086201d5d5f4$307b2150$917163f0$@gmail.com>
 <20200202132840.GA6805@localhost>
From: "Philip Balister" <philip@balister.org>
Autocrypt: addr=philip@balister.org; prefer-encrypt=mutual; keydata=
 mQENBE6PN4EBCADXwOSVOvTrJ370tH2RmiR22OuCBcKfnKTLztyV5zA0veDB1kmrIajh+sJe
 HWNqsib0v19S3wdrvqzKrztSfNAgUctvkAuTOloU81dmbAjDSge6nFxjzIIz6XjNvmP5xl9J
 rstPm4i4dhAs5436xf4Bh0vn3C/Bp4fKwXBSW/Xto7vuiuSK03ojon3F8O2WNEmKxHyubFP1
 2tNvXOp/PeAR4LTnYq6fdAAofvbpbPDBg8qICe6j1UXaIyU93IbW+bJp1RFbeakWxiTw+eQ2
 fVjG5XnubNX0YBlmjHDJhjeqV1uwkImNHlZknecLjT7g37vIMwz+PTfPIhmIGffzqtHlABEB
 AAG0JVBoaWxpcCBCYWxpc3RlciA8cGhpbGlwQGJhbGlzdGVyLm9yZz6JAT4EEwECACgCGyMG
 CwkIBwMCBhUIAgkKCwQWAgMBAh4BAheABQJYM1D9BQkRKOdqAAoJEMDJd4rr0merDX4H/3Pr
 nYKDnml7LRiikoOTFJb4r7ub04skrkGI2DAYvRUPH110KXaan84Qo2Yl4r/ma15Lpqx+cdPR
 3KbFlSWyjgY6CMN/BclutsK4mFkoxnmhdYJvc5M2TDfZLxBPMTeQiHo0MwxUB5v81mv812bx
 YKfEOg3ndk7C/TE0Q8ZER7p6fU3ol/e0ilLyaCpd85nkEcOEI7BdBBGhKWii+Cwvv8g2ofQZ
 3wAsqQFp7PFxlEjo5Xc1QGqo7L+UlDG23QjUn33n+wZMZm9EUZFu1c1MAGZsvXiqKw8P07Mj
 yyf6h6EMVP8wME7gnkxsZkpKv04mSvKpDLIInmRW9ZlHXaJ4Yxi5AQ0ETo83gQEIAPs+ZC0R
 gF4blrRIiVHdkARncAxUwSUbti5Ku23dQ0iBizozh4YGucgW48gxsvJCkCc9s/4C9e3vYiCZ
 GVGC8x6Ll3vE7xwRQ/euVqJ0mXG7tNK1zAPpSgI6aooPSZCW7PBvwY8uMvzzCzP+EBd0+oA5
 uXQSEcyOJUYy4beferoHUiBjBkyNd+v2iaJf7KjAYYxJOcPvtnq/VL09hlmtCD5zghOn80rt
 LqF66BJkHmATopSWyor1qz7gmowdCkFkUJDNW7yJT1wVANqDd9P5A8vYhngwJTHsvXVftmvB
 gLiJjYuKst36G2AOHgm4ls5jRMa/k7jWue1RKM5LxzgBtLUAEQEAAYkBJQQYAQIADwIbDAUC
 WDNRbAUJESjn5AAKCRDAyXeK69Jnq1qYB/93aiBdenAuu0H/zGWEFFB14cdhDR4S4q0EbfXl
 1z9o3Irazw6WMtLe12zJ4/Xl41Mh/IH8/+AgDnigisrkKRN1TkiOGDUVnS0akkhML3ONbeFd
 ocYEwBAPDTxAaWNoyjDe/bORokSJn31cFoG6QYyzUct79npHorbaXW0zW+KC77Do53yUKQ8+
 icWpfiCMk1YzSHCr0y5NZNVxac9a0+IDzH/YBbNdJLNaMvXcuege1Qqz85pdR0P4XuCVRD2j
 ZAbcGJzZXlu9ZzpIHjtZoyF8paJRMQwzWEO3/Txksmm7K8eu8Tz2JVpjiOIj44MOTKoRGKjO
 6eUfr0u7CwnEyqiQ
Message-ID: <e951c71c-1fa3-faa7-80af-27c965210161@balister.org>
Date: Sun, 2 Feb 2020 19:18:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200202132840.GA6805@localhost>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2/2/20 2:28 PM, Adrian Bunk wrote:
> On Tue, Jan 28, 2020 at 08:01:23AM -0800, Stephen Jolley wrote:
>> ...
>> *	We have created a "documentation" list and a "licensing" list on the
>> yocto project mailing list infrastructure. We believe these topics would
>> benefit from dedicated discussions, the people involved usually aren't
>> interested in bulk email as would be found on other lists. The new lists can
>> be found at:  <https://lists.yoctoproject.org/g/licensing/join>
>> https://lists.yoctoproject.org/g/licensing/join and
>> <https://lists.yoctoproject.org/g/docs/join>
>> https://lists.yoctoproject.org/g/docs/join 
>> ...
> 
> Would it be possible to also create a yocto-devel or yocto-core
> mailing list for discussing development of Yocto?
> 
> Currently the yocto list is a mixture of core development list and forum 
> for newbie user questions, with no easy way to have them separate.

We have openembedded-architecture for this.

http://lists.openembedded.org/mailman/listinfo/openembedded-architecture

Philip

> 
> Thanks
> Adrian
> 
> 
> 
> 
