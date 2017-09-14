Return-Path: <andrew@bradfordembedded.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00691E00C78; Thu, 14 Sep 2017 09:17:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [66.111.4.27 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
	[66.111.4.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5C2AE00A9B
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 09:17:45 -0700 (PDT)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 5951F20DF0;
	Thu, 14 Sep 2017 12:17:44 -0400 (EDT)
Received: from frontend1 ([10.202.2.160])
	by compute6.internal (MEProxy); Thu, 14 Sep 2017 12:17:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	bradfordembedded.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=Pv7HJozCwUppcQWgDR
	012QDhhUgScqrf79WrIAsThew=; b=DLZpCD9HTF0sE+rCNMkXPiAyVXnIGXWFWT
	9ugKieoQTugLY9gdY7fVn8kgk8ApSDLGeK5bZNoLJlpU2tMEXoBXwCUilTsC9/C0
	UzPdYwMoCXW3PlzfsDT+r+8rq2DAEnnZxpTNaIvaBuWqXH/dlE2jpPwtWCR+mFXq
	qKdM/U+CuHaxu+wGhI9VDd26TlRtwb4ohWoNoCPLQiO03V2A2McZdU3/gmJWvl7t
	gk4TdgvRwXFue86p/iygGE1Yl74ys1hMTE7PnSRgO/RHOE7323E/fHh+18weiN5C
	G4TCsPGWHtz85UZbJlUjxA8KjrrLlX8jfVs79pfnqV6PTMc8BheQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=Pv7HJozCwUppcQWgDR
	012QDhhUgScqrf79WrIAsThew=; b=lGYx9SujWYedxlXfhClSReS5c6C8Eg3COA
	XgJFxaUVi9DO0BrkN7XSbVPm0doPU8EGd63R3y8g9xA8q+2XbpLOcAmvUU2k9mqs
	wGrUajLsfXcEwnyF+pB6IdKGX/Rc9ALvFvtuyiCrIwcDWwxYq85hS+PX2lkrnjlw
	/5+WSmGGvgS+MbGzXvBnjb6WuEaO3jTCEq47oJr2SDeyzcu0FBGZ/icWf3b9nfOd
	hGKqNGT/yna6k6TSe7Ae12y9/dXVsi6h0/pUtafRKp+KcPUHCmmpSbYZY0gzuRPY
	jKBjsEhBxAgmX8oeoxisJCNwN1KpPygWGuw0PTk5DGr4IrVdiK4w==
X-ME-Sender: <xms:qKu6WcwFLTb-Y140vvDoYY8AcCNa8_pWUtNtJF0GunE-LTyw4zdMzw>
X-Sasl-enc: Ik0MH0EBS+MbqMkd9MQTLkQGdcOB+/vupsrGmsi1NH0a 1505405863
Received: from kaim-eeyore.kodakalaris.net (clr-vpn01.kodakalaris.com
	[198.140.222.129])
	by mail.messagingengine.com (Postfix) with ESMTPA id E47837FA6C;
	Thu, 14 Sep 2017 12:17:43 -0400 (EDT)
Date: Thu, 14 Sep 2017 12:17:42 -0400
From: Andrew Bradford <andrew@bradfordembedded.com>
To: Katu Txakur <katutxakurra@gmail.com>
Message-ID: <20170914161742.wocdydrc2mhxyjy4@kaim-eeyore.kodakalaris.net>
References: <CAM1ZcoUYPs_TRwcCT=_9o6pWO1XDpmaRUuTZn=X1O5qkPkY3Eg@mail.gmail.com>
	<1593300.26TW5Pyds6@peggleto-mobl.ger.corp.intel.com>
	<20170807111740.ppsdinlvltioc3uq@kaim-eeyore.kodakalaris.net>
	<CAM1ZcoX7ee=hCBYqWPQoeg_wrWjzqqbZvsrTm12sfZc2Fe0JJQ@mail.gmail.com>
	<20170811125251.t2t3kj6kbpsvhwxe@kaim-eeyore.kodakalaris.net>
	<CAM1ZcoX-DKScfwq==5y6TsH7MGZv5x6MXEuZ3PF4H487uyVshQ@mail.gmail.com>
	<20170828142759.iiubfgywp2nwz5c6@kaim-eeyore.kodakalaris.net>
	<CAM1ZcoVYph7c2f1veS9vRFaxu_9oiGMFyrYU2058Gr2gTMK8Kw@mail.gmail.com>
	<20170831175451.23mxpmpof3zdmnll@kaim-eeyore.kodakalaris.net>
	<CAM1ZcoX8LRyvDiCFZkgMX5iHJ5wixAMdc3ia_is3sMEaFjiA-w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAM1ZcoX8LRyvDiCFZkgMX5iHJ5wixAMdc3ia_is3sMEaFjiA-w@mail.gmail.com>
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
X-List-Received-Date: Thu, 14 Sep 2017 16:17:48 -0000
X-Groupsio-MsgNum: 37880
Content-Type: multipart/mixed; boundary="gomok55eah5scs3v"
Content-Disposition: inline

--gomok55eah5scs3v
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Katu,

Sorry for my delay in responding.

On 09/14 11:13, Katu Txakur wrote:
> Have you had time to look at this? I tried to go back to the old perforce
> fetcher but I got a license error and I couldn't work around it.

On the pyro branch of poky, if you revert these two commits, in this
order:

35081f55185a8a9804c21b16cd4600ba70646a10 "bitbake: bitbake-user-manual: Addeds support for the Perforce Fetcher"
40f3099e8ec5c6f3a8b7f3d0e90f1c65c388ee77 "base.bbclass: p4 fetcher supports srcrev"

And then apply the patch attached, this should bring the pyro branch of
poky back to how the old perforce fetcher worked.  I have tested having
two different depot paths in a recipe SRC_URI and they both are fetched
how I believe you want them to be, next to each other in WORKDIR.

Just be aware, I believe this loses the ability to use
SRC_REV="${AUTOREV}" to automatically find the newest changelist which
my previous changes introduced.

The format for SRC_URI that I tested was like:

SRC_URI = "p4://username:password:server.hostname.example.com:1666@depot/path/to/directory/...;cset=178374"

You should also be able to specify P4PORT to set the host and port
number but you may then lose the ability to have the username and
password (although I haven't tested this and don't remember how it used
to work).  You should also be able to specify the P4DATE variable in
your recipe to apply to all p4 fetches instead of using the "cset="
parameter, and instead of using the "cset=" param you should also be
able to specify a "revision=" for a single file or a "label=" for a
label.  I've only tested using the "cset=" way as the others don't
easily apply to how my team internally uses perforce, sorry.

I think I understand how I could make the current perforce fetcher
(without the above reverts or attached patch) do the multi-directory
fetching that you want, but I don't personally want to do that in my
workflow so I'm not going to spend a bunch of time implementing it now.
But if you do implement it, I'd be happy to test patches for you.

Thanks,
Andrew

> 2017-08-31 18:54 GMT+01:00 Andrew Bradford <andrew@bradfordembedded.com>:
> 
> > Hi Katu,
> >
> > On 08/28 17:43, Katu Txakur wrote:
> > > Thanks for looking at this. See my recipe below. I've left the bits
> > related
> > > to systemd service but I don't think they matter for this. I'm using an
> > old
> > > implementation of Perforce (2010) in case this matters. I've tried going
> > > back to the old perforce.py fetcher but I get a license error... do you
> > > know if it would be easy to revert to the old version in my bitbake
> > folder
> > > until we make this work?
> >
> > Sorry, I've been swamped this week and haven't been able to look into
> > this yet.  This coming weekend is a holiday weekend in the USA, too.
> > But I plan to look at this early next week, hope that's OK.
> >
> > We should be able to create a patch series to revert my changes so you
> > can go back to the old perforce fetcher.  It might also be worth
> > investigating how to take the current perforce fetcher and enable some
> > of the use cases that you have (but we can do this after we successfully
> > revert).
> >
> > I'll try to send a patch to you next week for the reverting.
> > Thanks,
> > Andrew
> >
> > > DESCRIPTION = "Dummy recipe to fetch from Perforce"
> > > SECTION = "PerforceRecipes"
> > > LICENSE = "CLOSED"
> > > PR = "r0"
> > >
> > > inherit cmake
> > > DEPENDS = "boost alsa-tools"
> > >
> > > P4USER = "myuser"
> > > P4PASSWD = ""
> > > P4PORT = "192.168.1.55:1666"
> > > FETCHCMD_p4 = "/usr/local/bin/p4"
> > >
> > > SRC_URI = " \
> > > p4://${P4USER}:${P4PASSWD}@myrepo/myfolder/...; \
> > > file://perforce-recipe.service \
> > > "
> > > SRCREV = "${AUTOREV}"
> > > S = "${WORKDIR}/p4"
> > >
> > > do_install_append () {
> > >     install -d ${D}${systemd_unitdir}/system
> > >     install -m 0644 ../perforce-recipe.service
> > ${D}${systemd_unitdir}/system
> > > }
> > >
> > > NATIVE_SYSTEMD_SUPPORT = "1"
> > > SYSTEMD_PACKAGES = "perforce-recipe"
> > > SYSTEMD_SERVICE_${PN} = "perforce-recipe.service"
> > >
> > > SYSTEMD_AUTO_ENABLE = "disable"
> > >
> > > FILES_${PN} = "${systemd_unitdir} ${bindir}"
> > >
> > >
> > > 2017-08-28 15:27 GMT+01:00 Andrew Bradford <andrew@bradfordembedded.com
> > >:
> > >
> > > > Hi Katu,
> > > >
> > > > On 08/28 08:56, Katu Txakur wrote:
> > > > > 2017-08-11 13:52 GMT+01:00 Andrew Bradford <
> > andrew@bradfordembedded.com
> > > > >:
> > > > > On 08/11 11:34, Katu Txakur wrote:
> > > > > > > 2017-08-07 12:17 GMT+01:00 Andrew Bradford <
> > > > andrew@bradfordembedded.com
> > > > > > >:
> > > > > > > > On 08/02 10:28, Paul Eggleton wrote:
> > > > > > > > > On Wednesday, 2 August 2017 9:40:10 AM CEST Katu Txakur
> > wrote:
> > > > > > > > > > I'm still having problems fetching from Perforce. Is there
> > any
> > > > > > > > > > documentation based on the latest implementation of the
> > > > > > > > > > poky/bitbake/lib/bb/fetch2/perforce.py file?
> > > > > > > >
> > > > > > > > There's some documentation now in the official Yocto Project
> > > > > > > > documentation location for bitbake fetchers [1].  Prior to my
> > > > changes
> > > > > > > > there was very little if any documentation, afaik.
> > > > > > > >
> > > > > > > > [1]: http://www.yoctoproject.org/docs/2.3.1/bitbake-user-
> > > > > > > > manual/bitbake-user-manual.html#perforce-fetcher
> > > > > > > >
> > > > > > > > > > 2017-07-25 10:05 GMT+01:00 Katu Txakur <
> > katutxakurra@gmail.com
> > > > >:
> > > > > > > > > > > I'm upgrading a recipe that fetches the source code from
> > > > > > Perforce.
> > > > > > > > > > >
> > > > > > > > > > > The old recipe was:
> > > > > > > > > > >
> > > > > > > > > > > SRC_URI = " \
> > > > > > > > > > >   p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot
> > /path/
> > > > pe
> > > > > > > > > > > rforce/...;module=local/path/relativeto/p4;label=${
> > > > P4CHANGELIST}
> > > > > > \
> > > > > > > > > > >   "
> > > > > > > > > > >
> > > > > > > > > > > With the new version of /lib/bb/fetch2/perforce.py, I
> > had to
> > > > set
> > > > > > > > P4PORT
> > > > > > > > > > > outside SRC_URI, leaving the recipe with:
> > > > > > > > > > >
> > > > > > > > > > > SRC_URI = " \
> > > > > > > > > > >   p4://${P4USER}:${P4PASSWD}@Depot/path/perforce/...;
> > module=
> > > > > > > > > > > local/path/relativeto/p4;label=${P4CHANGELIST} \
> > > > > > > > > > >   "
> > > > > > > > > > >
> > > > > > > > > > > The Perforce fetcher kind of works, but it seems to be
> > > > ignoring
> > > > > > the
> > > > > > > > > > > "module" and the "label" attributes. After reading the
> > Python
> > > > > > script
> > > > > > > > I can
> > > > > > > > > > > see that after the "@", only the substring before the
> > first
> > > > ";"
> > > > > > is
> > > > > > > > used.
> > > > > > > >
> > > > > > > > Sorry for not making the label change more clear, but you
> > should be
> > > > > > able
> > > > > > > > to simply set SRCREV="labelname" and have the functionality you
> > > > desire.
> > > > > > > > However, we don't use labels very often internally, so the use
> > of
> > > > > > labels
> > > > > > > > in SRCREV isn't tested that often by me.
> > > > > > > >
> > > > > > >
> > > > > > > I don't use labels that much either, however, I used to be able
> > to
> > > > write
> > > > > > > the changeslist number as a label and it would
> > > > > > > fetch the code for that changelist. This doesn't work using
> > SRCREV =
> > > > > > > "changelistnumber"
> > > > > >
> > > > > > This does work for me using oe-core morty branch and bitbake
> > > > > > 1.32 which is the versions where these changes were first applied
> > and
> > > > > > where I did my testing.
> > > > > >
> > > > > > Like I have a recipe which I put:
> > > > > >
> > > > > > SRCREV = "184127"
> > > > > >
> > > > > > The p4 fetcher will go fetch changelist 184127 of the SRC_URI path
> > in
> > > > > > perforce.
> > > > > >
> > > > > > Or if I put:
> > > > > >
> > > > > > SRCREV = "${AUTOREV}"
> > > > > >
> > > > > > Then it'll fetch the HEAD/tip of the SRC_URI path in perforce.
> > > > > >
> > > > > > Is this not working the same way with poky now?
> > > > > >
> > > > >
> > > > > I'm using yocto pyro with bitbake 1.34.0. When I first fetch the
> > code for
> > > > > my recipe, it gets the latest changelist.
> > > > > I submit a change and the next time, the recipe thinks there nothing
> > new
> > > > to
> > > > > fetch. Also, using SRCREV = "184127"
> > > > > doesn't work for me, it always gets the latest changelist.
> > > >
> > > > Can you post the recipe where this is failing for you?
> > > >
> > > > I could then try to recreate this issue in a sandbox depot we have in
> > > > our perforce server and see what's going on.
> > > >
> > > > > >
> > > > > > > > This change to using labels, changelist numbers, and allowing
> > the
> > > > use
> > > > > > of
> > > > > > > > AUTOREV was made so that the perforce fetcher would act more
> > like
> > > > the
> > > > > > > > other source code control system fetchers.  Prior to my
> > changes to
> > > > the
> > > > > > > > p4 fetcher, the way that recipes using p4 had to be written
> > seemed
> > > > > > > > rather awkward to me.  The way it is now isn't perfect, but
> > it's
> > > > closer
> > > > > > > > to how the other fetchers act, I think (and hope).
> > > > > > > >
> > > > > > >
> > > > > > > > > > Is there a way to set module and label/changelist? I have
> > > > several
> > > > > > > > folders
> > > > > > > > > > > per recipe that I need to map to different subfolders and
> > > > with
> > > > > > the
> > > > > > > > current
> > > > > > > > > > > script some of the folders don't get fetched.
> > > > > > > >
> > > > > > > > I'm not sure I understand enough about how you use perforce and
> > > > what
> > > > > > you
> > > > > > > > mean by mapping different subfolders.  Can you explain this in
> > a
> > > > more
> > > > > > > > expanded way to me?  Maybe with some examples?
> > > > > > > >
> > > > > > >
> > > > > > > What I mean by this is taking folders in different locations in
> > > > Perforce
> > > > > > > and fetch them to a custom folder structure inside the
> > {WORKDIR}/p4
> > > > > > folder.
> > > > > > > This is an example of how I was doing this with the old version
> > of
> > > > the
> > > > > > > fetcher:
> > > > > > >
> > > > > > > #leave blank, "", for latest revision
> > > > > > > P4CHANGELIST = "${PR}"
> > > > > > > S = "${WORKDIR}"
> > > > > > > SRC_URI = " \
> > > > > > > p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot/project
> > > > > > 1/folder1/...;module=subfolderunderp4/src/;label=${P4CHANGELIST}
> > > > > > > \
> > > > > > > p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot/project
> > > > > > 2/folder3/...;module=subfolderunderp4/pkg/;label=${P4CHANGELIST}
> > > > > > > \
> > > > > > > "
> > > > > > >
> > > > > > > Where folder1 contains the src files and folder3 contains the pkg
> > > > > > > information. These need to be in an specific folder structure
> > for the
> > > > > > > recipe to work.
> > > > > > > I had some issue when adding more than one line because it was
> > > > trying to
> > > > > > > copy everything to the same p4 folder.
> > > > > >
> > > > > > Ah, yeah... Sorry, that is a bit of a shortcoming of my changes.
> > The
> > > > > > reason I made this change is because putting the given SRC_URI's
> > > > > > repository directly into a directory like ${WORKDIR}/p4/ is how
> > some of
> > > > > > the other fetchers operate and it makes the automatic tasks just
> > work
> > > > > > correctly.  This is how the git fetcher does things so I tried to
> > > > mimmic
> > > > > > that but maybe I missed some nuance in how the git fetcher deals
> > with
> > > > > > more than one SRC_URI line being a git repo.  I hadn't realized
> > that
> > > > > > there was users of the p4 fetcher who did things like you are
> > doing,
> > > > > > sorry.
> > > > > >
> > > > > > I think it should be reasonably easy to make a patch to the p4
> > fetcher
> > > > > > which will put each SRC_URI line which uses the p4 fetcher into
> > its own
> > > > > > directory within the ${WORKDIR}/p4/ directory such that it supports
> > > > your
> > > > > > style of fetching.  This then will likely require your recipe to
> > know
> > > > > > that this is the directory structure and properly change into
> > > > > > directories as needed, but it sounds like you already comprehend
> > that.
> > > > > > And for users of the p4 fetcher who only use one SRC_URI line, I
> > > > believe
> > > > > > they would just need to set the S variable correctly to the
> > directory
> > > > > > name within ${WORKDIR}/p4/ to get the current operation.
> > > > >
> > > > > I have been looking at this and it wasn't straight forward for me...
> > I
> > > > > don't have much experience with this. I will continue trying but I
> > might
> > > > > need some help.
> > > > > It's not only not being able to fetch more than one SRC_URI. We are
> > also
> > > > > loosing the flexibility of fetching different changelists for each
> > line.
> > > > > I'm not sure if this can be solved in this new fetcher whilst
> > keeping git
> > > > > and p4 "similar" as git doesn't work this way afaik.
> > > >
> > > > It sounds like you really just want to revert to how the p4 fetcher
> > used
> > > > to work.  My changes were because I wanted the p4 fetcher to work more
> > > > like the git and svn fetchers.  But that doesn't sound like what you
> > > > want.
> > > >
> > > > My p4 fetcher changes which are impacting you on poky's pyro are these:
> > > >
> > > > 35081f55185a8a9804c21b16cd4600ba70646a10 bitbake: bitbake-user-manual:
> > > > Addeds support for the Perforce Fetcher
> > > > 40f3099e8ec5c6f3a8b7f3d0e90f1c65c388ee77 base.bbclass: p4 fetcher
> > > > supports srcrev
> > > > 26447a0d0bf5ceaac382a78c1dbd00807dbab706 bitbake: fetch2/perforce:
> > Rework
> > > > to support SRCREV and P4CONFIG
> > > >
> > > > But that last one will run into conflicts if you just try to revert it
> > > > directly due to having other commits since then which git can't easily
> > > > figure out, but if you revert all of these commits too, then you may
> > > > have to redo some of the changes they made which are related to general
> > > > things and are not p4 specific.  Commits you'll want to look at are:
> > > >
> > > > b16192c93834d0a6530169557aa34122e1417bcf bitbake: fetch2: don't use
> > > > deprecated bb.data APIs
> > > > 6c611d697f9c03867c938cba1b481f38eebed8bf bitbake: fetch2: Rename
> > > > "setup_revisons" to "setup_revisions"
> > > > 38438b6cf42fb7ad45b9a901f57913af7e7591a3 bitbake: fetch2: obey
> > > > BB_ALLOWED_NETWORKS when checking network access
> > > > 1fce7ecbbb004a5ad82da3eef79cfd52b276708d bitbake: bitbake: remove True
> > > > option to getVar calls
> > > > ab09541d5517da9b1a23923ea8f5c26ddf745084 bitbake: fetch2: preserve
> > > > current working directory
> > > > 26447a0d0bf5ceaac382a78c1dbd00807dbab706 bitbake: fetch2/perforce:
> > Rework
> > > > to support SRCREV and P4CONFIG
> > > >
> > > > I haven't actually reviewed any of these commits after the "preserve
> > > > current working directory" one as I'm still doing my day-to-day work on
> > > > the morty branch of oe-core and bitbake 1.32.  But possibly one of
> > these
> > > > commits are unintentionally impacting your ability to specify SRCREV
> > and
> > > > that's worth checking into.
> > > >
> > > > Thanks,
> > > > Andrew
> > > >
> >

--gomok55eah5scs3v
Content-Type: text/x-diff; charset=utf-8
Content-Disposition: attachment; filename="0001-Revert-w-modifications-bitbake-fetch2-perforce-Rewor.patch"

From cfeacc2810a781d3110b81d427e84ec81a51f6c8 Mon Sep 17 00:00:00 2001
From: Andrew Bradford <andrew.bradford@kodakalaris.com>
Date: Thu, 14 Sep 2017 09:35:07 -0400
Subject: [PATCH] Revert (w/modifications) "bitbake: fetch2/perforce: Rework to
 support SRCREV and P4CONFIG"

This reverts commit 26447a0d0bf5ceaac382a78c1dbd00807dbab706 but also
makes some required changes in perforce.py to support changes which
happened in other support files.

This patch should not be applied to the official Yocto Project's poky,
this is only for Katu Txakur to try.
---
 bitbake/lib/bb/fetch2/__init__.py |   3 +-
 bitbake/lib/bb/fetch2/perforce.py | 269 +++++++++++++++++---------------------
 2 files changed, 124 insertions(+), 148 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index b853da30bd..efedecf636 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -817,8 +817,7 @@ def runfetchcmd(cmd, d, quiet=False, cleanup=None, log=None, workdir=None):
                   'GIT_SMART_HTTP',
                   'SSH_AUTH_SOCK', 'SSH_AGENT_PID',
                   'SOCKS5_USER', 'SOCKS5_PASSWD',
-                  'DBUS_SESSION_BUS_ADDRESS',
-                  'P4CONFIG']
+                  'DBUS_SESSION_BUS_ADDRESS']
 
     if not cleanup:
         cleanup = []
