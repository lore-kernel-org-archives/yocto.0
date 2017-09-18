Return-Path: <katutxakurra@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FF21E00CBA; Mon, 18 Sep 2017 03:33:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM,WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (katutxakurra[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.180 listed in dnsbl.sorbs.net]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8C3EE00C3A
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 03:32:59 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id v36so982137ioi.1
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 03:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JrAq76SaZHGEfKPVbu5rVoxyvsRd04S5aAhpj6dEUCg=;
	b=ss6DbXq3aoRGgdKUI3sd2Tx9SjXR3RZiFFniq+u9b/iPhQZITB2Ur/bG7Z0flZI/08
	ndk8mMKvxIiH2sy8kFKA/ucpZxs6Jjzj+Uu28wHyhIsz6o1CQWT5xMn1wjgWMo11JjlZ
	tjL5Ukz7XXksBUnfk95MHSrFvohk60EpvkofbjQJhKamyPH2pCBQhqTQWR07W+M+9M7k
	PInkyPxb+oBIjNjzScUY7qF0CD2jRMTC9Bhj4o0waN3jVIfKyLEk01kR87I6YGB9vlMH
	wwG47HIjhkVEMmDDN08JZZBMWJoc8SCfZ+e/VcIxctKnx0ngZ+DtoRMCd+4vJWvsNku4
	7BTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JrAq76SaZHGEfKPVbu5rVoxyvsRd04S5aAhpj6dEUCg=;
	b=fwcVpqz5RNfKi1TrUhDfJqpwzcMLkO2IC36y5p6CFjSy+JGQPOzqUsFpWHxpOFHdj5
	Ujh0wDHKiRKbWuSF9wwYUkFhZathOylxfZKnE5GjVA+kuEloMpw7yKBLpz54vt7I3oZQ
	J0KY/HDL/rG8Wvnn+zu9nZeeKmYAaYxjay8DVF7sg64xiPAbLOBQFybF4WNQExT/iVt2
	JEb/ZO9tcrhFB5lWB6Jdky/Q06CP5w8J46Y8rZxav/hKkoP+r1accu3TbApW72sRVLF3
	+nwtwxkVVN6V9pHlkBntDhoj2SImlWqeAL89aE22aP8mlRUrCt5P6iqAGVUIXfT1naRh
	3uew==
X-Gm-Message-State: AHPjjUigFDOZ6rEIXiB+B2ScJxQZHyV1EiB7XZzaJw29Ay8AlaSe9UFN
	kW7jsfiYZr/k5BTXv32Px8UBd8WmlaWMSFfmi3Q=
X-Google-Smtp-Source: AOwi7QBIgCUmNsJhmaasdRLtZnP4eIBfN4id0GzZXFsA2UN/uHdm9YYweCslkKRPU/NhHGr2u21PYUWRPyf3xIJtFuY=
X-Received: by 10.107.164.31 with SMTP id n31mr18615692ioe.46.1505730778462;
	Mon, 18 Sep 2017 03:32:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.153.218 with HTTP; Mon, 18 Sep 2017 03:32:57 -0700 (PDT)
In-Reply-To: <20170914161742.wocdydrc2mhxyjy4@kaim-eeyore.kodakalaris.net>
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
	<20170914161742.wocdydrc2mhxyjy4@kaim-eeyore.kodakalaris.net>
From: Katu Txakur <katutxakurra@gmail.com>
Date: Mon, 18 Sep 2017 11:32:57 +0100
Message-ID: <CAM1ZcoUNANCwqhYGAAkWXAGjpCHTAE1cr4c6oqjFpNoN2bv4wg@mail.gmail.com>
To: Andrew Bradford <andrew@bradfordembedded.com>
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
X-List-Received-Date: Mon, 18 Sep 2017 10:33:01 -0000
Content-Type: multipart/alternative; boundary="001a114225ea2d7f620559744400"

--001a114225ea2d7f620559744400
Content-Type: text/plain; charset="UTF-8"

Hi Andrew,

I'm getting an error when I apply your patch. Do you now how can I work
around this?

user@pc:~/yocto/pyro/poky$ git fetch
user@pc:~/yocto/pyro/poky$ git reset
user@pc:~/yocto/pyro/poky$ git clean -fd
user@pc:~/yocto/pyro/poky$ git reset --hard
HEAD is now at b51b4f5 gawk: Enable native building
user@pc:~/yocto/pyro/poky$ git branch
* pyro
user@pc:~/yocto/pyro/poky$ git apply
../0001-Revert-w-modifications-bitbake-fetch2-perforce-Rewor.patch
../0001-Revert-w-modifications-bitbake-fetch2-perforce-Rewor.patch:28:
trailing whitespace.
                  'DBUS_SESSION_BUS_ADDRESS']
../0001-Revert-w-modifications-bitbake-fetch2-perforce-Rewor.patch:41:
trailing whitespace.
BitBake 'Fetch' implementations
../0001-Revert-w-modifications-bitbake-fetch2-perforce-Rewor.patch:42:
trailing whitespace.

../0001-Revert-w-modifications-bitbake-fetch2-perforce-Rewor.patch:43:
trailing whitespace.
Classes for obtaining upstream sources for the
../0001-Revert-w-modifications-bitbake-fetch2-perforce-Rewor.patch:44:
trailing whitespace.
BitBake build tools.
error: patch failed: bitbake/lib/bb/fetch2/__init__.py:817
error: bitbake/lib/bb/fetch2/__init__.py: patch does not apply
error: patch failed: bitbake/lib/bb/fetch2/perforce.py:1
error: bitbake/lib/bb/fetch2/perforce.py: patch does not apply

Cheers,
Katu

2017-09-14 17:17 GMT+01:00 Andrew Bradford <andrew@bradfordembedded.com>:

