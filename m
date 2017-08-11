Return-Path: <andrew@bradfordembedded.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FD3AE00C3A; Fri, 11 Aug 2017 05:52:57 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23DB6E00C14
	for <yocto@yoctoproject.org>; Fri, 11 Aug 2017 05:52:55 -0700 (PDT)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 0425C20CB5;
	Fri, 11 Aug 2017 08:52:53 -0400 (EDT)
Received: from frontend2 ([10.202.2.161])
	by compute6.internal (MEProxy); Fri, 11 Aug 2017 08:52:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	bradfordembedded.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=nqZcrIrWRpUG29rth1
	FNlKld2Bs5gCV/leZ60eYq0CQ=; b=PrjcJuXuN8utgM3bSx/60q8AgvfFWUH7Yx
	DNrlM5UHfjVWppk1wNRS1RDGEqgWlYywyQNn7a9tXS2ebrfyTiH30qC1BINZ6ZOu
	4x5VKvJuCalkiTfGBkusN6A6Fz+h9CFEKeDKgNRe8BP2gEOiCheF0a8KxnfO0fD4
	DD85wwm7AWVq3JmtE4zN4Uth0FlMl3oQWynUdzp4EF0xEfDXChpFmdHgU72/KNqg
	VgYShDsZfnWQCxomn69YLnDtap8UAt5GkWK0B88E5HhBCDhlyFcni5+53LjBg60V
	VEHN5e83HmS+YOTFM7HQDWlA2FVxvYzNYqtH1UonBhehFtwdQdIg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=nqZcrIrWRpUG29rth1
	FNlKld2Bs5gCV/leZ60eYq0CQ=; b=ACFg4EEEt66KGxIiEnEdRLniD++YpLweUQ
	QDyk2ixApY9IOTuDdEgs3oyTFVFxA2ZsYlDu5VTxwt00/gO9WgSG2kIfBu/w0SZI
	pJKQX07HHCU+/HIjKX9T+Zh2MAHqmpuh5WF78k2OWcnRc+FmLr0EmX6gRH5YvhOe
	B+l+BDZ1/dTzla+hnHSW8nEB+bLsAx7LvokfGxE/krIW5MkoT8PteUzCkU0Q5nSw
	mnxLleXI4mifRE/6fnjxNnsyNDyHusv/4jBHEmfxH66QWUMrtre64btUBZVJV8R4
	AFYjnbrkojL6x8ofl5B8WDMICj63LBXVr5GO3OLN/Wu8SwVbU/MA==
X-ME-Sender: <xms:pKiNWcU6d7320K9wEkRCApLorffq7RrkUhHBC-xlkpy-9efv8YPCag>
X-Sasl-enc: qV+aUBUhsXmzlxrNhyCabK/3BD+rp54gv9FMfphZRIfW 1502455972
Received: from kaim-eeyore.kodakalaris.net (clr-vpn01.kodakalaris.com
	[198.140.222.129])
	by mail.messagingengine.com (Postfix) with ESMTPA id A84992473A;
	Fri, 11 Aug 2017 08:52:52 -0400 (EDT)
Date: Fri, 11 Aug 2017 08:52:51 -0400
From: Andrew Bradford <andrew@bradfordembedded.com>
To: Katu Txakur <katutxakurra@gmail.com>
Message-ID: <20170811125251.t2t3kj6kbpsvhwxe@kaim-eeyore.kodakalaris.net>
References: <CAM1ZcoVg_NuFbLkAHCRJmXAhX7g9EA04h+9NYmWb9QAJWCcnKA@mail.gmail.com>
	<CAM1ZcoUYPs_TRwcCT=_9o6pWO1XDpmaRUuTZn=X1O5qkPkY3Eg@mail.gmail.com>
	<1593300.26TW5Pyds6@peggleto-mobl.ger.corp.intel.com>
	<20170807111740.ppsdinlvltioc3uq@kaim-eeyore.kodakalaris.net>
	<CAM1ZcoX7ee=hCBYqWPQoeg_wrWjzqqbZvsrTm12sfZc2Fe0JJQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAM1ZcoX7ee=hCBYqWPQoeg_wrWjzqqbZvsrTm12sfZc2Fe0JJQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 11 Aug 2017 12:52:57 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Katu,

I added back the yocto ml on CC, could you please keep this conversation
on-list?

