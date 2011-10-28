Return-Path: <xiaoxianghua@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43D53E01404
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 09:13:11 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qyk30 with SMTP id 30so5444565qyk.14
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 09:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=gnqoCZrAE18lj1ddsjop1T3vhK0NPC2bRJgTWr3h1JY=;
	b=s3HeRhjlf7aDVs9z4Ldit/aPicMO6ZN4HaWZJgMNeSOmNm0kebEsvZkcq42O0IWmOl
	0kBwNM5xbYA6As7xEyM/k9C3Gun3cfO1D8wOycPvvtrisak2URT3NR1QxZyKdqp0Nl5j
	8uAtE6riB5tc2AZhOVBNLx8VHe42F1lvA6nrY=
MIME-Version: 1.0
Received: by 10.229.247.12 with SMTP id ma12mr908489qcb.40.1319818390314; Fri,
	28 Oct 2011 09:13:10 -0700 (PDT)
Received: by 10.229.188.3 with HTTP; Fri, 28 Oct 2011 09:13:10 -0700 (PDT)
In-Reply-To: <4EAAC008.4050406@windriver.com>
References: <CAP7cwtu-T9LdUy78MSG+JOanSHw6UTK5D-4zFu-bVzsRp9XwwA@mail.gmail.com>
	<4EAAC008.4050406@windriver.com>
Date: Fri, 28 Oct 2011 11:13:10 -0500
Message-ID: <CAP7cwttTXcGySrqmKvv+7saHFyF0xuUczY8h5693f232RCA_Sg@mail.gmail.com>
From: Xianghua Xiao <xiaoxianghua@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: building and using yocto 1.1
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
X-List-Received-Date: Fri, 28 Oct 2011 16:13:11 -0000
Content-Type: text/plain; charset=UTF-8

core2duo E7200 2.53Ghz  4GB 500GB

1 thread 1 parallel due to past experience I had from the
past(parallel make did not work well reliably)

thanks,
xianghua


On Fri, Oct 28, 2011 at 9:45 AM, Mark Hatle <mark.hatle@windriver.com> wrote:
> What machine are you using (amount of ram, disk space, and cpu cores)?
>
> What configuration did you set for parallel builds?
>
> I can build 1.1 on an 8 core i7 system w/ 8 GB of ram, set with parallel
> settings of 8 thread and 8 parallel make jobs, in about 100 minutes (or less).
>
> --Mark
>
> On 10/28/11 9:20 AM, Xianghua Xiao wrote:
>> when I built 1.0 out of the box, it took 7 hours.
>> on the same machine/network, yocto 1.1 took a full 12 hours, not sure
>> what happened to cause this nearly doubled build time.
>>
>> after the default build(bitbake core-image-sato), I run 'runqemu
>> qemux86', click on 'tasks', try to add a new task, however my input is
>> shown non-english, or garbage on screen, which I have seen the same
>> issue on yocto1.0 release as well. this is a 10.04 ubuntu 64bit
>> machine.
>>
>> don't know what to say about it, just my OOB(out-of-box) experience
>>
>> xianghua
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