> Hi Katu,
>
> Sorry for my delay in responding.
>
> On 09/14 11:13, Katu Txakur wrote:
> > Have you had time to look at this? I tried to go back to the old perforce
> > fetcher but I got a license error and I couldn't work around it.
>
> On the pyro branch of poky, if you revert these two commits, in this
> order:
>
> 35081f55185a8a9804c21b16cd4600ba70646a10 "bitbake: bitbake-user-manual:
> Addeds support for the Perforce Fetcher"
> 40f3099e8ec5c6f3a8b7f3d0e90f1c65c388ee77 "base.bbclass: p4 fetcher
> supports srcrev"
>
> And then apply the patch attached, this should bring the pyro branch of
> poky back to how the old perforce fetcher worked.  I have tested having
> two different depot paths in a recipe SRC_URI and they both are fetched
> how I believe you want them to be, next to each other in WORKDIR.
>
> Just be aware, I believe this loses the ability to use
> SRC_REV="${AUTOREV}" to automatically find the newest changelist which
> my previous changes introduced.
>
> The format for SRC_URI that I tested was like:
>
> SRC_URI = "p4://username:password:server.hostname.example.com:1666@depot
> /path/to/directory/...;cset=178374"
>
> You should also be able to specify P4PORT to set the host and port
> number but you may then lose the ability to have the username and
> password (although I haven't tested this and don't remember how it used
> to work).  You should also be able to specify the P4DATE variable in
> your recipe to apply to all p4 fetches instead of using the "cset="
> parameter, and instead of using the "cset=" param you should also be
> able to specify a "revision=" for a single file or a "label=" for a
> label.  I've only tested using the "cset=" way as the others don't
> easily apply to how my team internally uses perforce, sorry.
>
> I think I understand how I could make the current perforce fetcher
> (without the above reverts or attached patch) do the multi-directory
> fetching that you want, but I don't personally want to do that in my
> workflow so I'm not going to spend a bunch of time implementing it now.
> But if you do implement it, I'd be happy to test patches for you.
>
> Thanks,
> Andrew
>
> > 2017-08-31 18:54 GMT+01:00 Andrew Bradford <andrew@bradfordembedded.com
> >:
> >
> > > Hi Katu,
> > >
> > > On 08/28 17:43, Katu Txakur wrote:
> > > > Thanks for looking at this. See my recipe below. I've left the bits
> > > related
> > > > to systemd service but I don't think they matter for this. I'm using
> an
> > > old
> > > > implementation of Perforce (2010) in case this matters. I've tried
> going
> > > > back to the old perforce.py fetcher but I get a license error... do
> you
> > > > know if it would be easy to revert to the old version in my bitbake
> > > folder
> > > > until we make this work?
> > >
> > > Sorry, I've been swamped this week and haven't been able to look into
> > > this yet.  This coming weekend is a holiday weekend in the USA, too.
> > > But I plan to look at this early next week, hope that's OK.
> > >
> > > We should be able to create a patch series to revert my changes so you
> > > can go back to the old perforce fetcher.  It might also be worth
> > > investigating how to take the current perforce fetcher and enable some
> > > of the use cases that you have (but we can do this after we
> successfully
> > > revert).
> > >
> > > I'll try to send a patch to you next week for the reverting.
> > > Thanks,
> > > Andrew
> > >
> > > > DESCRIPTION = "Dummy recipe to fetch from Perforce"
> > > > SECTION = "PerforceRecipes"
> > > > LICENSE = "CLOSED"
> > > > PR = "r0"
> > > >
> > > > inherit cmake
> > > > DEPENDS = "boost alsa-tools"
> > > >
> > > > P4USER = "myuser"
> > > > P4PASSWD = ""
> > > > P4PORT = "192.168.1.55:1666"
> > > > FETCHCMD_p4 = "/usr/local/bin/p4"
> > > >
> > > > SRC_URI = " \
> > > > p4://${P4USER}:${P4PASSWD}@myrepo/myfolder/...; \
> > > > file://perforce-recipe.service \
> > > > "
> > > > SRCREV = "${AUTOREV}"
> > > > S = "${WORKDIR}/p4"
> > > >
> > > > do_install_append () {
> > > >     install -d ${D}${systemd_unitdir}/system
> > > >     install -m 0644 ../perforce-recipe.service
> > > ${D}${systemd_unitdir}/system
> > > > }
> > > >
> > > > NATIVE_SYSTEMD_SUPPORT = "1"
> > > > SYSTEMD_PACKAGES = "perforce-recipe"
> > > > SYSTEMD_SERVICE_${PN} = "perforce-recipe.service"
> > > >
> > > > SYSTEMD_AUTO_ENABLE = "disable"
> > > >
> > > > FILES_${PN} = "${systemd_unitdir} ${bindir}"
> > > >
> > > >
> > > > 2017-08-28 15:27 GMT+01:00 Andrew Bradford <
> andrew@bradfordembedded.com
> > > >:
> > > >
> > > > > Hi Katu,
> > > > >
> > > > > On 08/28 08:56, Katu Txakur wrote:
> > > > > > 2017-08-11 13:52 GMT+01:00 Andrew Bradford <
> > > andrew@bradfordembedded.com
> > > > > >:
> > > > > > On 08/11 11:34, Katu Txakur wrote:
> > > > > > > > 2017-08-07 12:17 GMT+01:00 Andrew Bradford <
> > > > > andrew@bradfordembedded.com
> > > > > > > >:
> > > > > > > > > On 08/02 10:28, Paul Eggleton wrote:
> > > > > > > > > > On Wednesday, 2 August 2017 9:40:10 AM CEST Katu Txakur
> > > wrote:
> > > > > > > > > > > I'm still having problems fetching from Perforce. Is
> there
> > > any
> > > > > > > > > > > documentation based on the latest implementation of the
> > > > > > > > > > > poky/bitbake/lib/bb/fetch2/perforce.py file?
> > > > > > > > >
> > > > > > > > > There's some documentation now in the official Yocto
> Project
> > > > > > > > > documentation location for bitbake fetchers [1].  Prior to
> my
> > > > > changes
> > > > > > > > > there was very little if any documentation, afaik.
> > > > > > > > >
> > > > > > > > > [1]: http://www.yoctoproject.org/docs/2.3.1/bitbake-user-
> > > > > > > > > manual/bitbake-user-manual.html#perforce-fetcher
> > > > > > > > >
> > > > > > > > > > > 2017-07-25 10:05 GMT+01:00 Katu Txakur <
> > > katutxakurra@gmail.com
> > > > > >:
> > > > > > > > > > > > I'm upgrading a recipe that fetches the source code
> from
> > > > > > > Perforce.
> > > > > > > > > > > >
> > > > > > > > > > > > The old recipe was:
> > > > > > > > > > > >
> > > > > > > > > > > > SRC_URI = " \
> > > > > > > > > > > >   p4://${P4USER}:${P4PASSWD}:${
> P4HOST}:${P4PORT}@Depot
> > > /path/
> > > > > pe
> > > > > > > > > > > > rforce/...;module=local/path/relativeto/p4;label=${
> > > > > P4CHANGELIST}
> > > > > > > \
> > > > > > > > > > > >   "
> > > > > > > > > > > >
> > > > > > > > > > > > With the new version of /lib/bb/fetch2/perforce.py, I
> > > had to
> > > > > set
> > > > > > > > > P4PORT
> > > > > > > > > > > > outside SRC_URI, leaving the recipe with:
> > > > > > > > > > > >
> > > > > > > > > > > > SRC_URI = " \
> > > > > > > > > > > >   p4://${P4USER}:${P4PASSWD}@
> Depot/path/perforce/...;
> > > module=
> > > > > > > > > > > > local/path/relativeto/p4;label=${P4CHANGELIST} \
> > > > > > > > > > > >   "
> > > > > > > > > > > >
> > > > > > > > > > > > The Perforce fetcher kind of works, but it seems to
> be
> > > > > ignoring
> > > > > > > the
> > > > > > > > > > > > "module" and the "label" attributes. After reading
> the
> > > Python
> > > > > > > script
> > > > > > > > > I can
> > > > > > > > > > > > see that after the "@", only the substring before the
> > > first
> > > > > ";"
> > > > > > > is
> > > > > > > > > used.
> > > > > > > > >
> > > > > > > > > Sorry for not making the label change more clear, but you
> > > should be
> > > > > > > able
> > > > > > > > > to simply set SRCREV="labelname" and have the
> functionality you
> > > > > desire.
> > > > > > > > > However, we don't use labels very often internally, so the
> use
> > > of
> > > > > > > labels
> > > > > > > > > in SRCREV isn't tested that often by me.
> > > > > > > > >
> > > > > > > >
> > > > > > > > I don't use labels that much either, however, I used to be
> able
> > > to
> > > > > write
> > > > > > > > the changeslist number as a label and it would
> > > > > > > > fetch the code for that changelist. This doesn't work using
> > > SRCREV =
> > > > > > > > "changelistnumber"
> > > > > > >
> > > > > > > This does work for me using oe-core morty branch and bitbake
> > > > > > > 1.32 which is the versions where these changes were first
> applied
> > > and
> > > > > > > where I did my testing.
> > > > > > >
> > > > > > > Like I have a recipe which I put:
> > > > > > >
> > > > > > > SRCREV = "184127"
> > > > > > >
> > > > > > > The p4 fetcher will go fetch changelist 184127 of the SRC_URI
> path
> > > in
> > > > > > > perforce.
> > > > > > >
> > > > > > > Or if I put:
> > > > > > >
> > > > > > > SRCREV = "${AUTOREV}"
> > > > > > >
> > > > > > > Then it'll fetch the HEAD/tip of the SRC_URI path in perforce.
> > > > > > >
> > > > > > > Is this not working the same way with poky now?
> > > > > > >
> > > > > >
> > > > > > I'm using yocto pyro with bitbake 1.34.0. When I first fetch the
> > > code for
> > > > > > my recipe, it gets the latest changelist.
> > > > > > I submit a change and the next time, the recipe thinks there
> nothing
> > > new
> > > > > to
> > > > > > fetch. Also, using SRCREV = "184127"
> > > > > > doesn't work for me, it always gets the latest changelist.
> > > > >
> > > > > Can you post the recipe where this is failing for you?
> > > > >
> > > > > I could then try to recreate this issue in a sandbox depot we have
> in
> > > > > our perforce server and see what's going on.
> > > > >
> > > > > > >
> > > > > > > > > This change to using labels, changelist numbers, and
> allowing
> > > the
> > > > > use
> > > > > > > of
> > > > > > > > > AUTOREV was made so that the perforce fetcher would act
> more
> > > like
> > > > > the
> > > > > > > > > other source code control system fetchers.  Prior to my
> > > changes to
> > > > > the
> > > > > > > > > p4 fetcher, the way that recipes using p4 had to be written
> > > seemed
> > > > > > > > > rather awkward to me.  The way it is now isn't perfect, but
> > > it's
> > > > > closer
> > > > > > > > > to how the other fetchers act, I think (and hope).
> > > > > > > > >
> > > > > > > >
> > > > > > > > > > > Is there a way to set module and label/changelist? I
> have
> > > > > several
> > > > > > > > > folders
> > > > > > > > > > > > per recipe that I need to map to different
> subfolders and
> > > > > with
> > > > > > > the
> > > > > > > > > current
> > > > > > > > > > > > script some of the folders don't get fetched.
> > > > > > > > >
> > > > > > > > > I'm not sure I understand enough about how you use
> perforce and
> > > > > what
> > > > > > > you
> > > > > > > > > mean by mapping different subfolders.  Can you explain
> this in
> > > a
> > > > > more
> > > > > > > > > expanded way to me?  Maybe with some examples?
> > > > > > > > >
> > > > > > > >
> > > > > > > > What I mean by this is taking folders in different locations
> in
> > > > > Perforce
> > > > > > > > and fetch them to a custom folder structure inside the
> > > {WORKDIR}/p4
> > > > > > > folder.
> > > > > > > > This is an example of how I was doing this with the old
> version
> > > of
> > > > > the
> > > > > > > > fetcher:
> > > > > > > >
> > > > > > > > #leave blank, "", for latest revision
> > > > > > > > P4CHANGELIST = "${PR}"
> > > > > > > > S = "${WORKDIR}"
> > > > > > > > SRC_URI = " \
> > > > > > > > p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot/project
> > > > > > > 1/folder1/...;module=subfolderunderp4/src/;label=${
> P4CHANGELIST}
> > > > > > > > \
> > > > > > > > p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot/project
> > > > > > > 2/folder3/...;module=subfolderunderp4/pkg/;label=${
> P4CHANGELIST}
> > > > > > > > \
> > > > > > > > "
> > > > > > > >
> > > > > > > > Where folder1 contains the src files and folder3 contains
> the pkg
> > > > > > > > information. These need to be in an specific folder structure
> > > for the
> > > > > > > > recipe to work.
> > > > > > > > I had some issue when adding more than one line because it
> was
> > > > > trying to
> > > > > > > > copy everything to the same p4 folder.
> > > > > > >
> > > > > > > Ah, yeah... Sorry, that is a bit of a shortcoming of my
> changes.
> > > The
> > > > > > > reason I made this change is because putting the given
> SRC_URI's
> > > > > > > repository directly into a directory like ${WORKDIR}/p4/ is how
> > > some of
> > > > > > > the other fetchers operate and it makes the automatic tasks
> just
> > > work
> > > > > > > correctly.  This is how the git fetcher does things so I tried
> to
> > > > > mimmic
> > > > > > > that but maybe I missed some nuance in how the git fetcher
> deals
> > > with
> > > > > > > more than one SRC_URI line being a git repo.  I hadn't realized
> > > that
> > > > > > > there was users of the p4 fetcher who did things like you are
> > > doing,
> > > > > > > sorry.
> > > > > > >
> > > > > > > I think it should be reasonably easy to make a patch to the p4
> > > fetcher
> > > > > > > which will put each SRC_URI line which uses the p4 fetcher into
> > > its own
> > > > > > > directory within the ${WORKDIR}/p4/ directory such that it
> supports
> > > > > your
> > > > > > > style of fetching.  This then will likely require your recipe
> to
> > > know
> > > > > > > that this is the directory structure and properly change into
> > > > > > > directories as needed, but it sounds like you already
> comprehend
> > > that.
> > > > > > > And for users of the p4 fetcher who only use one SRC_URI line,
> I
> > > > > believe
> > > > > > > they would just need to set the S variable correctly to the
> > > directory
> > > > > > > name within ${WORKDIR}/p4/ to get the current operation.
> > > > > >
> > > > > > I have been looking at this and it wasn't straight forward for
> me...
> > > I
> > > > > > don't have much experience with this. I will continue trying but
> I
> > > might
> > > > > > need some help.
> > > > > > It's not only not being able to fetch more than one SRC_URI. We
> are
> > > also
> > > > > > loosing the flexibility of fetching different changelists for
> each
> > > line.
> > > > > > I'm not sure if this can be solved in this new fetcher whilst
> > > keeping git
> > > > > > and p4 "similar" as git doesn't work this way afaik.
> > > > >
> > > > > It sounds like you really just want to revert to how the p4 fetcher
> > > used
> > > > > to work.  My changes were because I wanted the p4 fetcher to work
> more
> > > > > like the git and svn fetchers.  But that doesn't sound like what
> you
> > > > > want.
> > > > >
> > > > > My p4 fetcher changes which are impacting you on poky's pyro are
> these:
> > > > >
> > > > > 35081f55185a8a9804c21b16cd4600ba70646a10 bitbake:
> bitbake-user-manual:
> > > > > Addeds support for the Perforce Fetcher
> > > > > 40f3099e8ec5c6f3a8b7f3d0e90f1c65c388ee77 base.bbclass: p4 fetcher
> > > > > supports srcrev
> > > > > 26447a0d0bf5ceaac382a78c1dbd00807dbab706 bitbake: fetch2/perforce:
> > > Rework
> > > > > to support SRCREV and P4CONFIG
> > > > >
> > > > > But that last one will run into conflicts if you just try to
> revert it
> > > > > directly due to having other commits since then which git can't
> easily
> > > > > figure out, but if you revert all of these commits too, then you
> may
> > > > > have to redo some of the changes they made which are related to
> general
> > > > > things and are not p4 specific.  Commits you'll want to look at
> are:
> > > > >
> > > > > b16192c93834d0a6530169557aa34122e1417bcf bitbake: fetch2: don't
> use
> > > > > deprecated bb.data APIs
> > > > > 6c611d697f9c03867c938cba1b481f38eebed8bf bitbake: fetch2: Rename
> > > > > "setup_revisons" to "setup_revisions"
> > > > > 38438b6cf42fb7ad45b9a901f57913af7e7591a3 bitbake: fetch2: obey
> > > > > BB_ALLOWED_NETWORKS when checking network access
> > > > > 1fce7ecbbb004a5ad82da3eef79cfd52b276708d bitbake: bitbake: remove
> True
> > > > > option to getVar calls
> > > > > ab09541d5517da9b1a23923ea8f5c26ddf745084 bitbake: fetch2: preserve
> > > > > current working directory
> > > > > 26447a0d0bf5ceaac382a78c1dbd00807dbab706 bitbake: fetch2/perforce:
> > > Rework
> > > > > to support SRCREV and P4CONFIG
> > > > >
> > > > > I haven't actually reviewed any of these commits after the
> "preserve
> > > > > current working directory" one as I'm still doing my day-to-day
> work on
> > > > > the morty branch of oe-core and bitbake 1.32.  But possibly one of
> > > these
> > > > > commits are unintentionally impacting your ability to specify
> SRCREV
> > > and
> > > > > that's worth checking into.
> > > > >
> > > > > Thanks,
> > > > > Andrew
> > > > >
> > >
>

