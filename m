Return-Path: <kunyi@google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29BDAE00571; Fri,  2 Dec 2016 10:36:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
Received: from mail-qk0-f182.google.com (mail-qk0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BB90E00503
	for <yocto@yoctoproject.org>; Fri,  2 Dec 2016 10:36:28 -0800 (PST)
Received: by mail-qk0-f182.google.com with SMTP id n21so287793226qka.3
	for <yocto@yoctoproject.org>; Fri, 02 Dec 2016 10:36:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1GdjyKq7RLlATdzocU9fjrElw6JxFkHA1jl734+4cms=;
	b=eFtflaaxGvpfGkmyzNwhN1Rte+PHegPFAvmHKTbXYhToxxugrVeUi8WnEn9jOyPQwE
	chXLxEn38nUYW3RMOhxn7tCoNJb0S5yTtHELbGOS/OLNrCLZdEMgC3QCXQeYhyBv1U6p
	kOh6+2NBVvUqOlww/eLuXtL+uJvk7L+IUZgD2WNoQd+LB6Y5tJr2l8LUHw/rqDypQSeq
	z+B5G57pD1c5RGMw87Q0zIpn7kjZuhv/2VXoFZAQ1rWLpteAHqstpGHDnfDhSNEnxV1B
	tTcy7G4oikBCBguBO3aBIBPP7XUHkehkXd41/BD90AqXT37YPhwNJ2enLdymDz8NGDSO
	61Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1GdjyKq7RLlATdzocU9fjrElw6JxFkHA1jl734+4cms=;
	b=P9ZMIidz+JRATGk5gg4ZisVrDQViXMoG6/tFwyph6KXbwiPtDvSoG3FmCuSEvqZ+tM
	y+ZnRxPr0d0At4etC06W1ZPbMuSuG6c88W1Qxrq3Z7TbnC/COfoYzPJnAgP/aNhnLdTO
	y9BXhv1tQnBR879/pzWI9EE00z6Ci7jBCBwew27AmIg/lgdsSErDSVjNfxNpvcI050Gn
	2HSOrEGIN7Kd+JWD7UEkCwGxIOyAMadMOaQ/couyzdUHF1oKf610lPT5cLjE7xudhyqL
	0Xg5JumFu2FG+drCcbdkWsHX9I1qjvCbTzNZkH7duj09kA5eUUTzJFZzxcNpSYBodyy6
	s6KQ==
X-Gm-Message-State: AKaTC01a8LNtrzLMehCQBcep5uuyMMt9s7XAq9ROa3mUETPjIjLhlt9WVwH5ENB4OtTxlDaPtVwQ1gpHvlFLGyBg
X-Received: by 10.55.163.138 with SMTP id m132mr38995178qke.88.1480703787539; 
	Fri, 02 Dec 2016 10:36:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.19.175 with HTTP; Fri, 2 Dec 2016 10:36:07 -0800 (PST)
In-Reply-To: <aad8d580-b2f9-4cd1-9e2a-d355f6f7cf2e@linux.intel.com>
References: <CAGMNF6VXO9PzmXEb-tPHnw7zxRAM-pUgHa3O2XUVKE2xYidD1A@mail.gmail.com>
	<aad8d580-b2f9-4cd1-9e2a-d355f6f7cf2e@linux.intel.com>
From: Kun Yi <kunyi@google.com>
Date: Fri, 2 Dec 2016 10:36:07 -0800
Message-ID: <CAGMNF6ViY9i1Rx5Qf4AsSaoqTLhCuSGvJoxOo5SC6NFwKTfknQ@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto doesn't recognize cross-compiled binaries inside SDK
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
X-List-Received-Date: Fri, 02 Dec 2016 18:36:31 -0000
Content-Type: text/plain; charset=UTF-8

Thanks for the explanation Alex! Will give the alternative you suggested a try.
As I understand I will need to instruct Yocto to fetch necessary
"native" toolchains and libs to compile the native variant recipe.
Doesn't that make my recipe non-portable to other host architectures?

On Fri, Dec 2, 2016 at 3:39 AM, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
> On 12/02/2016 10:36 AM, Kun Yi wrote:
>>
>> I'm trying to use SDK for an existing image to run cross-compiled code
>> on my host machine. My target is ARM and host is x86_64. The SDK has
>> arm-openbmc-linux-gnueabi toolchains installed. (The rationale is to
>> build and run C++ unit tests for the modules that I'm developing on
>> the host, but that's not relevant)
>
>
> Perhaps it is relevant - an alternative approach is to build the unit tests
> and modules for the host machine (by enabling a native variant in the
> recipe), and then they should simply run. If you are not testing
> ARM-specific code, then it shouldn't matter.
>
> Generally, we don't attempt to run target unit tests on the host machine -
> they go into target image, and are executed natively on the target.
>
> Qemu emulation for running binaries kind of works, and we use it for a few
> things like gobject introspection and pre-generating data caches, but it is
> notoriously tricky and prone to breakage.
>
> Alex
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Regards,
Kun