On 08/11 11:34, Katu Txakur wrote:
> 2017-08-07 12:17 GMT+01:00 Andrew Bradford <andrew@bradfordembedded.com>:
> > On 08/02 10:28, Paul Eggleton wrote:
> > > On Wednesday, 2 August 2017 9:40:10 AM CEST Katu Txakur wrote:
> > > > I'm still having problems fetching from Perforce. Is there any
> > > > documentation based on the latest implementation of the
> > > > poky/bitbake/lib/bb/fetch2/perforce.py file?
> >
> > There's some documentation now in the official Yocto Project
> > documentation location for bitbake fetchers [1].  Prior to my changes
> > there was very little if any documentation, afaik.
> >
> > [1]: http://www.yoctoproject.org/docs/2.3.1/bitbake-user-
> > manual/bitbake-user-manual.html#perforce-fetcher
> >
> > > > 2017-07-25 10:05 GMT+01:00 Katu Txakur <katutxakurra@gmail.com>:
> > > > > I'm upgrading a recipe that fetches the source code from Perforce.
> > > > >
> > > > > The old recipe was:
> > > > >
> > > > > SRC_URI = " \
> > > > >   p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot/path/pe
> > > > > rforce/...;module=local/path/relativeto/p4;label=${P4CHANGELIST} \
> > > > >   "
> > > > >
> > > > > With the new version of /lib/bb/fetch2/perforce.py, I had to set
> > P4PORT
> > > > > outside SRC_URI, leaving the recipe with:
> > > > >
> > > > > SRC_URI = " \
> > > > >   p4://${P4USER}:${P4PASSWD}@Depot/path/perforce/...;module=
> > > > > local/path/relativeto/p4;label=${P4CHANGELIST} \
> > > > >   "
> > > > >
> > > > > The Perforce fetcher kind of works, but it seems to be ignoring the
> > > > > "module" and the "label" attributes. After reading the Python script
> > I can
> > > > > see that after the "@", only the substring before the first ";" is
> > used.
> >
> > Sorry for not making the label change more clear, but you should be able
> > to simply set SRCREV="labelname" and have the functionality you desire.
> > However, we don't use labels very often internally, so the use of labels
> > in SRCREV isn't tested that often by me.
> >
> 
> I don't use labels that much either, however, I used to be able to write
> the changeslist number as a label and it would
> fetch the code for that changelist. This doesn't work using SRCREV =
> "changelistnumber"

Hmmm... This does work for me using oe-core morty branch and bitbake
1.32 which is the versions where these changes were first applied and
where I did my testing.

Like I have a recipe which I put:

SRCREV = "184127"

The p4 fetcher will go fetch changelist 184127 of the SRC_URI path in
perforce.

Or if I put:

SRCREV = "${AUTOREV}"

Then it'll fetch the HEAD/tip of the SRC_URI path in perforce.

Is this not working the same way with poky now?

> > This change to using labels, changelist numbers, and allowing the use of
> > AUTOREV was made so that the perforce fetcher would act more like the
> > other source code control system fetchers.  Prior to my changes to the
> > p4 fetcher, the way that recipes using p4 had to be written seemed
> > rather awkward to me.  The way it is now isn't perfect, but it's closer
> > to how the other fetchers act, I think (and hope).
> >
> 
> > > > Is there a way to set module and label/changelist? I have several
> > folders
> > > > > per recipe that I need to map to different subfolders and with the
> > current
> > > > > script some of the folders don't get fetched.
> >
> > I'm not sure I understand enough about how you use perforce and what you
> > mean by mapping different subfolders.  Can you explain this in a more
> > expanded way to me?  Maybe with some examples?
> >
> 
> What I mean by this is taking folders in different locations in Perforce
> and fetch them to a custom folder structure inside the {WORKDIR}/p4 folder.
> This is an example of how I was doing this with the old version of the
> fetcher:
> 
> #leave blank, "", for latest revision
> P4CHANGELIST = "${PR}"
> S = "${WORKDIR}"
> SRC_URI = " \
> p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot/project1/folder1/...;module=subfolderunderp4/src/;label=${P4CHANGELIST}
> \
> p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot/project2/folder3/...;module=subfolderunderp4/pkg/;label=${P4CHANGELIST}
> \
> "
> 
> Where folder1 contains the src files and folder3 contains the pkg
> information. These need to be in an specific folder structure for the
> recipe to work.
> I had some issue when adding more than one line because it was trying to
> copy everything to the same p4 folder.

Ah, yeah... Sorry, that is a bit of a shortcoming of my changes.  The
reason I made this change is because putting the given SRC_URI's
repository directly into a directory like ${WORKDIR}/p4/ is how some of
the other fetchers operate and it makes the automatic tasks just work
correctly.  This is how the git fetcher does things so I tried to mimmic
that but maybe I missed some nuance in how the git fetcher deals with
more than one SRC_URI line being a git repo.  I hadn't realized that
there was users of the p4 fetcher who did things like you are doing,
sorry.

I think it should be reasonably easy to make a patch to the p4 fetcher
which will put each SRC_URI line which uses the p4 fetcher into its own
directory within the ${WORKDIR}/p4/ directory such that it supports your
style of fetching.  This then will likely require your recipe to know
that this is the directory structure and properly change into
directories as needed, but it sounds like you already comprehend that.
And for users of the p4 fetcher who only use one SRC_URI line, I believe
they would just need to set the S variable correctly to the directory
name within ${WORKDIR}/p4/ to get the current operation.

If you send a patch to change this, I'm happy to test it for you, please
just put me on CC for the patch so I make sure I see it.

Thanks,
Andrew

