Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B21E5E00E0E; Thu, 11 Jan 2018 03:55:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54B30E008FB
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 03:55:04 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id w0BBsrHR010642
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Thu, 11 Jan 2018 13:54:56 +0200
To: Stefano Babic <sbabic@denx.de>,
	Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
References: <d0f37752-e921-9ed5-47cb-dadd737b5b0e@vitheia.com>
	<CAGAf8LxNUgWsCSTT6_oH+WaysN6nxvTR5Q=5qLhFCuVYgKfE=w@mail.gmail.com>
	<aa4ae0f3-f8b8-2ee9-29b4-5d4ab7cd3feb@denx.de>
From: Mircea Gliga <mircea.gliga@vitheia.com>
Message-ID: <1ac69a4c-188b-875d-8000-944cc6e04510@vitheia.com>
Date: Thu, 11 Jan 2018 13:54:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <aa4ae0f3-f8b8-2ee9-29b4-5d4ab7cd3feb@denx.de>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: libgcc.a size
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
X-List-Received-Date: Thu, 11 Jan 2018 11:55:07 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi guys

 >libgcc.a is "out-f-the-box" in rocko 25MB, but why should it be 
integrated in rootfs ?

I asked myself the same question. Not clear for me yet how and why it 
gets in the rootfs.

Thanks and regards
Mircea


On 11/01/18 13:51, Stefano Babic wrote:
> Hi Zoran, Mircea,
>
> On 11/01/2018 11:16, Zoran Stojsavljevic wrote:
>>> What stands out is a big bump in size for /usr/lib/arm-poky-linux-gnueabi/7.2.0/libgcc.a from 5 MB in krogoth(gcc 5.3.0) to 25 MB in rocko.
>> Static library, probably compiled with -g (debug info included). You
>> need to recompile libgcc excluding -g option... My best guess.
>>
> libgcc.a is "out-f-the-box" in rocko 25MB, but why should it be
> integrated in rootfs ? The libc-2.26.so is still 1.2MB (ARM) and
> footprint is comparable to the past.
>
> Stefano
>
>


