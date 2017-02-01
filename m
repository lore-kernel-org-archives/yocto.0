Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BF02E009A5; Wed,  1 Feb 2017 08:36:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0B5DE00546
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2017 08:36:15 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id 3so16840941pgj.1
	for <yocto@yoctoproject.org>; Wed, 01 Feb 2017 08:36:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=ufLbtz96Rylm16igqi27feXUFRVw+TBSZPbEPiiSYwM=;
	b=gVjuwtdLZgvWwM33xZosNfuusfufDY095Gk08KUcVbwf2cbtdzU1T8TrqDPZna8KXO
	adA9FnUktSZUsjv+QxAE7hC515HWuD9U5x0BCUigUqlPX6wJ1gvqUwKkMUmQ5SMejzwh
	C/hjnmWEEQu1rBxPsJXW5GfZjdfA6qGThGDzImjRklMy+Qpg/ymPk0w4Envx6LwRR112
	Gdrxy0k7L+5sy0jB3fgFbUA+8KwRAnVWm7f3fVBdgJ7QNqJ4njUe+lUMOpQbNIWQEVth
	/21fEscmqd7cTxJjIBrS6daGqQWiLTxoXz1bCdfTB6cfmLPm1djaIf2ewFNaKo4ag2Wp
	woUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=ufLbtz96Rylm16igqi27feXUFRVw+TBSZPbEPiiSYwM=;
	b=eKQFeICIvAvO8QcA9cIxjYpy1tMuRCAqCvPRPLhsaekzWpAP7b+xpkXubFD6fDW0dd
	w12I8bo6gfSlU6+fSVdYKh0E0s/IZp7xetA0uaoJI31x1Zsdv+WIk2s6VcbPy962uoNj
	FLAov8MN6zDCjI3z1i8UU60sqc0avWxyEpXC3fFqKsysaz6vjy12FNztoY8yfkYRofSF
	i5xB319HweUGmfac6627mmdmAUsViIu1xrvG5UUZqmlf/9MUnme9gJ8RpljBqIg48zuA
	hrkWVCoR0f2fV2UTHEeFtPGq131NsRpuv57fHHZBQFgtf2Azmu3zs1Xaq+M2PvahpxrQ
	sc6Q==
X-Gm-Message-State: AIkVDXIigACXikjXKYiBEIYqcd1aNOvp8gI7rtU8Y98io8oL+gjGBpn+4Z59Syt7bPt4ag==
X-Received: by 10.99.155.18 with SMTP id r18mr4681942pgd.193.1485966974623;
	Wed, 01 Feb 2017 08:36:14 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:8ce9:48a5:c3c4:adfc])
	by smtp.gmail.com with ESMTPSA id
	l22sm51224680pgc.43.2017.02.01.08.36.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 01 Feb 2017 08:36:14 -0800 (PST)
To: Prasant J <pj0585@gmail.com>
References: <CAA2DH4uR5R_jwLEwXdzhUC=C4yFEqmRe8c5nqCCFEc_XsW9ENQ@mail.gmail.com>
	<7f1f57c3-7034-b122-a87e-f0b3804d6e9a@gmail.com>
	<CAA2DH4tkbKV0cdpRiGSXPvGVY6JuaCH51MQyiVuh3X8tdOPX=Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <2269318b-e9f5-50fa-ad35-e22ee57389c9@gmail.com>
Date: Wed, 1 Feb 2017 08:36:16 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAA2DH4tkbKV0cdpRiGSXPvGVY6JuaCH51MQyiVuh3X8tdOPX=Q@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Is it possible NOT to split kernel modules in multiple packages
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
X-List-Received-Date: Wed, 01 Feb 2017 16:36:18 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 1/31/17 10:18 PM, Prasant J wrote:
> On Fri, Jan 27, 2017 at 7:18 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>>
>> On 1/25/17 11:29 PM, Prasant J wrote:
>>> Hi,
>>>
>>> I'm using Morty release to create my custom BSP package for cortex-a5
>>> based processor.
>>>
>>> I'm using my own custom kernel recipe that inherits kernel.bbclass
>>> (which inherits kernel-module-split.bbclass)
>>>
>>>
>>> All the modules are split in their own rpm packages. Is it possible
>>> that  only one RPM package is created for all kernel modules and there
>>> is no split?
>>>
>>
>> I guess you want to include all the modules into your image. In that
>> case you can add
>>
>> MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
>>
>> in your machine config.
>>
> 
> 
> @ Khem: Thanks for response!
> 
> Yes, I want to include all modules. ALSO (more importantly) I want
> only one RPM for all modules. Instead of 50 or more rpms I would like
> to have only 1 rpm which has all the kernel modules. Is it possible?
> 
> The reason I want this: I have my own GUI for system package
> management for our end-users. I want to make it simple for them to
> install newer modules by installing only 1 rpm.

You can write a bbappend for your kernel recipe and remove the module
splitting function from list of tasks e.g.

PACKAGESPLITFUNCS_remove = "split_kernel_module_packages"

be aware, it will only affect modules generated with kernel recipe
external kernel modules will still be packaged the way they are


> 
> Regards, Pj
> 

