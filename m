Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32443E00B01; Wed, 31 May 2017 17:57:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD933E00992
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 17:57:44 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id d127so7390035wmf.1
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 17:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0p5mf1Kb8EeN+3MEKnsRdr0mabtccSoUzQIUc2efzfI=;
	b=gvSmhJPuyuW6P3X63P4qVLP7uDs3vnVkvpjRJYC7Ncei0EN6ncPMCHamNM6FZjbpFi
	4nJKjbMyJ1YF8DvdS2dxvEC0ujh3ygm7LaIX09Dcs0v3c2z32EboLJZpWmXvwHXeflNl
	cijiBBr8VcYpL2PslyxTDmhJz4ySTxgmony8g6Ikuj7RlQFQMQqxaD9jBErhmD3gpe/G
	qCZC5yzjY8PfvxqSDuTNXNT7rq7dq6zUjivuLO01WB7uQnPacPhGpD8S6uCKywjV6BHI
	sjdBXQJdVoiQFXg9GD506cCuf9NEQAOj/XfY7sjLKxe6aHdXOkPQwhPMw0wUnkyzfNAa
	+p6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0p5mf1Kb8EeN+3MEKnsRdr0mabtccSoUzQIUc2efzfI=;
	b=bGSzIpFPX5N4PtX4XRcgiAOUo8FmFhaPq0+eVQlXZXzW4UnI5uwWOF7v6f3Wrmurz3
	qKu4XBfuhcfW9JtTut2Wr0og/LyFLn+i/NMaPNheabSnG2eeQyfI+CQmy7PQoBT71j7v
	2Tkdxm9b4fJo/RYfmSx/v/XkAtozF4NqG/2zmUO9JWXltHt4xBNPxXI1mEwJ1fSeutic
	00qSFada++NxA99T+FQ4A5lp2zQ2YI6wNQ5FbkKnkwURi/D8h1AgB2UeFuQJv0Z6Jn17
	qeYiXsSl9zw7zh7GKVE4HVk8ZXTxzAqO+QgYgc9nVb+TtwCoE5hW+3iTKD+K1KRNQ+LH
	LwEQ==
X-Gm-Message-State: AODbwcBY2ly/hD+ZlasZ6M3oXtjxZNn7vrfkPmpe2p8MQ6YQM0LibFrS
	vLUWdU/dFaMBdjJmwLK6rd6WxT5BFw==
X-Received: by 10.80.137.56 with SMTP id e53mr23209270ede.67.1496278663457;
	Wed, 31 May 2017 17:57:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Wed, 31 May 2017 17:57:12 -0700 (PDT)
In-Reply-To: <80089ee8-d747-e95c-02f4-72dffc3fd3d2@linux.intel.com>
References: <20170530184434.35089-1-alejandro.hernandez@linux.intel.com>
	<1496174354.26945.54.camel@linux.intel.com>
	<d3161d0d-4452-20fb-c9fa-8b234dc1caa5@linux.intel.com>
	<CAJ86T=V0UGAjZOwC54bu0T=PoycdkTabZJJQvRf3_gn0Thnhsg@mail.gmail.com>
	<743ad939-371f-9396-c159-ac5844f9ebda@linux.intel.com>
	<CADkTA4PERsWGmb+Zq4nu4TVeAUdH-JSE4AvJpsJ0MZRcwfHvSA@mail.gmail.com>
	<CAMKF1srefrF0jZMm2hPUZ_q7TcfuxmMuRiVXcPVDsZNu51V88Q@mail.gmail.com>
	<80089ee8-d747-e95c-02f4-72dffc3fd3d2@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 31 May 2017 17:57:12 -0700
Message-ID: <CAMKF1sq4cA+hT0oJNqVMLpY08hAHv-SfEXGL0bbS5tESyaanEQ@mail.gmail.com>
To: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
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
X-List-Received-Date: Thu, 01 Jun 2017 00:57:47 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, May 31, 2017 at 5:41 PM, Alejandro Hernandez
<alejandro.hernandez@linux.intel.com> wrote:
> On 05/31/2017 01:46 PM, Khem Raj wrote:
>
>
>
> On Tue, May 30, 2017 at 6:15 PM, Bruce Ashfield <bruce.ashfield@gmail.com>
> wrote:
>>
>>
>> On Tue, May 30, 2017 at 6:52 PM, Alejandro Hernandez
>> <alejandro.hernandez@linux.intel.com> wrote:
>>>
>>> Hey Andy,
>>>
>>>
>>> On 05/30/2017 05:32 PM, Andre McCurdy wrote:
>>>>
>>>> On Tue, May 30, 2017 at 1:12 PM, Alejandro Hernandez
>>>> <alejandro.hernandez@linux.intel.com> wrote:
>>>>>
>>>>> Hey Leo,
>>>>>
>>>>> Nope, this change only applies to qemuARM, the other ARM based BSPs are
>>>>> based on > ARMv6
>>>>>
>>>>> Alejandro
>>>>>
>>>>>
>>>>> On 05/30/2017 02:59 PM, Leonardo Sandoval wrote:
>>>>>>
>>>>>> Alex,
>>>>>>
>>>>>> is this change only applies to qemu arm? I wonder if the native arm
>>>>>> arch
>>>>>> needs a similar series.
>>>>>>
>>>>>> Leo
>>>>>>
>>>>>> On Tue, 2017-05-30 at 11:44 -0700, Alejandro Hernandez wrote:
>>>>>>>
>>>>>>> The SMP kernel config presents issues on qemuarm because:
>>>>>>>
>>>>>>> CONFIG_SMP=y
>>>>>>> Dependencies Missing:
>>>>>>>     - CPU_V6K or CPU_V7:
>>>>>>>       These are selected by setting:
>>>>>>>       CONFIG_ARCH_MULTI_V7=y
>>>>>>>       or
>>>>>>>       CONFIG_ARCH_MULTI_V6=y
>>>>>>>
>>>>>>> But our QEMU + ARM BSPs are based on armv4/v5 hence they are
>>>>>>> incompatible with CONFIG_SMP.
>>>>
>>>> Maybe time to think (again) about updating OE's qemu ARM builds to
>>>> ARMv7.
>>>
>>> I believe qemu has deep issues with newer ARMs, and thats why it's been
>>> kept like that.
>>
>>
>> Qemu itself should be fine with the newer ARMs .. but we've just targeted
>> a
>> lowest common
>> denominator (and simple) ARM arch for this target. Since the primary goal
>> isn't testing the ISA or arch
>> specifics via qemuarm/qemuarm64 (rather, sanity, base arch support, etc).
>>
>
> I think it will be more effective if we tested most used configuration
> instead, it would help a larger community. GCC 7 also dropped armv5 ( the t
> variants are still supported )
>
> I would think keep the name qemuarm but use armv7 based machine to emulate
> would be an option I am sure meta Linaro has some work on this that can be
> used in oe core
>
>
> I would also assume they've got some work on this, it'd be nice to contact
> them and see if this can be done, although I asked on IRC several times to
> see what people thoughts were on if we should upgrade and I practically got
> no feedback.

http://git.linaro.org/openembedded/meta-linaro.git/tree/meta-aarch64/conf/machine

http://git.linaro.org/openembedded/meta-linaro.git/tree/meta-linaro/conf/machine

looks at genericarm* conf files.

