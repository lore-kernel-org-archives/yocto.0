Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.4655.1574458179101730226
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Nov 2019 13:29:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@betafive.co.uk header.s=fm3 header.b=nZ72Q7N+;
 spf=softfail (domain: betafive.co.uk, ip: 140.211.169.56, mailfrom: paul@betafive.co.uk)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86142E00E8C; Fri, 22 Nov 2019 13:29:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [66.111.4.28 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48058E00852
	for <yocto@yoctoproject.org>; Fri, 22 Nov 2019 13:29:37 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 209C821B1B;
	Fri, 22 Nov 2019 16:29:35 -0500 (EST)
Received: from imap2 ([10.202.2.52])
  by compute1.internal (MEProxy); Fri, 22 Nov 2019 16:29:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	 h=mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm3; bh=OvthrnmdoYredcNPvWB82Mx3lUnnuIR
	4eajCX4LthEs=; b=nZ72Q7N+e6D75vNZRhirdZJcUpQ/H+82VmsWTb6FPx+8AhO
	mxsBCUWi0Prg6C7IyznZmKvVfqYJ01Y7khqE85NEAz3nbc7It366xO7ObkSGJQk/
	ToVqOEJuoDGYfnsvoZ8a0vWkOq/ZLxoqAlteKhRk0KHFEKgjoApV14fTkEqmCHBm
	SOGRoMl5sO9Om+5v6VLiSzfvzeJsG93kj3YYlRhh46QxsiRdBYgF1p7S4Gfdma0w
	Kt/m8W7B/zvdOSLNIO7YH+Hc91mKc8yHJeSLMmXQl5DmTzfefKnuO2kulnOdCux6
	HpcKeR9EPONeRdXjCaEh878058bfNDmWRUfJLtQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=Ovthrn
	mdoYredcNPvWB82Mx3lUnnuIR4eajCX4LthEs=; b=y1EvyNFenEMpkgYkq5LyLf
	kP6LxSRe9+n7PWAX8AbXJvQcqVnaA9mio5XED6IYGtQ0JPlX2c2DFtMiDaVairfe
	VejaQIx58QYEujyuXENl/JA9c6XG7EwOK4bPvPUZlPQs4sor3Ozxt2w+YJv6ieTI
	5v8qFXInE78yzrmHPIuSKCulj+r5snh10twEH6EdEz2XZAGUQK7TF07JDVgy2B2y
	azvJsx2OLQRPaQleSlLfLAhUKmkb7S8drhkNQH3YjF4r3I8HCqqoQGJbFfdOotvC
	1QCgT73o65UY56DqBfcHa+qtScFH7up+des79uC+tO6T0rALr/gsKDsdEVEQ4mfw
	==
X-ME-Sender: <xms:PlPYXfiM8uJjDriEQEAaijALssDiBxEL_PngkViXX8JYIr8KnDvqQw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudehgedgudehtdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enogfuuhhsphgvtghtffhomhgrihhnucdlgeelmdenucfjughrpefofgggkfgjfhffhffv
    ufgtsehttdertderredtnecuhfhrohhmpedfrfgruhhluceurghrkhgvrhdfuceophgruh
    hlsegsvghtrghfihhvvgdrtghordhukheqnecuffhomhgrihhnpehgohhoghhlvgdrtgho
    mhdpghhithhlrggsrdgtohhmpdihohgtthhophhrohhjvggtthdrohhrghdpohhpvghnvg
    hmsggvugguvggurdhorhhgrdhimhdpohhpvghnvghmsggvugguvggurdhorhhgnecurfgr
    rhgrmhepmhgrihhlfhhrohhmpehprghulhessggvthgrfhhivhgvrdgtohdruhhknecuve
    hluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:PlPYXaj_IR7A3wHWu0PsyeAoWwIbreOfAIuuiH6RRdLuKT1p0ik6uw>
    <xmx:PlPYXZ7xesJG9Xx9sZ5nJjHhTfdXgY7XFTnKwtq5y9zpDL9OxVoEvQ>
    <xmx:PlPYXSdgi-rtxskqHJbyDjFu0kpvW6py_jwIFU5NFdaAq5YweLWfQA>
    <xmx:P1PYXVEsIuyH62QYpnQ184XmDtcNpu8UrS8MCgkKHy6mZtDz6oS7gA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 6357CE00A5; Fri, 22 Nov 2019 16:29:34 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-578-g826f590-fmstable-20191119v1
Mime-Version: 1.0
Message-Id: <06de5f95-8a07-48cc-b4a3-eac13708ea93@www.fastmail.com>
In-Reply-To: <ab96ec4a-5dcb-4d01-8519-13c00094a44c@www.fastmail.com>
References: <ab96ec4a-5dcb-4d01-8519-13c00094a44c@www.fastmail.com>
Date: Fri, 22 Nov 2019 21:29:15 +0000
From: "Paul Barker" <paul@betafive.co.uk>
To: "Yocto discussion list" <yocto@yoctoproject.org>,
 "OE Devel" <openembedded-devel@lists.openembedded.org>,
 "OE Architecture" <openembedded-architecture@lists.openembedded.org>
Subject: Re: [yocto] Using GitLab for OE/Yocto layers
Content-Type: text/plain

Following up on the email below, I've created a "community" subgroup to the OpenEmbedded group on GitLab: https://gitlab.com/openembedded/community. This should help to avoid any confusion with the repositories at the top level of https://gitlab.com/openembedded which mirror those at git.openembedded.org.

I'm going to use this for one or two layers I'm currently developing. If anyone else would like to setup a new layer here or transfer/mirror a repository from elsewhere then let me know and I'll get you set up.

On Wed, 6 Nov 2019, at 16:01, Paul Barker wrote:
> Hey folks,
> 
> We had some initial discussion at OEDEM about the patch submission 
> process and how repositories are hosted (see 
> https://docs.google.com/document/d/1Qm1mJ6xLozWW9NgBnokue7TmhwgFP8b2HR8TUlaQwNs/edit#heading=h.o4qtddy8bh9i).
> 
> Patch submission via mailing list still has some key features (such as 
> ability to compose a patch response offline) and I don't expect that 
> the core OE/Yocto repositories will be changing their workflow in the 
> short term. However, lots of tools and non-core layers already use a 
> pull request model for patch submission, typically via GitHub or GitLab.
> 
> I'd like to propose that we set up a common place for OE/Yocto 
> repositories which want to use this pull request model and start to 
> collaborate on some of the tooling. As discussed in OEDEM, GitLab has a 
> few major advantages over GitHub, BitBucket, etc here as they've got a 
> track record of working well with open source projects and we can run 
> the software on our own infrastructure if desired. We can use something 
> like https://gitlab.com/openembedded at first to trial things and then 
> maybe move to https://gitlab.openembedded.org (or 
> gitlab.yoctoproject.org) if things look good.
> 
> I see the following advantages to this approach:
> 
> * Increased bus factor for repository administration - several layers 
> currently have only one admin or live in someone's personal GitHub 
> account, we risk losing access to these if the person in question 
> disappears.
> 
> * Integrated issue tracking - we can standardise on a few issue labels 
> and use milestones in GitLab to correspond to Yocto release branches. 
> As the repositories would be in the same group we would be able to make 
> use of group-level issue lists and boards to show issues across several 
> layers.
> 
> * Integrated merge request tracking - Similar to issues, we would be 
> able to see a combined group-level list of open merge requests. This is 
> a good view to use to help out other layer maintainers as you can 
> easily see new merge requests across all repositories and pick a few to 
> review.
> 
> * Separation of patches to different repositories/branches - Where one 
> mailing list takes patches for many repositories it's often confusing 
> which repository or branch is the target for a given patch.
> 
> * Easier contribution from behind corporate firewalls or buggy email 
> servers - contribution is via ssh/https.
> 
> * Subgroups - GitLab supports more than one layer of grouping so we can 
> organise repositories even within the top level "openembedded" group.
> 
> * Ability to enable/disable merge requests per-repository - With GitHub 
> you can't disable pull requests. If your repository takes patches by 
> another method you have to manually watch out for pull requests and 
> comment on each one to tell the contributor how to submit patches. With 
> GitLab this isn't necessary as you can just turn off merge requests for 
> that repository.
> 
> * Ability to standardise on automated testing - we can integrate 
> patchtest and yocto-check-layer with GitLab CI and run these scripts on 
> each merge request. This requires a bit of work in both test scripts to 
> allow configuration as not all tests will be appropriate for all 
> layers. However it's much easier than integrating these scripts with 
> several incompatible repository hosts and CI systems.
> 
> * Ability to standardise on security - If we want to we can enforce 
> two-factor authentication (2FA) for logins, make use of the merge 
> request approvals feature in GitLab, etc. We don't need to do that 
> initially but it may be useful in the future.
> 
> At the risk of bikeshedding I'd like to get some feedback on these 
> ideas at this stage. Have I missed any advantages/disadvantages? Is 
> anyone interested in helping to guinea pig this with a couple of 
> layers/repositories to see how it works in practice?
> 
> -- 
> Paul Barker
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

-- 
Paul Barker
Managing Director & Principal Engineer
Beta Five Ltd
