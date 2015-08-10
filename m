Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47E38E00A81; Mon, 10 Aug 2015 14:59:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5D65E00A7D
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 14:59:07 -0700 (PDT)
Received: by wicne3 with SMTP id ne3so38375516wic.0
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 14:59:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=Y94CIvmJen7hIKjGeasm55U9xb8xoFgUJSWlbt2z2OQ=;
	b=Rv4NK3uaU4Q1ROEj/uRnacnN3sHh4k92GQfz5qkvDoiKQhvnHw1WGFXuKSGjzOOV0y
	PAn9BX1mD3pAlH9GWsXHA7LHNoOgCs+ltg5wnfJR6BIUhzdbgvPGzQxZPvpJnhHVUkVZ
	fY4BF57AksYMfL0MBKPmYHwH8p7AUIZ8SvcGJSiDaZhyiT2SjS5atUM7C663SNvDT2sF
	D5CIoy+8aV1d7RlaxTGFicsrJKwZEiEDcXU0dXAKN9+MM5w7a+l1WlKB3eKzMAJSlyg3
	lYklSOc9avUXzrx6IqJKbj3XHY0ebZdJWtSKkW5wBcikJVYso5o/298m/kz7eRvQIWJ/
	6dDA==
X-Gm-Message-State: ALoCoQmsvZ5EA59jPJQNQhRSMGUpz9OLYDR9Zjvrnkdj6iUChrxSo1vl1dccUBUXlaOSbSzogcdV
X-Received: by 10.194.59.100 with SMTP id y4mr26896226wjq.151.1439243946642;
	Mon, 10 Aug 2015 14:59:06 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id k4sm222809wix.19.2015.08.10.14.59.05
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Aug 2015 14:59:06 -0700 (PDT)
Date: Mon, 10 Aug 2015 23:59:03 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20150810215903.GC5306@resin>
References: <CANge7vWSJK5EtA6k53OxF0NizhY2fun4Ev9rVeMbaZRdAekQ7Q@mail.gmail.com>
	<CAK18fxE_1o8iPsB+sDVE6zFUrvQO5VF3rRHfwxLHk3vdqoLB2A@mail.gmail.com>
	<55AD1AE2.7010401@mlbassoc.com> <20150809235703.GA16574@resin>
	<CAMKF1sqzQXJGp3h1J9C2K4BojveL+14UMsYjq-UtQrk_1CX44Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqzQXJGp3h1J9C2K4BojveL+14UMsYjq-UtQrk_1CX44Q@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
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
X-List-Received-Date: Mon, 10 Aug 2015 21:59:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 10, 2015 at 01:03:57AM -0700, Khem Raj wrote:
> On Sun, Aug 9, 2015 at 4:57 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > Hi,
> >
> > On Mon, Jul 20, 2015 at 09:59:30AM -0600, Gary Thomas wrote:
> >> On 2015-07-19 15:34, Andrei Gherzan wrote:
> >> >Hello,
> >> >
> >> >--
> >> >Andrei Gherzan
> >> >
> >> >On Thu, Jul 16, 2015 at 7:53 PM, Jon Szymaniak <jon.szymaniak@gmail.com <mailto:jon.szymaniak@gmail.com>> wrote:
> >> >
> >> >    Hi all,
> >> >
> >> >        >
> >> >        > So there is no support for depth clones until 2.5.0? I didn't really
> >> >        > understand.
> >> >
> >> >        Well, shallow clones are supported but only for branch tips, which is
> >> >        not what we need. This feature for shallow cloning a specific revision
> >> >        is available only in git 2.5.0+. Also, this feature needs a server-side
> >> >        configuration option to be enabled, in order to work properly.
> >> >
> >> >        Regards,
> >> >        Nikolay
> >> >
> >> >
> >> >    I'd argue that this whole issue with the whole meta-raspberrypi firmware.inc download is more than just slow, inconvenient download.  I've left builds running all night (8+
> >> >    hours on a 30Mib/s residential link) that just hang on this, usually timing out.  I initially thought it was just me, but am hearing others confirm this as well.
> >> >
> >> >    As such, I just wanted to continue this conversation.  It sounds like git fetch's --depth is the best option on the table, but has the issues Nikolay has described.  What are
> >> >    your thoughts on the following?
> >> >
> >> >    (1) We create a git-native and build a version that supports this the fetch depth?
> >> >
> >> >    I suspect this could be made to work, but haven't dug into what dependencies git may have and how that would play out on various LTS distros. My knee-jerk is that has too high
> >> >    of a risk/benefit ration, given that we're talking about 1 repo.
> >> >
> >> >    (2) We update the git fetcher to check the git version and support a depth= option if the git version is sufficient.  If it is not, we spit out a warning and fall back to the
> >> >    current behavior.
> >> >
> >> >    Neither (1) nor (2) address Nikolay's point that --depth requires server-side support.  However, I'd argue this is something you'd be testing and verifying when writing the
> >> >    recipe.  Is this a reasonable assertion? How likely is it that a server supporting this would suddenly be re-configured?
> >> >
> >> >    (3) We request that the upstream maintainer of meta-raspberrypi use the GitHub Release feature [a] to post a tarball of a known checksum at somewhat regular intervals.  I'm
> >> >    told by a few package maintainers that while the tarballs that it generates for specific changesets are subject to change, that the tarballs it autogenerates when using its
> >> >    Releases feature do not.  However, I have not confirmed this.  If this is false, then one can upload a tarball with known checksums to the release as an attachment; I would be
> >> >    *shocked* if they touch your attachments.
> >> >
> >> >    While (3) is a nice "not our problem" solution, I think (2) might have some benefits for other recipes later.  Any other ideas?
> >> >
> >> >
> >> >Definitely 2 is the best opinion in my opinion too. I'm wondering if there is any work started in this direction.
> >> >
> >>
> >> It would sure be nice to get this fixed!  The latest download
> >> (I always save the tarballs for the next time) is over 4GB!!
> >>
> >
> > So what is the conlcusion on this? Should we switch on SVN temporary?
>
> Step back a bit and look at what this firmware repo is all about. Its
> bunch of binaries in there. Git is a bad choice for such a repo. Since
> binary blobs whenever updates will add that much of data to size of
> metadata and soon it will go into tens of gigabytes so its a building
> avalanche. Ideally this firmware should have been released as tarballs
> in first place. Can you work with owners who are releasing this in
> this form to reconsider releasing it in discrete tarballs ?

This is not under our control. I will try to talk with rpi people:
https://github.com/raspberrypi/firmware/issues/455

Khem, could you add a comment there too?

Thanks,

--
Andrei Gherzan

