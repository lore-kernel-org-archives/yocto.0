Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BADE9E00BE1; Tue, 10 Jun 2014 11:58:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.45 listed in list.dnswl.org]
Received: from mail-qa0-f45.google.com (mail-qa0-f45.google.com
	[209.85.216.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F769E00B78
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 11:57:57 -0700 (PDT)
Received: by mail-qa0-f45.google.com with SMTP id hw13so9696698qab.18
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 11:57:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ek9VbHRegZofc63Euwa+xm+N8Aa496ZDbCqb3zHCufY=;
	b=ch2YawZ0Vk/U+wjvZmfkazu45smzd+2Ipq5OfGNRt58UhH5GXI+bBI6832hsxw1H++
	akLm7IUPlf4d4FYNwHl+JaPnHx1q+PQ4hNwfwv7Ty1Ovt8Z4rBihA6iRH/gzwQEB07Jz
	MKSX6EONOInuXp+muKo7zulYNxfTYOmuaakf0nraSDI/JAQf/TCDje63yILWYV/nYdh2
	fmJMttr0ZTi+sP6DXlnlVLpdbUUIrObyoZiLpmmPzYLS1tjG6I3MceDF7oBNRPL6u4Ny
	URIqeLNsE29QgVaIUshVtKT6WC6tuLcZIlDH5bQ8dGmJ7vkH3388dEgDIPezERdeQY3t
	umSg==
X-Gm-Message-State: ALoCoQm0wdRtsMUetL4c6Fn5RcIVoQO3ByRSUCNNF+PGdmsTBktxl/2P0SvCHKAH++K6bF54egji
X-Received: by 10.224.151.206 with SMTP id d14mr44031726qaw.35.1402426677125; 
	Tue, 10 Jun 2014 11:57:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Tue, 10 Jun 2014 11:57:37 -0700 (PDT)
In-Reply-To: <1402421465.2402.11.camel@marlon-Z68X-UD3H-B3>
References: <1402421465.2402.11.camel@marlon-Z68X-UD3H-B3>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 10 Jun 2014 19:57:37 +0100
Message-ID: <CAJTo0LaTrqg=T3_JCrbb21nmD8cN0g+0rRnVddtGXs+ESkzUcw@mail.gmail.com>
To: Marlon Smith <marlon.smith10@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Best way to "freeze" Yocto for production
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
X-List-Received-Date: Tue, 10 Jun 2014 18:58:04 -0000
Content-Type: text/plain; charset=UTF-8

On 10 June 2014 18:31, Marlon Smith <marlon.smith10@gmail.com> wrote:
> Since Yocto is updated pretty frequently, at some point we'll need to freeze
> everything and keep a permanent copy so that we can make small changes/bug
> fixes without having to worry about anything being changed outside of our
> control.  My current theory is that we'll do a bitbake -c fetchall, then zip
> up the entire Yocto directory and save it somewhere so we'll always have a
> static copy.  We'll place our application and custom bsp layer under a
> separate Git repository, and then to do a build we'll just combine
> everything together and run bitbake on the whole thing.

The source archiver can be used to keep a "known good" copy of the
sources used, or you can just backup the DL_DIR (put it on a server
and use it as a source mirror for good measure). For your layers, I
recommend keeping them in git and document what oe-core/poky/bitbake
versions your own code has been tested against.  For any changes you
have against oe-core/bitbake/poky them in git clones of the relevant
repository, branched off the relevant release branches (daisy, dylan,
etc).

Ross

