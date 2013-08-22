Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-kukur.atl.sa.earthlink.net
	(elasmtp-kukur.atl.sa.earthlink.net [209.86.89.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C65EE00406
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 10:58:54 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=Vr4TPgORBuCrZYBYQIOI/Ac7MnxmF1WltFnIs2IIFfUAZuHt4SvnHTDpXVFsup/A;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-kukur.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1VCZ9p-0002Nu-Hi; Thu, 22 Aug 2013 13:58:53 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Paul Eggleton'" <paul.eggleton@linux.intel.com>
References: <587F23315DEC485E8C9E59B4F24916CC@PAULD>
	<2042870.WHnUqHPfUc@helios>
In-Reply-To: <2042870.WHnUqHPfUc@helios>
Date: Thu, 22 Aug 2013 10:58:48 -0700
Message-ID: <2E350B209EEA4C3F8177BE64653DC4F3@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac6fIltQqWasMpWGQBmqZAJWW1OyowAOw8WA
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688ab1e9d27a13ed24a6bce70f00cce3b00350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
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
X-List-Received-Date: Thu, 22 Aug 2013 17:58:55 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Paul Eggleton
> 
> > On Friday 16 August 2013 16:22:00 Paul D. DeRocco wrote:
> > In meta-oe/recipes-graphics/xinput-calibrator (Danny 
> > branch, currently
> > used by Gumstix), there's a recipe called 
> > xinput-calibrator-git.bb, which
> > installs a script for running a touchscreen calibration app 
> > if not already calibrated.
> > 
> > In
> > meta-openembedded/meta-systemd/meta-oe/recipes-graphics/xinput
> > -calibrator,
> > there's a bbappend for this recipe, which declares a local 
> > file called
> > xinput-calibrator.service, which is supposed to run the 
> > above script on
> > startup. It inherits the systemd bbclass, which I assume 
> > knows how to
> > install this service file automagically, since there's no explicit
> > do_install copying the file anywhere.
> 
> The systemd.bbclass we now have in OE-Core (as of dylan) does 
> not handle this 
> automatically. The old one in meta-systemd does appear to though.
> 
> > The trouble is, on my Gumstix, the service fails because it needs a
> > DISPLAY environment variable to tell it what display to calibrate. I
> > figured the simplest thing to do would be to add an 
> > Environment=DISPLAY=:0
> > line to the service unit file.
> 
> FWIW, when xinput-calibrator was moved over to OE-Core it was 
> determined that 
> this shouldn't even be started as a service by systemd, but 
> instead launched 
> using Xsession.d. You may have better results if you bring in 
> the recipe from 
> OE-Core master and use that instead.

Since I'm not running I GUI, but needed an X session, I created a systemd
unit to start a dummy X session, using "sleep" as the dummy client. Then,
I can scribble on the screen from my python scripts run from the root
command line. So I solved it by having the xinput-calibrator service run
after my X session starts. I'll look at putting it in Xsession.d instead,
and see if that is cleaner.

> > But I'd rather just provide my own
> > version of the file, and use another .bbappend to prepend its file
> > location to FILESEXTRAPATHS, overriding the one in the 
> > systemd .bbappend file.
> > 
> > So I tried that, just putting the following two lines into my own
> > .bbappend:
> > 
> >     FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> >     PRINC := "${@int(PRINC) + 1}"
> > 
> > and of course putting the tweaked service file into my 
> > files subdirectory.

<snip>

> > I read somewhere that stacked bbappends are handled in the 
> > order of layer
> > priority. Mine is 5, the meta-systemd layer is 7. I don't 
> > know which is
> > "higher", or if one wants a higher or lower priority in 
> > order to be the last one to prepend to the path. 
> 
> They will be applied in ascending order, so anything in the 
> bbappend from a 
> layer with a higher layer priority number takes precedence. 

After I did a clean and a clean_sstate, the dual bbappends worked as
expected.

I'm learning from experience to clean things manually, to avoid problems,
but sometimes I'm just waving a dead chicken over it. I don't really know
what these things do, or in what situations they should or shouldn't be
necessary. For instance, I've never found an explanation of what shared
state really is, with sufficient specificity that I can predict, "Oh, for
that I need to clean the sstate, not just the build tree." Second, it
seems like clean_sstate does a clean, but I'm not sure clean doesn't do
something else that clean_sstate doesn't do.

One more thing puzzles me. The original bbappend, which creates a service
unit, contained these six lines:

    FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
    PRINC := "${@int(PRINC) + 2}"
    inherit systemd
    SRC_URI += "file://xinput-calibrator.service"
    SYSTEMD_PACKAGES = "${PN}-systemd"
    SYSTEMD_SERVICE = "${PN}.service"

Since I only wanted to replace the file, I thought it should be sufficient
to put the following in my bbappend:

    FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
    PRINC := "${@int(PRINC) + 1}"

It didn't work, though. I blindly copied all six lines into my bbappend,
and it worked. I suspect the systemd lines were necessary, though. I'm
wondering why adding another copy of the string
"file://xinput-calibrator.service" to SRC_URI is necessary. Or am I
imagining things? I do that sometimes.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


