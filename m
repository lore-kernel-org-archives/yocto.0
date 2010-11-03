Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5BB0F4C80287
	for <yocto@yoctoproject.org>; Wed,  3 Nov 2010 03:27:12 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn7 with SMTP id 7so487419iwn.35
	for <yocto@yoctoproject.org>; Wed, 03 Nov 2010 01:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:content-type;
	bh=fy+prDQh92Obv8gyxIUsZeni35MB33Becx6dTm73PGo=;
	b=RudmwVrDM3mLzxWv+6reBt6dHt+c3+fnoYYnlMBu0yxc2PXUNaInc2oVtDETmooBmo
	ZxiBmTHulQamJm+iPAhFYO6CrY6VUNDEwBmHDbZCGU9LgDujDsnRq0mpcWlFdVm1yT8C
	XFUebCIXZ5CHKUNDAuJBgyMjgLtzV6XQzHyao=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=acVSack4M4pQxwV/3MvquJWfwcCkxgP/KH9yosaTokAoOpAxd7Nr9LfHin3DjA1+0U
	AiD1oMThf3oR/9RJ+1+CqyNGVmR33LOTCtCyv2G71PA9XxTkgsMHYUtpDq5eHO5mW2xs
	aF9TQ38WhhB/7oSFjr/h7l+QC5MO6NVVPmgvU=
MIME-Version: 1.0
Received: by 10.42.230.65 with SMTP id jl1mr1030097icb.134.1288772832008; Wed,
	03 Nov 2010 01:27:12 -0700 (PDT)
Received: by 10.231.40.13 with HTTP; Wed, 3 Nov 2010 01:27:11 -0700 (PDT)
In-Reply-To: <AANLkTi=p0jSowGAVwNrixt67hDR105fgkmJyRE-Eq0yd@mail.gmail.com>
References: <AANLkTi=p0jSowGAVwNrixt67hDR105fgkmJyRE-Eq0yd@mail.gmail.com>
Date: Wed, 3 Nov 2010 09:27:11 +0100
Message-ID: <AANLkTi=VA_3KRUsFkRTirpOTuMXLu3uLYwC6fFt4om8a@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: some yocto/poky issues and errors
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Nov 2010 08:27:12 -0000
Content-Type: text/plain; charset=ISO-8859-1

2010/11/3 Frans Meulenbroeks <fransmeulenbroeks@gmail.com>:
> Dear all,
>
> Not sure whether I should sent this here or to the poky ML. Trying
> here first, fee free to forward/redirect.
>
> After my initial success of building poky 4.0 with the delivered
> config, I decided to try to add my own layer (with some private
> recipes), meanwhile also switching to MACHINE = "beagleboard". These
> recipes build under OE.
> In order to get things parsing I had to rework a few legacy staging
> things (no big deal).
>
> Also I got an error:
> NOTE: Handling BitBake files: - (0053/0886) [ 5 %]NOTE: Error
> expanding variable do_package
> ERROR: string index out of range while parsing
> /home/frans/yocto/poky-laverne-4.0/tv.axon.openembedded.2010/recipes/linux/linux-factory-sygtd1_2.6.34.bb
>
> For now I removed the do_package function. No idea if that is sound.
>
> After doing so the parsing goes well but I get an interesting
> traceback, even if no recipe is given. See the log below.
> I suspect this is because a var is referenced somewhere but the var is
> not initialised. Guess this should not happen.
> Then again my pythonese is not good enough to diagnose this.
> Any suggestion is appreciated (meanwhile I'll try to use bisecting to
> find the cause).
>
> Best regards, Frans

Nevermind, already found the cause of the traceback. I accidently ran
bitbake in the wrong dir.
My default setup is such that BBPATH etc is set in such a way that I
can effectively run bitbake from any dir once the env is set.
Guess it would be nice if bitbake would have given a decent error msg though.

Frans (btw: still confused on the do_package thing)

