Return-Path: <liping.ke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4683B4C80048
	for <yocto@yoctoproject.org>; Tue, 14 Dec 2010 00:40:22 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Dec 2010 22:40:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,340,1288594800"; d="scan'208";a="583495521"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 13 Dec 2010 22:40:21 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 14 Dec 2010 14:40:18 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 14 Dec 2010 14:40:18 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 14 Dec 2010 14:40:17 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Date: Tue, 14 Dec 2010 14:40:16 +0800
Thread-Topic: Try latest yocto adt script installer 
Thread-Index: Acual4vOqTvhX8f5Tsm9er0UcNM8oAAfzMiAAA+QidA=
Message-ID: <789F9655DD1B8F43B48D77C5D3065973313A69C0@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D3065973312DC806@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950465CBC4@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA950465CBC4@orsmsx504.amr.corp.intel.com>
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
X-List-Received-Date: Tue, 14 Dec 2010 06:40:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> Why we must run the script under the adt-installer directory? Actually
> I
> tried to run under $HOME or / but specifying the full path to
> yocto_installer, and got the error:
> [ADT_INST] script file util is not  found!

Oh, it's caused by the include grammar. I need to check how to solve the
relative path problem with include grammar in shell script. It should not
be difficult.

>=20
> #############################################
> # Meet error when installing Yocto ADT.
> #############################################
>=20
> 2 comments here:
> 1. we should be able to allow user run the yocto_installer script from
> any
> location and it should be able to locate the needed surporting files or
> scripts
> 2. As a convention and to be consistent, I'd suggest change the above
> error
> message as "[ADT_INST] Error: Script file util is not found!"  There're
> several error messages in the scripts has the Error message format that
> I'm
> talking about here, which you can look up as a reference.

No problem, I will unify all error messages.
>=20
> > 3. Build log are located @ adt_installer/yoctoadt_installer.log
> > 4. User config ( install which targets) are defined/changed in
> > Yocto_installer.conf. Note: now only i586 qemu rootfs are available
> > in repository.
> >
> > Any problem, just let me know.
>=20
> Just by playing with it, I change YOCTOADT_TARGETS=3D"ppc" in
> yocto_installer.conf. And the prompt that I got is as follows:
>=20
> [ADT_INST] selected archs defined in Host Area Item: YOCTOADT_TARGETS
> is not
> valid!
> Error: Terminate installation process due to errors!
It's expected behavior. Since powerpcc is the correct name.


> 3. It would be nice to point out Host Area resides in which file, and
> also
> tells user what are the valid entries


> 4. It's not consistent when existing the program when running into
> errors,
> see the above and here just "Error: "...
>=20
> During the Make opkg..., there're bunch of warning messages can we
> redirect
> them to the log file?
> Also, it seems the log file contents is less than what shows on the
> screen
> (STDOUT), which I think should be the reverse case, people should be
> able to
> trace more info in the log file? E.g. during downloading rootfs, all
> the
> info where it download from and saved to where are showed on the screen
> but
> missing in the log file...

Log file problem is solved totally by replacing " >> " with "&>>" pointed b=
y Lianhao.=20

>=20
> Toward the end of the installation, I run into:
>=20
> [ADT_INST] Re-generate environment script file according to rootfs
> location.
> Ls: cannot access /opt/poky/0.9+snapshot-20101211/environment-setup-
> i586*:
> No such file or directory
> Sed: no input files

Missing guard will be added here.=20
I will send the updated scripts which will address most of the problem.


Btw: I need someone review the script totally. I am afraid some of the scri=
pts
Might not obey shell's world conventions since this is the first script I w=
rote.
I have to say I did try several blackbox test yet failed to cover all corne=
r problems.

Updated scripts will soon be published.

Thanks & Regards,
criping