--001a114225ea2d7f620559744400
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi Andrew,<br><br></div>I&#39;m getting an =
error when I apply your patch. Do you now how can I work around this?<br><b=
r>user@pc:~/yocto/pyro/poky$ git fetch<br>user@pc:~/yocto/pyro/poky$ git re=
set<br>user@pc:~/yocto/pyro/poky$ git clean -fd<br>user@pc:~/yocto/pyro/pok=
y$ git reset --hard<br>HEAD is now at b51b4f5 gawk: Enable native building<=
br>user@pc:~/yocto/pyro/poky$ git branch<br>* pyro<br>user@pc:~/yocto/pyro/=
poky$ git apply ../0001-Revert-w-modifications-bitbake-fetch2-perforce-Rewo=
r.patch<br>../0001-Revert-w-modifications-bitbake-fetch2-perforce-Rewor.pat=
ch:28: trailing whitespace.<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &#39;DBUS_SESS=
ION_BUS_ADDRESS&#39;]<br>../0001-Revert-w-modifications-bitbake-fetch2-perf=
orce-Rewor.patch:41: trailing whitespace.<br>BitBake &#39;Fetch&#39; implem=
entations<br>../0001-Revert-w-modifications-bitbake-fetch2-perforce-Rewor.p=
atch:42: trailing whitespace.<br><br>../0001-Revert-w-modifications-bitbake=
-fetch2-perforce-Rewor.patch:43: trailing whitespace.<br>Classes for obtain=
ing upstream sources for the<br>../0001-Revert-w-modifications-bitbake-fetc=
h2-perforce-Rewor.patch:44: trailing whitespace.<br>BitBake build tools.<br=
>error: patch failed: bitbake/lib/bb/fetch2/__init__.py:817<br>error: bitba=
ke/lib/bb/fetch2/__init__.py: patch does not apply<br>error: patch failed: =
bitbake/lib/bb/fetch2/perforce.py:1<br>error: bitbake/lib/bb/fetch2/perforc=
e.py: patch does not apply<br><br></div>Cheers,<br></div>Katu<br></div><div=
 class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-09-14 17:17 GMT+=
