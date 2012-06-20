Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25217E0070B
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2012 08:28:06 -0700 (PDT)
Received: by eekb45 with SMTP id b45so3152229eek.35
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2012 08:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=YserVXKS7/mzZ5bpT2evT9GcvXON2fR7vWatQQi9w+s=;
	b=PVDILiGeXs6JO+uQsKJ0L4pnPyhL11yNp3IDLeEzWddfodAzNpzFBNFop+5bnTruJ7
	qKITcMhq3n0ZTf5uK1OzevOj6Izp7ug2REaJ66UUpBImaJGi0Dv05flCbLX1KLNhyL1b
	szxahffIVpY8KhrWykVs58JQdibjuye06nNcCYsxFyGxpDz6ERMWF73aHYpAFNL+dqJD
	7xTbFabKFb1VFAwLccS/Nv1SIYuACeO/LtDM3nBN2uWFew/aKKKZVmhDjJIbJJOPAeJ1
	jvWZI3ZPQsGrakE18JMbmSjFV6qwWfPBXKQvFQ/uTD3UfvGzOI8XMXv/1lCERHL/O8jX
	PnBg==
Received: by 10.14.37.76 with SMTP id x52mr5405845eea.102.1340206085822; Wed,
	20 Jun 2012 08:28:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Wed, 20 Jun 2012 08:27:35 -0700 (PDT)
In-Reply-To: <CAJTo0Lb3kD-LsZkAbgqkgN82E2wN61C5yEZBDu80D3VA1jzf5g@mail.gmail.com>
References: <E16513A01CAAFF40B65178C63CE45EEC1914D426@IRSMSX102.ger.corp.intel.com>
	<4FE109C4.1010906@linux.intel.com>
	<CAJTo0Lb3kD-LsZkAbgqkgN82E2wN61C5yEZBDu80D3VA1jzf5g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 20 Jun 2012 08:27:35 -0700
Message-ID: <CAMKF1spPQ2nJqJPj7fG0rWKqQ1v0xZoahx03a8W66yXzKCcSsA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: VERIFIED vs CLOSED in yocto bugzilla
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Jun 2012 15:28:07 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jun 20, 2012 at 2:18 AM, Burton, Ross <ross.burton@intel.com> wrote:
>
> Agreed -- hiding CLOSED would be my proposal as it doesn't add any
> meaning, just complicates the lifecycle.

I think yes hiding closed it ok since it does not change much in fix.
I wouldnt say it complicates but it completes the life cycle
since the owner for closing action is submitter. it closes the life
cycle nicely.

