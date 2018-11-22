Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9443E00CA1; Thu, 22 Nov 2018 02:32:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
	[209.85.166.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B0C2E0050E
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2018 02:32:45 -0800 (PST)
Received: by mail-io1-f52.google.com with SMTP id j18-v6so6276823iog.6
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2018 02:32:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=6Wk29CFUtgkxyb6OVUwsJNceZGOQ559fSxf9MLGa0dQ=;
	b=W0g8nWXKoqHkrNEl7g7WVcgPsYyLvQP+38W/n13nbHk3C3wODuXCW2A4xNp3/bzQCW
	FGzuIIyvp1dkitFQ1F1hnfBHK27JUugJ0pSNlzH62+wPn+1TjrxCUcGpDS5dIdnhd7xW
	sNEjJcz1dcez5z8E6Fgkn27MNxdYs/sEmvw8u2iEemSdCfP9134PZOHGUr3waArZBYoq
	a24Q860d5P9uP0V3/zSNRdPKLWxOjStf5g9G17g9/v2i1hvWkOMvzTCYDqoabhC4gufQ
	9lrxiHWTt4G2MbCMNkSu9p1zyNKVuXeCPaynVnoPCm/ND5wf2kBUSg0PWpA0ye+oFoyk
	dWUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=6Wk29CFUtgkxyb6OVUwsJNceZGOQ559fSxf9MLGa0dQ=;
	b=LEJiQ5EGGNh2h74l0icmXjidaMI6LbJxCTjQ1P3Pwmtycm94YFNUmALd2zHZsClAWY
	iF016I7UHycrKAav0xfuW18wrUPfmzAViS+1Rp7wlEJhXqaq4INHb1xkPwhrXPC4CU1L
	VbXlwgtxBqx0aCk6Wkh+uYNooNun1xeBVw+otl1L4y0Ctk5QHjjleJ6pIDOlULk833gt
	YXpBcA82WdDvO2E8WnPLIqRYYpNU2EVd/iZUhEu3EB3S22Dvh9iR1pG6R/7EgIe+iAxV
	graRx7OQNAkuO9rq82ySsHH4IFhAaVnDK9vxImcoz9xLO7HltOzfrSJwEyI7io/1/iy3
	JhyQ==
X-Gm-Message-State: AA+aEWbOWvZWOKF6ygKJHNoOg1KjEx6NHNg5LJC8E9P1zB2waBaa79CM
	3tGyXBaS6XT0Y+N5qm3pnSkgFzJU1jkSdS0gbolco2VnshA=
X-Google-Smtp-Source: AFSGD/XdpDrQieHFRJpl+s/jmE8Nylv3IIohiz/N5mkQ6YFhJDejdEEqmD52fXaa6PBDtYTuWKyeVbwvM0mdDUqPI+0=
X-Received: by 2002:a6b:fb19:: with SMTP id
	h25-v6mr6945641iog.270.1542882765045; 
	Thu, 22 Nov 2018 02:32:45 -0800 (PST)
MIME-Version: 1.0
References: <CAAmVmrpp8-JULPYsGhz6xVpm7SQ2sUWXDxo5+oLjjvrhSMpQJQ@mail.gmail.com>
In-Reply-To: <CAAmVmrpp8-JULPYsGhz6xVpm7SQ2sUWXDxo5+oLjjvrhSMpQJQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 22 Nov 2018 10:32:34 +0000
Message-ID: <CAJTo0LYL8sypWbxXnoQCnmM7UvEsSnr09nh1GHjQpez09fNf_g@mail.gmail.com>
To: maillinglists18@gmail.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Forcing GCC version for native compilation
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
X-List-Received-Date: Thu, 22 Nov 2018 10:32:46 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 22 Nov 2018 at 07:33, Teemu K <maillinglists18@gmail.com> wrote:
> I have project made for Yocto 1.7, but I'd like to compile it on newer
> Linux distribution that default GCC version is 5.x. GCC version itself
> causes some problems, because some things have changed.
>
> There is also GCC 4.8 available, but it's not called 'gcc', but 'gcc-4.8'.
>
> The question is that is there way to force yocto use 'gcc-4.8' instead
> of 'gcc'? I did some searching and couldn't find any options how to do
> it. I tried to making link to ~/bin/gcc pointing gcc-4.8 and having
> that first in PATH, but that didn't quite work. I'm guessing path got
> re-set at some point.
>
> And before someone says. Updating Yocto to solve problem is not
> solution. System is being updated, but current system still needs to
> be able to compile.

The modern solution is to set BUILD_CC and so on, see bitbake.conf.

Note that in such an old release this might not work as well as you'd
hope because I don't think it was fully tested.  In which case your
options in preferred order:
1) Some distributions let you change what the default compiler, for
example /usr/bin/gcc might be a symbolic link you can just change.
2) PATH fiddling as you did.  You'll most likely need to replace more
than just gcc, for example cpp.
3) Just mv /usr/bin/gcc to /usr/bin/gcc-5 (and cpp, and anything
else), and symlink gcc -> gcc-4.8

Ross

