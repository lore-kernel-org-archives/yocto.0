Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9B9CE00A81; Mon, 10 Aug 2015 14:35:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 477BCE00A7D
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 14:35:44 -0700 (PDT)
Received: by wicja10 with SMTP id ja10so43185824wic.1
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 14:35:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=pOxW0v1vNzAKuq+9tQaAw2C713KdVf9YSuACkOtSZoc=;
	b=L3z2oVEx1yyVRCj7oDA3zjYi4cpbL/VQHe8AX1tlmfKPQsgVPCsFRHZpydQ3k/LSOw
	Ki0n/cJn1NJJcUlIKxkQPcrdmO95jgp3FHbIJPKDkIxTNRYv/c3hDuwHMKltO6WfhKcW
	bjEGGmW/CIcRWKdNO89bc8hAWWBVtOBCl0tQCc3+lLdcla5tl9gpwjS+lKmVnn+8oSN/
	g1M57Ac9gDGmbPrltKg6vRwsiGfI14xNiLPTHfyBc3u38GJsDekWgMjoWW2NSs/lHTtZ
	S+rER+d4+mAirCrgfxX9uDEoOISZRj6McCZNvNCI93jzNjXnWYlH//fPP066fUXojqlF
	qf3g==
X-Gm-Message-State: ALoCoQn6OSIO1mWXZBEF9XBDeL6Sf238BzVmbJO83mNe6PkvL2ONmR+FDM0lIuDi5gYDgvONFZ7U
X-Received: by 10.181.13.241 with SMTP id fb17mr29897850wid.13.1439242543655; 
	Mon, 10 Aug 2015 14:35:43 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	lz10sm31301926wjb.48.2015.08.10.14.35.42
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Aug 2015 14:35:42 -0700 (PDT)
Date: Mon, 10 Aug 2015 23:35:40 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Message-ID: <20150810213540.GD4718@resin>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-5-git-send-email-javier@osg.samsung.com>
	<20150809225456.GJ17962@resin> <55C859E2.6030102@osg.samsung.com>
MIME-Version: 1.0
In-Reply-To: <55C859E2.6030102@osg.samsung.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org, Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH 4/5] linux-raspberrypi: Add a 4.1 linux kernel with vc4 support
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
X-List-Received-Date: Mon, 10 Aug 2015 21:35:47 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 10, 2015 at 09:59:30AM +0200, Javier Martinez Canillas wrote:
> Hello Andrei,
>
> On 08/10/2015 12:54 AM, Andrei Gherzan wrote:
> > Hi,
> >
> > On Thu, Jul 30, 2015 at 10:34:10AM +0200, Javier Martinez Canillas wrote:
> >> From: Derek Foreman <derekf@osg.samsung.com>
> >>
> >> This adds Eric Anholt's WIP kernel with dri/kms/3d support for the GPU on
> >> the rpi2. Adding a recipe that tracks this kernel, will make it easier to
> >> test this setup.
> >>
> >> This recipe should only used for testing purposes for now, so it will not
> >> be set as the default.
> >>
> >> The kernel will be choosen though if the "vc4-gfx" feature has been added
> >> to the the DISTRO_FEATURES variable.
> >>
> >
> > It was said before - it seems like this is a MACHINE_FEATURE. I know you will
> > address this in V2.
> >
>
> Yes, but since it was decided to add a new kernel recipe for the linux vc4
> kernel and changing the default providers manually aided by a comment, the
> "vc4-gfx" feature may not be necessary and I could drop it in v2. If found
> to still be necessary, I'll add it as a MACHINE_FEATURE though.
>

Yup. Let's have this as the first step. And we will see if additional bits are
needed.

--
Andrei Gherzan

