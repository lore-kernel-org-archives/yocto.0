Return-Path: <rudolf.streif@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E91AE003E3
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2012 22:42:10 -0800 (PST)
Received: by werf1 with SMTP id f1so4754627wer.35
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2012 22:42:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=4cQ8EgbPvNkhN57S5of364MK12g4znL2KAE7Bhz5GEA=;
	b=M/e+N8bXkmp4LLgVb7BzgNiutpaoK42xz2kolyb762nHruQ31Zr7Scrj1d8PvGDUGT
	D7b2ePlHZM7L6Rhj5I2D+7T/QwLjjJbDZUUzJTjouVrb3JBCHsqXIn/PsT1ClHNQiFFU
	u8mNTMOJNr8UYqvhZF4twX6+046vnDAbmp73o=
MIME-Version: 1.0
Received: by 10.216.132.4 with SMTP id n4mr409318wei.19.1328337727985; Fri, 03
	Feb 2012 22:42:07 -0800 (PST)
Received: by 10.216.184.17 with HTTP; Fri, 3 Feb 2012 22:42:07 -0800 (PST)
In-Reply-To: <CAMKF1sqcteBoCUatim7w=Sb0e0EMBxo57AwxYK8+KP_rUdfm5Q@mail.gmail.com>
References: <CAEKp-abaibKR9XZN8Ddnu4Tt6nWbCiaeJZFkNWZVFWE9ReOwjQ@mail.gmail.com>
	<CAMKF1spEvk-hdJgSyFHNX87jxC8jnipXD--K+e4i1L1yTjf_kQ@mail.gmail.com>
	<CAMKF1sqcteBoCUatim7w=Sb0e0EMBxo57AwxYK8+KP_rUdfm5Q@mail.gmail.com>
Date: Fri, 3 Feb 2012 22:42:07 -0800
Message-ID: <CAEKp-aaQw9a4WSr5OP+RMzGJD+CmAWyGRHeE5RLuZYn5=_xReQ@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Task Build Issue
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 04 Feb 2012 06:42:11 -0000
Content-Type: text/plain; charset=ISO-8859-1

Thank you, Khem. That does resolve the problem. Using just ALLOW_EMPTY
= "1" would also cover the other packages, I suppose.

:rjs

On Fri, Feb 3, 2012 at 9:04 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Fri, Feb 3, 2012 at 9:03 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> add ALLOW_EMPTY_ task-mytask-apps = "1" to your recipe
>
> no space there so it should be
>
> ALLOW_EMPTY_task-mytask-apps = "1"

