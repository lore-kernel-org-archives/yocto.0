Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89C83E00E09; Thu, 15 Dec 2016 17:32:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MISSING_HEADERS,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.176 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B5ABE00DFF
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 17:32:45 -0800 (PST)
Received: by mail-qt0-f176.google.com with SMTP id p16so72527914qta.0
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 17:32:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:cc; 
	bh=ITvvvn+bQ5NhUPGb/ctQYiKp9SrxiLIQ+GsrxYR6vf0=;
	b=m9ycgV8zyAvwCjxBLCWczKh0VMNRtHY3A/7lMOGD4A46riAsiniTsVjjBff9TVa9oU
	CuzIYX8ZSYdBTQGmbCFCMGQiEyrrvkgnw56JtOqyWL737PASsGudSszi0zEKv5ph9tgb
	i1ChOL+zNZJ/1cUj6WKNFmtxhs2ihb96px41MQXuJcUGk+mEFmImcEkY5wrDjcoGGdcb
	6Al3PYBi8JvtJETV3OXOqPZEDYi1AB1bfYz5uX/F1TEc5aZc+/MbiNr6AOLvknd/9zWz
	s89M9qaVwqxcaTBcitgKxunPfLxhQZvxC0H/6C3Zglz7eGyQvd6kKy+u2r8wYMhSN0Sb
	RzAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:cc;
	bh=ITvvvn+bQ5NhUPGb/ctQYiKp9SrxiLIQ+GsrxYR6vf0=;
	b=PsqqCzKh17IbC54TdOIaIOOp6nVA4XIDv3sXGEvU/+XuP9rOL1JIwp+CRs/o2mKFjV
	gc9Y6t0rz5WCbIHdoROYII2U53auCnwbBsY5mzxeAb3Gos7tseq5gpqVZQokU3JL6xp+
	5FwhCTeHNARSki1ucL8liBG+J4X6tYNv3pL+D5ZLohaW065lgQ6FK8CcAe7w9Hyw6i3H
	qms73V2Mga+Zgj+cGrd4NAXlL/OAYhFlwZOwx3uufRzw6YGFR+M1Q9rScWZqugwFHsOJ
	Lnec+keIdlgdIg8J4F7jz29R9nGbSP3kzIRD7yzdNuKpxVTKVlaZdwBETj4ZE8/xJ66m
	p9Lw==
X-Gm-Message-State: AIkVDXJTPHtZGHEXw0Lr8JGogwAVcx3VQa1THum6RzoZ20h98FGgbqa8temFlu0ssGfgBbXdOIYu41t/whU82g==
X-Received: by 10.237.33.3 with SMTP id 3mt412217qtc.118.1481851965231; Thu,
	15 Dec 2016 17:32:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.88.21 with HTTP; Thu, 15 Dec 2016 17:32:44 -0800 (PST)
In-Reply-To: <CAPLgG=nuM4sW9Ck4-oWwmSwErBPeK8MhVgALsKzbzZKUnt0Yug@mail.gmail.com>
References: <CADh9ykGqNjxchZcRF2K8ikgnk-q4w7n0wk0cMwTaF38oVdz+pw@mail.gmail.com>
	<CAPLgG=nuM4sW9Ck4-oWwmSwErBPeK8MhVgALsKzbzZKUnt0Yug@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Thu, 15 Dec 2016 23:32:44 -0200
Message-ID: <CAF3SDA5z95F_VP-fANv9DH9sE+KcLC5sQwkmM48hcmucZ=v9VA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Multiple Projects from the same build directory
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
X-List-Received-Date: Fri, 16 Dec 2016 01:32:48 -0000
Content-Type: text/plain; charset=UTF-8

Create two recipes that fetch from same source but compile A or B.
Something like A.bb and B.bb with same SRC_URI but distinct
do_compile. So you can bbappend they independently. You can maintain
the common parts at a .inc file also to keep DRY principle.

Cheers,

2016-12-15 19:46 GMT-02:00 Rick Altherr <raltherr@google.com>:
> Is the fstab dependent on MACHINE or DISTRO?
>
> On Thu, Dec 15, 2016 at 12:49 PM, Ronald Oakes <ron@ron-oakes.us> wrote:
>>
>> I'll admit I'm being a bit lazy. I have two related projects, will call
>> them A and B. B is dependent on A's layers and adds its own. So far, there
>> have been no issues with just building them in the same directory since they
>> have separate image recepies.
>>
>> However, I'm shortly going to be needing to create different fstab files
>> for each, as the two will have different disk configurations. But, if I have
>> two conflicting .bbappend files each specifying a fstab, only one will get
>> used.
>>
>> So, is there a way to either specify in the image recepie or elsewhere
>> which should be used, or do I need to just create a new build direcory with
>> the different set of layers for project A.
>>
>> Ron O
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
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

