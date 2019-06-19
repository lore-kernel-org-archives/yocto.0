Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B4DBE00CD5; Wed, 19 Jun 2019 12:24:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.221.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8606E00CD5
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2019 12:24:43 -0700 (PDT)
Received: by mail-wr1-f67.google.com with SMTP id n4so465529wrs.3
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2019 12:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=NMuCVQhXYjuQTXHvPgbx9bcgdAbLwfh1zh2PaZ5vRYQ=;
	b=Vo69a2OmuJw38W1z/IIS++Ni9CpzYef/8GgtCHsQCBgVPf1L04R7vbwFs1WJnq3ezl
	W7gLRHq6a2I4cDWoY0AeAE3YWVii14nYhZ84FnUfNn0JgJrGS6yQrC4H9kr5zUoNZql+
	DQFpFGd7WaQUp6FOf2uPf3P8EyZQ8NZSFwfqY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=NMuCVQhXYjuQTXHvPgbx9bcgdAbLwfh1zh2PaZ5vRYQ=;
	b=ZX3JCHzImcDdKKXGxP0x7y5DLXIhTtVh+4jhKG9z5KnJoCixWyGf+trEP2DpU07iPf
	PfZvTYOOhT4uOLdUvsMEIX4Y6UvFj600Vu0JcJbhiszrwptHNtZPkyHRTj4lz6t2nsiH
	dViD+oVzOc/v83T8MLIRdJkPWTMOPFb8dYFxpTTX/qMbt35FR0l4vphnufj6s/i0Jpkt
	JJfBzu58nqd4NY1b1VAnTWDLXBbYvMFDHbYnROEnI/V1xIw6gjwkw4d4Jurxm52mx54k
	qVdxSM9t/maUMjHh2ZLgIS/dy0XiS741Ayexid0/W5JuMHEM1HURuTOkFg6T2rBOVCEF
	xjFg==
X-Gm-Message-State: APjAAAVMv4+o+BgjXobdHFUIBN3ef3HA1RJcwmW7II3HNf1aMpr6iOU6
	uwMtEPHZk0Ezyh+u7LtBYbediQ==
X-Google-Smtp-Source: APXvYqymq1Vfy0dlucMQ5UiPSMzeE3uoycnKyAS+cj7PYbsMDQHeVWynFG+H5XKwS5cjVO9Q2ECCPw==
X-Received: by 2002:adf:a345:: with SMTP id d5mr10101955wrb.234.1560972282608; 
	Wed, 19 Jun 2019 12:24:42 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	o20sm25630981wrh.8.2019.06.19.12.24.41
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 19 Jun 2019 12:24:41 -0700 (PDT)
Message-ID: <72d23534740d950d79479a4d7953ecbfa9213c4c.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Randy MacLeod <randy.macleod@windriver.com>, yocto@yoctoproject.org, 
	anibal.limon@linaro.org
Date: Wed, 19 Jun 2019 20:24:39 +0100
In-Reply-To: <98784449-a7d4-1015-2918-600e9c6f2c1c@windriver.com>
References: <20190613223928.14424-1-Randy.MacLeod@windriver.com>
	<20190614144853.25839-1-Randy.MacLeod@windriver.com>
	<20190614144853.25839-5-Randy.MacLeod@windriver.com>
	<98784449-a7d4-1015-2918-600e9c6f2c1c@windriver.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Subject: Re: [ptest-runner][PATCH v2 4/4] utils: ensure child can be session leader
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
X-List-Received-Date: Wed, 19 Jun 2019 19:24:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-06-19 at 13:49 -0400, Randy MacLeod wrote:
> On 6/14/19 10:48 AM, Randy MacLeod wrote:
> > When running the run-execscript bash ptest as a user rather than
> > root, a warning:
> >    bash: cannot set terminal process group (16036): Inappropriate
> > ioctl for device
> >    bash: no job control in this shell
> > contaminates the bash log files causing the test to fail. This
> > happens only
> > when run under ptest-runner and not when interactively testing!
> > 
> > The changes made to fix this include:
> > 1. Get the process group id (pgid) before forking,
> > 2. Set the pgid in both the parent and child to avoid a race,
> > 3. Find, open and set permission on the child tty, and
> > 4. Allow the child to attach to controlling tty.
> > 
> > Also add '-lutil' to Makefile. This lib is from libc and provides
> > openpty.
> 
> Hmmm, I was making the code compile cleanly under clang using
>    -Weverything
> when I noticed:
> 
> 1. the 'make check' tests. They still work fine.
> 2. The './ptest-runner -d tests/data -t 1' tests
>     which now generate loads of error like:
>      ERROR: Unable to detach from controlling tty, Inappropriate
> ioctl 
> for device

Aha.

Does this mean you get to own:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=13409

:)

> 
> so while this change fixed the bash-ptest, the ptest-runner self-test
> it did something wrong.... Ah, I'm calling:
>     ioctl(0, TIOCNOTTY) == -1)
> repeatedly in the parent so that's what's generating the extra logs.
> Fixed locally and I'll send a patch but it's not urgent. Phew! :)
> 
> Anibal,
> 
> If you could reply to explain your plans for Richard's patches
> that would help me figure out when to send the clang warning clean-
> ups commits and what commit to base my work on.

I think he believed some of them unnecessary, they were a bit belt and
brances but I'm not sure that is a bad thing.

Cheers,

Richard


