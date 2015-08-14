Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A618CE00A71; Thu, 13 Aug 2015 17:57:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91419E0095C
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 17:57:50 -0700 (PDT)
Received: by igbjg10 with SMTP id jg10so2629827igb.0
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 17:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=eS4yXNdy4HGRVNaEWmmGAJ/msl2TfB711WpuMtltimc=;
	b=bHuKc9GlLekEfkFrgmJXM26xF27TCdGH0kys9iD5asT22RpZplpCFq4RtUuRCTzDT5
	4aM5kk24DfxKKNTd74pNQ9kqWppFqPn+8BaC/iFHQwqZTObhuPaVmM3uOxHfd3hQ4xO9
	UliLCeeY1lghVaR/b731z0/u/ksm0WuY8UUEEotW2KTnw0fABoPoRCuPMP4m3j6AX0T5
	t5EjMI9mErOgrLq2y+nAK2qJ4soBZFpPPExXWzhn+lQnTD4n8oDyQgiQQN9oXwtRGLSG
	fEYC2wAEpgMKknbbFd5uSPG2VaGqgLmFIPTTrAR5usXLc0FhARkrsLSXkn+Q6w0J32QO
	n5pA==
X-Received: by 10.50.17.66 with SMTP id m2mr171959igd.77.1439513869702; Thu,
	13 Aug 2015 17:57:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.79 with HTTP; Thu, 13 Aug 2015 17:57:20 -0700 (PDT)
In-Reply-To: <CAN-NoH2e4M=aX7Las_osh7ONyz=SmJSp3=qDQ4BG_i5y-9E1Fw@mail.gmail.com>
References: <CAN-NoH3Z-=RLKqcGvj0V7yAzM4ofT1hVN2r2hfyEL=9EvVqj_A@mail.gmail.com>
	<CAMKF1soi6wZ=KsfHTRfvj3V3q6U92KHti-Lv-w7-vD284Q2b+w@mail.gmail.com>
	<CAN-NoH2e4M=aX7Las_osh7ONyz=SmJSp3=qDQ4BG_i5y-9E1Fw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 13 Aug 2015 17:57:20 -0700
Message-ID: <CAMKF1sozjnGeP2ESZnK3i0W2NhvhxdU6CsrfLYeYn74j8dAdDQ@mail.gmail.com>
To: Richard Cagley <rcagley@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: fido qt4-embedded packaging problems
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
X-List-Received-Date: Fri, 14 Aug 2015 00:57:51 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 13, 2015 at 5:47 PM, Richard Cagley <rcagley@gmail.com> wrote:
> On Thu, Aug 13, 2015 at 4:43 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> On Thu, Aug 13, 2015 at 1:56 PM, Richard Cagley <rcagley@gmail.com> wrote:
>>> When I try to bitbake core-image-minimal-dev I get an error involving
>>> cpio when I include qt4-embedded in my CORE_IMAGE_EXTRA_INSTALL list.
>>>
>>> I looked in the log file and I see a bunch of "PT_INTERP segment not
>>> corresponding to .interp section" and "STT_GNU_IFUNC not handled on
>>> ARM yet" errors and then a final failure about rootfs creation due to
>>> cpio.
>>
>> these are prelink errors. Which release are you on ?
>>
>
> fido with poky and meta-xilinx. 1.26 for bitbake.

ok

>
>>>
>>> Is there something special I need to do to include qt4-embedded for an
>>> arm target?
>>
>> No. Although as a workaround you can disable cross prelink by removing
>> it from USER_CLASSES
>> in local.conf and see if that works then we know its a prelinking issue.
>>
>
> I removed image-prelink from USER_CLASSES in my local.conf and got the
> same result.

can you remove tmp/ and rebuild ?

