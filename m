Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-scoter.atl.sa.earthlink.net
	(elasmtp-scoter.atl.sa.earthlink.net [209.86.89.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27917E00348
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2013 22:20:44 -0800 (PST)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=rF96a7jXMOVCNpX2r6gnN71YXIs8iWRCE+D77w0T+WbYjdIW3wIAevOjF++ZlS1a;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-scoter.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1UBJKk-0000Ce-Nm
	for yocto@yoctoproject.org; Fri, 01 Mar 2013 01:20:43 -0500
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
References: <D5D8A4D8397140AB98A5568853482737@PAULD>
	<70CC66F5C30A414DADDA6973E4CA391A893FEA@039-SN1MPN1-001.039d.mgd.msft.net>
In-Reply-To: <70CC66F5C30A414DADDA6973E4CA391A893FEA@039-SN1MPN1-001.039d.mgd.msft.net>
Date: Thu, 28 Feb 2013 22:20:20 -0800
Message-ID: <334AC94BF95946418CA0230883C97349@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AQHOFjRpJMxVZDuwe0SPIz2Q/qtEOJiQQWXg
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068819c41639ab60c8ac3bda6b931771de16350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Re: Newbie trying to get started
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 01 Mar 2013 06:20:44 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: McClintock Matthew-B29882
> 
> Not sure about the Intel BSPs but they may contain just their layer
> and/or poky + meta-intel. It does not really matter where meta-intel
> lives on your file system though. It can be referenced directly in
> your 'conf/bblayers.conf' file in your build folder.
> 
> > Then, the directions say to edit bblayers.conf, and 
> possibly local.conf. The
> > only place I find these files are in my yocto/build/conf 
> directory, but I
> > would think that doing a build for a different machine 
> would involve setting
> > up a different build directory, e.g., yocto/buildatom. Is 
> that correct? But
> > isn't the build directory set up by running the 
> oe-init-build-env script,
> > which comes afterwards in the instructions?
> 
> Different build folders are not an explicit requirement for different
> MACHINES (or in some cases unless there are some conflicts that are
> unknown diferrent distros - don't go out of your way to do this
> though). In fact if two MACHINES are the same ARCH you can reuse
> components between and save a lot of build time. That or use
> sstate-cache between two build folders which won't be quite as fast
> but almost...
> 
> > Also, those instructions imply that I should run that script in the
> > yocto/poky directory, since that's where the script is 
> located, but the
> > meta-intel is "upstairs" from that, which seems odd.
> 
> Should not matter, you add meta-intel to 'conf/bblayers/conf' later.
> Unless this is possibly done for you via script - but I don't think
> any scripts in poky do this for you. Either way you can checkup on
> things layer to make sure the require layers are included.
> 
> > I'm confused by all this, but more to the point, I'm afraid 
> of doing the
> > wrong thing, and clobbering the Gumstix stuff, which took a 
> day and a half
> > to build. I expect the Atom build will also take a long 
> time, but I don't
> > want to have to do it two more times.
> 
> You are mixing gumstix and poky distros in one build folder? That
> could work as mentioned above, but it might encounter issues. I don't
> think it's regularly tested though so YMMV. My suggest would be to
> share the sstate-cache between the two build environments. So if one
> package has already been built it's reused (and the signatures match -
> which just means it's deemed compatible between machines)
> 
> It's also quite likely you won't save much build time since gumstix
> and poky will be using different ARCHs and all the recipes will be
> rebuilt anyways. Again not really that familiar with gumstix so some
> statements above could be a bit off.

That's what I thought. You can't really share much of anything between a
Gumstix and an Atom, so I'm using a separate build tree.

But it's not working. The instructions tell me to set MACHINE to
"cedartrail" or "cedartrail-nopvr" in local.conf, so I chose the latter
since I'm doing a GUI-less system. And then it tells me to run "bitbake
core-image-sato" which seems strange, since "sato" refers to a desktop
manager or something graphical. After a lot of DEBUG output, I get the
following error message:

    ERROR:  OE-core's config sanity checker detected a potential
        misconfiguration.
        Either fix the cause of this error or at your own risk disable the
        checker (see sanity.conf).
        Following is the list of potential problems / advisories:
        Please set a valid MACHINE in your local.conf or environment

Also, I notice among the debug output, early on:

    DEBUG: CONF file 'conf/machine/cedartrail-nopvr.conf' not found

even though that file exists in poky/meta-intel.

Is the problem that I'm making the wrong image for a GUI-less system? Where
are targets like "core-image-sato" defined? I don't see any file of that
name, with a .bb or any other extension, other than a prebuilt image.

I get the feeling I'm missing something.

By the way, I'm using the poky tree that was downloaded as a result of my
Gumstix build, except for the meta-intel subdirectory. Is that wrong?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