01:00 Andrew Bradford <span dir=3D"ltr">&lt;<a href=3D"mailto:andrew@bradfo=
rdembedded.com" target=3D"_blank">andrew@bradfordembedded.com</a>&gt;</span=
>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">Hi Katu,<br>
<br>
Sorry for my delay in responding.<br>
<span class=3D""><br>
On 09/14 11:13, Katu Txakur wrote:<br>
&gt; Have you had time to look at this? I tried to go back to the old perfo=
rce<br>
&gt; fetcher but I got a license error and I couldn&#39;t work around it.<b=
r>
<br>
</span>On the pyro branch of poky, if you revert these two commits, in this=
<br>
order:<br>
<span class=3D""><br>
35081f55185a8a9804c21b16cd4600<wbr>ba70646a10 &quot;bitbake: bitbake-user-m=
anual: Addeds support for the Perforce Fetcher&quot;<br>
40f3099e8ec5c6f3a8b7f3d0e90f1c<wbr>65c388ee77 &quot;base.bbclass: p4 fetche=
r supports srcrev&quot;<br>
<br>
</span>And then apply the patch attached, this should bring the pyro branch=
 of<br>
poky back to how the old perforce fetcher worked.=C2=A0 I have tested havin=
g<br>
two different depot paths in a recipe SRC_URI and they both are fetched<br>
how I believe you want them to be, next to each other in WORKDIR.<br>
<br>
Just be aware, I believe this loses the ability to use<br>
SRC_REV=3D&quot;${AUTOREV}&quot; to automatically find the newest changelis=
t which<br>
my previous changes introduced.<br>
<br>
The format for SRC_URI that I tested was like:<br>
<br>
SRC_URI =3D &quot;p4://username:password:<wbr><a href=3D"http://server.host=
name.example.com">server.hostname.example.com</a>:<wbr>1666@depot/path/to/d=
irectory/.<wbr>..;cset=3D178374&quot;<br>
<br>
You should also be able to specify P4PORT to set the host and port<br>
number but you may then lose the ability to have the username and<br>
password (although I haven&#39;t tested this and don&#39;t remember how it =
used<br>
to work).=C2=A0 You should also be able to specify the P4DATE variable in<b=
r>
your recipe to apply to all p4 fetches instead of using the &quot;cset=3D&q=
uot;<br>
parameter, and instead of using the &quot;cset=3D&quot; param you should al=
so be<br>
able to specify a &quot;revision=3D&quot; for a single file or a &quot;labe=
l=3D&quot; for a<br>
label.=C2=A0 I&#39;ve only tested using the &quot;cset=3D&quot; way as the =
others don&#39;t<br>
easily apply to how my team internally uses perforce, sorry.<br>
<br>
I think I understand how I could make the current perforce fetcher<br>
(without the above reverts or attached patch) do the multi-directory<br>
fetching that you want, but I don&#39;t personally want to do that in my<br=
>
workflow so I&#39;m not going to spend a bunch of time implementing it now.=
<br>
But if you do implement it, I&#39;d be happy to test patches for you.<br>
<br>
Thanks,<br>
Andrew<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; 2017-08-31 18:54 GMT+01:00 Andrew Bradford &lt;<a href=3D"mailto:andre=
w@bradfordembedded.com">andrew@bradfordembedded.com</a>&gt;:<br>
&gt;<br>
&gt; &gt; Hi Katu,<br>
&gt; &gt;<br>
&gt; &gt; On 08/28 17:43, Katu Txakur wrote:<br>
&gt; &gt; &gt; Thanks for looking at this. See my recipe below. I&#39;ve le=
ft the bits<br>
&gt; &gt; related<br>
&gt; &gt; &gt; to systemd service but I don&#39;t think they matter for thi=
s. I&#39;m using an<br>
&gt; &gt; old<br>
&gt; &gt; &gt; implementation of Perforce (2010) in case this matters. I&#3=
9;ve tried going<br>
&gt; &gt; &gt; back to the old perforce.py fetcher but I get a license erro=
r... do you<br>
&gt; &gt; &gt; know if it would be easy to revert to the old version in my =
bitbake<br>
&gt; &gt; folder<br>
&gt; &gt; &gt; until we make this work?<br>
&gt; &gt;<br>
&gt; &gt; Sorry, I&#39;ve been swamped this week and haven&#39;t been able =
to look into<br>
&gt; &gt; this yet.=C2=A0 This coming weekend is a holiday weekend in the U=
SA, too.<br>
&gt; &gt; But I plan to look at this early next week, hope that&#39;s OK.<b=
r>
&gt; &gt;<br>
&gt; &gt; We should be able to create a patch series to revert my changes s=
o you<br>
&gt; &gt; can go back to the old perforce fetcher.=C2=A0 It might also be w=
orth<br>
&gt; &gt; investigating how to take the current perforce fetcher and enable=
 some<br>
