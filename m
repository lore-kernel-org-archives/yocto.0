Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 295F2E00A86; Sun,  9 Aug 2015 16:57:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 164ADE006EE
	for <yocto@yoctoproject.org>; Sun,  9 Aug 2015 16:57:07 -0700 (PDT)
Received: by wibhh20 with SMTP id hh20so128782318wib.0
	for <yocto@yoctoproject.org>; Sun, 09 Aug 2015 16:57:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=VcwlWXPowCukzHugQzGnuAhJC2emcyCV2Uns7qaZ32k=;
	b=D4fbwjxZNviK2CQHLDWhglSfJD1bbNe9ppyunEfL1FMNJxiXWlWDHMz2mExVLALfJJ
	a+cVo0PH8DAePHL/Nw3TYMFuE23OFeU476OahyNKbMnH2vg9PV9ysUQGA+kflP8Yu3AK
	4sRruzZn2UL+ZdfOyUscJBUcNoMnLh27mMUnjxvpTSKGrJzgy6B9ul6blpJ6zW+YPSri
	8QX+mFMg4KdXriUJ2he9M27w1c27sube0L9DMnGp4sjOYwf5IcM9E6eKoJcIyF90qFZo
	m9pfdC0jwwPoHCaKENsXh0AEzcmZFvUVv7XgNd/D5gCi6N02WWaG0r619SobOcq4NTWx
	KeBA==
X-Gm-Message-State: ALoCoQnzlYRYJ/3PF+fDuyhdTsuubReLkQGaid7lyM5bHJm8jcaqTvkKf42I0PC9fQHBfcjjPwFZ
X-Received: by 10.180.97.33 with SMTP id dx1mr7218333wib.17.1439164626689;
	Sun, 09 Aug 2015 16:57:06 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	lj2sm10830394wic.1.2015.08.09.16.57.05
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 09 Aug 2015 16:57:06 -0700 (PDT)
Date: Mon, 10 Aug 2015 01:57:03 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20150809235703.GA16574@resin>
References: <CANge7vWSJK5EtA6k53OxF0NizhY2fun4Ev9rVeMbaZRdAekQ7Q@mail.gmail.com>
	<CAK18fxE_1o8iPsB+sDVE6zFUrvQO5VF3rRHfwxLHk3vdqoLB2A@mail.gmail.com>
	<55AD1AE2.7010401@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <55AD1AE2.7010401@mlbassoc.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: fetch from SVN instead of Git
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
X-List-Received-Date: Sun, 09 Aug 2015 23:57:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Jul 20, 2015 at 09:59:30AM -0600, Gary Thomas wrote:
> On 2015-07-19 15:34, Andrei Gherzan wrote:
> >Hello,
> >
> >--
> >Andrei Gherzan
> >
> >On Thu, Jul 16, 2015 at 7:53 PM, Jon Szymaniak <jon.szymaniak@gmail.com <mailto:jon.szymaniak@gmail.com>> wrote:
> >
> >    Hi all,
> >
> >        >
> >        > So there is no support for depth clones until 2.5.0? I didn't really
> >        > understand.
> >
> >        Well, shallow clones are supported but only for branch tips, which is
> >        not what we need. This feature for shallow cloning a specific revision
> >        is available only in git 2.5.0+. Also, this feature needs a server-side
> >        configuration option to be enabled, in order to work properly.
> >
> >        Regards,
> >        Nikolay
> >
> >
> >    I'd argue that this whole issue with the whole meta-raspberrypi firmware.inc download is more than just slow, inconvenient download.  I've left builds running all night (8+
> >    hours on a 30Mib/s residential link) that just hang on this, usually timing out.  I initially thought it was just me, but am hearing others confirm this as well.
> >
> >    As such, I just wanted to continue this conversation.  It sounds like git fetch's --depth is the best option on the table, but has the issues Nikolay has described.  What are
> >    your thoughts on the following?
> >
> >    (1) We create a git-native and build a version that supports this the fetch depth?
> >
> >    I suspect this could be made to work, but haven't dug into what dependencies git may have and how that would play out on various LTS distros. My knee-jerk is that has too high
> >    of a risk/benefit ration, given that we're talking about 1 repo.
> >
> >    (2) We update the git fetcher to check the git version and support a depth= option if the git version is sufficient.  If it is not, we spit out a warning and fall back to the
> >    current behavior.
> >
> >    Neither (1) nor (2) address Nikolay's point that --depth requires server-side support.  However, I'd argue this is something you'd be testing and verifying when writing the
> >    recipe.  Is this a reasonable assertion? How likely is it that a server supporting this would suddenly be re-configured?
> >
> >    (3) We request that the upstream maintainer of meta-raspberrypi use the GitHub Release feature [a] to post a tarball of a known checksum at somewhat regular intervals.  I'm
> >    told by a few package maintainers that while the tarballs that it generates for specific changesets are subject to change, that the tarballs it autogenerates when using its
> >    Releases feature do not.  However, I have not confirmed this.  If this is false, then one can upload a tarball with known checksums to the release as an attachment; I would be
> >    *shocked* if they touch your attachments.
> >
> >    While (3) is a nice "not our problem" solution, I think (2) might have some benefits for other recipes later.  Any other ideas?
> >
> >
> >Definitely 2 is the best opinion in my opinion too. I'm wondering if there is any work started in this direction.
> >
>
> It would sure be nice to get this fixed!  The latest download
> (I always save the tarballs for the next time) is over 4GB!!
>

So what is the conlcusion on this? Should we switch on SVN temporary?

--
Andrei Gherzan