diff --git a/bitbake/lib/bb/fetch2/perforce.py b/bitbake/lib/bb/fetch2/perforce.py
index 3debad59f4..9ebbd2e84f 100644
--- a/bitbake/lib/bb/fetch2/perforce.py
+++ b/bitbake/lib/bb/fetch2/perforce.py
@@ -1,12 +1,14 @@
 # ex:ts=4:sw=4:sts=4:et
 # -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
 """
-BitBake 'Fetch' implementation for perforce
+BitBake 'Fetch' implementations
+
+Classes for obtaining upstream sources for the
+BitBake build tools.
 
 """
 
 # Copyright (C) 2003, 2004  Chris Larson
-# Copyright (C) 2016 Kodak Alaris, Inc.
 #
 # This program is free software; you can redistribute it and/or modify
 # it under the terms of the GNU General Public License version 2 as
@@ -24,6 +26,7 @@ BitBake 'Fetch' implementation for perforce
 # Based on functions from the base bb module, Copyright 2003 Holger Schurig
 
 import os
+import subprocess
 import logging
 import bb
 from   bb.fetch2 import FetchMethod
@@ -32,178 +35,152 @@ from   bb.fetch2 import logger
 from   bb.fetch2 import runfetchcmd
 
 class Perforce(FetchMethod):
