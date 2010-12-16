Return-Path: <liping.ke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 66D814C80BCF
	for <yocto@yoctoproject.org>; Thu, 16 Dec 2010 00:20:54 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Dec 2010 22:20:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,353,1288594800"; d="scan'208";a="687666141"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 15 Dec 2010 22:20:53 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 16 Dec 2010 14:20:05 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 16 Dec 2010 14:20:02 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "Lu, Lianhao"
	<lianhao.lu@intel.com>
Date: Thu, 16 Dec 2010 14:20:01 +0800
Thread-Topic: [yocto] Try latest yocto adt script installer
Thread-Index: Acual4vOqTvhX8f5Tsm9er0UcNM8oAAfzMiAAA+QidAABdmpsAABHC7wACY1niAAAtf3EAAAjdwgAAWEuFAAApB+gAAla+kQAANqoyAAA4OUoA==
Message-ID: <789F9655DD1B8F43B48D77C5D3065973313A7475@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D3065973312DC806@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950465CBC4@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D3065973313A69C0@shsmsx501.ccr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D3065973313A6B19@shsmsx501.ccr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D3065973313A6B2A@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9504950111@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D3065973313A6E8D@shsmsx501.ccr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D3065973313A6EAE@shsmsx501.ccr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D3065973313A6FE2@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950495017B@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D3065973313A733D@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA95049E677D@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA95049E677D@orsmsx504.amr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Try latest yocto adt script installer
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
X-List-Received-Date: Thu, 16 Dec 2010 06:20:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Jessica

I have updated the scripts. If a qemu file has been downloaded before,
It will prompt user download the new or keep the old one.
Any problem, just let me know.

They're in the same location (contrib.git and lianhao's link)

Thanks& Regards,
criping