&gt; &gt; of the use cases that you have (but we can do this after we succe=
ssfully<br>
&gt; &gt; revert).<br>
&gt; &gt;<br>
&gt; &gt; I&#39;ll try to send a patch to you next week for the reverting.<=
br>
&gt; &gt; Thanks,<br>
&gt; &gt; Andrew<br>
&gt; &gt;<br>
&gt; &gt; &gt; DESCRIPTION =3D &quot;Dummy recipe to fetch from Perforce&qu=
ot;<br>
&gt; &gt; &gt; SECTION =3D &quot;PerforceRecipes&quot;<br>
&gt; &gt; &gt; LICENSE =3D &quot;CLOSED&quot;<br>
&gt; &gt; &gt; PR =3D &quot;r0&quot;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; inherit cmake<br>
&gt; &gt; &gt; DEPENDS =3D &quot;boost alsa-tools&quot;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; P4USER =3D &quot;myuser&quot;<br>
&gt; &gt; &gt; P4PASSWD =3D &quot;&quot;<br>
&gt; &gt; &gt; P4PORT =3D &quot;<a href=3D"http://192.168.1.55:1666" rel=3D=
"noreferrer" target=3D"_blank">192.168.1.55:1666</a>&quot;<br>
&gt; &gt; &gt; FETCHCMD_p4 =3D &quot;/usr/local/bin/p4&quot;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; SRC_URI =3D &quot; \<br>
&gt; &gt; &gt; p4://${P4USER}:${P4PASSWD}@<wbr>myrepo/myfolder/...; \<br>
&gt; &gt; &gt; file://perforce-recipe.service \<br>
&gt; &gt; &gt; &quot;<br>
&gt; &gt; &gt; SRCREV =3D &quot;${AUTOREV}&quot;<br>
&gt; &gt; &gt; S =3D &quot;${WORKDIR}/p4&quot;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; do_install_append () {<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0install -d ${D}${systemd_unitdir}/system<=
br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0install -m 0644 ../perforce-recipe.servic=
e<br>
&gt; &gt; ${D}${systemd_unitdir}/system<br>
&gt; &gt; &gt; }<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; NATIVE_SYSTEMD_SUPPORT =3D &quot;1&quot;<br>
&gt; &gt; &gt; SYSTEMD_PACKAGES =3D &quot;perforce-recipe&quot;<br>
&gt; &gt; &gt; SYSTEMD_SERVICE_${PN} =3D &quot;perforce-recipe.service&quot=
;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; SYSTEMD_AUTO_ENABLE =3D &quot;disable&quot;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; FILES_${PN} =3D &quot;${systemd_unitdir} ${bindir}&quot;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; 2017-08-28 15:27 GMT+01:00 Andrew Bradford &lt;<a href=3D"ma=
ilto:andrew@bradfordembedded.com">andrew@bradfordembedded.com</a><br>
&gt; &gt; &gt;:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Hi Katu,<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; On 08/28 08:56, Katu Txakur wrote:<br>
&gt; &gt; &gt; &gt; &gt; 2017-08-11 13:52 GMT+01:00 Andrew Bradford &lt;<br=
>
&gt; &gt; <a href=3D"mailto:andrew@bradfordembedded.com">andrew@bradfordemb=
edded.com</a><br>
&gt; &gt; &gt; &gt; &gt;:<br>
&gt; &gt; &gt; &gt; &gt; On 08/11 11:34, Katu Txakur wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; 2017-08-07 12:17 GMT+01:00 Andrew Bradfo=
rd &lt;<br>
&gt; &gt; &gt; &gt; <a href=3D"mailto:andrew@bradfordembedded.com">andrew@b=
radfordembedded.com</a><br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; On 08/02 10:28, Paul Eggleton wrote=
:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; On Wednesday, 2 August 2017 9:=
40:10 AM CEST Katu Txakur<br>
&gt; &gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; I&#39;m still having prob=
lems fetching from Perforce. Is there<br>
&gt; &gt; any<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; documentation based on th=
e latest implementation of the<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; poky/bitbake/lib/bb/fetch=
2/<wbr>perforce.py file?<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; There&#39;s some documentation now =
in the official Yocto Project<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; documentation location for bitbake =
fetchers [1].=C2=A0 Prior to my<br>
&gt; &gt; &gt; &gt; changes<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; there was very little if any docume=
ntation, afaik.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; [1]: <a href=3D"http://www.yoctopro=
ject.org/docs/2.3.1/bitbake-user-" rel=3D"noreferrer" target=3D"_blank">htt=
p://www.yoctoproject.org/<wbr>docs/2.3.1/bitbake-user-</a><br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; manual/bitbake-user-manual.<wbr>htm=
l#perforce-fetcher<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; 2017-07-25 10:05 GMT+01:0=
0 Katu Txakur &lt;<br>
&gt; &gt; <a href=3D"mailto:katutxakurra@gmail.com">katutxakurra@gmail.com<=
/a><br>
&gt; &gt; &gt; &gt; &gt;:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; I&#39;m upgrading a =
recipe that fetches the source code from<br>
&gt; &gt; &gt; &gt; &gt; &gt; Perforce.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; The old recipe was:<=
br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; SRC_URI =3D &quot; \=
<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0p4://${P=
4USER}:${P4PASSWD}:${<wbr>P4HOST}:${P4PORT}@Depot<br>
&gt; &gt; /path/<br>
&gt; &gt; &gt; &gt; pe<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; rforce/...;module=3D=
local/path/<wbr>relativeto/p4;label=3D${<br>
&gt; &gt; &gt; &gt; P4CHANGELIST}<br>
&gt; &gt; &gt; &gt; &gt; &gt; \<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0&quot;<b=
r>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; With the new version=
 of /lib/bb/fetch2/perforce.py, I<br>
