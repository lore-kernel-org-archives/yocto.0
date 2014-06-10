Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C541E00BE1; Tue, 10 Jun 2014 13:38:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.128.172 listed in list.dnswl.org]
Received: from mail-ve0-f172.google.com (mail-ve0-f172.google.com
	[209.85.128.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1914E00B78
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 13:37:58 -0700 (PDT)
Received: by mail-ve0-f172.google.com with SMTP id jz11so4838859veb.3
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 13:37:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=1e1yXA5OGMfkTZbhQgwZa8Z+ZsmoJ8RZgd7ITBaynJE=;
	b=H1W5376f+uLr+lYBbuDzrhGdog4MCyOZFhbr3i4tqXzzkHlj9tO9hiV0khso27LR8y
	T0j/FjFbvdgqYyNckTOE8di8ikVK+7kX+nPqQ5cnINRIN1yhC7yA26mqTZG2V+6UzBQW
	JuGyODyWXe1TUlb7HOWnhAEpJRrsKDva/C0NwlA0ieMWmoSMmrvad2svf9kUTNxwllJC
	BPP6eCB1I8APtxOypp9cCEoWcKEZbwQfdqX5KIz9CoxwxLjZkgIr4IAJDLh43sSpAI/h
	QAePgo4CWZ8Vkyrv/WgEn6v3DOFMp7NDlsFYi+833PT9xzKdDkXKO+9+7u4JODkaogDX
	dz8Q==
X-Gm-Message-State: ALoCoQnobH3pZt86GJAb+rh60clIJA0vjM7mfY7kqKYVYHxP0RVlwBt5GRW8JZl5EebW8zquIOh6
MIME-Version: 1.0
X-Received: by 10.52.64.225 with SMTP id r1mr28776577vds.30.1402432677808;
	Tue, 10 Jun 2014 13:37:57 -0700 (PDT)
Received: by 10.52.28.235 with HTTP; Tue, 10 Jun 2014 13:37:57 -0700 (PDT)
In-Reply-To: <1402421465.2402.11.camel@marlon-Z68X-UD3H-B3>
References: <1402421465.2402.11.camel@marlon-Z68X-UD3H-B3>
Date: Tue, 10 Jun 2014 13:37:57 -0700
Message-ID: <CAPhnLPAf+mN4d8fnGCkr=6V8-V+pi9GbVk+Z6k13B7j6V16akQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
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
X-List-Received-Date: Tue, 10 Jun 2014 20:38:02 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jun 10, 2014 at 10:31 AM, Marlon Smith <marlon.smith10@gmail.com> wrote:
> Hi everyone,
>
> We've decided to use Yocto in our company's product!  And I have a question:
>
> Since Yocto is updated pretty frequently, at some point we'll need to freeze
> everything and keep a permanent copy so that we can make small changes/bug
> fixes without having to worry about anything being changed outside of our
> control.  My current theory is that we'll do a bitbake -c fetchall, then zip
> up the entire Yocto directory and save it somewhere so we'll always have a
> static copy.

You shouldn't really need to worry about anything changing outside of
your control if you're doing this right. The SRC_URI[md5sums] will
yell if something changes out from under you. That said....

> We'll place our application and custom bsp layer under a
> separate Git repository, and then to do a build we'll just combine
> everything together and run bitbake on the whole thing.

That sounds about right and is how I would do it (and do do it via the yocto-ab)

>
> Is there a better or recommended way of doing this?

The git strategy sounds ok. I wouldn't do the zip everything up necessarily.

I would suggest something similar to what we're doing on the autobuilder.

DL_DIR is at nas:/mount/dl_dir

nightly does a bitbake -c fetchall. It dumps into DL_DIR. a cron
rsyncs DL_DIR to http://internal.yourorg.com/src_mirror

When you're ready to lock down your base OS, set PREMIRRORS to your
internal mirror.

I would not expose that mirror externally if you have any proprietary
IP that may be in DL_DIR; for GPL compliance, you'll want to utilize
the source archiver.

>
> Thanks again, and I'm excited to start working with Yocto!
>
> Marlon
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

