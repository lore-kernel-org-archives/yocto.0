Return-Path: <tom.rini@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9269E00596
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 16:14:10 -0700 (PDT)
Received: by obbuo19 with SMTP id uo19so1116289obb.35
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 16:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:organization
	:user-agent; bh=civFR0aWSPfbiJhVjjthqBiAl2EGDsYhgQzclsbqKgw=;
	b=aEqUMOfEwrpks9IjKJ8S71lQNOj5NLkj8ykMLT5I7GIos83qixTQSfnWDB2cde4LCJ
	fujQSz9H+b562GKjsWHgWXSL2XmksSlJWaZe+xNPeAwBBuXA3uUJlu/wpxH9nSwkjAjP
	1KyS+mgvHfzAJdHINyP26XAZMivhxp6ece8YxeOEKPWCwnHOhte9u/vSC2usFEGee5+G
	tPRHLaVt193vr+2hqHqbjtzkf8heG90ijuienP1NjDQxVdfCuIc6VZM0IAuAxV8Y9AZ9
	uBDnU78CI7A1ijCB59c5minfLOIVOlfp82GPdY2Ez/P+flnDL8Z+tcCS/9iCoGOAderK
	eLDg==
Received: by 10.182.159.41 with SMTP id wz9mr230565obb.69.1333149250133;
	Fri, 30 Mar 2012 16:14:10 -0700 (PDT)
Received: from bill-the-cat (ip68-230-54-74.ph.ph.cox.net. [68.230.54.74])
	by mx.google.com with ESMTPS id vp14sm8445812oeb.5.2012.03.30.16.14.08
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 30 Mar 2012 16:14:09 -0700 (PDT)
Date: Fri, 30 Mar 2012 16:14:10 -0700
From: Tom Rini <tom.rini@gmail.com>
To: Chris Larson <clarson@kergoth.com>
Message-ID: <20120330231410.GB11451@bill-the-cat>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com> <1333141865.18082.120.camel@ted>
	<CDED78A957032E45B3239CDDA7642D15084B8EC1@ORSMSX105.amr.corp.intel.com>
	<CABcZANm-c9Q_S5sG-1wd-_c9iqc1ygcfzQw2MvgX7WVA2CqddA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CABcZANm-c9Q_S5sG-1wd-_c9iqc1ygcfzQw2MvgX7WVA2CqddA@mail.gmail.com>
Organization: Texas Instruments
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Fri, 30 Mar 2012 23:14:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 30, 2012 at 04:09:37PM -0700, Chris Larson wrote:
> On Fri, Mar 30, 2012 at 4:06 PM, Stewart, David C
> <david.c.stewart@intel.com> wrote:
> >>From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >>bounces@yoctoproject.org] On Behalf Of Richard Purdie
> >>Sent: Friday, March 30, 2012 2:11 PM
> >>
> >>The criteria I see for being part of the Yocto Project are:
> >>
> >>a) Sharing the project's objectives (e.g. making embedded Liunx
> >> ?? development easier)
> >>b) Willing to be part of the Yocto Project's governance structure
> >>c) Bringing something new/beneficial to the Yocto Project (often with
> >> ?? mutual benefit)
> >>d) Have some kind of sustainable resource plan
> >
> > I would add:
> > e) there should be interoperability with the other parts of the YP.
> >
> > Part of the benefit we're trying to create is that if someone invests in YP
> > for their device, they should get benefit from the whole thing. ??If a board
> > manufacturer creates a BSP for YP v1.2, there should be no doubt whatsoever
> > that it will work with that system. ??Can anyone assure me that such a BSP
> > would work under Angstrom?
> 
> Given that an OE priority has *always* been that distro, machine, and
> image are largely independent, orthogonal components, and generally
> speaking one can combine any combination of the three and have at
> least a good shot at functionality, I'd say that if such a BSP did not
> work under Angstrom, that'd be a bug that we'd all agree would need to
> be fixed. As far as I know, this priority and attribute of the system
> still exists.

This is also my understanding and expectation.

-- 
Tom

