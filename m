Return-Path: <rahul.saxena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 659A6E0142C
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2012 09:38:01 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 13 Sep 2012 09:38:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,417,1344236400"; d="scan'208";a="221767984"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga001.fm.intel.com with ESMTP; 13 Sep 2012 09:38:00 -0700
Received: from orsmsx107.amr.corp.intel.com ([169.254.10.146]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.89]) with mapi id
	14.01.0355.002; Thu, 13 Sep 2012 09:38:00 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>, Chris Tapp
	<opensource@keylevel.com>
Thread-Topic: [yocto] Denzil / Cedartrail / EGL/GLES under X
Thread-Index: AQHNj4bb9TQ+w4B1/0iGcaBFRlCdl5eIlSAA///nbvA=
Date: Thu, 13 Sep 2012 16:37:59 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C49003CCA801@ORSMSX107.amr.corp.intel.com>
References: <718DB276-4C65-4925-B1E9-3EFEA0B8B4B7@keylevel.com>
	<CAJTo0Lb3wH6UQ5SY5mF9seq2cK2k-FguRhvTbASkYBqGTc127Q@mail.gmail.com>
In-Reply-To: <CAJTo0Lb3wH6UQ5SY5mF9seq2cK2k-FguRhvTbASkYBqGTc127Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: Denzil / Cedartrail / EGL/GLES under X
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
X-List-Received-Date: Thu, 13 Sep 2012 16:38:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ross, the definition of RPROVIDES is not given in the Yocto project referen=
ce manual.
Perhaps it should be added to the manual ?

Thanks
Rahul

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Burton, Ross
Sent: Thursday, September 13, 2012 4:04 AM
To: Chris Tapp
Cc: yocto@yoctoproject.org Project
Subject: Re: [yocto] Denzil / Cedartrail / EGL/GLES under X

Hi Chris,

On 10 September 2012 19:56, Chris Tapp <opensource@keylevel.com> wrote:
> I've managed to get to the point where I think EGL is up (no API errors r=
eported), but if I try anything on the GL side (e.g. glClear to get the bac=
kground color) I'm not getting anything showing on the display when I call =
eglSwapBuffers().

GL or GLES?  GL on Cedar Trail is very limited , you're heavily recommended=
 to use GLES.

> I'm not sure how to configure my build to use the cdv-pvr-driver libs rat=
her than the MESA-dri equivalents either. Both provide libGLESv2, etc., but=
 I want the cdv-pvr-driver versions in the final image. However, cdv-prv-dr=
iver doesn't seem to have an include directory to use at build time, so MES=
A needs to be there as well. Is there a PREFERRED_PROVIDER_virtual/libgl va=
lue I can use?

This is a bit of a mess at the moment, and I want to sort it, but it's a co=
mplicated mess.

Building against mesa-dri shouldn't be a problem as all GL implementations =
have the same ABI, assuming you can get the cdv-prv-driver package installe=
d and not mesa-dri on your image.
Preferred providers only work for built-time dependencies, so assuming that=
 you're having problems with getting mesa-dri out and cdv-prv-driver in the=
 image you'll need to use something like RCONFLICTS and RPROVIDES so that t=
he package system uses cdv-prv-driver instead of mesa-dri.

Ross
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

