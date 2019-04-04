Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0488E00CD6; Wed,  3 Apr 2019 17:39:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
	[209.85.222.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07953E00994
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2019 17:39:20 -0700 (PDT)
Received: by mail-qk1-f195.google.com with SMTP id b74so594768qkg.9
	for <yocto@yoctoproject.org>; Wed, 03 Apr 2019 17:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=xgz0S6lGlc07esuIoQoVYBejaSO4dHgPy4bgh3kQG5Q=;
	b=ZNRMfrVd+jX9qj7ehgC1wnQNMsccGHvBIawiUIukqHS9Mp6M6O3DkJfoyKx+DvXX+d
	ChKC/DFwMayrVxwfElaLD3Pdo1l2wET4ZZEYsM7lOAk7HYChMUMcaDyepUeNIsiWL0OJ
	6NpmmjkXSITo/1T6lfHf//hH/VI3PIk++Z2ninCEy2dZE7lvuW0CAvIRc3NSKBINBkP5
	ubm+1X9X44VDvbcrxId/+ARTQC6M35tdYzzPYHTZQ/SasHYpdsnp09o2VEvq5/yb/4u+
	NFiOwW01fKBNMlyPb/UnJFzPpLNaGLSkHTA0GlB5bHHY912NCb9KWk4DnHJh3VEzcI+u
	2pNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xgz0S6lGlc07esuIoQoVYBejaSO4dHgPy4bgh3kQG5Q=;
	b=lvTsSWekUmixeaT7LJjOUcf4vxJfEp29TonUFO3til6vIG/a+DtZPcB3siQ9RO6ppB
	X7JmRtiGIt0XrrTTvJpKnu7iXBQbsemg4KgeQR2aP3RghNyeiUp3w1lXarA3NPaBtEEh
	e0eQ845iLA5GQnvSSmDcgNfKkEqkuXPqKZMnJKzgps6yC5Ab3nrLCs9b4KyPRijHidpt
	ld+yaZSjbQSmfVZwAN4ui1ejtWM/583w/35DGmNlXT1odRAQdzHhSrQB2VyLrFCfbdTA
	wtkc8eOTAE6jeY/coPvtZu9nLYvIu0DHg3B+cM2ZwO/TgoL0gtjPum00szaxq7Rrmd+D
	kGTA==
X-Gm-Message-State: APjAAAX1lF8O26sbKXJ76aOJY/jcADoDCfNNAs4kzb9W1h/BNwCg9d5W
	83qVqvEZgdNvvSfyDUPvoZ6X27aBGsw48zhWj1GNBWNn
X-Google-Smtp-Source: APXvYqyVy3cpHue0WjdWqDQWdXoiggXCG8gASt/Rb13SKaeKPYaA0GhwKZbCYcwsf+L9XtJD2IC7ui3TVX/La4D+tmk=
X-Received: by 2002:a37:9d84:: with SMTP id g126mr2625221qke.22.1554338359839; 
	Wed, 03 Apr 2019 17:39:19 -0700 (PDT)
MIME-Version: 1.0
References: <854544cb-aab1-1a9d-9e98-0f39663ca621@gmail.com>
	<20190403144110.GG4664@bill-the-cat>
	<CAMKF1srb2EgL7tYZDFoq2EqABp-+_eib2u2OZMwT6B3TVgNk=Q@mail.gmail.com>
	<2189093.Hm6Vq2XZhg@localhost.localdomain>
In-Reply-To: <2189093.Hm6Vq2XZhg@localhost.localdomain>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 3 Apr 2019 17:38:53 -0700
Message-ID: <CAMKF1spJCg2HjGRzke_3yH_9hCZR=ZQZfJ1EQZCQi9gQF3x-4g@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>, Adrian Bunk <bunk@stusta.de>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	Tom Rini <trini@konsulko.com>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [oe] [OE-core] Git commit process question.
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
X-List-Received-Date: Thu, 04 Apr 2019 00:39:22 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Apr 3, 2019 at 4:07 PM Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
>
> On Thursday, 4 April 2019 5:46:04 AM NZDT Khem Raj wrote:
> > On Wed, Apr 3, 2019 at 7:41 AM Tom Rini <trini@konsulko.com> wrote:
> > >
> > > On Wed, Apr 03, 2019 at 11:30:39AM +0100, Burton, Ross wrote:
> > > > On Tue, 2 Apr 2019 at 20:46, Tom Rini <trini@konsulko.com> wrote:
> > > > > > The kernel does not have "upgrade foo to the latest upstream
> > > > > > version" commits.
> > > > > >
> > > > > > With the Automatic Upgrade Helper this is a semi-automatic task, and
> > > > > > most of the time there is no specific motivation other than
> > > > > > upgrading
> > > > > > to the latest upstream version.
> > > > >
> > > > > But since that's just filling in a template the body can also be a
> > > > > template perhaps with useful AUH data (run at ... by ... ?) ?
> > > >
> > > > Apart from making the commit message longer what does this achieve?
> > > > The commit already has a timestamp and author.
> > >
> > > It's an etiquette thing.  Subject+Sign-off+Empty body is bad form.  AUH
> > > updates are a form of "trivial update" that every project has.  "Update
> > > $X from version $Y to $Z" is what a human would normally put.  It's
> > > weird looking at git log of nothing but subject+signed-off-by.  I'm not
> > > going to object further on this point, but I don't get it.
> >
> > if the content of subject is being repeated in body then I would
> > prefer an empty body
> > redundant information in commits should be avoided since it can create
> > impression that body does not have
> > useful information and skip reading it. We should strive to make commits
> > concise and useful.
>
> There is often (I won't say always, but often) something useful you can put in
> the commit message. If it's a recipe upgrade, you could put a pointer to the
> upstream changelog in it, for example. As the person doing the upgrade if your
> prior review of that changelog or other upstream release documentation
> indicated any backwards-compatibility issues or CVEs fixed then those really
> ought to be mentioned as well; if you're feeling especially generous you might
> mention highlights of any new functionality. (I have a proposal that might
> help us automate part of that which I've not yet fully fleshed out, hopefully
> one day soon I will get around to it.)
>
> The issue of empty commit messages is something I've complained about in the
> past, and not just about recipe upgrades. If I - as someone who is relatively
> familiar with OE - have to actually read beyond the shortlog / commit message
> to understand the basics of why a change has been made, then it's likely that
> the commit message wasn't good enough. Unlike other issues, once a commit goes
> in the message is set in stone within the git history, so if you are working
> on a change, *please* take a minute or two to document it adequately in the
> commit message so that others looking back can understand it.
>

Definitely, and I agree that we should put relevant information in
commits, usually
the information about side effects if any, links to changelog etc. are
useful too
however, we should not enforce a behavior which could result in
redundancy as explained

> Thanks,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>
>

