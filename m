Return-Path: <simon.li@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 05E554C80AE6
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2011 01:16:02 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 31 Mar 2011 23:16:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,281,1299484800"; d="scan'208";a="727804453"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 31 Mar 2011 23:16:02 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 1 Apr 2011 14:15:43 +0800
Received: from pgsmsx507.gar.corp.intel.com ([10.221.43.89]) by
	PGSMSX509.gar.corp.intel.com ([172.30.13.17]) with mapi; Fri, 1 Apr 2011
	14:15:43 +0800
From: "Li, Simon" <simon.li@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>
Date: Fri, 1 Apr 2011 14:15:41 +0800
Thread-Topic: [yocto] How to compile Qt library with bitbake?
Thread-Index: AcvvwdIOnP7qxL15TyCCb6V9SrctvQAcYHXA
Message-ID: <23F1A04A50711046AF124F3D4D1EB2ECC073F5EC@pgsmsx507.gar.corp.intel.com>
References: <23F1A04A50711046AF124F3D4D1EB2ECC073F3FE@pgsmsx507.gar.corp.intel.com>
	<4D94AD91.2060207@intel.com>
In-Reply-To: <4D94AD91.2060207@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Mailman-Approved-At: Sun, 03 Apr 2011 16:48:38 -0500
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to compile Qt library with bitbake?
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
X-List-Received-Date: Fri, 01 Apr 2011 06:16:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Saul,
Thanks for your reply. However, I got error messages as below:
It seems not support "poky-image-sato-sdk"
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
simonli@simonli-Aspire-2930:~/Yocto_related/pocky-4.0-build$ bitbake poky-i=
mage-sato-sdk
NOTE: Psyco JIT Compiler (http://psyco.sf.net) not available. Install it to=
 increase performance.
NOTE: Handling BitBake files: \ (0844/0844) [100 %]
Parsing of 844 .bb files complete (791 cached, 53 parsed). 997 targets, 34 =
skipped, 0 masked, 0 errors.

OE Build Configuration:
BB_VERSION        =3D "1.11.0"
METADATA_BRANCH   =3D "<unknown>"
METADATA_REVISION =3D "<unknown>"
TARGET_ARCH       =3D "i586"
TARGET_OS         =3D "linux"
MACHINE           =3D "qemux86"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "0.9"
TARGET_FPU        =3D ""

ERROR: Nothing PROVIDES 'poky-image-sato-sdk'
Command execution failed: Traceback (most recent call last):
  File "/home/simonli/Yocto_related/laverne-4.0.1/scripts/..//bitbake/lib/b=
b/command.py", line 88, in runAsyncCommand
    commandmethod(self.cmds_async, self, options)
  File "/home/simonli/Yocto_related/laverne-4.0.1/scripts/..//bitbake/lib/b=
b/command.py", line 184, in buildTargets
    command.cooker.buildTargets(pkgs_to_build, task)
  File "/home/simonli/Yocto_related/laverne-4.0.1/scripts/..//bitbake/lib/b=
b/cooker.py", line 756, in buildTargets
    taskdata.add_provider(localdata, self.status, k)
  File "/home/simonli/Yocto_related/laverne-4.0.1/scripts/..//bitbake/lib/b=
b/taskdata.py", line 354, in add_provider
    self.add_provider_internal(cfgData, dataCache, item)
  File "/home/simonli/Yocto_related/laverne-4.0.1/scripts/..//bitbake/lib/b=
b/taskdata.py", line 374, in add_provider_internal
    raise bb.providers.NoProvider(item)
NoProvider: poky-image-sato-sdk
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Best Regards,

Simon


-----Original Message-----
From: Wold, Saul=20
Sent: Friday, April 01, 2011 12:37 AM
To: Li, Simon
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] How to compile Qt library with bitbake?

On 03/30/2011 11:52 PM, Li, Simon wrote:
> To whom may concern,
>
> Since Qt library is not existed in the default build configuration, I
> have to port it by myself.
>
> Is there any plan to compile Qt in the Yocto? I cannot find Qt with
> zypper as well.
>
Simon,

Qt4 is part of the yocto meta data.

The poky-image-sato-sdk image contains the qt4-pkgs, so you can use the
following command to build the image:

bitbake poky-image-sato-sdk

Sau!


> If not, is there any document to describe how to complie Qt with bitbake?
>
> Best Regards,
>
> Simon Li
>
> Intel Software & Service Group
>
> B1 #205 Tun-Hwa North Rd, Taipei, Taiwan
>
> Desk
>
> =09
>
> +886-2-2514-4287
>
> Mobile
>
> =09
>
> +886-987-303-523
>
> E-Mail
>
> =09
>
> simon.li@intel.com <mailto:gorden.nieh@intel.com>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


