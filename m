Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
 by mx.groups.io with SMTP id smtpd.web12.3252.1584721938134164101
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Mar 2020 09:32:18 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: balister.org, ip: 216.168.135.166, mailfrom: philip@balister.org)
Received: (qmail 24623 invoked by uid 1003); 20 Mar 2020 16:30:05 -0000
Received: from unknown (HELO ?192.168.11.144?) (philip@opensdr.com@73.152.143.112)
  by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP; 20 Mar 2020 16:30:05 -0000
Subject: Re: <EXT> Re: [yocto] What are the key factors for yocto build speed?
To: David Stewart <david.c.stewart@intel.com>, Srini
 <rsrinivasan@abiomed.com>, "mikko.rapeli@bmw.de" <mikko.rapeli@bmw.de>,
 "mike.looijmans@topic.nl" <mike.looijmans@topic.nl>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
 <20200318130126.GK104502@korppu>
 <CAM9ZRVuQyj7X0YFqkpSFWM2=kQHnu8ZGpMsD34ntHYny4x7XJg@mail.gmail.com>
 <251912923.167286.1584540746314.JavaMail.zimbra@savoirfairelinux.com>
 <20200318144906.GC23112@localhost>
 <080227a9-b5f2-8e3e-201f-5285a1f80e2d@topic.nl>
 <20200318155132.GO104502@korppu>
 <06037dcfe9e74e4e80cd1e8b41593542@USDVREX02.abiomed.com>
 <D90B4E9C-DD70-4489-803D-079524AF20A7@intel.com>
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
Message-ID: <b7ee53a4-622d-876e-2f0f-7c8a02d46dfd@balister.org>
Date: Fri, 20 Mar 2020 10:32:14 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <D90B4E9C-DD70-4489-803D-079524AF20A7@intel.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 3/18/20 11:47 AM, David Stewart wrote:
> 4 hours seems extremely long to me for a 8 core system, but I have not tried this in a while. Were you removing all the sources and re-downloading them for every build?

Depends on the image Dave, I build images with QT5 and gnuradio and they
take a while :) core-image-minimal is much faster.

Philip


> 
> From: <yocto@lists.yoctoproject.org> on behalf of Srini <rsrinivasan@abiomed.com>
> Date: Wednesday, March 18, 2020 at 10:13 AM
> To: "mikko.rapeli@bmw.de" <mikko.rapeli@bmw.de>, "mike.looijmans@topic.nl" <mike.looijmans@topic.nl>
> Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
> Subject: Re: <EXT> Re: [yocto] What are the key factors for yocto build speed?
> 
> My own experience (pardon me if already discussed)
> 
> Fought the build times for several months - ending up eventually at 8 cores (but specifying 16 threads in poky builds). Best times for my build about 4 hours. Clearly impractical during engineering.
> 
> Generated an sdk and used it for app development. Each build is now a minute or 2.
> 
> Using a homegrown utility, updated the image file with applications in a jiffy - to produce burnable sdcard image.
> 
> Complete build required only for the final release -- or made major changes like python2 to python3!
> 
> YMMV.
> 
> srini
> 
> -----Original Message-----
> From: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yocto@lists.yoctoproject.org> On Behalf Of Mikko Rapeli via Lists.Yoctoproject.Org
> Sent: Wednesday, March 18, 2020 11:52 AM
> To: mike.looijmans@topic.nl<mailto:mike.looijmans@topic.nl>
> Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
> Subject: <EXT> Re: [yocto] What are the key factors for yocto build speed?
> 
> On Wed, Mar 18, 2020 at 04:09:39PM +0100, Mike Looijmans wrote:
>> On 18-03-2020 15:49, Adrian Bunk via Lists.Yoctoproject.Org wrote:
>>> On Wed, Mar 18, 2020 at 10:12:26AM -0400, Jean-Marie Lemetayer wrote:
>>>> ...
>>>> For example one of our build servers is using:
>>>> - AMD Ryzen 9 3900X
>>>> ...
>>>> - 32Go DDR4 3200 MHZ CL14
>>>> ...
>>>> It is a really good price / build time ratio configuration.
>>>
>>> Depends on what you are building.
>>>
>>> Building non-trivial C++ code (e.g. webkitgtk) with 24 cores but
>>> only 32 GB RAM will not work, for such code you need more than 2
>>> GB/core.
>>
>> Seems a bit excessive to buy hardware just to handle a particular
>> corner case. Most of OE/Yocto code is plain C, not even C++.
>>
>> My rig only has 8GB but doesn't run into memory issues during big GUI
>> builds. The only thing that made it swap was the populate_sdk task
>> that created a 1.1GB fiel and needed 20GB of RAM to compress that.
>> Took a few minutes more due to swapping.
>> I submitted a patch today to fix that in OE.
>>
>> Your mileage may vary. But RAM is easy to add.
> 
> Well, I can't build with under 2 gigs per core or I run out of physical memory and kernel oom-killer kicks in to kill the build. Also can't run with yocto default parallel settings which only take into account the number of cores and thus have a custom script which does caps the threads so that 2 gigs of RAM for each are available.
> 
> Though I'm sure plain C and plain poky projects have less requirements for RAM.
> 
> -Mikko
> 
> ________________________________
> 
> CONFIDENTIALITY NOTICE: This email message and any attachments are confidential and may be privileged and are meant to be read by the intended recipient only. If you are not the intended recipient, please notify sender immediately and destroy all copies of this message and any attachments without reading or disclosing their contents. Thank you
> 
> 
> 
> 
