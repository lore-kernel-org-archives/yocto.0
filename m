Return-Path: <chris@2net.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97F99E00CC0; Tue, 15 Sep 2015 07:09:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.227.17.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28CCCE00B51
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 07:09:35 -0700 (PDT)
Received: from [192.168.159.22] ([80.43.50.149]) by mrelayeu.kundenserver.de
	(mreue102) with ESMTPSA (Nemesis) id 0MV4iD-1Z6Hqg2Eov-00YSDs;
	Tue, 15 Sep 2015 16:09:31 +0200
References: <55F7DB62.20302@2net.co.uk>
	<22897052.oHQR6DBFiy@peggleto-mobl.ger.corp.intel.com>
	<55F7E2E7.7050609@2net.co.uk>
	<1442310354.26666.50.camel@linuxfoundation.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
From: Chris Simmonds <chris@2net.co.uk>
Organization: 2net
Message-ID: <55F8269A.4060705@2net.co.uk>
Date: Tue, 15 Sep 2015 15:09:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <1442310354.26666.50.camel@linuxfoundation.org>
X-Provags-ID: V03:K0:r5wa/xRsgpT848QYlPf1/RcYZ9oaBwLYrkZKYzVsy0aaBk5w2X/
	/NMUsebC9Q5kuZOi1zU8t8Uo+BcOaWI/2t1Fo4XDVP8kgme+yWBUJUM1NQnZVErg3ithaaF
	9YKe7RHd7lv5Nd7TueRnml/iyOdmcHg7RFVUp5POsgldqetlc9lYi55UT9ZpLr4xKDsmnyq
	IzQk1cgHkLWrCVzaD1nMg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:Goto310oPCM=:G6P8dxKtbM9KbIwbwgAIdM
	s5oAeNrs8BwxcHNOb3jfFSA0lRow3LuZLZYYpxS3I+YlIqgiggNxgr1Ew5WzpQ/xlmPuXPTGQ
	OLb99sM8eXvU6Gk+0ELxrDdgd1kJ07h94/ptQX9FUCpkoH5cbq1bATUf66Cmdq3Baat+ipMBV
	6U8i9/UWC7PmkQ1wsjNa3V4wQruDl/lc9U85OGReu+teB3shTfwIVEOtSu/WdnCcS3m1FOIgq
	aptIQxyCAW+wfKekh615vMItfc5mfaCw+qrAlpCKWeg/leDImegQdVU9pz2kAS+7LWSX3rjFI
	xIv0jROPd5tSaT7hJ6FSfRlnlHe/SD4LGbND3vtCuKiqVEhEaXWP3AqlziV030nKQOerFoHpL
	U6PuPpucwTnbSaqoqrLrG8tvmMCZuE2xiaWykvT3FNUgH1az3JQ6olQgQuQ4dpL7Osew/rnub
	T1+fjXemEGKwTDd5bqYtXsZ06CjDBAFbyZrpmYSX0v4UDsVGk/To6mHgACcKad32qiRxG6Ilk
	xVjN8bv3w368LM26pQNIr1iGkRRWoL7H661sMuEIUumCS5i1Kw4OO7funJ7Lcpf8/I095hTVu
	HU19ixNr5cIE3bKTIdcVKpQNcjzjlmQ5LxGjnwP44X+DO/yFfkwGffaH5K1YQVovBwsbF7yra
	PRR02gxze8pVDjWP/70eJUkd90H0a694trJoRjrG2cWGs1DxR8Tv8pv0NNP6iNUlgUSq50xud
	IVB5bWyeW6bAXWiq
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: gcc reports sysroot is /not/exist!
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: chris@2net.co.uk
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 15 Sep 2015 14:09:38 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi Richard,

On 15/09/15 10:45, Richard Purdie wrote:
> On Tue, 2015-09-15 at 10:20 +0100, Chris Simmonds wrote:
>>
>> Also, I am not convinced this is a step in the right direction. I expect
>> to be able to compile a simple program using:
>>
>> $ gcc hello.c -o hello
>>
>> But with this new cross compiler setup, this happens:
>>
>> $ arm-poky-linux-gnueabi-gcc hello.c -o hello
>> hello.c:1:19: fatal error: stdio.h: No such file or directory
>>  #include <stdio.h>
>>                    ^
>> compilation terminated.
> 
> If we hardcode the path to the sysroot into the compiler, we hit several
> issues. Firstly, we rely on the relocation code within gcc to get this
> relocated correctly at install time. That doesn't work for the way we
> currently build the compilers so the default sysroot only works for the
> default installation directory. Yes, that one is fixable with some
> jumping through hoops.
> 
> However if you don't want to set CFLAGS either, that implies we'd have
> to code the flags into the compiler as well. 
> 
> So we'd build a compiler per target sysroot and per set of optimisation
> flags for said target. That is grossly inefficient.

I'll admit that is the model I had in mind. However, I can see that it
does not scale well if you are addressing a range of targets as Yocto
allows you to do. So it looks like it is time for me to update my modus
operandi to match. However, I'll bet that I am not the only one caught out.

> We've always had the environment file there and we've always set CFLAGS
> this way, even in 1.7. If you used a non-default installation directory
> in 1.7, it likely didn't work properly without passing the right flags
> to gcc so you just go lucky even there. In 1.8, we poisoned the default
> sysroot, so we could clearly identify any software which wasn't using
> the CC and CFLAGS in ways we didn't expect. We did this to make our core
> builds deterministic. We decided to do the same with the SDK.
> 
> If you really object to having to configure the compiler, I'd suggest
> creating some simple wrapper scripts which simply add in the sysroot and
> possibly other compiler flag options you need. The main reason we
> accepted doing the change to the defaults is that there is a
> comparatively simple workaround available for those that feel as you
> do. 
> 
> We could even have that code in the main repo, I've just felt so far
> that letting people see whats going on is better than hiding it behind
> more magic scripts.
> 

No, I have no desire to write wrappers, I just wanted to clarify "the
right way to do things". Thank you very much for explaining it.

Chris.

