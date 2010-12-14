Return-Path: <liping.ke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A3F7A4C811F1
	for <yocto@yoctoproject.org>; Tue, 14 Dec 2010 03:32:09 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Dec 2010 01:32:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,341,1288594800"; d="scan'208";a="583535518"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 14 Dec 2010 01:32:08 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 14 Dec 2010 17:31:23 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 14 Dec 2010 17:30:42 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Ke, Liping" <liping.ke@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>
Date: Tue, 14 Dec 2010 17:30:43 +0800
Thread-Topic: [yocto] Try latest yocto adt script installer
Thread-Index: Acual4vOqTvhX8f5Tsm9er0UcNM8oAAfzMiAAA+QidAABdmpsAABHC7w
Message-ID: <789F9655DD1B8F43B48D77C5D3065973313A6B2A@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D3065973312DC806@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950465CBC4@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D3065973313A69C0@shsmsx501.ccr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D3065973313A6B19@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D3065973313A6B19@shsmsx501.ccr.corp.intel.com>
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
X-List-Received-Date: Tue, 14 Dec 2010 09:32:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Jessica

For tracing the file, I temporarily checked in all needed files into my bra=
nch:
http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dlke/adt_instal=
ler_initial

If you have some modification on echo message, you can directly change and =
submit the changes.
Since I am not sure about what kinds of echo message is most wanted by user=
. I temporarily put
It under folder ${POKYBASE}/scripts/adt_installer

For testing, Lianhao temporarily make SDK_VERSION=3D"0.9-post", it's now de=
fined in Yocto_installer.conf.

Thanks& Regards,
criping



> -----Original Message-----
> From: Ke, Liping
> Sent: Tuesday, December 14, 2010 5:20 PM
> To: Ke, Liping; Zhang, Jessica
> Cc: yocto@yoctoproject.org
> Subject: RE: [yocto] Try latest yocto adt script installer
>=20
> Hi, Jessica
>=20
> I have updated the script and it is still put under http://llu-
> piketon.sh.intel.com/installer.tar.
>=20
> 1. For util path problem, the solution is that we need to find the
> dirname of running script, then cd to that folder.
> 2. For logfile, now I will output all detailed information to the log
> file for tracing.
> 3. If environement-file is not there, error will be reported.
> 4. Add Error: prompt for errors.
>=20
>=20
> Proxy should be disabled before testing.
>=20
> I tested for both 32 bit and 64 bit host. Yet I am not sure whether I
> could cover all corner cases...
> And Lianhao will easily cause hard-disk not responding when running the
> script. Haven't root cause the problem. (My two test machine is just
> fine)
> If you meet the same issue, please let us know.
>=20
>=20
> Thanks& Regards,
> criping
>=20
>=20
> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org [mailto:yocto-
> > bounces@yoctoproject.org] On Behalf Of Ke, Liping
> > Sent: Tuesday, December 14, 2010 2:40 PM
> > To: Zhang, Jessica
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] Try latest yocto adt script installer
> >
> > > Why we must run the script under the adt-installer directory?
> > Actually
> > > I
> > > tried to run under $HOME or / but specifying the full path to
> > > yocto_installer, and got the error:
> > > [ADT_INST] script file util is not  found!
> >
> > Oh, it's caused by the include grammar. I need to check how to solve
> > the
> > relative path problem with include grammar in shell script. It should
> > not
> > be difficult.
> >
> > >
> > > #############################################
> > > # Meet error when installing Yocto ADT.
> > > #############################################
> > >
> > > 2 comments here:
> > > 1. we should be able to allow user run the yocto_installer script
> > from
> > > any
> > > location and it should be able to locate the needed surporting
> files
> > or
> > > scripts
> > > 2. As a convention and to be consistent, I'd suggest change the
> above
> > > error
> > > message as "[ADT_INST] Error: Script file util is not found!"
> > There're
> > > several error messages in the scripts has the Error message format
> > that
> > > I'm
> > > talking about here, which you can look up as a reference.
> >
> > No problem, I will unify all error messages.
> > >
> > > > 3. Build log are located @ adt_installer/yoctoadt_installer.log
> > > > 4. User config ( install which targets) are defined/changed in
> > > > Yocto_installer.conf. Note: now only i586 qemu rootfs are
> available
> > > > in repository.
> > > >
> > > > Any problem, just let me know.
> > >
> > > Just by playing with it, I change YOCTOADT_TARGETS=3D"ppc" in
> > > yocto_installer.conf. And the prompt that I got is as follows:
> > >
> > > [ADT_INST] selected archs defined in Host Area Item:
> YOCTOADT_TARGETS
> > > is not
> > > valid!
> > > Error: Terminate installation process due to errors!
> > It's expected behavior. Since powerpcc is the correct name.
> >
> >
> > > 3. It would be nice to point out Host Area resides in which file,
> and
> > > also
> > > tells user what are the valid entries
> >
> >
> > > 4. It's not consistent when existing the program when running into
> > > errors,
> > > see the above and here just "Error: "...
> > >
> > > During the Make opkg..., there're bunch of warning messages can we
> > > redirect
> > > them to the log file?
> > > Also, it seems the log file contents is less than what shows on the
> > > screen
> > > (STDOUT), which I think should be the reverse case, people should
> be
> > > able to
> > > trace more info in the log file? E.g. during downloading rootfs,
> all
> > > the
> > > info where it download from and saved to where are showed on the
> > screen
> > > but
> > > missing in the log file...
> >
> > Log file problem is solved totally by replacing " >> " with "&>>"
> > pointed by Lianhao.
> >
> > >
> > > Toward the end of the installation, I run into:
> > >
> > > [ADT_INST] Re-generate environment script file according to rootfs
> > > location.
> > > Ls: cannot access /opt/poky/0.9+snapshot-20101211/environment-
> setup-
> > > i586*:
> > > No such file or directory
> > > Sed: no input files
> >
> > Missing guard will be added here.
> > I will send the updated scripts which will address most of the
> problem.
> >
> >
> > Btw: I need someone review the script totally. I am afraid some of
> the
> > scripts
> > Might not obey shell's world conventions since this is the first
> script
> > I wrote.
> > I have to say I did try several blackbox test yet failed to cover all
> > corner problems.
> >
> > Updated scripts will soon be published.
> >
> > Thanks & Regards,
> > criping
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

