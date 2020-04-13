Received: from sanddollar.geekisp.com (sanddollar.geekisp.com [216.168.135.167])
 by mx.groups.io with SMTP id smtpd.web10.2557.1586808062788430176
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Apr 2020 13:01:03 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: balister.org, ip: 216.168.135.167, mailfrom: philip@balister.org)
Received: (qmail 10801 invoked by uid 1003); 13 Apr 2020 20:01:05 -0000
Received: from unknown (HELO ?192.168.11.144?) (philip@opensdr.com@73.152.143.112)
  by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP; 13 Apr 2020 20:01:05 -0000
Subject: Re: [yocto] What is the recommended method to patch a recipe?
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>,
 Alexander Kanavin <alex.kanavin@gmail.com>
Cc: nus1998 <nus1998@yeah.net>, yocto@lists.yoctoproject.org
References: <1bc0fffb.3be7.17171a9737f.Coremail.nus1998@yeah.net>
 <CAP71WjwiHBSZaGkGrPJmdgKeTQK+5TgckVF86S50yEmWObR1LA@mail.gmail.com>
 <CANNYZj8xE7yS8Y4R9UimWyQsqyr=x91OuPCyxvcCKZf+Cqtb=g@mail.gmail.com>
 <CAP71WjxyT43FjNaSdjqFf6EOrOE7sAH-AnL6uV323Drm6AWJmQ@mail.gmail.com>
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
Message-ID: <3c92ae7c-7576-a717-a34b-b9c51e9b6663@balister.org>
Date: Mon, 13 Apr 2020 16:00:57 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAP71WjxyT43FjNaSdjqFf6EOrOE7sAH-AnL6uV323Drm6AWJmQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 4/13/20 10:31 AM, Nicolas Dechesne wrote:
> On Mon, Apr 13, 2020 at 12:55 PM Alexander Kanavin <alex.kanavin@gmail.com>
> wrote:
> 
>> On Mon, 13 Apr 2020 at 12:46, Nicolas Dechesne <
>> nicolas.dechesne@linaro.org> wrote:
>>
>>> A good rule of thumb is to never modify a metadata that is not yours.
>>> That applies to everything:
>>> * if you need to modify a bb file from a 3rd party library, create a
>>> bbappend file in your layer
>>> * if you need to modify a bbappend from a 3rd party, then create another
>>> bbappend in your layer
>>>
>>> And by 3rd party i mean any layer/tree which is not yours (OE-core, or
>>> any other layer your are using).
>>>
>>
>> I beg to differ! Bbappends are making it difficult to reason about what
>> the recipe with all its appends is doing (because they destroy spatial
>> locality and aren't easily visible), and I would actually discourage using
>> them if the modification can go to the original recipe.
>>
> 
> Ok.. you're right. Well at least my answer is not complete ;)
> 
> 
>> Is it fixing a problem? Is it adding a build option absent from the
>> original recipe? Then please take the trouble to submit the change to the
>> owners of the recipe.
>>
> 
> This is correct. We should encourage everyone to report, and even better
> propose a fix, to the relevant layer, when the 'problem' is applicable. I
> didn't want to discourage that, for sure!
> When developing against master, it's a no brainer. When developing against
> a stable branch (like probably many users), it's not as obvious. In that
> case I think trying to avoid 'touching' somebody else layer remains a good
> advice, since it makes upgrades and maintenance trickier.
> 
> 
> 
>>
>> Similarly, if a bbappend is re-setting the component version to something
>> else (yes, people do that despite my best efforts to prohibit the
>> practice), then a much cleaner approach is to actually make a fully copy of
>> the recipe, or go and fix the original.

I just ran across a bbappend that change configure options, but looking
at the original recipe, there is a PACKAGECONFIG option to do the same
thing. So they could have used that mechanism instram of the bbappend.

Philip

>>
> 
> Recipes version upgrades (or downgrade) should be done in a dedicated layer
> owned by the 'developer', and in that case, I agree that bbappend should be
> prohibited, and the entire recipe should be copied.
> 
> 
>> Alex
>>
> 
> 
> 
> 
