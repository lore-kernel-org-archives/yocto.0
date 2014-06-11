Return-Path: <cliff.brake@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75CC2E00BEE; Wed, 11 Jun 2014 08:10:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.54 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qa0-f54.google.com (mail-qa0-f54.google.com
	[209.85.216.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A4D3E00BC1
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 08:10:26 -0700 (PDT)
Received: by mail-qa0-f54.google.com with SMTP id v10so1520741qac.41
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 08:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=0sy+Sg8Hhf7CicBE3oCpO3Vvwmrb2jGgbtZz43oDWgQ=;
	b=b1/bM1CMhxFQPPSqSTAdtogJ8w4KtlTMF8MX7qcCmaNOK5xxHy6Yj+/eA85oViUPcg
	+QivSsDqwCXsVOeG5LPRXjLRRT01U0QxF8haCblcpPCSMf8xw0Zw5nt8omG+AZ9Jui5G
	oZBIa/apnN6xqfami8JJPPTiTA5+YqMV515CF0b1L+VzOydyRCiN117uqJ7vWIMY6mix
	f19XwG+u/t2LNpAYc8kn0nxmcnMbLKwZ+ol1F1vGzU/+P7OnpgKsRWBf+DT030hugR3W
	abVLKQoruZ8/l7aHelv6KLJVWlZWoOgqihiGrE+EZv9rvUrcrkg+xBMObtQJ/9E9yfTl
	GwLQ==
MIME-Version: 1.0
X-Received: by 10.224.21.1 with SMTP id h1mr23479848qab.103.1402499425615;
	Wed, 11 Jun 2014 08:10:25 -0700 (PDT)
Sender: cliff.brake@gmail.com
Received: by 10.140.31.73 with HTTP; Wed, 11 Jun 2014 08:10:25 -0700 (PDT)
In-Reply-To: <1402421465.2402.11.camel@marlon-Z68X-UD3H-B3>
References: <1402421465.2402.11.camel@marlon-Z68X-UD3H-B3>
Date: Wed, 11 Jun 2014 11:10:25 -0400
X-Google-Sender-Auth: g9rIZMSJ8mvxU_LhlRkXtXvFmGE
Message-ID: <CAOd_LFxVbruJ_SbUT7kGBZHTYNLdsBFoOBWvbhCKKGqfW1p4qA@mail.gmail.com>
From: Cliff Brake <cbrake@bec-systems.com>
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
X-List-Received-Date: Wed, 11 Jun 2014 15:10:36 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jun 10, 2014 at 1:31 PM, Marlon Smith <marlon.smith10@gmail.com> wrote:
> Hi everyone,
>
> We've decided to use Yocto in our company's product!  And I have a question:
>
> Since Yocto is updated pretty frequently, at some point we'll need to freeze
> everything and keep a permanent copy so that we can make small changes/bug
> fixes without having to worry about anything being changed outside of our
> control.  My current theory is that we'll do a bitbake -c fetchall, then zip
> up the entire Yocto directory and save it somewhere so we'll always have a
> static copy.  We'll place our application and custom bsp layer under a
> separate Git repository, and then to do a build we'll just combine
> everything together and run bitbake on the whole thing.

Lately, I've been implementing projects based on yocto releases (dora,
daisy, etc).  Most layers have corresponding branches.  You can use
git submodules or repo to lock everything down.  Philip provided a
repo example.  Here are a couple more:

https://github.com/cbrake/oe-build (uses submodules)
https://github.com/kraj/angstrom-manifest (uses repo)

Custom bits for a project goes in a new layer.  If anything needs to
change in an upstream layer, I typically put a bbappend in the custom
layer, rather than modifying an upstream layer, and then needing to
maintain my own copies of the upstream repos.

I'm sure there are many other ways ...

Cliff

