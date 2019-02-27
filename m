Return-Path: <jean-christian.derivaz@innodelec.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD7AAE00D00; Wed, 27 Feb 2019 14:24:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.147.79.142 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from europa.tizoo.com (europa.tizoo.com [212.147.79.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92E72E00C1B
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 14:24:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=innodelec.ch; s=default; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=gYzg2aniiVa+K/np22VFkYQ7DpOs4hfAlXvajp72/dU=;
	b=VRwHqbj1RAjAURT7UfcdNMYrj4
	ckOeJWGe3ypWGW7dEgqhs64zQxX/flzn2HFdUFkU73zBmluUkIwJJAVvENl3bAwyqvwvtuiaC9exR
	adZPJpUPF/vsjH0/CGGL+EPvoRbwTJ7w9Y+MXSuIbanAcgcFFi4HYoQf0xml8Uvxc7rALGQlr9V+6
	zgN9YD6rIYFxDYYwC+8/521FoH/ro/lY2aQX02q+pEZHhUbgVqAxpbqapVAz26dy7uOs5exXVff25
	ULXjDmXXYFkGDxGrPl5dimsysbwmiEYDS11xTVXwMMO6kqEwPinH538Kt92ArhHb3eKh+vlJYQDxr
	P0VcsQEA==;
Received: from [213.221.150.139] (port=60572 helo=[10.0.33.10])
	by europa.tizoo.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.91)
	(envelope-from <jean-christian.derivaz@innodelec.ch>)
	id 1gz7dC-004zka-Sg; Wed, 27 Feb 2019 23:24:52 +0100
To: Adrian Bunk <bunk@stusta.de>, Tom Rini <trini@konsulko.com>
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
	<93dcfef4-e49f-a683-0f5b-3acdb9dbb663@innodelec.ch>
	<20190227200902.GG12046@bill-the-cat>
	<20190227214037.GA11051@localhost>
From: Jean-Christian de Rivaz <jean-christian.derivaz@innodelec.ch>
Message-ID: <8a83e39d-9f90-19d3-f310-41c5cebe840a@innodelec.ch>
Date: Wed, 27 Feb 2019 23:24:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190227214037.GA11051@localhost>
X-OutGoing-Spam-Status: No, score=-2.9
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - europa.tizoo.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - innodelec.ch
X-Get-Message-Sender-Via: europa.tizoo.com: authenticated_id:
	jean-christian.derivaz@innodelec.ch
X-Authenticated-Sender: europa.tizoo.com: jean-christian.derivaz@innodelec.ch
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Removing busybox
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
X-List-Received-Date: Wed, 27 Feb 2019 22:24:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Le 27.02.19 à 22:40, Adrian Bunk a écrit :
> On Wed, Feb 27, 2019 at 03:09:02PM -0500, Tom Rini wrote:
>> On Wed, Feb 27, 2019 at 09:06:38PM +0100, Jean-Christian de Rivaz wrote:
>> ...
>>> So as expected systemd is there and busybox is not. But there is a lot of
>>> useful commands missing on the resulting QEMU image:
>>>
>>> root@qemux86:~# ps
>>> ~sh: ps: command not found
>>> root@qemux86:~# w
>>> ~sh: w: command not found
>>> root@qemux86:~# find
>>> ~sh: find: command not found
>>> root@qemux86:~# grep
>>> ~sh: grep: command not found
>>> root@qemux86:~# ip addr
>>> ~sh: ip: command not found
>>>
>>> I expected that all the limited busybox commands would be replaced by
>>> the full
>>> featured commands. How to fix that ?
>> Correct, you're missing a lot of stuff.  Somewhere on my (and other
>> folks too) TODO list is a packagegroup that includes procps and psmisc
>> and grep and tar and various network packages and less and more and...
> "all the limited busybox commands would be replaced" would be a huge 
> list from dc through gawk, minicom and wget to vim.
>
> And would vim-tiny qualify as "the full featured command" of busybox vi,
> or should this include vim with full features?
>
> The nice thing about busybox is that it is so small,
> in many cases one full featured command alone
> is bigger than busybox.
>
> It is not obvious to me what usecases people have in mind for
> getting rid of busybox, and whether everyone is aware that
> something like "all busybox commands replaced" is *very*
> expensive regarding filesystem size.

The project I work for need nodejs and chromium (and a >100MB database
on some nodes), so space is not an issue. I need to deliver an useful
distribution with usual commands, tools and a working console + keyboard
for my locale. If  Poky is only maintained to be tested with sysvinit +
busybox and US locale, then I wonder if it's the appropriate choice for
that project. There nothing wrong in providing a sysvinit + busybox
based small distribution, this is simply not the best fit for that project.

Jean-Christian

>
>> Tom
> cu
> Adrian
>