-    """ Class to fetch from perforce repositories """
     def supports(self, ud, d):
-        """ Check to see if a given url can be fetched with perforce. """
         return ud.type in ['p4']
 
-    def urldata_init(self, ud, d):
-        """
-        Initialize perforce specific variables within url data.  If P4CONFIG is
-        provided by the env, use it.  If P4PORT is specified by the recipe, use
-        its values, which may override the settings in P4CONFIG.
-        """
-        ud.basecmd = d.getVar('FETCHCMD_p4')
-        if not ud.basecmd:
-            ud.basecmd = "/usr/bin/env p4"
-
-        ud.dldir = d.getVar('P4DIR')
-        if not ud.dldir:
-            ud.dldir = '%s/%s' % (d.getVar('DL_DIR'), 'p4')
-
-        path = ud.url.split('://')[1]
-        path = path.split(';')[0]
-        delim = path.find('@');
+    def doparse(url, d):
+        parm = {}
+        path = url.split("://")[1]
+        delim = path.find("@");
         if delim != -1:
-            (ud.user, ud.pswd) = path.split('@')[0].split(':')
-            ud.path = path.split('@')[1]
+            (user, pswd, host, port) = path.split('@')[0].split(":")
+            path = path.split('@')[1]
         else:
-            ud.path = path
+            (host, port) = d.getVar('P4PORT', False).split(':')
+            user = ""
+            pswd = ""
+
+        if path.find(";") != -1:
+            keys=[]
+            values=[]
+            plist = path.split(';')
+            for item in plist:
+                if item.count('='):
+                    (key, value) = item.split('=')
+                    keys.append(key)
+                    values.append(value)
+
+            parm = dict(list(zip(keys, values)))
+        path = "//" + path.split(';')[0]
+        host += ":%s" % (port)
+        parm["cset"] = Perforce.getcset(d, path, host, user, pswd, parm)
+
+        return host, path, user, pswd, parm
+    doparse = staticmethod(doparse)
+
+    def getcset(d, depot, host, user, pswd, parm):
+        p4opt = ""
+        if "cset" in parm:
+            return parm["cset"];
+        if user:
+            p4opt += " -u %s" % (user)
+        if pswd:
+            p4opt += " -P %s" % (pswd)
+        if host:
+            p4opt += " -p %s" % (host)
+
+        p4date = d.getVar("P4DATE")
+        if "revision" in parm:
+            depot += "#%s" % (parm["revision"])
+        elif "label" in parm:
+            depot += "@%s" % (parm["label"])
+        elif p4date:
+            depot += "@%s" % (p4date)
+
+        p4cmd = d.getVar('FETCHCMD_p4') or "p4"
+        logger.debug(1, "Running %s%s changes -m 1 %s", p4cmd, p4opt, depot)
+        p4file, errors = bb.process.run("%s%s changes -m 1 %s" % (p4cmd, p4opt, depot))
+        cset = p4file.strip()
+        logger.debug(1, "READ %s", cset)
+        if not cset:
+            return -1
+
+        return cset.split(' ')[1]
+    getcset = staticmethod(getcset)
 
