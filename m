Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 218B5E00C1B; Wed, 27 Feb 2019 15:02:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.68 listed in list.dnswl.org]
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
	[209.85.166.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A668E0091D
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 15:02:18 -0800 (PST)
Received: by mail-io1-f68.google.com with SMTP id p18so15068166ioh.5
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 15:02:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=QiM0/TctnvTcjl5id9+oKpXox9hacyqS6arb/llUFM4=;
	b=w9+Lc6SsvpRMuU1GeZISxVQLxZ3MeIMujthRkDBKfJwN/NU9FNwFDy4bn20aHDF5zm
	Gz+E7AN/cMtU9Ri+5XlBQZPJV1qVKIiwq4LHaOXhtjw2Mm8CitQbyv7WgFPYitYxKQsu
	LumOFQW2hQkzmeC/GdQavgA4EzRPTNf3e608C29tfZ5rC77R+hVvcGpgoNP2hEIU+Zfe
	m/GjCW8rd+/44NwXsuyLTfYRn6pQUQZMskmXQita5K+ReGJ9oJQoEn+YlW/6snfIqncJ
	6EC0IcFvpFvsaiZ1YTfA1v+BYGS9oboQ/VULUZtTLQ16QU2rSt37+XLHfsiyrPYMXXEh
	o7jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=QiM0/TctnvTcjl5id9+oKpXox9hacyqS6arb/llUFM4=;
	b=NO8SWYhV3u4SaVdEEckQUsL0NnQlgYrXSfBMLc/KcxsgjPEoz83br2sf7VQeVndVCP
	JW7bHJJSmq3c3qQmSAB4WNUpvvrC9IuHnEJ9Yp/TyUfACN1xaF2Kd3Vmqm8dJ1KeEtmQ
	D8pO1+GYxAbqo9MfGxamkOT0W+tYnuuN8N/1pOggGCUfzm6XViuRF6pXfkrP0CXGC2kv
	HDMGYlqbQeEH6mB7MawkbczYUqyEGE/L/5ltLgxnITJDJaQWXkEA4NQzuNu+MpxjfYWZ
	1T9xtbUhAMd1jUk9U2IB/Am5eJXyKw+h8qy/G30HgEutcHlUt9QcvhL1q7FwttMySzLK
	hjCQ==
X-Gm-Message-State: APjAAAXKlFMFNsqWz1KYBpLGa03QcFqd1C720R7uyIGbU/Ai1i0501Lf
	Krnyu9Lbh1zT0BIoB91Ea3web5UBN2RSikZWSnyqQ8eV
X-Google-Smtp-Source: APXvYqx0lrl56CpVJPyNRZgReUXW/MzPxcF8i1B+yJSxX7R/iPUJ5bxSdONZFhNr/e/WwgVVH3zf4Ps1ajhIr9khSjg=
X-Received: by 2002:a5d:818d:: with SMTP id u13mr3424658ion.20.1551308537924; 
	Wed, 27 Feb 2019 15:02:17 -0800 (PST)
MIME-Version: 1.0
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
	<93dcfef4-e49f-a683-0f5b-3acdb9dbb663@innodelec.ch>
	<20190227200902.GG12046@bill-the-cat>
	<20190227214037.GA11051@localhost>
	<8a83e39d-9f90-19d3-f310-41c5cebe840a@innodelec.ch>
In-Reply-To: <8a83e39d-9f90-19d3-f310-41c5cebe840a@innodelec.ch>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 27 Feb 2019 23:02:06 +0000
Message-ID: <CAJTo0LYbuovnV4YqVQ0vM4BTfdLTZVz4QiQvvNZxJBR7a2dvgg@mail.gmail.com>
To: Jean-Christian de Rivaz <jean-christian.derivaz@innodelec.ch>
Cc: Tom Rini <trini@konsulko.com>,
	Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 27 Feb 2019 23:02:19 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, 27 Feb 2019 at 22:25, Jean-Christian de Rivaz
<jean-christian.derivaz@innodelec.ch> wrote:
> The project I work for need nodejs and chromium (and a >100MB database
> on some nodes), so space is not an issue. I need to deliver an useful
> distribution with usual commands, tools and a working console + keyboard
> for my locale. If  Poky is only maintained to be tested with sysvinit +
> busybox and US locale, then I wonder if it's the appropriate choice for
> that project. There nothing wrong in providing a sysvinit + busybox
> based small distribution, this is simply not the best fit for that project.

Installing the commands is pretty simple: be sure to install all of
util-linux core-utils psutils etc.  Yes, this should be a packagegroup
to make it trivial, but this is practically a few minutes work.

Ross

