Return-Path: <rcagley@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF1C8E00A75; Thu, 13 Aug 2015 17:49:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rcagley[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5D69E0095C
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 17:47:20 -0700 (PDT)
Received: by igui7 with SMTP id i7so2645867igu.1
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 17:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Sa4Lf9Q5LWIYDwlgAVfY4pmP+a7frRnE0jMiHHvMmqo=;
	b=uKxjYYkUnu80IAkN0YDmCmfh+T1QGy6jNTJHm2CUd5/WoQHhIOm/pI1syR/FWTrO1e
	0TWJj/eFs7BoujMRIuV1VEYgJLH0mgFVb78CFncxvInmiY5jitvWzzGwt6w5NV/v3yzg
	3YRSXPwaGQ+BiuVWOfnpTffXfGmAifuTwsc03e1m8RUFEsI+gIDMr40934TPP/VZY0E6
	gfOdOkRoLsbH2ObGIDl9O55hk1//XwUxtxPAtEn5sqYqdxu7knQVAg6iqDlqCk3gW3Tc
	MdTjhKxt2El2LqfVpCDdg+u6avFLSHYdTQulFegsQIHD2My7kG4I5jTBGSC1P35k28jr
	cEuw==
MIME-Version: 1.0
X-Received: by 10.50.98.3 with SMTP id ee3mr205719igb.10.1439513239824; Thu,
	13 Aug 2015 17:47:19 -0700 (PDT)
Received: by 10.107.153.131 with HTTP; Thu, 13 Aug 2015 17:47:19 -0700 (PDT)
In-Reply-To: <CAMKF1soi6wZ=KsfHTRfvj3V3q6U92KHti-Lv-w7-vD284Q2b+w@mail.gmail.com>
References: <CAN-NoH3Z-=RLKqcGvj0V7yAzM4ofT1hVN2r2hfyEL=9EvVqj_A@mail.gmail.com>
	<CAMKF1soi6wZ=KsfHTRfvj3V3q6U92KHti-Lv-w7-vD284Q2b+w@mail.gmail.com>
Date: Thu, 13 Aug 2015 17:47:19 -0700
Message-ID: <CAN-NoH2e4M=aX7Las_osh7ONyz=SmJSp3=qDQ4BG_i5y-9E1Fw@mail.gmail.com>
From: Richard Cagley <rcagley@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Fri, 14 Aug 2015 00:49:30 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 13, 2015 at 4:43 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Thu, Aug 13, 2015 at 1:56 PM, Richard Cagley <rcagley@gmail.com> wrote:
>> When I try to bitbake core-image-minimal-dev I get an error involving
>> cpio when I include qt4-embedded in my CORE_IMAGE_EXTRA_INSTALL list.
>>
>> I looked in the log file and I see a bunch of "PT_INTERP segment not
>> corresponding to .interp section" and "STT_GNU_IFUNC not handled on
>> ARM yet" errors and then a final failure about rootfs creation due to
>> cpio.
>
> these are prelink errors. Which release are you on ?
>

fido with poky and meta-xilinx. 1.26 for bitbake.

>>
>> Is there something special I need to do to include qt4-embedded for an
>> arm target?
>
> No. Although as a workaround you can disable cross prelink by removing
> it from USER_CLASSES
> in local.conf and see if that works then we know its a prelinking issue.
>

I removed image-prelink from USER_CLASSES in my local.conf and got the
same result.