-        ud.usingp4config = False
-        p4port = d.getVar('P4PORT')
+    def urldata_init(self, ud, d):
+        (host, path, user, pswd, parm) = Perforce.doparse(ud.url, d)
 
-        if p4port:
-            logger.debug(1, 'Using recipe provided P4PORT: %s' % p4port)
-            ud.host = p4port
-        else:
-            logger.debug(1, 'Trying to use P4CONFIG to automatically set P4PORT...')
-            ud.usingp4config = True
-            p4cmd = '%s info | grep "Server address"' % ud.basecmd
-            bb.fetch2.check_network_access(d, p4cmd, ud.url)
-            ud.host = runfetchcmd(p4cmd, d, True)
-            ud.host = ud.host.split(': ')[1].strip()
-            logger.debug(1, 'Determined P4PORT to be: %s' % ud.host)
-            if not ud.host:
-                raise FetchError('Could not determine P4PORT from P4CONFIG')
-	
-        if ud.path.find('/...') >= 0:
-            ud.pathisdir = True
+        base_path = path.replace('/...', '')
+        base_path = self._strip_leading_slashes(base_path)
+        
+        if "label" in parm:
+            version = parm["label"]
         else:
-            ud.pathisdir = False
-
-        cleanedpath = ud.path.replace('/...', '').replace('/', '.')
-        cleanedhost = ud.host.replace(':', '.')
-        ud.pkgdir = os.path.join(ud.dldir, cleanedhost, cleanedpath)
-
-        ud.setup_revisions(d)
+            version = Perforce.getcset(d, path, host, user, pswd, parm)
 
