Return-Path: <lschwab@xeralux.com>
Received: from mail-yh0-f45.google.com (mail-yh0-f45.google.com
	[209.85.213.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB994E00C1B
	for <yocto@yoctoproject.org>; Thu, 17 Apr 2014 12:54:47 -0700 (PDT)
Received: by mail-yh0-f45.google.com with SMTP id a41so788088yho.18
	for <yocto@yoctoproject.org>; Thu, 17 Apr 2014 12:54:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=o08dLWQUoX4LwvtYSZqIj+Vcx3ednINv3S2vK8Bh/Rg=;
	b=XMMOhmzu6E0hB5a38/Z8MYHfWXBiy67ca4XDbF9mlU28VphjQddj7pzldvSdE7BiG+
	NHFEDpBy1ryBHGn39RKwp0s2TwmI64nGicq8OybIQElWFl0aBxsyZSZgvvAZQ6pjTisf
	AytEVF4QrPEIFiRjXDkMhmq3KCbjKhdMvIidN1FCRUMuOp7L4I+zWVEECUIWJVxaacgr
	L9NJ9abAoi6Sfyvrkty2d9dQNffrWkgvF9/etMLKvkPi3FkbC5vX8VdFwNRy3tx3nkxN
	MJjWzK8ilyQxTcq756BtQzq5HNOm4rt/c3EP2GwhmnPTB02IE492hGtpJtx+9iCQ9oNk
	oUUg==
X-Gm-Message-State: ALoCoQnjgDF3gmr76f4tgGYhTG3YRIHGJYtU4Vx3VrxPyUQxGkO14A6TzhHmqAy418GVY+u92vYb
MIME-Version: 1.0
X-Received: by 10.236.20.194 with SMTP id p42mr25196743yhp.56.1397764486655;
	Thu, 17 Apr 2014 12:54:46 -0700 (PDT)
Received: by 10.170.71.131 with HTTP; Thu, 17 Apr 2014 12:54:46 -0700 (PDT)
In-Reply-To: <534F9598.5050003@ge.com>
References: <CALb2248grw7+NKWt8yfEpVR1_DYgkWEGYwhhr5N5ng_6JqU2mA@mail.gmail.com>
	<534F9598.5050003@ge.com>
Date: Thu, 17 Apr 2014 12:54:46 -0700
Message-ID: <CALb2249LccFPUKvUSbU1Nax4LQc6Nc8iXqT9Cx24YOAcf6rv2g@mail.gmail.com>
From: Leo Schwab <lschwab@sensity.com>
To: Martin Donnelly <martin.donnelly@ge.com>
Cc: yocto <yocto@yoctoproject.org>, Leo Schwab <lschwab@sensity.com>
Subject: Re: Integrating Golang
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
X-List-Received-Date: Thu, 17 Apr 2014 19:54:50 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Apr 17, 2014 at 1:49 AM, Martin Donnelly <martin.donnelly@ge.com> wrote:
> On 05/03/2014 21:55, Leo Schwab wrote:
>> Has anyone else done any work here?  Is there anything that I can
>> steal^H^H^H^H^Htake inspiration from?  Or am I in completely
>> unexplored territory?
>
> I posted an RFC patch set last year but it didn't get any traction and
> we subsequently ruled out use of go so I never followed up on it but it
> might be a useful starting point.
>
> http://lists.openembedded.org/pipermail/openembedded-core/2013-May/078606.html
>
We cobbled together our own recipes to build the Go compiler
(available upon request), which seem to be working well enough.  We
didn't need to make any changes to the recipes building the GCC
toolchain.

What I was more interested in learning was how people were integrating
the building of Go applications into Yocto.  Specifically: 'go get
foo' will build 'foo' and, in the process, fetch and build all its
dependencies.  This conflicts directly with Yocto's duties -- fetching
and building dependencies.

My current not-solution is rather ugly:  Create a repository that is a
standard Go build environment pre-populated with the app source code
and all of its dependencies.  The idea is that 'go get foo' will find
everything it needs already there and won't try and fetch anything
else.  Then create a simple Yocto recipe that fetches this repository
and builds it using 'go get ...'.  The repository itself is maintained
via rather delicate use of git-subtree.

This gets the job done, and prevents Go and Yocto having a fight about
who fetches what and how, but it's damned ugly...

Schwab