&gt; &gt; had to<br>
&gt; &gt; &gt; &gt; set<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; P4PORT<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; outside SRC_URI, lea=
ving the recipe with:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; SRC_URI =3D &quot; \=
<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0p4://${P=
4USER}:${P4PASSWD}@<wbr>Depot/path/perforce/...;<br>
&gt; &gt; module=3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; local/path/relativet=
o/p4;<wbr>label=3D${P4CHANGELIST} \<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0&quot;<b=
r>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; The Perforce fetcher=
 kind of works, but it seems to be<br>
&gt; &gt; &gt; &gt; ignoring<br>
&gt; &gt; &gt; &gt; &gt; &gt; the<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &quot;module&quot; a=
nd the &quot;label&quot; attributes. After reading the<br>
&gt; &gt; Python<br>
&gt; &gt; &gt; &gt; &gt; &gt; script<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; I can<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; see that after the &=
quot;@&quot;, only the substring before the<br>
&gt; &gt; first<br>
&gt; &gt; &gt; &gt; &quot;;&quot;<br>
&gt; &gt; &gt; &gt; &gt; &gt; is<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; used.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Sorry for not making the label chan=
ge more clear, but you<br>
&gt; &gt; should be<br>
&gt; &gt; &gt; &gt; &gt; &gt; able<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; to simply set SRCREV=3D&quot;labeln=
ame&quot; and have the functionality you<br>
&gt; &gt; &gt; &gt; desire.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; However, we don&#39;t use labels ve=
ry often internally, so the use<br>
&gt; &gt; of<br>
&gt; &gt; &gt; &gt; &gt; &gt; labels<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; in SRCREV isn&#39;t tested that oft=
en by me.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; I don&#39;t use labels that much either,=
 however, I used to be able<br>
&gt; &gt; to<br>
&gt; &gt; &gt; &gt; write<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; the changeslist number as a label and it=
 would<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; fetch the code for that changelist. This=
 doesn&#39;t work using<br>
