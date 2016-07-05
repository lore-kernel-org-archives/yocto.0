Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3770BE00DA2; Mon,  4 Jul 2016 19:39:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C23B6E00D9E
	for <yocto@yoctoproject.org>; Mon,  4 Jul 2016 19:39:03 -0700 (PDT)
Received: by mail-vk0-f43.google.com with SMTP id c2so248861131vkg.1
	for <yocto@yoctoproject.org>; Mon, 04 Jul 2016 19:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QGSgUXnVvtyRvBXgQSReZkYy54MPnH8fBhFQm7BfC6o=;
	b=P/2mDI44q2plBbp9fv3t+7uIZYL6xXhyoBbPs4MHr0FAblVEzEzzwB2o2Mq3aUXKeU
	+BVRmsTTYsQlAkvELHlku9OWNcWy3rImmG8Dz8xuQR8MfTfMYM9TD6CrcDBkom8aLmdM
	hiWCjF8PXYvWKg1yYSIaQ/Vo+4CZ9UEnyk4ilFlgjh7Odd3SIzsvleFhUAptLYQ0K4dR
	kAZGxlmg39b7DwrUlxVwOAoi137KKHw8d2qup1tv57SVyBYe2LBsB2n6UX9l9V3pddsS
	nEGzTyt/mwMbcjLdNBYMowqFwkxqnDKlX8QlpIDhlLIsDsidtWlxnYgAyD6ChFgW1w0L
	j7aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QGSgUXnVvtyRvBXgQSReZkYy54MPnH8fBhFQm7BfC6o=;
	b=aEQj17IjSlwEgsjmskJgIognYlmH6R8vbPEgwwFbQwhE2rQ/2uYXdXgP8uD5eZ1rUL
	dDRWtHJrpRiIsEEfQcrSlsyjD73PPdtEX3qJH1cMa0OqJsnCmIYDLtFNJ4pEzK33U6ZO
	m7D+4XABWomDlQNItIrJvfFB+UBmp70cjWK5CahMH7uyOEZ32+I3inTZMjzynU+pbFB9
	vMWHSDwwsBa8osq8AzSGVtyjUiuz756TgT1aY6jLVuvnfCVXv2Epfds+IDt/JZf/xXGT
	1Ke9L5MgDxuzoWchXnEnx4o7XZ7HUB+MGSEnm+WSsL5TTE/j1Ey4RLG3OkI0MsxYa3ZZ
	lMkw==
X-Gm-Message-State: ALyK8tKpHruEWqPabrHrzuDaUZZADbrpTjkPol072ZcZPwqOjnq7EQakZP0op2i0k+xFQ5l5EJdLReviXAfoxw==
X-Received: by 10.31.168.3 with SMTP id r3mr6402337vke.8.1467686342794; Mon,
	04 Jul 2016 19:39:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.37.233 with HTTP; Mon, 4 Jul 2016 19:39:02 -0700 (PDT)
In-Reply-To: <CY1PR0101MB1594E7914C1DF5636EA0F22BD7380@CY1PR0101MB1594.prod.exchangelabs.com>
References: <CY1PR0101MB1594413BBE9700E6A3EFC6E9D7250@CY1PR0101MB1594.prod.exchangelabs.com>
	<CAF3SDA4+AzfPjKDgxisVjdT_Guvujr6KLvXRVRZuTNZyOwTGpg@mail.gmail.com>
	<CAJTo0LbhtsE_bMdiVWrVkZWkHTero5Z+TDn0iuPzGivSH8239Q@mail.gmail.com>
	<CAF3SDA5CF1ihp3W6Lx1WpLpyiJ0v4ed14Aa1vTLWFyiHmdkZFw@mail.gmail.com>
	<CY1PR0101MB15943BB45183B750D36E8B60D7260@CY1PR0101MB1594.prod.exchangelabs.com>
	<CAJTo0LaQn3Yr0tp-eu92jSQ-UP=+qCopcKTXYOBcTa-4s7wnAQ@mail.gmail.com>
	<20160704181034.GE7411@nyx.americas.hpqcorp.net>
	<CAJTo0LbrpVBaagVA2ZuRCq8=LAY00=_TB1+az-wd23wyyi5K2w@mail.gmail.com>
	<CY1PR0101MB1594E7914C1DF5636EA0F22BD7380@CY1PR0101MB1594.prod.exchangelabs.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Mon, 4 Jul 2016 23:39:02 -0300
Message-ID: <CAF3SDA6b4KvDqrO-nsf1pOaydMCg655ziSGeeY=EYVpLi4Qsqg@mail.gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Shorter build time?
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
X-List-Received-Date: Tue, 05 Jul 2016 02:39:07 -0000
Content-Type: text/plain; charset=UTF-8

The only task that I see taking really long is the do_rootfs. And I
think that it takes that long because disks are slooow :)

2016-07-04 20:14 GMT-03:00 Takashi Matsuzawa <tmatsuzawa@uievolution.com>:
> By the way, PyPy seems to have some restriction that is not fully compatible
> with CPyhon and bitbake scripts may not run as they are.  I tried it
> yesterday and learned that it is not a simple in-place replacement.
>
>
>
> ________________________________
> From: Burton, Ross <ross.burton@intel.com>
> Sent: Tuesday, July 5, 2016 3:50 AM
> To: Marcelo E. Magallon
> Cc: Takashi Matsuzawa; yocto@yoctoproject.org
> Subject: Re: [yocto] Shorter build time?
>
>
> On 4 July 2016 at 19:10, Marcelo E. Magallon <marcelo.magallon@hpe.com>
> wrote:
>>
>> That is true, but I've seen cases where the start up time of Python (or
>> the time it takes bitbake to start "doing work") is *perceptually* much
>> larger than the work done by the recipe, or at least it looks like it
>> represents a sigficant fraction of the total work. That's where PyPy
>> might help.
>
>
> Measuring that overhead should be fairly simple, and if it's true then
> having a pool of workers would be a good optimisation.
>
> Ross
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Do or do not. There is no try"
  Yoda Master

