Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f43.google.com (mail-pb0-f43.google.com
	[209.85.160.43]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 01A23E00429
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2013 23:21:34 -0800 (PST)
Received: by mail-pb0-f43.google.com with SMTP id md12so1589348pbc.30
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2013 23:21:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:mail-followup-to
	:references:mime-version:content-type:content-disposition
	:in-reply-to:user-agent;
	bh=weOTRod9qznPS3d6YG8JBpGDb2vW3gHdK8z74jlYO3c=;
	b=AIkHpfE3BEIrH38eimV/X8acfJO3p+m7eGFO8RszxME3zCtHikKbQ87kwdPjnTrOjD
	7cJy5jLgyGhm8UxBbxERNlu+Ag6o5xD1D3Wt/OPsZd0QGCfga8+ALrc7bmRWdLlk2+4/
	MmlsRqyIBe5uT17sJQaY525sM/AuDf24ggPDTqC+45vp2Swmo3ExJOuEpOoBbTDwQNEq
	esB/shmXyJPFCXH4rrrVBF27cz0zy9hjexgs3WpkrKHxr/kCWo4QUU92vaHILHKpbgD1
	W8JeXAYWWFtGDwSHL/B2temmjEp0mk1TlQB2FlX0KOznVP+XJZPH+J8Bs7p++Iph6kT1
	2p1Q==
X-Received: by 10.68.195.197 with SMTP id ig5mr13022336pbc.178.1362122494758; 
	Thu, 28 Feb 2013 23:21:34 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id
	dx17sm12121007pac.17.2013.02.28.23.21.33
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 28 Feb 2013 23:21:33 -0800 (PST)
Date: Thu, 28 Feb 2013 23:21:23 -0800
From: Khem Raj <raj.khem@gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Message-ID: <20130301072122.GC2908@sakrah.homelinux.org>
Mail-Followup-To: "Paul D. DeRocco" <pderocco@ix.netcom.com>,
	yocto@yoctoproject.org
References: <D5D8A4D8397140AB98A5568853482737@PAULD>
	<70CC66F5C30A414DADDA6973E4CA391A893FEA@039-SN1MPN1-001.039d.mgd.msft.net>
	<334AC94BF95946418CA0230883C97349@PAULD>
MIME-Version: 1.0
In-Reply-To: <334AC94BF95946418CA0230883C97349@PAULD>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 01 Mar 2013 07:21:35 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (28/02/13 22:20), Paul D. DeRocco wrote:
> > From: McClintock Matthew-B29882
> > 
> > Not sure about the Intel BSPs but they may contain just their layer
> > and/or poky + meta-intel. It does not really matter where meta-intel
> > lives on your file system though. It can be referenced directly in
> > your 'conf/bblayers.conf' file in your build folder.
> > 
> > > Then, the directions say to edit bblayers.conf, and 
> > possibly local.conf. The
> > > only place I find these files are in my yocto/build/conf 
> > directory, but I
> > > would think that doing a build for a different machine 
> > would involve setting
> > > up a different build directory, e.g., yocto/buildatom. Is 
> > that correct? But
> > > isn't the build directory set up by running the 
> > oe-init-build-env script,
> > > which comes afterwards in the instructions?
> > 
> > Different build folders are not an explicit requirement for different
> > MACHINES (or in some cases unless there are some conflicts that are
> > unknown diferrent distros - don't go out of your way to do this
> > though). In fact if two MACHINES are the same ARCH you can reuse
> > components between and save a lot of build time. That or use
> > sstate-cache between two build folders which won't be quite as fast
> > but almost...
> > 
> > > Also, those instructions imply that I should run that script in the
> > > yocto/poky directory, since that's where the script is 
> > located, but the
> > > meta-intel is "upstairs" from that, which seems odd.
> > 
> > Should not matter, you add meta-intel to 'conf/bblayers/conf' later.
> > Unless this is possibly done for you via script - but I don't think
> > any scripts in poky do this for you. Either way you can checkup on
> > things layer to make sure the require layers are included.
> > 
> > > I'm confused by all this, but more to the point, I'm afraid 
> > of doing the
> > > wrong thing, and clobbering the Gumstix stuff, which took a 
> > day and a half
> > > to build. I expect the Atom build will also take a long 
> > time, but I don't
> > > want to have to do it two more times.
> > 
> > You are mixing gumstix and poky distros in one build folder? That
> > could work as mentioned above, but it might encounter issues. I don't
> > think it's regularly tested though so YMMV. My suggest would be to
> > share the sstate-cache between the two build environments. So if one
> > package has already been built it's reused (and the signatures match -
> > which just means it's deemed compatible between machines)
> > 
> > It's also quite likely you won't save much build time since gumstix
> > and poky will be using different ARCHs and all the recipes will be
> > rebuilt anyways. Again not really that familiar with gumstix so some
> > statements above could be a bit off.
> 
> That's what I thought. You can't really share much of anything between a
> Gumstix and an Atom, so I'm using a separate build tree.


well whole native recipes will be shared that a lot of build time saved

> 
> But it's not working. The instructions tell me to set MACHINE to
> "cedartrail" or "cedartrail-nopvr" in local.conf, so I chose the latter
> since I'm doing a GUI-less system. And then it tells me to run "bitbake
> core-image-sato" which seems strange, since "sato" refers to a desktop
> manager or something graphical. After a lot of DEBUG output, I get the
> following error message:
> 
>     ERROR:  OE-core's config sanity checker detected a potential
>         misconfiguration.
>         Either fix the cause of this error or at your own risk disable the
>         checker (see sanity.conf).
>         Following is the list of potential problems / advisories:
>         Please set a valid MACHINE in your local.conf or environment
> 

you  simply add the right layer to conf/bblayers.conf

BBLAYERS = "....
  ${TOPDIR}/sources/meta-intel/meta-cedartrail
  ...
  "
and then 

MACHINE=cedartrail-nopvr bitbake core-image-minimal 
e.g. will build minimal image

> Also, I notice among the debug output, early on:
> 
>     DEBUG: CONF file 'conf/machine/cedartrail-nopvr.conf' not found
> 
> even though that file exists in poky/meta-intel.
> 
> Is the problem that I'm making the wrong image for a GUI-less system? Where
> are targets like "core-image-sato" defined? I don't see any file of that
> name, with a .bb or any other extension, other than a prebuilt image.
> 
> I get the feeling I'm missing something.
> 
> By the way, I'm using the poky tree that was downloaded as a result of my
> Gumstix build, except for the meta-intel subdirectory. Is that wrong?
> 
> -- 
> 
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
-Khem

