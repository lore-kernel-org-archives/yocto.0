Received: from sanddollar.geekisp.com (sanddollar.geekisp.com [216.168.135.167])
 by mx.groups.io with SMTP id smtpd.web11.38173.1578925154057177663
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Jan 2020 06:19:14 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: balister.org, ip: 216.168.135.167, mailfrom: philip@balister.org)
Received: (qmail 24475 invoked by uid 1003); 13 Jan 2020 14:12:35 -0000
Received: from unknown (HELO ?192.168.11.146?) (philip@opensdr.com@73.152.143.112)
  by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP; 13 Jan 2020 14:12:35 -0000
Subject: Re: [yocto] How to handle custom fetcher? #yocto
To: Bill.Kulp@azuresummit.com, yocto@lists.yoctoproject.org
References: <2tfx.1578923816482102575.gj3t@lists.yoctoproject.org>
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
Message-ID: <9a3f9092-6088-64c6-b84e-a1e598ca33e1@balister.org>
Date: Mon, 13 Jan 2020 09:12:29 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <2tfx.1578923816482102575.gj3t@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 1/13/20 8:56 AM, Bill.Kulp@azuresummit.com wrote:
> Hello!  I'm creating a Yocto BSP layer that depends on an external binary.  This binary is large, so it is stored on an external server.  (it's an HDF file for a Xilinx ZynqMP device).
> 
> The binary is retrieved using a shell script that can
> (1) retrieve a string representing the version of the latest build, and

This sounds very close to what setting SRCREV = ${AUTOREV} does. You
might see how that is implemented. As a note, we avoid recipes setting
AUTOREV since they need networkd access during a build and we try to
avoid that being a requirement for people doing builds from local sources.

Philip


> (2) download a build corresponding to a specific version.
> 
> I am trying to figure out how to integrate step (1) with Bitbake.  Ideally, Bitbake should treat the version string like a version control identifier, querying it and rebuilding the package if it has changed.
> 
> Do you have advice on the best practice to do this?  Do I need custom code in the do_fetch step?  Can I dynamically set something like SRCPV or SRCREV?
> 
> 
> 
> 