> -----Original Message-----
> From: Zhang, Jessica
> Sent: Thursday, December 16, 2010 12:44 PM
> To: Ke, Liping; Lu, Lianhao
> Cc: yocto@yoctoproject.org
> Subject: RE: [yocto] Try latest yocto adt script installer
>=20
> Ke, Liping wrote:
> > Hi, Jessica
> >
> > I have tested newly added image types  (sato minimal) in the user
> > configuration file.
> >
> > One known thing is: for extracting root fs, currently our
> > code/configuration logic is: Only one rootfs (minimal, sato, sdk) is
> > workable for each arch.
>=20
> It's our current design, the thinking is no matter what rootfs (minimal,
> sato, sdk or lsb), very likely user needs to use some sort of package
> management system to add and remove packages in target sysroot.  The
> rootfs
> just gives user the closest base to start with...
>=20
> > So if user want to extract another rootfs, he needs to change user
> > config and run the installation again.
> > I am not sure if we need to allow user to extract multiple rootfs for
> > each arch.  In that case, either configuration file section needs to
> > add directory unfs-folder for each arch-imagetype combination or keep
> > the configuration file, we automatically add sub directory image type
> > under user's designated nfs-folder.
> >
> > As for downloading file, I strongly feel that we need let user choose
> > whether he want to download again if the same file name existing in
> > the ./download folder with more and more available testing qemu
> > images... Even in intranet, I felt the downloading is quite slow...
> > Each time when testing, I need to wait several minutes.
>=20
> Then can you modify the code before downloading each file, check
> whether its
> already exist or not, if so, prompt the user to confirm re-download or
> skip?
> And remove the existing checking for the download directory?
>=20
> Thanks,
> Jessica
> >
> > The tarball is available now @
> > http://llu-piketon.sh.intel.com/installer.tar
> >
> > And for tracking, I checkin it @
> > http://git.pokylinux.org/cgit.cgi/poky-
> contrib/log/?h=3Dlke/installer_new
> >
> > Thanks& Regards,
> > criping
> >
> >> -----Original Message-----
> >> From: Zhang, Jessica
> >> Sent: Wednesday, December 15, 2010 5:10 PM
> >> To: Ke, Liping; Lu, Lianhao
> >> Cc: yocto@yoctoproject.org
> >> Subject: RE: [yocto] Try latest yocto adt script installer
> >>
> >> Liping,
> >>
> >> The newly update scripts are at:
> >> http://git.pokylinux.org/cgit.cgi/poky-
> >> contrib/commit/?h=3Djzhang/installer_ne
> >> w
> >> With following changes:
> >> more messages cleanup, fix issues: 1) download all the specified
> >> rootfs fiels, 2) add check for yocto_installer_internal, 3) error
> >> out when sysroot image file or sysroot location are empty
> >>
> >> - Jessica
> >>
> >> Ke, Liping wrote:
> >>> Hi, Jessica
> >>>
> >>> You said you will give me a new cs today with new cleanups/bugfixes
> >>> before I am working with recover wget percentage information?
> >>>
> >>> Thanks& Regards,
> >>> criping
> >>>
> >>>> -----Original Message-----
> >>>> From: Ke, Liping
> >>>> Sent: Wednesday, December 15, 2010 1:18 PM
> >>>> To: Ke, Liping; Zhang, Jessica
> >>>> Cc: yocto@yoctoproject.org
> >>>> Subject: RE: [yocto] Try latest yocto adt script installer
> >>>>
> >>>> Hi, Jessica
> >>>>
> >>>> I have checked in the changes based on your changeset.
> >>>> Now nfs extraction folders could be deleted/operated by user.
> >>>>
> >>>> And also, the config file is changed since the version number now
> >>>> is
> >>>> 0.9+snapshot.
> >>>>
> >>>> Currently repository only has arm/x86 sdks. So I changed that in
> >>>> User config too.
> >>>>
> >>>> Any problem, just let me know.
> >>>>
> >>>> Thanks& Regards,
> >>>> criping
> >>>>
> >>>>> -----Original Message-----
> >>>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >>>>> bounces@yoctoproject.org] On Behalf Of Ke, Liping
> >>>>> Sent: Wednesday, December 15, 2010 1:03 PM
> >>>>> To: Zhang, Jessica
> >>>>> Cc: yocto@yoctoproject.org
> >>>>> Subject: Re: [yocto] Try latest yocto adt script installer
> >>>>>
> >>>>>> Liping,
> >>>>>>
> >>>>>> All my changes are captured under:
> >>>>>> http://git.pokylinux.org/cgit.cgi/poky-
> >>>>> contrib/log/?h=3Djzhang/installer
> >>>>> OK.
> >>>>>
> >>>>>>
> >>>>>> My installation stopped at:
> >>>>>>
> >>>>>> ./yocto_installer_internal: line 165:
> >>>>>> /opt/poky/0.9-post/sysroots/i586-pokysdk-linux//usr/bin/pseudo:
> >>>>>> No such file or directory
> >>>>>
> >>>>> It's caused because you changed 0.9-post to 0.9+snapshot. The
> >>>>> version is now defined in the yocto_installer.conf.
> >>>>>
> >>>>> Also, for solving the user priviledge problem, I will change user
> >>>>> nfs root owner to $USER:$GROUP (lke:lke, eg).
> >>>>> Because we found opkg must run under root. Otherwise, the root
> >>>>> folder will have to be changed. It will be not good.
> >>>>>
> >>>>>
> >>>>> Thanks& Regards,
> >>>>> criping
> >>>>>
> >>>>>
> >>>>>
> >>>>>
> >>>>>>
> >>>>>> We'll sync later tonight...
> >>>>>>
> >>>>>> Thanks,
> >>>>>> Jessica
> >>>>>> Ke, Liping wrote:
> >>>>>>> Hi, Jessica
> >>>>>>>
> >>>>>>> For tracing the file, I temporarily checked in all needed files
> >>>>>>> into my branch:
> >>>>>>>
> >>>>>> http://git.pokylinux.org/cgit/cgit.cgi/poky-
> >>>>>> contrib/log/?h=3Dlke/adt_installer
> >>>>>> _initial
> >>>>>>>
> >>>>>>> If you have some modification on echo message, you can directly
> >>>>>>> change and submit the changes.
> >>>>>>> Since I am not sure about what kinds of echo message is most
> >>>>>>> wanted by user. I temporarily put It under folder
> >>>>>>> ${POKYBASE}/scripts/adt_installer
> >>>>>>>
> >>>>>>> For testing, Lianhao temporarily make SDK_VERSION=3D"0.9-post",
> >>>>>>> it's now defined in Yocto_installer.conf.
> >>>>>>>
> >>>>>>> Thanks& Regards,
> >>>>>>> criping
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>>> -----Original Message-----
> >>>>>>>> From: Ke, Liping
> >>>>>>>> Sent: Tuesday, December 14, 2010 5:20 PM
> >>>>>>>> To: Ke, Liping; Zhang, Jessica
> >>>>>>>> Cc: yocto@yoctoproject.org
> >>>>>>>> Subject: RE: [yocto] Try latest yocto adt script installer
> >>>>>>>>
> >>>>>>>> Hi, Jessica
> >>>>>>>>
> >>>>>>>> I have updated the script and it is still put under
> http://llu-
> >>>>>>>> piketon.sh.intel.com/installer.tar.
> >>>>>>>>
> >>>>>>>> 1. For util path problem, the solution is that we need to find
> >>>>>>>> the dirname of running script, then cd to that folder.
> >>>>>>>> 2. For logfile, now I will output all detailed information to
> >>>>>>>> the log file for tracing.
> >>>>>>>> 3. If environement-file is not there, error will be reported.
> >>>>>>>> 4. Add Error: prompt for errors.
> >>>>>>>>
> >>>>>>>>
> >>>>>>>> Proxy should be disabled before testing.
> >>>>>>>>
> >>>>>>>> I tested for both 32 bit and 64 bit host. Yet I am not sure
> >>>>>>>> whether I could cover all corner cases...
> >>>>>>>> And Lianhao will easily cause hard-disk not responding when
> >>>>>>>> running the script. Haven't root cause the problem. (My two
> >>>>>>>> test machine is just fine) If you meet the same issue, please
> >>>>>>>> let us know.
> >>>>>>>>
> >>>>>>>>
> >>>>>>>> Thanks& Regards,
> >>>>>>>> criping
> >>>>>>>>
> >>>>>>>>
> >>>>>>>>> -----Original Message-----
> >>>>>>>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >>>>>>>>> bounces@yoctoproject.org] On Behalf Of Ke, Liping
> >>>>>>>>> Sent: Tuesday, December 14, 2010 2:40 PM
> >>>>>>>>> To: Zhang, Jessica
> >>>>>>>>> Cc: yocto@yoctoproject.org
> >>>>>>>>> Subject: Re: [yocto] Try latest yocto adt script installer
> >>>>>>>>>
> >>>>>>>>>> Why we must run the script under the adt-installer directory?
> >>>>>>>>>> Actually I tried to run under $HOME or / but specifying the
> >>>>>>>>>> full path to yocto_installer, and got the error:
> >>>>>>>>>> [ADT_INST] script file util is not  found!
> >>>>>>>>>
> >>>>>>>>> Oh, it's caused by the include grammar. I need to check how
> to
> >>>>>>>>> solve the relative path problem with include grammar in shell
> >>>>>>>>> script. It should not be difficult.
> >>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>>> #############################################
> >>>>>>>>>> # Meet error when installing Yocto ADT.
> >>>>>>>>>> #############################################
> >>>>>>>>>>
> >>>>>>>>>> 2 comments here:
> >>>>>>>>>> 1. we should be able to allow user run the yocto_installer
> >>>>>>>>>> script from any location and it should be able to locate the
> >>>>>>>>>> needed surporting files or scripts
> >>>>>>>>>> 2. As a convention and to be consistent, I'd suggest change
> >>>>>>>>>> the above error message as "[ADT_INST] Error: Script file
> >>>>>>>>>> util is not found!" There're several error messages in the
> >>>>>>>>>> scripts has the Error message format that I'm talking about
> >>>>>>>>>> here, which you can look up as a reference.
> >>>>>>>>>
> >>>>>>>>> No problem, I will unify all error messages.
> >>>>>>>>>>
> >>>>>>>>>>> 3. Build log are located @
> >>>> adt_installer/yoctoadt_installer.log
> >>>>>>>>>>> 4. User config ( install which targets) are defined/changed
> >>>>>>>>>>> in Yocto_installer.conf. Note: now only i586 qemu rootfs
> >>>>>>>>>>> are available in repository.
> >>>>>>>>>>>
> >>>>>>>>>>> Any problem, just let me know.
> >>>>>>>>>>
> >>>>>>>>>> Just by playing with it, I change YOCTOADT_TARGETS=3D"ppc" in
> >>>>>>>>>> yocto_installer.conf. And the prompt that I got is as
> >>>>>>>>>> follows:
> >>>>>>>>>>
> >>>>>>>>>> [ADT_INST] selected archs defined in Host Area Item:
> >>>>>>>>>> YOCTOADT_TARGETS is not valid!
> >>>>>>>>>> Error: Terminate installation process due to errors!
> >>>>>>>>> It's expected behavior. Since powerpcc is the correct name.
> >>>>>>>>>
> >>>>>>>>>
> >>>>>>>>>> 3. It would be nice to point out Host Area resides in which
> >>>>>>>>>> file, and also tells user what are the valid entries
> >>>>>>>>>
> >>>>>>>>>
> >>>>>>>>>> 4. It's not consistent when existing the program when
> running
> >>>>>>>>>> into errors, see the above and here just "Error: "...
> >>>>>>>>>>
> >>>>>>>>>> During the Make opkg..., there're bunch of warning messages
> >>>>>>>>>> can we redirect them to the log file?
> >>>>>>>>>> Also, it seems the log file contents is less than what shows
> >>>>>>>>>> on the screen (STDOUT), which I think should be the reverse
> >>>>>>>>>> case, people should be able to trace more info in the log
> >>>>>>>>>> file? E.g. during downloading rootfs, all the info where it
> >>>>>>>>>> download from and saved to where are showed on the screen
> >>>>>>>>>> but missing in the log file...
> >>>>>>>>>
> >>>>>>>>> Log file problem is solved totally by replacing " >> " with
> >>>>>>>>> "&>>" pointed by Lianhao.
> >>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>>> Toward the end of the installation, I run into:
> >>>>>>>>>>
> >>>>>>>>>> [ADT_INST] Re-generate environment script file according to
> >>>>>>>>>> rootfs location. Ls: cannot access
> >>>>>>>>>> /opt/poky/0.9+snapshot-20101211/environment- setup- i586*:
> No
> >>>>>>>>>> such file or directory Sed: no input files
> >>>>>>>>>
> >>>>>>>>> Missing guard will be added here.
> >>>>>>>>> I will send the updated scripts which will address most of
> >>>>>>>>> the problem.
> >>>>>>>>>
> >>>>>>>>>
> >>>>>>>>> Btw: I need someone review the script totally. I am afraid
> >>>>>>>>> some of the scripts Might not obey shell's world conventions
> >>>>>>>>> since this is the first script I wrote. I have to say I did
> >>>>>>>>> try several blackbox test yet failed to cover all corner
> >>>>>>>>> problems.
> >>>>>>>>>
> >>>>>>>>> Updated scripts will soon be published.
> >>>>>>>>>
> >>>>>>>>> Thanks & Regards,
> >>>>>>>>> criping
> >>>>>>>>>
> >>>>>>>>>
> >>>>>>>>> _______________________________________________
> >>>>>>>>> yocto mailing list
> >>>>>>>>> yocto@yoctoproject.org
> >>>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
> >>>>> _______________________________________________
> >>>>> yocto mailing list
> >>>>> yocto@yoctoproject.org
> >>>>> https://lists.yoctoproject.org/listinfo/yocto

