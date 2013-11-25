Return-Path: <rajanpatha34@gmail.com>
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50569E0051B
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 09:16:00 -0800 (PST)
Received: by mail-pd0-f180.google.com with SMTP id q10so5896884pdj.11
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 09:16:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=jp9oj/gOjX0vLC11FQlKQZtgpQoqe1hpawP76e9Bi54=;
	b=xO5YgdV4JJVrUqbwK9ZmsYFR/uqlLg2Tule7cDUQLUHGM1nZDc6aYevQjjdM29kO6g
	egNjFyK27Yx1Q/wZ4NOG6I0KNGRSbV+konXfDF5iLuQ1blcQrRtPgv92k4qjT6yta6hM
	+htR9KGvPJ14s2s2EpJTj098pBOBUMOHJO3TYN4ujso+w3SyCosguVP1gJMZYCOIyFVR
	6DgyH1fmwULxdEBm9br+ySt/R69dWNgNx46zS1uCfJsjsqkFW16I4CtDLWYJQFftM5id
	jnn5HUdJHl4NGZlWIu+6DLhlyw9QhZD3R4F42Vtw9D0BmV8fofEv/9vFhRBrNAjiF+Eu
	PBgg==
MIME-Version: 1.0
X-Received: by 10.66.149.231 with SMTP id ud7mr29066196pab.8.1385399759342;
	Mon, 25 Nov 2013 09:15:59 -0800 (PST)
Received: by 10.68.146.106 with HTTP; Mon, 25 Nov 2013 09:15:59 -0800 (PST)
In-Reply-To: <mailman.565.1385399227.26702.yocto@yoctoproject.org>
References: <mailman.565.1385399227.26702.yocto@yoctoproject.org>
Date: Mon, 25 Nov 2013 22:45:59 +0530
Message-ID: <CACXtFMjv-PPgOSXUQbvG-oG7FPY-PGxMvJV2qvdn2fY=YLCFzQ@mail.gmail.com>
From: rajan pathak <rajanpatha34@gmail.com>
To: yocto@yoctoproject.org, bevenson@melinkcorp.com
Subject: Re: yocto Digest, Vol 38, Issue 92
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
X-List-Received-Date: Mon, 25 Nov 2013 17:16:00 -0000
Content-Type: multipart/alternative; boundary=047d7b6d95d08712e404ec03840f

--047d7b6d95d08712e404ec03840f
Content-Type: text/plain; charset=ISO-8859-1

I am not sure but any change to Linux kernel repo can be reflected by
modifying the SRCREV variable
in Kernel recipe file.

Thanks
Rajan


On Mon, Nov 25, 2013 at 10:37 PM, <yocto-request@yoctoproject.org> wrote:

