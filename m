Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.672.1584717358260695656
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Mar 2020 08:15:58 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: balister.org, ip: 140.211.169.56, mailfrom: philip@balister.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4BFCE0189C; Fri, 20 Mar 2020 08:15:57 -0700 (PDT)
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
	*      [216.168.135.167 listed in list.dnswl.org]
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www; Fri, 20 Mar 2020 08:15:54 PDT
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com [216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D52CE0189A
	for <yocto@yoctoproject.org>; Fri, 20 Mar 2020 08:15:54 -0700 (PDT)
Received: (qmail 31872 invoked by uid 1003); 20 Mar 2020 15:09:18 -0000
Received: from unknown (HELO ?192.168.11.144?) (philip@opensdr.com@73.152.143.112)
  by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP; 20 Mar 2020 15:09:18 -0000
Subject: Re: [yocto] yocto on tinkerbaord using meta-rockchip
To: Yann Dirson <yann.dirson@blade-group.com>,
 Yocto discussion list <yocto@yoctoproject.org>
Cc: karthik poduval <karthik.poduval@gmail.com>,
 Jeffy Chen <jeffy.chen@rock-chips.com>, Trevor Woerner <twoerner@gmail.com>
References: <CAFP0Ok8cBje8vofUwqo2ac5moA7Yj3OiJNO9DDbJJXxCJUsEtA@mail.gmail.com>
 <CAHUNapQTnMDphOyxhZ08KzN=venDyXcwaAtsRHz+6sDTO6UhQg@mail.gmail.com>
 <CA+4=imYWxva2+Qy=e7xJf0zHFhXu-k0RgQa8udNUDmDC3d9Q2Q@mail.gmail.com>
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
Message-ID: <59d21ce3-c9e3-9c4b-d2a8-07c4db9e585d@balister.org>
Date: Fri, 20 Mar 2020 09:09:12 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CA+4=imYWxva2+Qy=e7xJf0zHFhXu-k0RgQa8udNUDmDC3d9Q2Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 3/20/20 3:10 AM, Yann Dirson wrote:
> Wow, I'm suprised to discover this meta-rockchip :)
>=20
> Rockchip engineers also publish a meta-rockchip on Github (
> https://github.com/rockchip-linux/meta-rockchip), although
> nowadays it's mainly Jeffy Chen publishing on
> https://github.com/JeffyCN/meta-rockchip/
>=20
> Those two repos seem quite complementary, Jeffy being focussed on kernel
> 4.4, and Trevor on mainline.
> Wouldn't it make sense to merge all this work in a single place ?
>=20

Yes :) But you observe the key issue, Trevor is correctly focused on the
upstream kernel and the vendor layer on an old vendor kernel. The vendor
kernels rapidly turn into maintenance nightmares over a product lifetime.

Philip

>=20
> Le ven. 20 mars 2020 =C3=A0 02:59, Trevor Woerner <twoerner@gmail.com> a=
 =C3=A9crit :
>=20
>> Hi Karthik,
>>
>> On Thu, Mar 19, 2020 at 9:36 PM karthik poduval
>> <karthik.poduval@gmail.com> wrote:
>>> Thank you for you work on meta-rockchip layer. You were listed as the
>>> maintainer for meta-rockchip so I though I will send you a mail with
>>> an issue I was facing.
>>>
>>> I was trying to flash an image on a Asus tinker board using
>>> meta-rockchip. Here are the steps I followed.
>>>
>>> git clone git://git.yoctoproject.org/poky
>>> git clone  git://git.yoctoproject.org/meta-rockchip
>>> source poky/oe-init-build-env
>>> bitbake-layers add-layer ../../meta-rockchip/
>>> MACHINE=3Dtinker-board bitbake core-image-minimal
>>>
>>> #flahsed it using the following command to sdcard (my sdcard was dev/s=
de)
>>> sudo dd
>> if=3Dtmp/deploy/images/tinker-board/core-image-minimal-tinker-board.wic
>>> of=3D/dev/sde
>>>
>>> after inserting sdcard and booting up I can see on the serial console
>>> it attempts to boot, crosses bootloader and proceeds to linux boot but
>>> then gets hing around dwmmc_rockchip loading.
>>>
>>> Attached the complete serial log. Your help is greatly appreciated.
>>
>> According to the log, your board is a "tinker-board-s", please try
>> using that for your MACHINE instead of "tinker-board".
>>
>> Thanks and best regards,
>>     Trevor
>>
>>
>=20
>=20
>=20
>=20
>=20