-        ud.localfile = d.expand('%s_%s_%s.tar.gz' % (cleanedhost, cleanedpath, ud.revision))
+        ud.localfile = d.expand('%s+%s+%s.tar.gz' % (host, base_path.replace('/', '.'), version))
 
-    def _buildp4command(self, ud, d, command, depot_filename=None):
+    def download(self, ud, d):
         """
-        Build a p4 commandline.  Valid commands are "changes", "print", and
-        "files".  depot_filename is the full path to the file in the depot
-        including the trailing '#rev' value.
+        Fetch urls
         """
-        p4opt = ""
-
-        if ud.user:
-            p4opt += ' -u "%s"' % (ud.user)
 
-        if ud.pswd:
-            p4opt += ' -P "%s"' % (ud.pswd)
+        (host, depot, user, pswd, parm) = Perforce.doparse(ud.url, d)
 
-        if ud.host and not ud.usingp4config:
-            p4opt += ' -p %s' % (ud.host)
-
-        if hasattr(ud, 'revision') and ud.revision:
-            pathnrev = '%s@%s' % (ud.path, ud.revision)
-        else:
-            pathnrev = '%s' % (ud.path)
-
-        if depot_filename:
-            if ud.pathisdir: # Remove leading path to obtain filename
-                filename = depot_filename[len(ud.path)-1:]
-            else:
-                filename = depot_filename[depot_filename.rfind('/'):]
-            filename = filename[:filename.find('#')] # Remove trailing '#rev'
-
-        if command == 'changes':
-            p4cmd = '%s%s changes -m 1 //%s' % (ud.basecmd, p4opt, pathnrev)
-        elif command == 'print':
-            if depot_filename != None:
-                p4cmd = '%s%s print -o "p4/%s" "%s"' % (ud.basecmd, p4opt, filename, depot_filename)
-            else:
-                raise FetchError('No depot file name provided to p4 %s' % command, ud.url)
-        elif command == 'files':
-            p4cmd = '%s%s files //%s' % (ud.basecmd, p4opt, pathnrev)
+        if depot.find('/...') != -1:
+            path = depot[:depot.find('/...')]
         else:
