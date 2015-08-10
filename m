Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87107E00A81; Mon, 10 Aug 2015 15:00:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80714E00A7D
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 15:00:28 -0700 (PDT)
Received: by wicja10 with SMTP id ja10so53275521wic.1
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 15:00:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=EYfdOr34Tg6EpWS5lA/Y/o7Qv2U9bEfz/iuVXaY2348=;
	b=MLNzz2z8V77R09CK4DqB24KUwbsJYaimNPUwqAVXygDk7/i0tl+KLN0XTJNEktGB4f
	9yvwsfawhoiuU0fmLf5ZsX4M4RycXH6FO06m2dy3wouz+Mo91wbKnJLq8nD5j5OSjuA7
	zvmgmOms5Dz9UCWuikdVMBbyA42k3YI2gCDE4y3YpBXiu3DF7aoUxwrgJVxDYjsIJddw
	a9fKmcpIS8abHx65e48voaEuizxCu0ZAKBWKARS9bHNJ0n0AqhNLFYLPSTSKziPfU9j8
	r/SCosJNWldFi9FGKiXU8qeACt+eTd9mb2Npzqw0nOMZel6wGJqbGnpNCpxUAYf6LP0+
	6vuA==
X-Gm-Message-State: ALoCoQmP1lGGx9W8ZuJ7fAZLej2VYS55OYtYnVtCkFMCXHgqOSsNxHcDXcozTGdsc7XsMehCDvLV
X-Received: by 10.194.86.134 with SMTP id p6mr51848002wjz.71.1439244027299;
	Mon, 10 Aug 2015 15:00:27 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	bq7sm31394592wjc.31.2015.08.10.15.00.26
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Aug 2015 15:00:26 -0700 (PDT)
Date: Tue, 11 Aug 2015 00:00:24 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Message-ID: <20150810220024.GD5306@resin>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<55C082ED.6030405@technux.se> <55C0E347.9030508@osg.samsung.com>
	<929d9c24776929cd07c370278d4c2768@technux.se>
	<55C306C6.5040703@osg.samsung.com> <20150809230114.GK17962@resin>
	<55C85A7B.4010008@osg.samsung.com> <20150810213411.GC4718@resin>
	<55C91D85.5070400@osg.samsung.com>
MIME-Version: 1.0
In-Reply-To: <55C91D85.5070400@osg.samsung.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org, Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	Derek Foreman <derekf@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH 0/5] Add support for 4.1 kernel with vc4 DRM/KMS driver
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
X-List-Received-Date: Mon, 10 Aug 2015 22:00:30 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Aug 10, 2015 at 11:54:13PM +0200, Javier Martinez Canillas wrote:
> Hello Andrei,
>
> On 08/10/2015 11:34 PM, Andrei Gherzan wrote:
> > On Mon, Aug 10, 2015 at 10:02:03AM +0200, Javier Martinez Canillas wrote:
>
> [snip]
>
> >>>>>
> >>>
> >>> That would definitely be the preferate way but would involve some additional
> >>> work in tracking the patches. So, as an initial state, I am fine with a
> >>> different kernel recipe (with a different name).
> >>>
> >>
> >> Ok, I was waiting for your feedback before preparing v2.
> >
> > I guess this is my feedback. We can go on a separate linux provider for now.
> > Something like linux-raspbery-vc.bb . Or, if you want to maintain the patches
> > we can only pull in patches and apply them on top of 4.X based on a FEATURE.
> > What do you think?
> >
>
> Yes, sorry I meant that I didn't post a v2 before because I was waiting for
> you but now I've all your feedback from your previous emails. I agree that
> is better to have a separate recipe (with all the patches unconditionally
> applied) and drop the feature for now.
>
> Is just that I was busy today with other stuff but I'll post a v2 this week
> for sure!

No rush Javier. Just keep it in queue.

--
Andrei Gherzan

