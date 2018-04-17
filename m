Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05E8BE00A1C; Tue, 17 Apr 2018 07:04:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.66 listed in list.dnswl.org]
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8B4EE00831
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 07:04:44 -0700 (PDT)
Received: by mail-oi0-f66.google.com with SMTP id e123-v6so18026814oih.13
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 07:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CQYQO+6zgFG3V74Sm94nmIaVK26qm8O42zrXs5JXkZQ=;
	b=Eb02mgmeQ3+qqk1kEcRQ//suDwxnAlyexUl0hqYjEPf80W9jdJMb/u9R1vbmPiMjG5
	y18Qsr/ZLKZy/TM3sPML/vlLrHE6SpocBCRK2e4f08sIqaQWI2ywIm7senIgO61BqMti
	wBZgCWMRHiE9DTdb22GkAy5X7Uerxv0V/wL20q6uwUR4QxIsvFvPgwYz22viS+/0zB03
	ynduIRsNEHNdDPucYW2nKWvxTTxO0tcqN/SU8Fl9fMDd3eEAw2G8TZ1pp38Y1S4vAUYB
	xJfZ/CcfBOwMVTT6iiznnYfgQaPxfPfkgU0n+CDN+j4uIeyFP4e28vhcNcSP+gl3os4y
	m3MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CQYQO+6zgFG3V74Sm94nmIaVK26qm8O42zrXs5JXkZQ=;
	b=CZ+IgEL+gHJ5YLV7iHW9enQ/FbSNzLsMnA7sINA7vSMIteFkyC3KkBTvdjXeltvvKz
	T1+vDIm6li20lrpJZIAypvtyjV+nqaOSSurNXXqSOfIVn/L4L1/s7fiOORLzlP5Y4D8y
	s417XIsa2IrHu3Q2hJaz0lGih5M9q50pjQ7JgPk80IJZYiuHbIAdWjxIkSLGsWaulf2q
	fJsJIMOYpRO1LPoHb9XpxrzhpP4ufYB/+zEd9c9bM8nb12BrzJ+azWOVQ/MUSrN0aEW6
	BxjY58DOVcsNfjLZ4jChCc/lJtKhUEHkvdC3ch3zDuYl4Gtl0jKAnQAitXuRZhZtKSAo
	XQ8A==
X-Gm-Message-State: ALQs6tBS6gUXn9JRE7V7Sfn2RpPpVgyApFXlB//dzsnomRxGIBWuIZlX
	j2pR6YW467StL+AO4zMK+3qQxg6XSWFNjZhVAzY9rQ==
X-Google-Smtp-Source: AIpwx4+RzUem/FDpXMEOytHXfbwvdDQ789Qz7xBJIrnfVI8XUsS9Y4qzg6vszIPyd7kh2fEEGgHtiD8smQpMLTf0eyY=
X-Received: by 2002:aca:ea06:: with SMTP id
	i6-v6mr1358422oih.235.1523973883881; 
	Tue, 17 Apr 2018 07:04:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.138.17.198 with HTTP; Tue, 17 Apr 2018 07:04:23 -0700 (PDT)
In-Reply-To: <CAMKF1so57MArfaf_OGL_EnbWoPdLToK5t1FLnvXQnq57-Yr5Lg@mail.gmail.com>
References: <f082fcef-b5c2-203d-849a-cd39bd349a79@numalliance.com>
	<CAALXFYxkizrNiHLUsOUUz88Fgk+v039B+RYivtPhn84ydZd17A@mail.gmail.com>
	<42b9a571-d0fd-d970-729f-39d6cac69358@numalliance.com>
	<CAJTo0Lb16CBPXF0EB=1XRjkqrENFd2ScWqU0fJWe7PZbBMnDtg@mail.gmail.com>
	<CAMKF1so57MArfaf_OGL_EnbWoPdLToK5t1FLnvXQnq57-Yr5Lg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 17 Apr 2018 15:04:23 +0100
Message-ID: <CAJTo0LZ6oypk2+jpDaPq_PA1PrC_m9Nysp_gXYUHNz1aSv3_Ug@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: compiling core-image-sato failure on 32 bits system
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
X-List-Received-Date: Tue, 17 Apr 2018 14:04:51 -0000
Content-Type: text/plain; charset="UTF-8"

On 17 April 2018 at 15:03, Khem Raj <raj.khem@gmail.com> wrote:
> On Tue, Apr 17, 2018 at 3:13 AM, Burton, Ross <ross.burton@intel.com> wrote:
>> If you've an i5 why are you running a 32-bit OS?  Just so you're
>> aware, it's practically impossible to build webkit on a 32-bit host
>> because there just isn't enough memory available.
>>
>
> you need 8G of RAM minimum or reduce your -j factor to 1 and have a lot of swap
> you might get lucky

I've seen webkit fail to build on 32-bit systems because the linker
has ran out of virtual address space.

Ross