> Send yocto mailing list submissions to
>         yocto@yoctoproject.org
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         https://lists.yoctoproject.org/listinfo/yocto
> or, via email, send a message with subject or body 'help' to
>         yocto-request@yoctoproject.org
>
> You can reach the person managing the list at
>         yocto-owner@yoctoproject.org
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of yocto digest..."
>
>
> Today's Topics:
>
>    1. Unable to upgrade kernel; package for kernel name includes
>       version (Bryan Evenson)
>    2. Re: ksize.py and dirsize.py scripts not in dora tarball, is
>       that deliberate? (Rifenbark, Scott M)
>    3. Re: RFC Autobuilder Naming (Paul Eggleton)
>    4. Re: unbootable image produced with PACKAGE_CLASSES ?=
>       "package_ipk", /etc missing (Todd Stellanova)
>    5. FW: stupid question about post-installation scripts
>       (Rifenbark, Scott M)
>    6. Re: stupid question about post-installation scripts
>       (Bryan Evenson)
>    7. Re: Unable to upgrade kernel; package for kernel name
>       includes version (Bryan Evenson)
>    8. Re: FW: stupid question about post-installation scripts
>       (Paul Eggleton)
>    9. Re: FW: stupid question about post-installation scripts
>       (Paul Eggleton)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Mon, 25 Nov 2013 09:45:51 -0500
> From: Bryan Evenson <bevenson@melinkcorp.com>
> To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: [yocto] Unable to upgrade kernel;      package for kernel name
>         includes version
> Message-ID:
>
> <91586D499ADFD74FBCFB8425266A5DE40153C1156010@pluto.melinkcorp.local>
> Content-Type: text/plain; charset="us-ascii"
>
> I'm on poky/dylan-9.0.1 I am upgrading the Linux kernel for my device's
> image from a custom 3.6.9 kernel to a custom 3.10 kernel.  I'm using this
> layer: https://github.com/evensonbryan/meta-atmel as a basis for the
> custom kernel recipe (there is a recipe for the 3.10 kernel that I haven't
> yet deployed to Github in case anyone is wondering).  I'm attempting to do
> a firmware upgrade with my built packages (using opkg for package
> management) and I've discovered an issue with the kernel naming.  On my
> pre-upgraded device, a list of installed packages includes:
>
> kernel-devicetree
> kernel-image-3.6.9-yocto-standard
>
> So when I build my updated Linux kernel, the kernel image is now named
> "kernel-image-3.10.0-yocto-standard".  So when I attempt to do an upgrade,
> the kernel-devicetree is upgraded just fine but the kernel image is not;
> kernel-image-3.10.0-yocto-standard is not the same package as
> kernel-image-3.6.9-yocto-standard, so opkg does not see this as an upgrade.
>
> How do I force the packaging system to recognize that the new kernel is an
> upgrade of the old kernel, even though the packages have different names?
>  And for the future, how do I change the package name so that it doesn't
> include the version?
>
> Thanks,
> Bryan
>
>
>
>
>
> ------------------------------
>
> Message: 2
> Date: Mon, 25 Nov 2013 14:52:00 +0000
> From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
> To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
>         <yocto@yoctoproject.org>
> Subject: Re: [yocto] ksize.py and dirsize.py scripts not in dora
>         tarball, is that deliberate?
> Message-ID:
>         <
> 41DEA4B02DBDEF40A0F3B6D0DDB1237983F51186@ORSMSX101.amr.corp.intel.com>
>
> Content-Type: text/plain; charset="us-ascii"
>
> Hmm... did these not get included in poky during the release?
>
> Scott
>
> >-----Original Message-----
> >From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
> >Sent: Saturday, November 23, 2013 2:59 AM
> >To: Yocto discussion list
> >Subject: [yocto] ksize.py and dirsize.py scripts not in dora tarball, is
> that
> >deliberate?
> >
> >
> >  current dev manual:
> >
> >http://www.yoctoproject.org/docs/latest/dev-manual/dev-
> >manual.html#understand-what-gives-your-image-size
> >
> >claims:
> >
> >"To help you see where you currently are with kernel and root filesystem
> >sizes, you can use two tools found in the Source Directory in the scripts
> >directory:
> >
> >ksize.py: Reports component sizes for the kernel build objects.
> >
> >dirsize.py: Reports component sizes for the root filesystem."
> >
> >  however, the current dora tarball doesn't contain these scripts, while
> oe-
> >core contains them more specifically under the scripts/tiny/ subdirectory.
> >thoughts?
> >
> >rday
> >
> >--
> >
> >===========================================================
> >=============
> >Robert P. J. Day                                 Ottawa, Ontario, CANADA
> >                        http://crashcourse.ca
> >
> >Twitter:                                       http://twitter.com/rpjday
> >LinkedIn:                               http://ca.linkedin.com/in/rpjday
> >===========================================================
> >=============
> >_______________________________________________
> >yocto mailing list
> >yocto@yoctoproject.org
> >https://lists.yoctoproject.org/listinfo/yocto
>
>
> ------------------------------
>
> Message: 3
> Date: Mon, 25 Nov 2013 15:01:29 +0000
> From: Paul Eggleton <paul.eggleton@linux.intel.com>
> To: Michael Halstead <michael@yoctoproject.org>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] RFC Autobuilder Naming
> Message-ID: <6760837.T0hJxS54r8@helios>
> Content-Type: text/plain; charset="us-ascii"
>
> Hi Michael,
>
> On Friday 22 November 2013 15:43:58 Michael Halstead wrote:
> > Currently all builders are simply named ab00-ab13 based on when we
> > acquired them. The name doesn't change except for ab01 which has been
> > reused on new hardware. As we increase the number of builders and make
> > the build process more flexible this becomes inconvenient. I'd like to
> > switch to embedding useful information in the name.
> >
> > Going forward as I refresh builders I'd like to name them with their
> > distro and location.
> >
> > For example at OSL:
> >
> > fedora19.osl.yoctoproject.org
> > fedora20.osl.yoctoproject.org
> > opensuse131.osl.yoctoproject.org
> > ubuntu1310.osl.yoctoproject.org
> > etc.
> >
> > And if we added a build clusters in the EasyStreet datacenter in
> Portland:
> >
> > centos64.pdx.yoctoproject.org
> > debian7.pdx.yoctoproject.org
> > etc.
> >
> > This allows for additional build clusters to be added and makes the
> > distro clear to anyone viewing the logs. The current available build
> > slaves can be found on the relevant cluster's buildbot interface
> > (http://autobuilder.yoctoproject.org/main/buildslaves) so as names
> > change there is an easy place to look them up.
> >
> > Comments?
>
> I guess this works fine until you want to have two builders with the same
> distro. Maybe we plan not to do that anymore...?
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>
>
> ------------------------------
>
> Message: 4
> Date: Mon, 25 Nov 2013 07:03:34 -0800
> From: Todd Stellanova <tstellanova@gmail.com>
> To: Paul Eggleton <paul.eggleton@linux.intel.com>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: Re: [yocto] unbootable image produced with PACKAGE_CLASSES ?=
>         "package_ipk", /etc missing
> Message-ID: <FDC4F28A-69CB-406F-95EA-0A5D2AB800BC@gmail.com>
> Content-Type: text/plain;       charset=us-ascii
>
> Thanks for the ideas. I'll try creating a new build folder. If that still
> shows the problem, I'm thinking this has something to do with the fact that
> I'm running the build inside a vm (inside an Ubuntu vm running on a Mac).
> It looks like the build is using debugfs...maybe it's running out of ram at
> some point and not obtaining more in the vm properly?
>
> > On Nov 25, 2013, at 5:21 AM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
> >
> > Hi Nicolas / Todd,
> >
> >> On Monday 25 November 2013 11:31:42 Nicolas Dechesne wrote:
> >> On Sun, Nov 24, 2013 at 3:51 AM, Todd Stellanova
> >> <tstellanova@gmail.com>wrote:
> >>> It appears that copying the files to the ext3 / sdcard image is
> failing in
> >>> *populate-extfs.sh*
> >>> I see a series of these errors:
> >>>
> >>> *copy_file: Could not allocate block in ext2 filesystem*
> >>>
> >>> Any idea what might cause this?  I've verified that the initial .tar
> >>> archive and the bz2 contain the right files.
> >>
> >> can you try to create a new <build> folder (do not remove the current
> one
> >> for now) and reuse the downloads and sstate folder? i am wondering if
> there
> >> is a bug when trying to change PACKAGE_CLASSES in an existing <build>
> >> folder.
> >
> > I do this not infrequently and never hit a problem like this, so I doubt
> this
> > is the case.
> >
> > Either there is a problem in how the filesystem is being set up (block
> sizes,
> > etc.) or there is some kind of corruption occurring.
> >
> > Cheers,
> > Paul
> >
> > --
> >
> > Paul Eggleton
> > Intel Open Source Technology Centre
>
>
> ------------------------------
>
> Message: 5
> Date: Mon, 25 Nov 2013 15:21:41 +0000
> From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
> To: "Robert P. J. Day" <rpjday@crashcourse.ca>
> Cc: Yocto discussion list <yocto@yoctoproject.org>
> Subject: [yocto] FW: stupid question about post-installation scripts
> Message-ID:
>         <
> 41DEA4B02DBDEF40A0F3B6D0DDB1237983F511F7@ORSMSX101.amr.corp.intel.com>
>
> Content-Type: text/plain; charset="us-ascii"
>
> Robert,
>
> I don't know... I am forwarding to the discussion list.
>
> Scott
>
> >-----Original Message-----
> >From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> >Sent: Sunday, November 24, 2013 2:37 AM
> >To: Rifenbark, Scott M
> >Subject: stupid question about post-installation scripts
> >
> >
> >  when one defines pkg_postinst scripts, are those scripts invoked at
> >*both* root filesystem creation time and first boot time? so that one
> needs to
> >manually check the value of ${D} to decide whether to run them, say, at
> first
> >boot time?
> >
> >  i'm reading the section here:
> >
> >http://www.yoctoproject.org/docs/latest/dev-manual/dev-
> >manual.html#post-installation-scripts
> >
> >and i know i've seen elsewhere scripts explicitly checking the value of
> the ${D}
> >prefix to determine when they're being invoked. it *seems* like that's
> what's
> >happening, but if that's the case, it can probably be said much more
> clearly.
> >
> >rday
>
>
> ------------------------------
>
> Message: 6
> Date: Mon, 25 Nov 2013 10:56:17 -0500
> From: Bryan Evenson <bevenson@melinkcorp.com>
> To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, "Robert P. J.
>         Day"    <rpjday@crashcourse.ca>
> Cc: Yocto discussion list <yocto@yoctoproject.org>
> Subject: Re: [yocto] stupid question about post-installation scripts
> Message-ID:
>
> <91586D499ADFD74FBCFB8425266A5DE40153C1156096@pluto.melinkcorp.local>
> Content-Type: text/plain; charset="us-ascii"
>
> Robert,
>
> That's how it works in my experience.  I have some packages for my system
> that have a postinst piece that needs to run during image creation, and
> other pieces that need to run only on a package upgrade.  By checking
> whether "x${D}" = "${D}", I am filtering out whether the postinst script is
> running during image creation or on the actual hardware.  Been working
> great so far.
>
> -Bryan
>
> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org [mailto:yocto-
> > bounces@yoctoproject.org] On Behalf Of Rifenbark, Scott M
> > Sent: Monday, November 25, 2013 10:22 AM
> > To: Robert P. J. Day
> > Cc: Yocto discussion list
> > Subject: [yocto] FW: stupid question about post-installation scripts
> >
> > Robert,
> >
> > I don't know... I am forwarding to the discussion list.
> >
> > Scott
> >
> > >-----Original Message-----
> > >From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> > >Sent: Sunday, November 24, 2013 2:37 AM
> > >To: Rifenbark, Scott M
> > >Subject: stupid question about post-installation scripts
> > >
> > >
> > >  when one defines pkg_postinst scripts, are those scripts invoked at
> > >*both* root filesystem creation time and first boot time? so that one
> > >needs to manually check the value of ${D} to decide whether to run
> > >them, say, at first boot time?
> > >
> > >  i'm reading the section here:
> > >
> > >http://www.yoctoproject.org/docs/latest/dev-manual/dev-
> > >manual.html#post-installation-scripts
> > >
> > >and i know i've seen elsewhere scripts explicitly checking the value
> > of
> > >the ${D} prefix to determine when they're being invoked. it *seems*
> > >like that's what's happening, but if that's the case, it can probably
> > be said much more clearly.
> > >
> > >rday
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
> ------------------------------
>
> Message: 7
> Date: Mon, 25 Nov 2013 11:35:47 -0500
> From: Bryan Evenson <bevenson@melinkcorp.com>
> To: Bryan Evenson <bevenson@melinkcorp.com>, "yocto@yoctoproject.org"
>         <yocto@yoctoproject.org>
> Subject: Re: [yocto] Unable to upgrade kernel; package for kernel name
>         includes version
> Message-ID:
>
> <91586D499ADFD74FBCFB8425266A5DE40153C11560E0@pluto.melinkcorp.local>
> Content-Type: text/plain; charset="us-ascii"
>
> All,
>
> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org [mailto:yocto-
> > bounces@yoctoproject.org] On Behalf Of Bryan Evenson
> > Sent: Monday, November 25, 2013 9:46 AM
> > To: yocto@yoctoproject.org
> > Subject: [yocto] Unable to upgrade kernel; package for kernel name
> > includes version
> >
> > I'm on poky/dylan-9.0.1 I am upgrading the Linux kernel for my device's
> > image from a custom 3.6.9 kernel to a custom 3.10 kernel.  I'm using
> > this layer: https://github.com/evensonbryan/meta-atmel as a basis for
> > the custom kernel recipe (there is a recipe for the 3.10 kernel that I
> > haven't yet deployed to Github in case anyone is wondering).  I'm
> > attempting to do a firmware upgrade with my built packages (using opkg
> > for package management) and I've discovered an issue with the kernel
> > naming.  On my pre-upgraded device, a list of installed packages
> > includes:
> >
> > kernel-devicetree
> > kernel-image-3.6.9-yocto-standard
> >
> > So when I build my updated Linux kernel, the kernel image is now named
> > "kernel-image-3.10.0-yocto-standard".  So when I attempt to do an
> > upgrade, the kernel-devicetree is upgraded just fine but the kernel
> > image is not; kernel-image-3.10.0-yocto-standard is not the same
> > package as kernel-image-3.6.9-yocto-standard, so opkg does not see this
> > as an upgrade.
> >
> > How do I force the packaging system to recognize that the new kernel is
> > an upgrade of the old kernel, even though the packages have different
> > names?  And for the future, how do I change the package name so that it
> > doesn't include the version?
>
> I have a partial solution, but I'm still curious as to if there is a
> cleaner method than what I've found so far.  I have a package that is an
> image version so that way I can easily tell the overall distribution
> version.  In that package, I added the line:
>
> RDEPENDS_${PN} = "kernel-image (>= 3.10)"
>
> When I did this, upgrading my image version package caused
> kernel-image-3.10.0-yocto-standard to be installed.  However, opkg still
> claims that kernel-image-3.6.9-yocto-standard is still installed; it'd be
> nice to remove this package also.  Would adding:
>
> RCONFLICTS_${PN} = "kernel-image-3.6.9-yocto-standard"
> RREPLACES_${PN} = "kernel-image-3.6.9-yocto-standard"
>
> to the 3.10 kernel recipe fix the issue?  And if so, moving forward would
> I then need to append the list with each kernel version that is created, in
> case I have an old system that has never been upgraded?  I think this will
> work, but it seems messy.
>
> Thanks,
> Bryan
> >
> > Thanks,
> > Bryan
> >
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
> ------------------------------
>
> Message: 8
> Date: Mon, 25 Nov 2013 17:01:10 +0000
> From: Paul Eggleton <paul.eggleton@linux.intel.com>
> To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, "Robert P. J.
>         Day" <rpjday@crashcourse.ca>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] FW: stupid question about post-installation
>         scripts
> Message-ID: <2877100.Goa8NZvDMD@helios>
> Content-Type: text/plain; charset="us-ascii"
>
> On Monday 25 November 2013 15:21:41 Rifenbark, Scott M wrote:
> > >From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> > >Sent: Sunday, November 24, 2013 2:37 AM
> > >To: Rifenbark, Scott M
> > >Subject: stupid question about post-installation scripts
> > >
> > >  when one defines pkg_postinst scripts, are those scripts invoked at
> > >
> > >*both* root filesystem creation time and first boot time? so that one
> needs
> > >to manually check the value of ${D} to decide whether to run them, say,
> at
> > >first boot time?
>
> Not both - it's either-or; i.e. it will be run at rootfs creation time and
> if
> it fails then, it will be run on first boot. Yes you can use the value of
> $D
> (note: *not* ${D}!) to find out where the script is being called from, if
> necessary.
>
> > >  i'm reading the section here:
> > >http://www.yoctoproject.org/docs/latest/dev-manual/dev->
> >manual.html#post-installation-scripts
> > >
> > >and i know i've seen elsewhere scripts explicitly checking the value of
> the
> > >${D} prefix to determine when they're being invoked. it *seems* like
> > >that's what's happening, but if that's the case, it can probably be said
> > >much more clearly.
>
> The answer is, you can do this if you have to, but ideally you shouldn't
> need
> to. In the ideal situation the script should be written such that it
> functions
> equally well no matter where it executes; that avoids the need to run
> anything
> on first boot, *and* (assuming you have package management enabled for the
> target) it will work if the package is installed on the target some time
> afterwards.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>
>
> ------------------------------
>
> Message: 9
> Date: Mon, 25 Nov 2013 17:06:51 +0000
> From: Paul Eggleton <paul.eggleton@linux.intel.com>
> To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, "Robert P. J.
>         Day" <rpjday@crashcourse.ca>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] FW: stupid question about post-installation
>         scripts
> Message-ID: <197917002.9dER9YZC1c@helios>
> Content-Type: text/plain; charset="us-ascii"
>
> On Monday 25 November 2013 17:01:10 Paul Eggleton wrote:
> > On Monday 25 November 2013 15:21:41 Rifenbark, Scott M wrote:
> > > >From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> > > >Sent: Sunday, November 24, 2013 2:37 AM
> > > >To: Rifenbark, Scott M
> > > >Subject: stupid question about post-installation scripts
> > > >
> > > >  when one defines pkg_postinst scripts, are those scripts invoked at
> > > >
> > > >*both* root filesystem creation time and first boot time? so that one
> > > >needs
> > > >to manually check the value of ${D} to decide whether to run them,
> say,
> > > >at
> > > >first boot time?
> >
> > Not both - it's either-or; i.e. it will be run at rootfs creation time
> and
> > if it fails then, it will be run on first boot. Yes you can use the value
> > of $D (note: *not* ${D}!) to find out where the script is being called
> > from, if necessary.
>
> PS, if you really do want to force the script to be postponed until first
> boot,
> you *must* make the postinst script fail if $D has a value - if you just
> let
> it pass the system will assume it doesn't need to be called again on first
> boot.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>
>
> ------------------------------
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> End of yocto Digest, Vol 38, Issue 92
> *************************************
>

--047d7b6d95d08712e404ec03840f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>I am not sure but any change to Linux kerne=
l repo can be reflected by modifying the SRCREV variable <br></div>in Kerne=
l recipe file.<br><br></div>Thanks<br></div>Rajan<br></div><div class=3D"gm=
ail_extra">
<br><br><div class=3D"gmail_quote">On Mon, Nov 25, 2013 at 10:37 PM,  <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:yocto-request@yoctoproject.org" target=
=3D"_blank">yocto-request@yoctoproject.org</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">
Send yocto mailing list submissions to<br>
=A0 =A0 =A0 =A0 <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoprojec=
t.org</a><br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
=A0 =A0 =A0 =A0 <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" t=
arget=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
or, via email, send a message with subject or body &#39;help&#39; to<br>
=A0 =A0 =A0 =A0 <a href=3D"mailto:yocto-request@yoctoproject.org">yocto-req=
uest@yoctoproject.org</a><br>
<br>
You can reach the person managing the list at<br>
=A0 =A0 =A0 =A0 <a href=3D"mailto:yocto-owner@yoctoproject.org">yocto-owner=
@yoctoproject.org</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of yocto digest...&quot;<br>
<br>
<br>
Today&#39;s Topics:<br>
<br>
=A0 =A01. Unable to upgrade kernel; package for kernel name includes<br>
=A0 =A0 =A0 version (Bryan Evenson)<br>
=A0 =A02. Re: ksize.py and dirsize.py scripts not in dora tarball, is<br>
=A0 =A0 =A0 that deliberate? (Rifenbark, Scott M)<br>
=A0 =A03. Re: RFC Autobuilder Naming (Paul Eggleton)<br>
=A0 =A04. Re: unbootable image produced with PACKAGE_CLASSES ?=3D<br>
=A0 =A0 =A0 &quot;package_ipk&quot;, /etc missing (Todd Stellanova)<br>
=A0 =A05. FW: stupid question about post-installation scripts<br>
=A0 =A0 =A0 (Rifenbark, Scott M)<br>
=A0 =A06. Re: stupid question about post-installation scripts<br>
=A0 =A0 =A0 (Bryan Evenson)<br>
=A0 =A07. Re: Unable to upgrade kernel; package for kernel name<br>
=A0 =A0 =A0 includes version (Bryan Evenson)<br>
=A0 =A08. Re: FW: stupid question about post-installation scripts<br>
=A0 =A0 =A0 (Paul Eggleton)<br>
=A0 =A09. Re: FW: stupid question about post-installation scripts<br>
=A0 =A0 =A0 (Paul Eggleton)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Mon, 25 Nov 2013 09:45:51 -0500<br>
From: Bryan Evenson &lt;<a href=3D"mailto:bevenson@melinkcorp.com">bevenson=
@melinkcorp.com</a>&gt;<br>
To: &quot;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a>&gt;<br>
Subject: [yocto] Unable to upgrade kernel; =A0 =A0 =A0package for kernel na=
me<br>
=A0 =A0 =A0 =A0 includes version<br>
Message-ID:<br>
=A0 =A0 =A0 =A0 &lt;91586D499ADFD74FBCFB8425266A5DE40153C1156010@pluto.meli=
nkcorp.local&gt;<br>
Content-Type: text/plain; charset=3D&quot;us-ascii&quot;<br>
<br>
I&#39;m on poky/dylan-9.0.1 I am upgrading the Linux kernel for my device&#=
39;s image from a custom 3.6.9 kernel to a custom 3.10 kernel. =A0I&#39;m u=
sing this layer: <a href=3D"https://github.com/evensonbryan/meta-atmel" tar=
get=3D"_blank">https://github.com/evensonbryan/meta-atmel</a> as a basis fo=
r the custom kernel recipe (there is a recipe for the 3.10 kernel that I ha=
ven&#39;t yet deployed to Github in case anyone is wondering). =A0I&#39;m a=
ttempting to do a firmware upgrade with my built packages (using opkg for p=
ackage management) and I&#39;ve discovered an issue with the kernel naming.=
 =A0On my pre-upgraded device, a list of installed packages includes:<br>

<br>
kernel-devicetree<br>
kernel-image-3.6.9-yocto-standard<br>
<br>
So when I build my updated Linux kernel, the kernel image is now named &quo=
t;kernel-image-3.10.0-yocto-standard&quot;. =A0So when I attempt to do an u=
pgrade, the kernel-devicetree is upgraded just fine but the kernel image is=
 not; kernel-image-3.10.0-yocto-standard is not the same package as kernel-=
image-3.6.9-yocto-standard, so opkg does not see this as an upgrade.<br>

<br>
How do I force the packaging system to recognize that the new kernel is an =
upgrade of the old kernel, even though the packages have different names? =
=A0And for the future, how do I change the package name so that it doesn&#3=
9;t include the version?<br>

<br>
Thanks,<br>
Bryan<br>
<br>
<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Mon, 25 Nov 2013 14:52:00 +0000<br>
From: &quot;Rifenbark, Scott M&quot; &lt;<a href=3D"mailto:scott.m.rifenbar=
k@intel.com">scott.m.rifenbark@intel.com</a>&gt;<br>
To: &quot;Robert P. J. Day&quot; &lt;<a href=3D"mailto:rpjday@crashcourse.c=
a">rpjday@crashcourse.ca</a>&gt;, Yocto discussion list<br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctopr=
oject.org</a>&gt;<br>
Subject: Re: [yocto] ksize.py and dirsize.py scripts not in dora<br>
=A0 =A0 =A0 =A0 tarball, is that deliberate?<br>
Message-ID:<br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"mailto:41DEA4B02DBDEF40A0F3B6D0DDB1237983F51=
186@ORSMSX101.amr.corp.intel.com">41DEA4B02DBDEF40A0F3B6D0DDB1237983F51186@=
ORSMSX101.amr.corp.intel.com</a>&gt;<br>
<br>
Content-Type: text/plain; charset=3D&quot;us-ascii&quot;<br>
<br>
Hmm... did these not get included in poky during the release?<br>
<br>
Scott<br>
<br>
&gt;-----Original Message-----<br>
&gt;From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@y=
octoproject.org</a> [mailto:<a href=3D"mailto:yocto-">yocto-</a><br>
&gt;<a href=3D"mailto:bounces@yoctoproject.org">bounces@yoctoproject.org</a=
>] On Behalf Of Robert P. J. Day<br>
&gt;Sent: Saturday, November 23, 2013 2:59 AM<br>
&gt;To: Yocto discussion list<br>
&gt;Subject: [yocto] ksize.py and dirsize.py scripts not in dora tarball, i=
s that<br>
&gt;deliberate?<br>
&gt;<br>
&gt;<br>
&gt; =A0current dev manual:<br>
&gt;<br>
&gt;<a href=3D"http://www.yoctoproject.org/docs/latest/dev-manual/dev-" tar=
get=3D"_blank">http://www.yoctoproject.org/docs/latest/dev-manual/dev-</a><=
br>
&gt;manual.html#understand-what-gives-your-image-size<br>
&gt;<br>
&gt;claims:<br>
&gt;<br>
&gt;&quot;To help you see where you currently are with kernel and root file=
system<br>
&gt;sizes, you can use two tools found in the Source Directory in the scrip=
ts<br>
&gt;directory:<br>
&gt;<br>
&gt;ksize.py: Reports component sizes for the kernel build objects.<br>
&gt;<br>
&gt;dirsize.py: Reports component sizes for the root filesystem.&quot;<br>
&gt;<br>
&gt; =A0however, the current dora tarball doesn&#39;t contain these scripts=
, while oe-<br>
&gt;core contains them more specifically under the scripts/tiny/ subdirecto=
ry.<br>
&gt;thoughts?<br>
&gt;<br>
&gt;rday<br>
&gt;<br>
&gt;--<br>
&gt;<br>
&gt;=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 Ottawa, Ontario, CANADA<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0<a href=3D"http://crash=
course.ca" target=3D"_blank">http://crashcourse.ca</a><br>
&gt;<br>
&gt;Twitter: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 <a href=3D"http://twitter.com/rpjday" target=3D"_blank">htt=
p://twitter.com/rpjday</a><br>
&gt;LinkedIn: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <=
a href=3D"http://ca.linkedin.com/in/rpjday" target=3D"_blank">http://ca.lin=
kedin.com/in/rpjday</a><br>
&gt;=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;_______________________________________________<br>
&gt;yocto mailing list<br>
&gt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
&gt;<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
<br>
------------------------------<br>
<br>
Message: 3<br>
Date: Mon, 25 Nov 2013 15:01:29 +0000<br>
From: Paul Eggleton &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com">pa=
ul.eggleton@linux.intel.com</a>&gt;<br>
To: Michael Halstead &lt;<a href=3D"mailto:michael@yoctoproject.org">michae=
l@yoctoproject.org</a>&gt;<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] RFC Autobuilder Naming<br>
Message-ID: &lt;6760837.T0hJxS54r8@helios&gt;<br>
Content-Type: text/plain; charset=3D&quot;us-ascii&quot;<br>
<br>
Hi Michael,<br>
<br>
On Friday 22 November 2013 15:43:58 Michael Halstead wrote:<br>
&gt; Currently all builders are simply named ab00-ab13 based on when we<br>
&gt; acquired them. The name doesn&#39;t change except for ab01 which has b=
een<br>
&gt; reused on new hardware. As we increase the number of builders and make=
<br>
&gt; the build process more flexible this becomes inconvenient. I&#39;d lik=
e to<br>
&gt; switch to embedding useful information in the name.<br>
&gt;<br>
&gt; Going forward as I refresh builders I&#39;d like to name them with the=
ir<br>
&gt; distro and location.<br>
&gt;<br>
&gt; For example at OSL:<br>
&gt;<br>
&gt; <a href=3D"http://fedora19.osl.yoctoproject.org" target=3D"_blank">fed=
ora19.osl.yoctoproject.org</a><br>
&gt; <a href=3D"http://fedora20.osl.yoctoproject.org" target=3D"_blank">fed=
ora20.osl.yoctoproject.org</a><br>
&gt; <a href=3D"http://opensuse131.osl.yoctoproject.org" target=3D"_blank">=
opensuse131.osl.yoctoproject.org</a><br>
&gt; <a href=3D"http://ubuntu1310.osl.yoctoproject.org" target=3D"_blank">u=
buntu1310.osl.yoctoproject.org</a><br>
&gt; etc.<br>
&gt;<br>
&gt; And if we added a build clusters in the EasyStreet datacenter in Portl=
and:<br>
&gt;<br>
&gt; <a href=3D"http://centos64.pdx.yoctoproject.org" target=3D"_blank">cen=
tos64.pdx.yoctoproject.org</a><br>
&gt; <a href=3D"http://debian7.pdx.yoctoproject.org" target=3D"_blank">debi=
an7.pdx.yoctoproject.org</a><br>
&gt; etc.<br>
&gt;<br>
&gt; This allows for additional build clusters to be added and makes the<br=
>
&gt; distro clear to anyone viewing the logs. The current available build<b=
r>
&gt; slaves can be found on the relevant cluster&#39;s buildbot interface<b=
r>
&gt; (<a href=3D"http://autobuilder.yoctoproject.org/main/buildslaves" targ=
et=3D"_blank">http://autobuilder.yoctoproject.org/main/buildslaves</a>) so =
as names<br>
&gt; change there is an easy place to look them up.<br>
&gt;<br>
&gt; Comments?<br>
<br>
I guess this works fine until you want to have two builders with the same<b=
r>
distro. Maybe we plan not to do that anymore...?<br>
<br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
<br>
<br>
------------------------------<br>
<br>
Message: 4<br>
Date: Mon, 25 Nov 2013 07:03:34 -0800<br>
From: Todd Stellanova &lt;<a href=3D"mailto:tstellanova@gmail.com">tstellan=
ova@gmail.com</a>&gt;<br>
To: Paul Eggleton &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com">paul=
.eggleton@linux.intel.com</a>&gt;<br>
Cc: &quot;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a>&gt;<br>
Subject: Re: [yocto] unbootable image produced with PACKAGE_CLASSES ?=3D<br=
>
=A0 =A0 =A0 =A0 &quot;package_ipk&quot;, /etc missing<br>
Message-ID: &lt;<a href=3D"mailto:FDC4F28A-69CB-406F-95EA-0A5D2AB800BC@gmai=
l.com">FDC4F28A-69CB-406F-95EA-0A5D2AB800BC@gmail.com</a>&gt;<br>
Content-Type: text/plain; =A0 =A0 =A0 charset=3Dus-ascii<br>
<br>
Thanks for the ideas. I&#39;ll try creating a new build folder. If that sti=
ll shows the problem, I&#39;m thinking this has something to do with the fa=
ct that I&#39;m running the build inside a vm (inside an Ubuntu vm running =
on a Mac). It looks like the build is using debugfs...maybe it&#39;s runnin=
g out of ram at some point and not obtaining more in the vm properly?<br>

<br>
&gt; On Nov 25, 2013, at 5:21 AM, Paul Eggleton &lt;<a href=3D"mailto:paul.=
eggleton@linux.intel.com">paul.eggleton@linux.intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Nicolas / Todd,<br>
&gt;<br>
&gt;&gt; On Monday 25 November 2013 11:31:42 Nicolas Dechesne wrote:<br>
&gt;&gt; On Sun, Nov 24, 2013 at 3:51 AM, Todd Stellanova<br>
&gt;&gt; &lt;<a href=3D"mailto:tstellanova@gmail.com">tstellanova@gmail.com=
</a>&gt;wrote:<br>
&gt;&gt;&gt; It appears that copying the files to the ext3 / sdcard image i=
s failing in<br>
&gt;&gt;&gt; *populate-extfs.sh*<br>
&gt;&gt;&gt; I see a series of these errors:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; *copy_file: Could not allocate block in ext2 filesystem*<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Any idea what might cause this? =A0I&#39;ve verified that the =
initial .tar<br>
&gt;&gt;&gt; archive and the bz2 contain the right files.<br>
&gt;&gt;<br>
&gt;&gt; can you try to create a new &lt;build&gt; folder (do not remove th=
e current one<br>
&gt;&gt; for now) and reuse the downloads and sstate folder? i am wondering=
 if there<br>
&gt;&gt; is a bug when trying to change PACKAGE_CLASSES in an existing &lt;=
build&gt;<br>
&gt;&gt; folder.<br>
&gt;<br>
&gt; I do this not infrequently and never hit a problem like this, so I dou=
bt this<br>
&gt; is the case.<br>
&gt;<br>
&gt; Either there is a problem in how the filesystem is being set up (block=
 sizes,<br>
&gt; etc.) or there is some kind of corruption occurring.<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Paul<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt; Paul Eggleton<br>
&gt; Intel Open Source Technology Centre<br>
<br>
<br>
------------------------------<br>
<br>
Message: 5<br>
Date: Mon, 25 Nov 2013 15:21:41 +0000<br>
From: &quot;Rifenbark, Scott M&quot; &lt;<a href=3D"mailto:scott.m.rifenbar=
k@intel.com">scott.m.rifenbark@intel.com</a>&gt;<br>
To: &quot;Robert P. J. Day&quot; &lt;<a href=3D"mailto:rpjday@crashcourse.c=
a">rpjday@crashcourse.ca</a>&gt;<br>
Cc: Yocto discussion list &lt;<a href=3D"mailto:yocto@yoctoproject.org">yoc=
to@yoctoproject.org</a>&gt;<br>
Subject: [yocto] FW: stupid question about post-installation scripts<br>
Message-ID:<br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"mailto:41DEA4B02DBDEF40A0F3B6D0DDB1237983F51=
1F7@ORSMSX101.amr.corp.intel.com">41DEA4B02DBDEF40A0F3B6D0DDB1237983F511F7@=
ORSMSX101.amr.corp.intel.com</a>&gt;<br>
<br>
Content-Type: text/plain; charset=3D&quot;us-ascii&quot;<br>
<br>
Robert,<br>
<br>
I don&#39;t know... I am forwarding to the discussion list.<br>
<br>
Scott<br>
<br>
&gt;-----Original Message-----<br>
&gt;From: Robert P. J. Day [mailto:<a href=3D"mailto:rpjday@crashcourse.ca"=
>rpjday@crashcourse.ca</a>]<br>
&gt;Sent: Sunday, November 24, 2013 2:37 AM<br>
&gt;To: Rifenbark, Scott M<br>
&gt;Subject: stupid question about post-installation scripts<br>
&gt;<br>
&gt;<br>
&gt; =A0when one defines pkg_postinst scripts, are those scripts invoked at=
<br>
&gt;*both* root filesystem creation time and first boot time? so that one n=
eeds to<br>
&gt;manually check the value of ${D} to decide whether to run them, say, at=
 first<br>
&gt;boot time?<br>
&gt;<br>
&gt; =A0i&#39;m reading the section here:<br>
&gt;<br>
&gt;<a href=3D"http://www.yoctoproject.org/docs/latest/dev-manual/dev-" tar=
get=3D"_blank">http://www.yoctoproject.org/docs/latest/dev-manual/dev-</a><=
br>
&gt;manual.html#post-installation-scripts<br>
&gt;<br>
&gt;and i know i&#39;ve seen elsewhere scripts explicitly checking the valu=
e of the ${D}<br>
&gt;prefix to determine when they&#39;re being invoked. it *seems* like tha=
t&#39;s what&#39;s<br>
&gt;happening, but if that&#39;s the case, it can probably be said much mor=
e clearly.<br>
&gt;<br>
&gt;rday<br>
<br>
<br>
------------------------------<br>
<br>
Message: 6<br>
Date: Mon, 25 Nov 2013 10:56:17 -0500<br>
From: Bryan Evenson &lt;<a href=3D"mailto:bevenson@melinkcorp.com">bevenson=
@melinkcorp.com</a>&gt;<br>
To: &quot;Rifenbark, Scott M&quot; &lt;<a href=3D"mailto:scott.m.rifenbark@=
intel.com">scott.m.rifenbark@intel.com</a>&gt;, &quot;Robert P. J.<br>
=A0 =A0 =A0 =A0 Day&quot; =A0 =A0&lt;<a href=3D"mailto:rpjday@crashcourse.c=
a">rpjday@crashcourse.ca</a>&gt;<br>
Cc: Yocto discussion list &lt;<a href=3D"mailto:yocto@yoctoproject.org">yoc=
to@yoctoproject.org</a>&gt;<br>
Subject: Re: [yocto] stupid question about post-installation scripts<br>
Message-ID:<br>
=A0 =A0 =A0 =A0 &lt;91586D499ADFD74FBCFB8425266A5DE40153C1156096@pluto.meli=
nkcorp.local&gt;<br>
Content-Type: text/plain; charset=3D&quot;us-ascii&quot;<br>
<br>
Robert,<br>
<br>
That&#39;s how it works in my experience. =A0I have some packages for my sy=
stem that have a postinst piece that needs to run during image creation, an=
d other pieces that need to run only on a package upgrade. =A0By checking w=
hether &quot;x${D}&quot; =3D &quot;${D}&quot;, I am filtering out whether t=
he postinst script is running during image creation or on the actual hardwa=
re. =A0Been working great so far.<br>

<br>
-Bryan<br>
<br>
&gt; -----Original Message-----<br>
&gt; From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-">yocto-</a><br>
&gt; <a href=3D"mailto:bounces@yoctoproject.org">bounces@yoctoproject.org</=
a>] On Behalf Of Rifenbark, Scott M<br>
&gt; Sent: Monday, November 25, 2013 10:22 AM<br>
&gt; To: Robert P. J. Day<br>
&gt; Cc: Yocto discussion list<br>
&gt; Subject: [yocto] FW: stupid question about post-installation scripts<b=
r>
&gt;<br>
&gt; Robert,<br>
&gt;<br>
&gt; I don&#39;t know... I am forwarding to the discussion list.<br>
&gt;<br>
&gt; Scott<br>
&gt;<br>
&gt; &gt;-----Original Message-----<br>
&gt; &gt;From: Robert P. J. Day [mailto:<a href=3D"mailto:rpjday@crashcours=
e.ca">rpjday@crashcourse.ca</a>]<br>
&gt; &gt;Sent: Sunday, November 24, 2013 2:37 AM<br>
&gt; &gt;To: Rifenbark, Scott M<br>
&gt; &gt;Subject: stupid question about post-installation scripts<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; =A0when one defines pkg_postinst scripts, are those scripts invok=
ed at<br>
&gt; &gt;*both* root filesystem creation time and first boot time? so that =
one<br>
&gt; &gt;needs to manually check the value of ${D} to decide whether to run=
<br>
&gt; &gt;them, say, at first boot time?<br>
&gt; &gt;<br>
&gt; &gt; =A0i&#39;m reading the section here:<br>
&gt; &gt;<br>
&gt; &gt;<a href=3D"http://www.yoctoproject.org/docs/latest/dev-manual/dev-=
" target=3D"_blank">http://www.yoctoproject.org/docs/latest/dev-manual/dev-=
</a><br>
&gt; &gt;manual.html#post-installation-scripts<br>
&gt; &gt;<br>
&gt; &gt;and i know i&#39;ve seen elsewhere scripts explicitly checking the=
 value<br>
&gt; of<br>
&gt; &gt;the ${D} prefix to determine when they&#39;re being invoked. it *s=
eems*<br>
&gt; &gt;like that&#39;s what&#39;s happening, but if that&#39;s the case, =
it can probably<br>
&gt; be said much more clearly.<br>
&gt; &gt;<br>
&gt; &gt;rday<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
<br>
------------------------------<br>
<br>
Message: 7<br>
Date: Mon, 25 Nov 2013 11:35:47 -0500<br>
From: Bryan Evenson &lt;<a href=3D"mailto:bevenson@melinkcorp.com">bevenson=
@melinkcorp.com</a>&gt;<br>
To: Bryan Evenson &lt;<a href=3D"mailto:bevenson@melinkcorp.com">bevenson@m=
elinkcorp.com</a>&gt;, &quot;<a href=3D"mailto:yocto@yoctoproject.org">yoct=
o@yoctoproject.org</a>&quot;<br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctopr=
oject.org</a>&gt;<br>
Subject: Re: [yocto] Unable to upgrade kernel; package for kernel name<br>
=A0 =A0 =A0 =A0 includes version<br>
Message-ID:<br>
=A0 =A0 =A0 =A0 &lt;91586D499ADFD74FBCFB8425266A5DE40153C11560E0@pluto.meli=
nkcorp.local&gt;<br>
Content-Type: text/plain; charset=3D&quot;us-ascii&quot;<br>
<br>
All,<br>
<br>
&gt; -----Original Message-----<br>
&gt; From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-">yocto-</a><br>
&gt; <a href=3D"mailto:bounces@yoctoproject.org">bounces@yoctoproject.org</=
a>] On Behalf Of Bryan Evenson<br>
&gt; Sent: Monday, November 25, 2013 9:46 AM<br>
&gt; To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt; Subject: [yocto] Unable to upgrade kernel; package for kernel name<br>
&gt; includes version<br>
&gt;<br>
&gt; I&#39;m on poky/dylan-9.0.1 I am upgrading the Linux kernel for my dev=
ice&#39;s<br>
&gt; image from a custom 3.6.9 kernel to a custom 3.10 kernel. =A0I&#39;m u=
sing<br>
&gt; this layer: <a href=3D"https://github.com/evensonbryan/meta-atmel" tar=
get=3D"_blank">https://github.com/evensonbryan/meta-atmel</a> as a basis fo=
r<br>
&gt; the custom kernel recipe (there is a recipe for the 3.10 kernel that I=
<br>
&gt; haven&#39;t yet deployed to Github in case anyone is wondering). =A0I&=
#39;m<br>
&gt; attempting to do a firmware upgrade with my built packages (using opkg=
<br>
&gt; for package management) and I&#39;ve discovered an issue with the kern=
el<br>
&gt; naming. =A0On my pre-upgraded device, a list of installed packages<br>
&gt; includes:<br>
&gt;<br>
&gt; kernel-devicetree<br>
&gt; kernel-image-3.6.9-yocto-standard<br>
&gt;<br>
&gt; So when I build my updated Linux kernel, the kernel image is now named=
<br>
&gt; &quot;kernel-image-3.10.0-yocto-standard&quot;. =A0So when I attempt t=
o do an<br>
&gt; upgrade, the kernel-devicetree is upgraded just fine but the kernel<br=
>
&gt; image is not; kernel-image-3.10.0-yocto-standard is not the same<br>
&gt; package as kernel-image-3.6.9-yocto-standard, so opkg does not see thi=
s<br>
&gt; as an upgrade.<br>
&gt;<br>
&gt; How do I force the packaging system to recognize that the new kernel i=
s<br>
&gt; an upgrade of the old kernel, even though the packages have different<=
br>
&gt; names? =A0And for the future, how do I change the package name so that=
 it<br>
&gt; doesn&#39;t include the version?<br>
<br>
I have a partial solution, but I&#39;m still curious as to if there is a cl=
eaner method than what I&#39;ve found so far. =A0I have a package that is a=
n image version so that way I can easily tell the overall distribution vers=
ion. =A0In that package, I added the line:<br>

<br>
RDEPENDS_${PN} =3D &quot;kernel-image (&gt;=3D 3.10)&quot;<br>
<br>
When I did this, upgrading my image version package caused kernel-image-3.1=
0.0-yocto-standard to be installed. =A0However, opkg still claims that kern=
el-image-3.6.9-yocto-standard is still installed; it&#39;d be nice to remov=
e this package also. =A0Would adding:<br>

<br>
RCONFLICTS_${PN} =3D &quot;kernel-image-3.6.9-yocto-standard&quot;<br>
RREPLACES_${PN} =3D &quot;kernel-image-3.6.9-yocto-standard&quot;<br>
<br>
to the 3.10 kernel recipe fix the issue? =A0And if so, moving forward would=
 I then need to append the list with each kernel version that is created, i=
n case I have an old system that has never been upgraded? =A0I think this w=
ill work, but it seems messy.<br>

<br>
Thanks,<br>
Bryan<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Bryan<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
<br>
------------------------------<br>
<br>
Message: 8<br>
Date: Mon, 25 Nov 2013 17:01:10 +0000<br>
From: Paul Eggleton &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com">pa=
ul.eggleton@linux.intel.com</a>&gt;<br>
To: &quot;Rifenbark, Scott M&quot; &lt;<a href=3D"mailto:scott.m.rifenbark@=
intel.com">scott.m.rifenbark@intel.com</a>&gt;, &quot;Robert P. J.<br>
=A0 =A0 =A0 =A0 Day&quot; &lt;<a href=3D"mailto:rpjday@crashcourse.ca">rpjd=
ay@crashcourse.ca</a>&gt;<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] FW: stupid question about post-installation<br>
=A0 =A0 =A0 =A0 scripts<br>
Message-ID: &lt;2877100.Goa8NZvDMD@helios&gt;<br>
Content-Type: text/plain; charset=3D&quot;us-ascii&quot;<br>
<br>
On Monday 25 November 2013 15:21:41 Rifenbark, Scott M wrote:<br>
&gt; &gt;From: Robert P. J. Day [mailto:<a href=3D"mailto:rpjday@crashcours=
e.ca">rpjday@crashcourse.ca</a>]<br>
&gt; &gt;Sent: Sunday, November 24, 2013 2:37 AM<br>
&gt; &gt;To: Rifenbark, Scott M<br>
&gt; &gt;Subject: stupid question about post-installation scripts<br>
&gt; &gt;<br>
&gt; &gt; =A0when one defines pkg_postinst scripts, are those scripts invok=
ed at<br>
&gt; &gt;<br>
&gt; &gt;*both* root filesystem creation time and first boot time? so that =
one needs<br>
&gt; &gt;to manually check the value of ${D} to decide whether to run them,=
 say, at<br>
&gt; &gt;first boot time?<br>
<br>
Not both - it&#39;s either-or; i.e. it will be run at rootfs creation time =
and if<br>
it fails then, it will be run on first boot. Yes you can use the value of $=
D<br>
(note: *not* ${D}!) to find out where the script is being called from, if<b=
r>
necessary.<br>
<br>
&gt; &gt; =A0i&#39;m reading the section here:<br>
&gt; &gt;<a href=3D"http://www.yoctoproject.org/docs/latest/dev-manual/dev-=
" target=3D"_blank">http://www.yoctoproject.org/docs/latest/dev-manual/dev-=
</a>&gt; &gt;manual.html#post-installation-scripts<br>
&gt; &gt;<br>
&gt; &gt;and i know i&#39;ve seen elsewhere scripts explicitly checking the=
 value of the<br>
&gt; &gt;${D} prefix to determine when they&#39;re being invoked. it *seems=
* like<br>
&gt; &gt;that&#39;s what&#39;s happening, but if that&#39;s the case, it ca=
n probably be said<br>
&gt; &gt;much more clearly.<br>
<br>
The answer is, you can do this if you have to, but ideally you shouldn&#39;=
t need<br>
to. In the ideal situation the script should be written such that it functi=
ons<br>
equally well no matter where it executes; that avoids the need to run anyth=
ing<br>
on first boot, *and* (assuming you have package management enabled for the<=
br>
target) it will work if the package is installed on the target some time<br=
>
afterwards.<br>
<br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
<br>
<br>
------------------------------<br>
<br>
Message: 9<br>
Date: Mon, 25 Nov 2013 17:06:51 +0000<br>
From: Paul Eggleton &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com">pa=
ul.eggleton@linux.intel.com</a>&gt;<br>
To: &quot;Rifenbark, Scott M&quot; &lt;<a href=3D"mailto:scott.m.rifenbark@=
intel.com">scott.m.rifenbark@intel.com</a>&gt;, &quot;Robert P. J.<br>
=A0 =A0 =A0 =A0 Day&quot; &lt;<a href=3D"mailto:rpjday@crashcourse.ca">rpjd=
ay@crashcourse.ca</a>&gt;<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] FW: stupid question about post-installation<br>
=A0 =A0 =A0 =A0 scripts<br>
Message-ID: &lt;197917002.9dER9YZC1c@helios&gt;<br>
Content-Type: text/plain; charset=3D&quot;us-ascii&quot;<br>
<br>
On Monday 25 November 2013 17:01:10 Paul Eggleton wrote:<br>
&gt; On Monday 25 November 2013 15:21:41 Rifenbark, Scott M wrote:<br>
&gt; &gt; &gt;From: Robert P. J. Day [mailto:<a href=3D"mailto:rpjday@crash=
course.ca">rpjday@crashcourse.ca</a>]<br>
&gt; &gt; &gt;Sent: Sunday, November 24, 2013 2:37 AM<br>
&gt; &gt; &gt;To: Rifenbark, Scott M<br>
&gt; &gt; &gt;Subject: stupid question about post-installation scripts<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; =A0when one defines pkg_postinst scripts, are those scripts =
invoked at<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;*both* root filesystem creation time and first boot time? so =
that one<br>
&gt; &gt; &gt;needs<br>
&gt; &gt; &gt;to manually check the value of ${D} to decide whether to run =
them, say,<br>
&gt; &gt; &gt;at<br>
&gt; &gt; &gt;first boot time?<br>
&gt;<br>
&gt; Not both - it&#39;s either-or; i.e. it will be run at rootfs creation =
time and<br>
&gt; if it fails then, it will be run on first boot. Yes you can use the va=
lue<br>
&gt; of $D (note: *not* ${D}!) to find out where the script is being called=
<br>
&gt; from, if necessary.<br>
<br>
PS, if you really do want to force the script to be postponed until first b=
oot,<br>
you *must* make the postinst script fail if $D has a value - if you just le=
t<br>
it pass the system will assume it doesn&#39;t need to be called again on fi=
rst<br>
boot.<br>
<br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
<br>
<br>
------------------------------<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
<br>
End of yocto Digest, Vol 38, Issue 92<br>
*************************************<br>
</blockquote></div><br></div>

--047d7b6d95d08712e404ec03840f--