-            raise FetchError('Invalid p4 command %s' % command, ud.url)
-
-        return p4cmd
-
-    def _p4listfiles(self, ud, d):
-        """
-        Return a list of the file names which are present in the depot using the
-        'p4 files' command, including trailing '#rev' file revision indicator
-        """
-        p4cmd = self._buildp4command(ud, d, 'files')
-        bb.fetch2.check_network_access(d, p4cmd, ud.url)
-        p4fileslist = runfetchcmd(p4cmd, d, True)
-        p4fileslist = [f.rstrip() for f in p4fileslist.splitlines()]
-
-        if not p4fileslist:
-            raise FetchError('Unable to fetch listing of p4 files from %s@%s' % (ud.host, ud.path))
+            path = depot[:depot.rfind('/')]
 
-        count = 0
-        filelist = []
+        module = parm.get('module', os.path.basename(path))
 
-        for filename in p4fileslist:
-            item = filename.split(' - ')
-            lastaction = item[1].split()
-            logger.debug(1, 'File: %s Last Action: %s' % (item[0], lastaction[0]))
-            if lastaction[0] == 'delete':
-                continue
-            filelist.append(item[0])
+        # Get the p4 command
+        p4opt = ""
+        if user:
+            p4opt += " -u %s" % (user)
 