&gt; &gt; SRCREV =3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &quot;changelistnumber&quot;<br>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; This does work for me using oe-core morty bra=
nch and bitbake<br>
&gt; &gt; &gt; &gt; &gt; &gt; 1.32 which is the versions where these change=
s were first applied<br>
&gt; &gt; and<br>
&gt; &gt; &gt; &gt; &gt; &gt; where I did my testing.<br>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; Like I have a recipe which I put:<br>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; SRCREV =3D &quot;184127&quot;<br>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; The p4 fetcher will go fetch changelist 18412=
7 of the SRC_URI path<br>
&gt; &gt; in<br>
&gt; &gt; &gt; &gt; &gt; &gt; perforce.<br>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; Or if I put:<br>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; SRCREV =3D &quot;${AUTOREV}&quot;<br>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; Then it&#39;ll fetch the HEAD/tip of the SRC_=
URI path in perforce.<br>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; Is this not working the same way with poky no=
w?<br>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; I&#39;m using yocto pyro with bitbake 1.34.0. When=
 I first fetch the<br>
&gt; &gt; code for<br>
&gt; &gt; &gt; &gt; &gt; my recipe, it gets the latest changelist.<br>
&gt; &gt; &gt; &gt; &gt; I submit a change and the next time, the recipe th=
inks there nothing<br>
&gt; &gt; new<br>
&gt; &gt; &gt; &gt; to<br>
&gt; &gt; &gt; &gt; &gt; fetch. Also, using SRCREV =3D &quot;184127&quot;<b=
r>
&gt; &gt; &gt; &gt; &gt; doesn&#39;t work for me, it always gets the latest=
 changelist.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Can you post the recipe where this is failing for you?<=
br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I could then try to recreate this issue in a sandbox de=
pot we have in<br>
&gt; &gt; &gt; &gt; our perforce server and see what&#39;s going on.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; This change to using labels, change=
list numbers, and allowing<br>
&gt; &gt; the<br>
&gt; &gt; &gt; &gt; use<br>
&gt; &gt; &gt; &gt; &gt; &gt; of<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; AUTOREV was made so that the perfor=
ce fetcher would act more<br>
&gt; &gt; like<br>
&gt; &gt; &gt; &gt; the<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; other source code control system fe=
tchers.=C2=A0 Prior to my<br>
&gt; &gt; changes to<br>
&gt; &gt; &gt; &gt; the<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; p4 fetcher, the way that recipes us=
ing p4 had to be written<br>
&gt; &gt; seemed<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; rather awkward to me.=C2=A0 The way=
 it is now isn&#39;t perfect, but<br>
&gt; &gt; it&#39;s<br>
&gt; &gt; &gt; &gt; closer<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; to how the other fetchers act, I th=
ink (and hope).<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Is there a way to set mod=
ule and label/changelist? I have<br>
&gt; &gt; &gt; &gt; several<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; folders<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; per recipe that I ne=
ed to map to different subfolders and<br>
&gt; &gt; &gt; &gt; with<br>
&gt; &gt; &gt; &gt; &gt; &gt; the<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; current<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; script some of the f=
olders don&#39;t get fetched.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; I&#39;m not sure I understand enoug=
h about how you use perforce and<br>
&gt; &gt; &gt; &gt; what<br>
&gt; &gt; &gt; &gt; &gt; &gt; you<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; mean by mapping different subfolder=
s.=C2=A0 Can you explain this in<br>
&gt; &gt; a<br>
&gt; &gt; &gt; &gt; more<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; expanded way to me?=C2=A0 Maybe wit=
h some examples?<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; What I mean by this is taking folders in=
 different locations in<br>
&gt; &gt; &gt; &gt; Perforce<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; and fetch them to a custom folder struct=
ure inside the<br>
&gt; &gt; {WORKDIR}/p4<br>
&gt; &gt; &gt; &gt; &gt; &gt; folder.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; This is an example of how I was doing th=
is with the old version<br>
&gt; &gt; of<br>
&gt; &gt; &gt; &gt; the<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; fetcher:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; #leave blank, &quot;&quot;, for latest r=
evision<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; P4CHANGELIST =3D &quot;${PR}&quot;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; S =3D &quot;${WORKDIR}&quot;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; SRC_URI =3D &quot; \<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; p4://${P4USER}:${P4PASSWD}:${<wbr>P4HOST=
}:${P4PORT}@Depot/<wbr>project<br>
&gt; &gt; &gt; &gt; &gt; &gt; 1/folder1/...;module=3D<wbr>subfolderunderp4/=
src/;label=3D${<wbr>P4CHANGELIST}<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; \<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; p4://${P4USER}:${P4PASSWD}:${<wbr>P4HOST=
}:${P4PORT}@Depot/<wbr>project<br>
&gt; &gt; &gt; &gt; &gt; &gt; 2/folder3/...;module=3D<wbr>subfolderunderp4/=
pkg/;label=3D${<wbr>P4CHANGELIST}<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; \<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &quot;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; Where folder1 contains the src files and=
 folder3 contains the pkg<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; information. These need to be in an spec=
ific folder structure<br>
&gt; &gt; for the<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; recipe to work.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; I had some issue when adding more than o=
ne line because it was<br>
&gt; &gt; &gt; &gt; trying to<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; copy everything to the same p4 folder.<b=
r>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; Ah, yeah... Sorry, that is a bit of a shortco=
ming of my changes.<br>
&gt; &gt; The<br>
&gt; &gt; &gt; &gt; &gt; &gt; reason I made this change is because putting =
the given SRC_URI&#39;s<br>
&gt; &gt; &gt; &gt; &gt; &gt; repository directly into a directory like ${W=
ORKDIR}/p4/ is how<br>
&gt; &gt; some of<br>
&gt; &gt; &gt; &gt; &gt; &gt; the other fetchers operate and it makes the a=
utomatic tasks just<br>
&gt; &gt; work<br>
&gt; &gt; &gt; &gt; &gt; &gt; correctly.=C2=A0 This is how the git fetcher =
does things so I tried to<br>
&gt; &gt; &gt; &gt; mimmic<br>
&gt; &gt; &gt; &gt; &gt; &gt; that but maybe I missed some nuance in how th=
e git fetcher deals<br>
&gt; &gt; with<br>
&gt; &gt; &gt; &gt; &gt; &gt; more than one SRC_URI line being a git repo.=
=C2=A0 I hadn&#39;t realized<br>
&gt; &gt; that<br>
&gt; &gt; &gt; &gt; &gt; &gt; there was users of the p4 fetcher who did thi=
ngs like you are<br>
&gt; &gt; doing,<br>
&gt; &gt; &gt; &gt; &gt; &gt; sorry.<br>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; I think it should be reasonably easy to make =
a patch to the p4<br>
&gt; &gt; fetcher<br>
&gt; &gt; &gt; &gt; &gt; &gt; which will put each SRC_URI line which uses t=
he p4 fetcher into<br>
&gt; &gt; its own<br>
&gt; &gt; &gt; &gt; &gt; &gt; directory within the ${WORKDIR}/p4/ directory=
 such that it supports<br>
