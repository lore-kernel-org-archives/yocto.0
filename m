Return-Path: <andrew@bradfordembedded.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21831E00C1A; Thu, 31 Aug 2017 10:54:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [66.111.4.25 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6027EE00C01
	for <yocto@yoctoproject.org>; Thu, 31 Aug 2017 10:54:53 -0700 (PDT)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 1DEE420DD2;
	Thu, 31 Aug 2017 13:54:53 -0400 (EDT)
Received: from frontend1 ([10.202.2.160])
	by compute6.internal (MEProxy); Thu, 31 Aug 2017 13:54:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	bradfordembedded.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=7r/AZ9XFQeOnAnmW3Z
	m7A7oyEeCitwFgKlnQRxew+6M=; b=t/u0P/PSekj1oyxTMc/XNAfTkZM2jgpKy5
	3WlVDstfv8BP4Oa+GZFHof5aGFzLPF1cZW8CG+tyGaSpkVQ/DI9GDjJgfPWgiviW
	2ewvdqj3TOGS0g846jtKPdkGZHJempfbZm8TBjqgIhpGlmAfmvGa/wZ1/rVKhB7A
	IIkBMvQW0eEqFIzZyrK+K9hP1yVdr1d2QiIa7ffpO9qQswDNl4tOOqjvPB4fZr+i
	OcYvswzjgsH6i27JXj7u/zS+ZOkXHloNpEtvKLduv6WpPvxIJnU8Cny6xMlDPmLC
	Cgm10Go3k4AXLbIXz7PVSwgytwphfvARnbKM/GzFgecf1+M3Zsnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=7r/AZ9XFQeOnAnmW3Z
	m7A7oyEeCitwFgKlnQRxew+6M=; b=gJQqmymqM/fF5m+oNPeZz8NkXTeYPTrk8j
	2S2cr8Wh8PH7CH1HOG3sXRb9PRV6Wa2U/cv7DFNZtmSWV4/nfmtuR4g+RxgAPz+E
	tulo/ladYRgXlrNiG66JTPV5WwLzljasBkMKYs+8D2Lhgz0WnQS+HzeANC+G/7zF
	Iv1NeIM3uRNsBCYuOWTkdHKEaP+DHghmoSKiJ2zlhzqHgNtB1zvSPKAA1aVbEfwt
	Pt1neY6pHLQoLw3HCeDLoecyXHe5qBdRKAroMGb4pH8MCCV0//G4qqBvOXzT21jF
	7nodWXao2zrT/aBxkPQBCoSqKAwy2BniJk5QHXuQWntnqBGo9sjA==
X-ME-Sender: <xms:bU2oWXpv3kGcUc9ZSJ5g6MMkqlSjTccC61kLJe5ewJld8HOz-ZH8BA>
X-Sasl-enc: 5AKkmh0mQFpElPLb6Raae9gjrpcgpSdEohnfiOKypeaR 1504202092
Received: from kaim-eeyore.kodakalaris.net (clr-vpn01.kodakalaris.com
	[198.140.222.129])
	by mail.messagingengine.com (Postfix) with ESMTPA id B7FEC7FADB;
	Thu, 31 Aug 2017 13:54:52 -0400 (EDT)
Date: Thu, 31 Aug 2017 13:54:51 -0400
From: Andrew Bradford <andrew@bradfordembedded.com>
To: Katu Txakur <katutxakurra@gmail.com>
Message-ID: <20170831175451.23mxpmpof3zdmnll@kaim-eeyore.kodakalaris.net>
References: <CAM1ZcoVg_NuFbLkAHCRJmXAhX7g9EA04h+9NYmWb9QAJWCcnKA@mail.gmail.com>
	<CAM1ZcoUYPs_TRwcCT=_9o6pWO1XDpmaRUuTZn=X1O5qkPkY3Eg@mail.gmail.com>
	<1593300.26TW5Pyds6@peggleto-mobl.ger.corp.intel.com>
	<20170807111740.ppsdinlvltioc3uq@kaim-eeyore.kodakalaris.net>
	<CAM1ZcoX7ee=hCBYqWPQoeg_wrWjzqqbZvsrTm12sfZc2Fe0JJQ@mail.gmail.com>
	<20170811125251.t2t3kj6kbpsvhwxe@kaim-eeyore.kodakalaris.net>
	<CAM1ZcoX-DKScfwq==5y6TsH7MGZv5x6MXEuZ3PF4H487uyVshQ@mail.gmail.com>
	<20170828142759.iiubfgywp2nwz5c6@kaim-eeyore.kodakalaris.net>
	<CAM1ZcoVYph7c2f1veS9vRFaxu_9oiGMFyrYU2058Gr2gTMK8Kw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAM1ZcoVYph7c2f1veS9vRFaxu_9oiGMFyrYU2058Gr2gTMK8Kw@mail.gmail.com>
User-Agent: NeoMutt/20170609 (1.8.3)
Cc: yocto@yoctoproject.org, Andrew Bradford <andrew.bradford@kodakalaris.com>
Subject: Re: Perforce fetcher ignores module and label
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
X-List-Received-Date: Thu, 31 Aug 2017 17:54:56 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Katu,

On 08/28 17:43, Katu Txakur wrote:
> Thanks for looking at this. See my recipe below. I've left the bits related
> to systemd service but I don't think they matter for this. I'm using an old
> implementation of Perforce (2010) in case this matters. I've tried going
> back to the old perforce.py fetcher but I get a license error... do you
> know if it would be easy to revert to the old version in my bitbake folder
> until we make this work?

Sorry, I've been swamped this week and haven't been able to look into
this yet.  This coming weekend is a holiday weekend in the USA, too.
But I plan to look at this early next week, hope that's OK.

We should be able to create a patch series to revert my changes so you
can go back to the old perforce fetcher.  It might also be worth
investigating how to take the current perforce fetcher and enable some
of the use cases that you have (but we can do this after we successfully
revert).

I'll try to send a patch to you next week for the reverting.
Thanks,
Andrew

> DESCRIPTION = "Dummy recipe to fetch from Perforce"
> SECTION = "PerforceRecipes"
> LICENSE = "CLOSED"
> PR = "r0"
> 
> inherit cmake
> DEPENDS = "boost alsa-tools"
> 
> P4USER = "myuser"
> P4PASSWD = ""
> P4PORT = "192.168.1.55:1666"
> FETCHCMD_p4 = "/usr/local/bin/p4"
> 
> SRC_URI = " \
> p4://${P4USER}:${P4PASSWD}@myrepo/myfolder/...; \
> file://perforce-recipe.service \
> "
> SRCREV = "${AUTOREV}"
> S = "${WORKDIR}/p4"
> 
> do_install_append () {
>     install -d ${D}${systemd_unitdir}/system
>     install -m 0644 ../perforce-recipe.service ${D}${systemd_unitdir}/system
> }
> 
> NATIVE_SYSTEMD_SUPPORT = "1"
> SYSTEMD_PACKAGES = "perforce-recipe"
> SYSTEMD_SERVICE_${PN} = "perforce-recipe.service"
> 
> SYSTEMD_AUTO_ENABLE = "disable"
> 
> FILES_${PN} = "${systemd_unitdir} ${bindir}"
> 
> 
> 2017-08-28 15:27 GMT+01:00 Andrew Bradford <andrew@bradfordembedded.com>:
> 
> > Hi Katu,
> >
> > On 08/28 08:56, Katu Txakur wrote:
> > > 2017-08-11 13:52 GMT+01:00 Andrew Bradford <andrew@bradfordembedded.com
> > >:
> > > On 08/11 11:34, Katu Txakur wrote:
> > > > > 2017-08-07 12:17 GMT+01:00 Andrew Bradford <
> > andrew@bradfordembedded.com
> > > > >:
> > > > > > On 08/02 10:28, Paul Eggleton wrote:
> > > > > > > On Wednesday, 2 August 2017 9:40:10 AM CEST Katu Txakur wrote:
> > > > > > > > I'm still having problems fetching from Perforce. Is there any
> > > > > > > > documentation based on the latest implementation of the
> > > > > > > > poky/bitbake/lib/bb/fetch2/perforce.py file?
> > > > > >
> > > > > > There's some documentation now in the official Yocto Project
> > > > > > documentation location for bitbake fetchers [1].  Prior to my
> > changes
> > > > > > there was very little if any documentation, afaik.
> > > > > >
> > > > > > [1]: http://www.yoctoproject.org/docs/2.3.1/bitbake-user-
> > > > > > manual/bitbake-user-manual.html#perforce-fetcher
> > > > > >
> > > > > > > > 2017-07-25 10:05 GMT+01:00 Katu Txakur <katutxakurra@gmail.com
> > >:
> > > > > > > > > I'm upgrading a recipe that fetches the source code from
> > > > Perforce.
> > > > > > > > >
> > > > > > > > > The old recipe was:
> > > > > > > > >
> > > > > > > > > SRC_URI = " \
> > > > > > > > >   p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot/path/
> > pe
> > > > > > > > > rforce/...;module=local/path/relativeto/p4;label=${
> > P4CHANGELIST}
> > > > \
> > > > > > > > >   "
> > > > > > > > >
> > > > > > > > > With the new version of /lib/bb/fetch2/perforce.py, I had to
> > set
> > > > > > P4PORT
> > > > > > > > > outside SRC_URI, leaving the recipe with:
> > > > > > > > >
> > > > > > > > > SRC_URI = " \
> > > > > > > > >   p4://${P4USER}:${P4PASSWD}@Depot/path/perforce/...;module=
> > > > > > > > > local/path/relativeto/p4;label=${P4CHANGELIST} \
> > > > > > > > >   "
> > > > > > > > >
> > > > > > > > > The Perforce fetcher kind of works, but it seems to be
> > ignoring
> > > > the
> > > > > > > > > "module" and the "label" attributes. After reading the Python
> > > > script
> > > > > > I can
> > > > > > > > > see that after the "@", only the substring before the first
> > ";"
> > > > is
> > > > > > used.
> > > > > >
> > > > > > Sorry for not making the label change more clear, but you should be
> > > > able
> > > > > > to simply set SRCREV="labelname" and have the functionality you
> > desire.
> > > > > > However, we don't use labels very often internally, so the use of
> > > > labels
> > > > > > in SRCREV isn't tested that often by me.
> > > > > >
> > > > >
> > > > > I don't use labels that much either, however, I used to be able to
> > write
> > > > > the changeslist number as a label and it would
> > > > > fetch the code for that changelist. This doesn't work using SRCREV =
> > > > > "changelistnumber"
> > > >
> > > > This does work for me using oe-core morty branch and bitbake
> > > > 1.32 which is the versions where these changes were first applied and
> > > > where I did my testing.
> > > >
> > > > Like I have a recipe which I put:
> > > >
> > > > SRCREV = "184127"
> > > >
> > > > The p4 fetcher will go fetch changelist 184127 of the SRC_URI path in
> > > > perforce.
> > > >
> > > > Or if I put:
> > > >
> > > > SRCREV = "${AUTOREV}"
> > > >
> > > > Then it'll fetch the HEAD/tip of the SRC_URI path in perforce.
> > > >
> > > > Is this not working the same way with poky now?
> > > >
> > >
> > > I'm using yocto pyro with bitbake 1.34.0. When I first fetch the code for
> > > my recipe, it gets the latest changelist.
> > > I submit a change and the next time, the recipe thinks there nothing new
> > to
> > > fetch. Also, using SRCREV = "184127"
> > > doesn't work for me, it always gets the latest changelist.
> >
> > Can you post the recipe where this is failing for you?
> >
> > I could then try to recreate this issue in a sandbox depot we have in
> > our perforce server and see what's going on.
> >
> > > >
> > > > > > This change to using labels, changelist numbers, and allowing the
> > use
> > > > of
> > > > > > AUTOREV was made so that the perforce fetcher would act more like
> > the
> > > > > > other source code control system fetchers.  Prior to my changes to
> > the
> > > > > > p4 fetcher, the way that recipes using p4 had to be written seemed
> > > > > > rather awkward to me.  The way it is now isn't perfect, but it's
> > closer
> > > > > > to how the other fetchers act, I think (and hope).
> > > > > >
> > > > >
> > > > > > > > Is there a way to set module and label/changelist? I have
> > several
> > > > > > folders
> > > > > > > > > per recipe that I need to map to different subfolders and
> > with
> > > > the
> > > > > > current
> > > > > > > > > script some of the folders don't get fetched.
> > > > > >
> > > > > > I'm not sure I understand enough about how you use perforce and
> > what
> > > > you
> > > > > > mean by mapping different subfolders.  Can you explain this in a
> > more
> > > > > > expanded way to me?  Maybe with some examples?
> > > > > >
> > > > >
> > > > > What I mean by this is taking folders in different locations in
> > Perforce
> > > > > and fetch them to a custom folder structure inside the {WORKDIR}/p4
> > > > folder.
> > > > > This is an example of how I was doing this with the old version of
> > the
> > > > > fetcher:
> > > > >
> > > > > #leave blank, "", for latest revision
> > > > > P4CHANGELIST = "${PR}"
> > > > > S = "${WORKDIR}"
> > > > > SRC_URI = " \
> > > > > p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot/project
> > > > 1/folder1/...;module=subfolderunderp4/src/;label=${P4CHANGELIST}
> > > > > \
> > > > > p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot/project
> > > > 2/folder3/...;module=subfolderunderp4/pkg/;label=${P4CHANGELIST}
> > > > > \
> > > > > "
> > > > >
> > > > > Where folder1 contains the src files and folder3 contains the pkg
> > > > > information. These need to be in an specific folder structure for the
> > > > > recipe to work.
> > > > > I had some issue when adding more than one line because it was
> > trying to
> > > > > copy everything to the same p4 folder.
> > > >
> > > > Ah, yeah... Sorry, that is a bit of a shortcoming of my changes.  The
> > > > reason I made this change is because putting the given SRC_URI's
> > > > repository directly into a directory like ${WORKDIR}/p4/ is how some of
> > > > the other fetchers operate and it makes the automatic tasks just work
> > > > correctly.  This is how the git fetcher does things so I tried to
> > mimmic
> > > > that but maybe I missed some nuance in how the git fetcher deals with
> > > > more than one SRC_URI line being a git repo.  I hadn't realized that
> > > > there was users of the p4 fetcher who did things like you are doing,
> > > > sorry.
> > > >
> > > > I think it should be reasonably easy to make a patch to the p4 fetcher
> > > > which will put each SRC_URI line which uses the p4 fetcher into its own
> > > > directory within the ${WORKDIR}/p4/ directory such that it supports
> > your
> > > > style of fetching.  This then will likely require your recipe to know
> > > > that this is the directory structure and properly change into
> > > > directories as needed, but it sounds like you already comprehend that.
> > > > And for users of the p4 fetcher who only use one SRC_URI line, I
> > believe
> > > > they would just need to set the S variable correctly to the directory
> > > > name within ${WORKDIR}/p4/ to get the current operation.
> > >
> > > I have been looking at this and it wasn't straight forward for me... I
> > > don't have much experience with this. I will continue trying but I might
> > > need some help.
> > > It's not only not being able to fetch more than one SRC_URI. We are also
> > > loosing the flexibility of fetching different changelists for each line.
> > > I'm not sure if this can be solved in this new fetcher whilst keeping git
> > > and p4 "similar" as git doesn't work this way afaik.
> >
> > It sounds like you really just want to revert to how the p4 fetcher used
> > to work.  My changes were because I wanted the p4 fetcher to work more
> > like the git and svn fetchers.  But that doesn't sound like what you
> > want.
> >
> > My p4 fetcher changes which are impacting you on poky's pyro are these:
> >
> > 35081f55185a8a9804c21b16cd4600ba70646a10 bitbake: bitbake-user-manual:
> > Addeds support for the Perforce Fetcher
> > 40f3099e8ec5c6f3a8b7f3d0e90f1c65c388ee77 base.bbclass: p4 fetcher
> > supports srcrev
> > 26447a0d0bf5ceaac382a78c1dbd00807dbab706 bitbake: fetch2/perforce: Rework
> > to support SRCREV and P4CONFIG
> >
> > But that last one will run into conflicts if you just try to revert it
> > directly due to having other commits since then which git can't easily
> > figure out, but if you revert all of these commits too, then you may
> > have to redo some of the changes they made which are related to general
> > things and are not p4 specific.  Commits you'll want to look at are:
> >
> > b16192c93834d0a6530169557aa34122e1417bcf bitbake: fetch2: don't use
> > deprecated bb.data APIs
> > 6c611d697f9c03867c938cba1b481f38eebed8bf bitbake: fetch2: Rename
> > "setup_revisons" to "setup_revisions"
> > 38438b6cf42fb7ad45b9a901f57913af7e7591a3 bitbake: fetch2: obey
> > BB_ALLOWED_NETWORKS when checking network access
> > 1fce7ecbbb004a5ad82da3eef79cfd52b276708d bitbake: bitbake: remove True
> > option to getVar calls
> > ab09541d5517da9b1a23923ea8f5c26ddf745084 bitbake: fetch2: preserve
> > current working directory
> > 26447a0d0bf5ceaac382a78c1dbd00807dbab706 bitbake: fetch2/perforce: Rework
> > to support SRCREV and P4CONFIG
> >
> > I haven't actually reviewed any of these commits after the "preserve
> > current working directory" one as I'm still doing my day-to-day work on
> > the morty branch of oe-core and bitbake 1.32.  But possibly one of these
> > commits are unintentionally impacting your ability to specify SRCREV and
> > that's worth checking into.
> >
> > Thanks,
> > Andrew
> >