-        return filelist
+        if pswd:
+            p4opt += " -P %s" % (pswd)
 
-    def download(self, ud, d):
-        """ Get the list of files, fetch each one """
-        filelist = self._p4listfiles(ud, d)
-        if not filelist:
-            raise FetchError('No files found in depot %s@%s' % (ud.host, ud.path))
+        if host:
+            p4opt += " -p %s" % (host)
 
-        bb.utils.remove(ud.pkgdir, True)
-        bb.utils.mkdirhier(ud.pkgdir)
+        p4cmd = d.getVar('FETCHCMD_p4') or "p4"
 
-        for afile in filelist:
-            p4fetchcmd = self._buildp4command(ud, d, 'print', afile)
-            bb.fetch2.check_network_access(d, p4fetchcmd, ud.url)
-            runfetchcmd(p4fetchcmd, d, workdir=ud.pkgdir)
+        # create temp directory
+        logger.debug(2, "Fetch: creating temporary directory")
+        bb.utils.mkdirhier(d.expand('${WORKDIR}'))
+        mktemp = d.getVar("FETCHCMD_p4mktemp") or d.expand("mktemp -d -q '${WORKDIR}/oep4.XXXXXX'")
+        tmpfile, errors = bb.process.run(mktemp)
+        tmpfile = tmpfile.strip()
+        if not tmpfile:
+            raise FetchError("Fetch: unable to create temporary directory.. make sure 'mktemp' is in the PATH.", ud.url)
 