&gt; &gt; &gt; &gt; your<br>
&gt; &gt; &gt; &gt; &gt; &gt; style of fetching.=C2=A0 This then will likel=
y require your recipe to<br>
&gt; &gt; know<br>
&gt; &gt; &gt; &gt; &gt; &gt; that this is the directory structure and prop=
erly change into<br>
&gt; &gt; &gt; &gt; &gt; &gt; directories as needed, but it sounds like you=
 already comprehend<br>
&gt; &gt; that.<br>
&gt; &gt; &gt; &gt; &gt; &gt; And for users of the p4 fetcher who only use =
one SRC_URI line, I<br>
&gt; &gt; &gt; &gt; believe<br>
&gt; &gt; &gt; &gt; &gt; &gt; they would just need to set the S variable co=
rrectly to the<br>
&gt; &gt; directory<br>
&gt; &gt; &gt; &gt; &gt; &gt; name within ${WORKDIR}/p4/ to get the current=
 operation.<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; I have been looking at this and it wasn&#39;t stra=
ight forward for me...<br>
&gt; &gt; I<br>
&gt; &gt; &gt; &gt; &gt; don&#39;t have much experience with this. I will c=
ontinue trying but I<br>
&gt; &gt; might<br>
&gt; &gt; &gt; &gt; &gt; need some help.<br>
&gt; &gt; &gt; &gt; &gt; It&#39;s not only not being able to fetch more tha=
n one SRC_URI. We are<br>
&gt; &gt; also<br>
&gt; &gt; &gt; &gt; &gt; loosing the flexibility of fetching different chan=
gelists for each<br>
&gt; &gt; line.<br>
&gt; &gt; &gt; &gt; &gt; I&#39;m not sure if this can be solved in this new=
 fetcher whilst<br>
&gt; &gt; keeping git<br>
&gt; &gt; &gt; &gt; &gt; and p4 &quot;similar&quot; as git doesn&#39;t work=
 this way afaik.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; It sounds like you really just want to revert to how th=
e p4 fetcher<br>
&gt; &gt; used<br>
&gt; &gt; &gt; &gt; to work.=C2=A0 My changes were because I wanted the p4 =
fetcher to work more<br>
&gt; &gt; &gt; &gt; like the git and svn fetchers.=C2=A0 But that doesn&#39=
;t sound like what you<br>
&gt; &gt; &gt; &gt; want.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; My p4 fetcher changes which are impacting you on poky&#=
39;s pyro are these:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; 35081f55185a8a9804c21b16cd4600<wbr>ba70646a10 bitbake: =
bitbake-user-manual:<br>
&gt; &gt; &gt; &gt; Addeds support for the Perforce Fetcher<br>
&gt; &gt; &gt; &gt; 40f3099e8ec5c6f3a8b7f3d0e90f1c<wbr>65c388ee77 base.bbcl=
ass: p4 fetcher<br>
&gt; &gt; &gt; &gt; supports srcrev<br>
&gt; &gt; &gt; &gt; 26447a0d0bf5ceaac382a78c1dbd00<wbr>807dbab706 bitbake: =
fetch2/perforce:<br>
&gt; &gt; Rework<br>
&gt; &gt; &gt; &gt; to support SRCREV and P4CONFIG<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; But that last one will run into conflicts if you just t=
ry to revert it<br>
&gt; &gt; &gt; &gt; directly due to having other commits since then which g=
it can&#39;t easily<br>
&gt; &gt; &gt; &gt; figure out, but if you revert all of these commits too,=
 then you may<br>
&gt; &gt; &gt; &gt; have to redo some of the changes they made which are re=
lated to general<br>
&gt; &gt; &gt; &gt; things and are not p4 specific.=C2=A0 Commits you&#39;l=
l want to look at are:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; b16192c93834d0a6530169557aa341<wbr>22e1417bcf bitbake: =
fetch2: don&#39;t use<br>
&gt; &gt; &gt; &gt; deprecated bb.data APIs<br>
&gt; &gt; &gt; &gt; 6c611d697f9c03867c938cba1b481f<wbr>38eebed8bf bitbake: =
fetch2: Rename<br>
&gt; &gt; &gt; &gt; &quot;setup_revisons&quot; to &quot;setup_revisions&quo=
t;<br>
&gt; &gt; &gt; &gt; 38438b6cf42fb7ad45b9a901f57913<wbr>af7e7591a3 bitbake: =
fetch2: obey<br>
&gt; &gt; &gt; &gt; BB_ALLOWED_NETWORKS when checking network access<br>
&gt; &gt; &gt; &gt; 1fce7ecbbb004a5ad82da3eef79cfd<wbr>52b276708d bitbake: =
bitbake: remove True<br>
&gt; &gt; &gt; &gt; option to getVar calls<br>
&gt; &gt; &gt; &gt; ab09541d5517da9b1a23923ea8f5c2<wbr>6ddf745084 bitbake: =
fetch2: preserve<br>
&gt; &gt; &gt; &gt; current working directory<br>
&gt; &gt; &gt; &gt; 26447a0d0bf5ceaac382a78c1dbd00<wbr>807dbab706 bitbake: =
fetch2/perforce:<br>
&gt; &gt; Rework<br>
&gt; &gt; &gt; &gt; to support SRCREV and P4CONFIG<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I haven&#39;t actually reviewed any of these commits af=
ter the &quot;preserve<br>
&gt; &gt; &gt; &gt; current working directory&quot; one as I&#39;m still do=
ing my day-to-day work on<br>
&gt; &gt; &gt; &gt; the morty branch of oe-core and bitbake 1.32.=C2=A0 But=
 possibly one of<br>
&gt; &gt; these<br>
&gt; &gt; &gt; &gt; commits are unintentionally impacting your ability to s=
pecify SRCREV<br>
&gt; &gt; and<br>
&gt; &gt; &gt; &gt; that&#39;s worth checking into.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Thanks,<br>
&gt; &gt; &gt; &gt; Andrew<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt;<br>
</div></div></blockquote></div><br></div>

--001a114225ea2d7f620559744400--
