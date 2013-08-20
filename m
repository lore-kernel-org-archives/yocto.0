Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-galgo.atl.sa.earthlink.net
	(elasmtp-galgo.atl.sa.earthlink.net [209.86.89.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9515E003E2
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2013 23:40:09 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=fH4y3Dzs97ziGlUZNn5a2Ib5TzDIThsBPW0urWX3EhkvTuPdaQuPKY5mj+ud2NgM;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-galgo.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1VBfbs-0006nw-CR; Tue, 20 Aug 2013 02:40:08 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Chris Larson'" <clarson@kergoth.com>
References: <A3D4719B266E4F519452EFCF893FEF4A@PAULD>
	<CABcZANkcqBYLH+X07-o5Pn5=C8offw8eYr3e_FOtEqZxHu+s0Q@mail.gmail.com>
In-Reply-To: <CABcZANkcqBYLH+X07-o5Pn5=C8offw8eYr3e_FOtEqZxHu+s0Q@mail.gmail.com>
Date: Mon, 19 Aug 2013 23:40:08 -0700
Message-ID: <3B6DFE55BDC846AB8432B5A9E188EA98@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6dNR3aCIfpXZuQTIycZZ+23hE3RAANz4RQ
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606888a3e913afc7d71454a15635ab8f1b9a2350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: Trying to tweak a build with a setup.cfg file
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
X-List-Received-Date: Tue, 20 Aug 2013 06:40:11 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Well, I hate to say it, but this didn't work. The setup.cfg file ended up
in the same place, even though I did a clean and a cleansstate on the
python-matplotlib recipe.

The log shows it searching for setup.cfg, so it is definitely separating
the "subdir=" option from the name. And it's not complaining about not
finding it. So it's acting like it's ignoring the option.

Google didn't turn up any official documentation on this option, but
showed a modest amount of discussion of it, along with a 2009 patch to
base.bbclass which implements the creation and switching to of the new
directory:

<http://lists.openembedded.org/pipermail/openembedded-commits/2009-January
/097189.html>

Yet this doesn't look remotely like my base.bbclass, which is much shorter
than 725 lines, and doesn't contain any code like this. In the intervening
years, this may well have been moved into some other module, but it's
acting like there is a generic routine that parses name=value options into
a list, but doesn't give you an error if nothing uses the option, and
nothing is using it.

This is a Gumstix build based on the Danny branch, by the way, which isn't
the latest and greatest, but it's not four years old either.

So I decided to try what I mentioned in the last message, which is simply
to mimic the fragment of the directory tree in my metadata, creating a
file called python-matplotlib/matplotlib-1.1.0/setup.cfg, and putting this
in the recipe:

    SRC_URI += "file://matplotlib-${PV}/setup.cfg"

It worked.

I suspect what happened is that support for the "subdir=" option on local
files was added in 2009, then someone thought, why have this obscure
syntax? Simpler to impose the directory structure on the local files in
the metadata, allow file:// to refer to any pathname, not just a filename,
and have the file copy routine create any necessary subdirectories in the
build tree. So they took that option out. Just a guess.

That said, although the setup.cfg file did cause the necessary module to
be compiled, the compile failed for unrelated reasons. If it's not one
thing, it's another. And I rather doubt anyone around here has ever used
Yocto to build the GDK backend for matplotlib, so I don't know who to ask
about this.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
  

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org 
> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Chris Larson
> Sent: Monday, August 19, 2013 4:37 PM
> To: Paul D. DeRocco
> Cc: yocto
> Subject: Re: [yocto] Trying to tweak a build with a setup.cfg file
> 
> 
> On Mon, Aug 19, 2013 at 3:52 PM, Paul D. DeRocco 
> <pderocco@ix.netcom.com> wrote:
> 
> 
> 	I'm trying to build python-matplotlib from the Danny branch of
> 	meta-openembedded/meta-oe/recipes-devtools/python. I 
> need to add a
> 	setup.cfg file to tweak the build, but I don't know how 
> to get it into the
> 	right place.
> 	
> 	I put the setup.cfg into a python-matplotlib 
> subdirectory in my recipes
> 	directory, and added a python-matplotlib_1.1.0.bbappend 
> file which
> 	contains the following lines:
> 	
> 	FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> 	PRINC := "${@int(PRINC) + 2}"
> 	SRC_URI += "file://setup.cfg"
> 	
> 	The file is being copied into
> 	
> .../work/armv7a-vfp-neon-poky-linux-gnueabi/python-matplotlib-1.1.0-r3
> 	rather than
> 	
> .../work/armv7a-vfp-neon-poky-linux-gnueabi/python-matplotlib-
> 1.1.0-r3/mat
> 	plotlib-1.1.0 where it needs to be. How do I push it 
> down a level?
> 
> 
> By default, anything in SRC_URI goes into ${WORKDIR}, not 
> ${S}. You should be able to change this like so:
> 
>     SRC_URI += "file://setup.cfg;subdir=matplotlib-${PV}"
> -- 
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics 
> 


