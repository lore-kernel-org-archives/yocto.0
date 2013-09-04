Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2BB2E01206
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2013 04:15:37 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 04 Sep 2013 04:15:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,1021,1367996400"; d="scan'208";a="290675644"
Received: from unknown (HELO helios.localnet) ([10.252.123.76])
	by AZSMGA002.ch.intel.com with ESMTP; 04 Sep 2013 04:15:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Wed, 04 Sep 2013 12:15:35 +0100
Message-ID: <18138122.MaeQ4eSK19@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-29-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <2E350B209EEA4C3F8177BE64653DC4F3@PAULD>
References: <587F23315DEC485E8C9E59B4F24916CC@PAULD>
	<2042870.WHnUqHPfUc@helios>
	<2E350B209EEA4C3F8177BE64653DC4F3@PAULD>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: bbappend on top of bbappend
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
X-List-Received-Date: Wed, 04 Sep 2013 11:15:38 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Paul,

On Thursday 22 August 2013 10:58:48 Paul D. DeRocco wrote:
> Paul Eggleton wrote:
> > FWIW, when xinput-calibrator was moved over to OE-Core it was
> > determined that this shouldn't even be started as a service by systemd,
> > but instead launched using Xsession.d. You may have better results if you
> > bring in the recipe from OE-Core master and use that instead.
> 
> Since I'm not running I GUI, but needed an X session, I created a systemd
> unit to start a dummy X session, using "sleep" as the dummy client. Then,
> I can scribble on the screen from my python scripts run from the root
> command line. So I solved it by having the xinput-calibrator service run
> after my X session starts. I'll look at putting it in Xsession.d instead,
> and see if that is cleaner.

I would think it would be cleaner, but probably whatever works in your
situation here is fine.

> > > I read somewhere that stacked bbappends are handled in the
> > > order of layer
> > > priority. Mine is 5, the meta-systemd layer is 7. I don't
> > > know which is
> > > "higher", or if one wants a higher or lower priority in
> > > order to be the last one to prepend to the path.
> > 
> > They will be applied in ascending order, so anything in the
> > bbappend from a
> > layer with a higher layer priority number takes precedence.
> 
> After I did a clean and a clean_sstate, the dual bbappends worked as
> expected.
> 
> I'm learning from experience to clean things manually, to avoid problems,
> but sometimes I'm just waving a dead chicken over it. I don't really know
> what these things do, or in what situations they should or shouldn't be
> necessary. For instance, I've never found an explanation of what shared
> state really is, with sufficient specificity that I can predict, "Oh, for
> that I need to clean the sstate, not just the build tree." Second, it
> seems like clean_sstate does a clean, but I'm not sure clean doesn't do
> something else that clean_sstate doesn't do.

FWIW, we do have this section of the reference manual:

http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#shared-state-cache

I guess you already saw since you were part of the thread, but this post and
the ones that followed it may be of interest in terms of describing the
known situations where the system can't automatically know that something
has changed:

https://lists.yoctoproject.org/pipermail/yocto/2013-August/018022.html

> One more thing puzzles me. The original bbappend, which creates a service
> unit, contained these six lines:
> 
>     FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>     PRINC := "${@int(PRINC) + 2}"
>     inherit systemd
>     SRC_URI += "file://xinput-calibrator.service"
>     SYSTEMD_PACKAGES = "${PN}-systemd"
>     SYSTEMD_SERVICE = "${PN}.service"
> 
> Since I only wanted to replace the file, I thought it should be sufficient
> to put the following in my bbappend:
> 
>     FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>     PRINC := "${@int(PRINC) + 1}"
> 
> It didn't work, though. I blindly copied all six lines into my bbappend,
> and it worked. I suspect the systemd lines were necessary, though. I'm
> wondering why adding another copy of the string
> "file://xinput-calibrator.service" to SRC_URI is necessary. 

If xinput-calibrator.service genuinely is in the recipe's original SRC_URI
value, It isn't. However there is a difference between the FILESEXTRAPATHS
lines in the two instances - one points to a subdirectory called "files" and
the other to a directory called "${PN}" (substituting the recipe name in
there, of course). That might account for it going from not working to
working depending on where you put the service file next to your bbappend.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