-        runfetchcmd('tar -czf %s p4' % (ud.localpath), d, cleanup=[ud.localpath], workdir=ud.pkgdir)
+        if "label" in parm:
+            depot = "%s@%s" % (depot, parm["label"])
+        else:
+            cset = Perforce.getcset(d, depot, host, user, pswd, parm)
+            depot = "%s@%s" % (depot, cset)
 
-    def clean(self, ud, d):
-        """ Cleanup p4 specific files and dirs"""
-        bb.utils.remove(ud.localpath)
-        bb.utils.remove(ud.pkgdir, True)
+        os.chdir(tmpfile)
+        logger.info("Fetch " + ud.url)
+        logger.info("%s%s files %s", p4cmd, p4opt, depot)
+        p4file, errors = bb.process.run("%s%s files %s" % (p4cmd, p4opt, depot))
+        p4file = [f.rstrip() for f in p4file.splitlines()]
 
-    def supports_srcrev(self):
-        return True
+        if not p4file:
+            raise FetchError("Fetch: unable to get the P4 files from %s" % depot, ud.url)
 
-    def _revision_key(self, ud, d, name):
-        """ Return a unique key for the url """
-        return 'p4:%s' % ud.pkgdir
+        count = 0
 
-    def _latest_revision(self, ud, d, name):
-        """ Return the latest upstream scm revision number """
-        p4cmd = self._buildp4command(ud, d, "changes")
-        bb.fetch2.check_network_access(d, p4cmd, ud.url)
-        tip = runfetchcmd(p4cmd, d, True)
+        for file in p4file:
+            list = file.split()
 
-        if not tip:
-            raise FetchError('Could not determine the latest perforce changelist')
+            if list[2] == "delete":
+                continue
 
-        tipcset = tip.split(' ')[1]
-        logger.debug(1, 'p4 tip found to be changelist %s' % tipcset)
-        return tipcset
+            dest = list[0][len(path)+1:]
+            where = dest.find("#")
 
-    def sortable_revision(self, ud, d, name):
-        """ Return a sortable revision number """
-        return False, self._build_revision(ud, d)
+            subprocess.call("%s%s print -o %s/%s %s" % (p4cmd, p4opt, module, dest[:where], list[0]), shell=True)
+            count = count + 1
 
-    def _build_revision(self, ud, d):
-        return ud.revision
+        if count == 0:
+            logger.error()
+            raise FetchError("Fetch: No files gathered from the P4 fetch", ud.url)
 
+        runfetchcmd("tar -czf %s %s" % (ud.localpath, module), d, cleanup = [ud.localpath])
+        # cleanup
+        os.chdir(d.expand("${WORKDIR}"))
+        bb.utils.prunedir(tmpfile)
-- 
2.14.1


--gomok55eah5scs3v--
