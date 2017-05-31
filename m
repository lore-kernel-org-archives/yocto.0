Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23137E00B01; Wed, 31 May 2017 11:20:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0A70E00992
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 11:20:07 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id d127so5555300wmf.1
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 11:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qXviFvofSzSkjGS8vadHBNOTPWq28UjIR5+k+L+2tQc=;
	b=Wu3tVhC9nhi9ywOi2JMbNnY5hE7mE04hsz3mVKyweQys6uap0uiNQqesyqZyo1CRis
	+sOQffd7i9Dwau5x7Qa4R2d4IPD9HlWmLuJgsqLkWPwsr4k2cZ+92PKZCwwNDHlwBiAp
	dU+bfa5XdZgz0M3LPBnazd+PwKH9q7CAxOeIjXqNnMw2rnGYlE+S099jSYy2XPf9TCyl
	RPru1pWIOUdqtZJCo4NmOMEjXAg1q6rndJe+mWmqkyZaSJNKkb0RLRLKlAh569xjQrNM
	qqWTDs0+UL/giDDSPfkW0RfaYgPq8Lx6Pp+o86QD93+mZCd3UYrJa+LU8DsLebvXsCpR
	PW/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qXviFvofSzSkjGS8vadHBNOTPWq28UjIR5+k+L+2tQc=;
	b=NNUHemU1b3ynaq/8KSinUFbcmvIUB6033OD69MHcoLnwe5aWwiz+jSFAUzQZoXdsWC
	VpXIdnrwEvnReJpLtnlYobUPIaIP5wnj8dBbJRUMUjqy9QUS/t1iMA6CuX6dkX/QLxeU
	fbE+WBncerk2i4OJIxuI9MHMTo3opj0qPPfo+XzMhFdndNMzVitHovx7feorJGzQiJiP
	BqnSPv/xAFUsPxL+tZ8yUQ9GCn9y7Byi+1s0YoFZ0T2PjCj+Fh9fPz8sGmUw0vD1dBqv
	EfgHaPxtZe+2xvSYaw0dsmmJS05zUvZePo6bQx33xo/S0vtv02Nw0T1F4sqECBBv+IT0
	m0Jg==
X-Gm-Message-State: AODbwcBoV70gEtodfe5dSqXhJa33HS1z/teNuBeyl04Kq81pwUbNoUVS
	5mNcO9s0fQ4FSUEKyNuKzzkrtLtviA==
X-Received: by 10.223.136.131 with SMTP id f3mr4898017wrf.151.1496254805604;
	Wed, 31 May 2017 11:20:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.176.148 with HTTP; Wed, 31 May 2017 11:20:05 -0700 (PDT)
In-Reply-To: <CADkTA4PERsWGmb+Zq4nu4TVeAUdH-JSE4AvJpsJ0MZRcwfHvSA@mail.gmail.com>
References: <20170530184434.35089-1-alejandro.hernandez@linux.intel.com>
	<1496174354.26945.54.camel@linux.intel.com>
	<d3161d0d-4452-20fb-c9fa-8b234dc1caa5@linux.intel.com>
	<CAJ86T=V0UGAjZOwC54bu0T=PoycdkTabZJJQvRf3_gn0Thnhsg@mail.gmail.com>
	<743ad939-371f-9396-c159-ac5844f9ebda@linux.intel.com>
	<CADkTA4PERsWGmb+Zq4nu4TVeAUdH-JSE4AvJpsJ0MZRcwfHvSA@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 31 May 2017 11:20:05 -0700
Message-ID: <CAJ86T=XKv1Ad1gk0NGNgh6dWRh60S3Prd2Fp936DS=r7Po_sVw@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] yocto-bsp: Fix QEMUARM based bsps to not offer SMP support
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
X-List-Received-Date: Wed, 31 May 2017 18:20:11 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, May 30, 2017 at 6:15 PM, Bruce Ashfield
<bruce.ashfield@gmail.com> wrote:
> On Tue, May 30, 2017 at 6:52 PM, Alejandro Hernandez
> <alejandro.hernandez@linux.intel.com> wrote:
>> On 05/30/2017 05:32 PM, Andre McCurdy wrote:
>>> On Tue, May 30, 2017 at 1:12 PM, Alejandro Hernandez
>>> <alejandro.hernandez@linux.intel.com> wrote:
>>>>
>>>> Hey Leo,
>>>>
>>>> Nope, this change only applies to qemuARM, the other ARM based BSPs are
>>>> based on > ARMv6
>>>>
>>>> Alejandro
>>>>
>>>>
>>>> On 05/30/2017 02:59 PM, Leonardo Sandoval wrote:
>>>>>
>>>>> Alex,
>>>>>
>>>>> is this change only applies to qemu arm? I wonder if the native arm
>>>>> arch
>>>>> needs a similar series.
>>>>>
>>>>> Leo
>>>>>
>>>>> On Tue, 2017-05-30 at 11:44 -0700, Alejandro Hernandez wrote:
>>>>>>
>>>>>> The SMP kernel config presents issues on qemuarm because:
>>>>>>
>>>>>> CONFIG_SMP=y
>>>>>> Dependencies Missing:
>>>>>>     - CPU_V6K or CPU_V7:
>>>>>>       These are selected by setting:
>>>>>>       CONFIG_ARCH_MULTI_V7=y
>>>>>>       or
>>>>>>       CONFIG_ARCH_MULTI_V6=y
>>>>>>
>>>>>> But our QEMU + ARM BSPs are based on armv4/v5 hence they are
>>>>>> incompatible with CONFIG_SMP.
>>>
>>> Maybe time to think (again) about updating OE's qemu ARM builds to ARMv7.
>>
>> I believe qemu has deep issues with newer ARMs, and thats why it's been
>> kept like that.
>
> Qemu itself should be fine with the newer ARMs .. but we've just targeted a
> lowest common
> denominator (and simple) ARM arch for this target. Since the primary goal
> isn't testing the ISA or arch
> specifics via qemuarm/qemuarm64 (rather, sanity, base arch support, etc).
>
> That being said, as long as a newer platform/board was chosen that had full
> disk support
> (something that the qemuarma9 lacks), then it is feasible to do an update to
> something
> newer. Alternatively, we could keep the platform the same and update the CPU
> definition .. but
> there's not a huge value in that.

Keeping the existing platform but updating the CPU would have the
advantage that qemuarm could then share binaries and sstate with real
world ARM targets.

It would also be a step towards defining an official "generic ARMv7"
tuning target within OE, which could be used as the default
DEFAULTTUNE for all ARMv7 targets.

> But if we did bring in something newer, we'd have to drop the existing
> qemuarm and document that
> we aren't doing any coverage on the older ARM arches.
>
> Bruce
>

