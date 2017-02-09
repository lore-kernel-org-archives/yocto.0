Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FC98E009B8; Thu,  9 Feb 2017 13:23:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.68 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f68.google.com (mail-vk0-f68.google.com
	[209.85.213.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6AE6E008F2
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 13:23:22 -0800 (PST)
Received: by mail-vk0-f68.google.com with SMTP id n125so1303478vke.3
	for <yocto@yoctoproject.org>; Thu, 09 Feb 2017 13:23:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mEP/qJRgR8jCEJuzAi2k40vBtzL3gMepRxWkZ0wYi0A=;
	b=uSTvOuJrZcdL+C9e9rfX53CVN9O6NuSkQEuKjb8EQPUHNGtmEHwMMjcU7Hy1RrGWZG
	X8t1+KzLqemCJKDbT06nNaIbB2+GV+/0jhlkpuyrqZY4cJRUEm9l0CFkWr0k/34i97t2
	If4wNmBwPVeBUeQD+IrzGnKcknso6UJlTf8HrqjaaPQ6rsQ8GbRyplOf/lAvONKieux/
	odiPeBQJGknWyP2PNtklAvWp/j3BRAjJiP0+9Fa1JjSlfOsV8WwtfAdiEQ852TgxOnWq
	V0GkpSrL2o2H3Jt6beu63PbF9wwvUPIm4Lbsk+bzq+QV3MyFAfEweZgLxnT0rtvo3YYE
	mYoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mEP/qJRgR8jCEJuzAi2k40vBtzL3gMepRxWkZ0wYi0A=;
	b=LHq672iAS/m1acZVuZKKlvsPLNgYLaXWe2D5ew1nRy2qGzBGoEpR+qcgOzq66MLnd/
	1swV2BCLER0txDVW6Y5k/aMNt8ZEvglJ64g52kuT5ozowpfPJmVaFh2B0s+JASIGUeke
	qTh9Mhvk4kUSdAeJQzF2qEeHuXAQoRtwgBnBA7lPdIsVdB2lF/8/m5+LI//mYJ9WtN9B
	gIaKzEQ9yxNlCi8o3bpHvkXlcwdsqlWUlBuOjprog2hRHqoMRJ6vvfwvJVeP5AGbnFuy
	VLovB73FciycP0wTjoAE4JF8dpEQ2L2gFbnZyAPcKKYbCCHjw0lDjdjazEL1leQ6UK2m
	nCBA==
X-Gm-Message-State: AMke39nfKZL0RcF0MBnE1palTffNLHTiOGmhaW4wKphW+Y0EgINduwHl15QH155W4V+/avmKP5D5LmBYTstcSw==
X-Received: by 10.31.115.142 with SMTP id o136mr2629109vkc.139.1486675400909; 
	Thu, 09 Feb 2017 13:23:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Thu, 9 Feb 2017 13:22:50 -0800 (PST)
In-Reply-To: <20170209082412.18263c84@host0.betafive.co.uk>
References: <20170209054903.31598-1-raj.khem@gmail.com>
	<20170209054903.31598-8-raj.khem@gmail.com>
	<20170209082412.18263c84@host0.betafive.co.uk>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 9 Feb 2017 13:22:50 -0800
Message-ID: <CAMKF1sryONDoNQXFNiDnoj1_D1C=1Er1+RjisU3dX1VF6H_jpw@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 8/9] userland: Upgrade to latest
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
X-List-Received-Date: Thu, 09 Feb 2017 21:23:24 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 9, 2017 at 12:24 AM, Paul Barker <paul@paulbarker.me.uk> wrote:
> On Wed,  8 Feb 2017 21:49:02 -0800
> Khem Raj <raj.khem@gmail.com> wrote:
>
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  recipes-graphics/userland/userland_git.bb | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
>> index cec591d..5a83c8a 100644
>> --- a/recipes-graphics/userland/userland_git.bb
>> +++ b/recipes-graphics/userland/userland_git.bb
>> @@ -16,7 +16,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
>>
>>  SRCBRANCH = "master"
>>  SRCFORK = "raspberrypi"
>> -SRCREV = "0f015eaa17add5bca00ecf8a354ea62e19bd7920"
>> +SRCREV = "d35be767ce54ba46893ffa6d612b6b9d490b1e4e"
>>
>>  SRC_URI = "\
>>      git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
>
> Can we squash this with the other userland upgrade in this series?

I intentionally, did not since I did not want to rebase my master, and both
bumps are tested individually over period of time. since my master is used
by others I did not want to make it painful for them when it merged into master
the first set has been posted few weeks ago to ml already which is
still pending.

