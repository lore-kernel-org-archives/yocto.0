Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63BE4E00742
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2013 07:21:12 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 07 Jun 2013 07:18:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,822,1363158000"; d="scan'208";a="346383961"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by fmsmga001.fm.intel.com with ESMTP; 07 Jun 2013 07:21:34 -0700
Received: from orsmsx107.amr.corp.intel.com (10.22.240.5) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 7 Jun 2013 07:21:10 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.22]) by
	ORSMSX107.amr.corp.intel.com ([169.254.1.206]) with mapi id
	14.03.0123.003; Fri, 7 Jun 2013 07:21:10 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: =?iso-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
Thread-Topic: [yocto] Application Development
Thread-Index: AQHOYe3TEb9xDGGLo0OLuHBVplozDZkoHv2wgADeg4CAAVAkgP///fLwgAB3EgD//4wS8A==
Date: Fri, 7 Jun 2013 14:21:10 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C384BA@ORSMSX103.amr.corp.intel.com>
References: <CAFMfyzKvAfk7o_r1d0EjJw=kHTEY4_AfkGdprxPAhmv9MSkt1A@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C73C379DD@ORSMSX103.amr.corp.intel.com>
	<CAFMfyzJb4U0AXTfC80TtizhX_AzOxuDk5D_Lkgz10SopdTGxWA@mail.gmail.com>
	<CAFMfyzJjrtEkON57=7+d433FMZo+memj8oMufqAWb5tTysydaQ@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C73C38476@ORSMSX103.amr.corp.intel.com>
	<CAFyqS9pfyWVpDUNt8ZodfbWrhjyWOV_C-s-9_Vjf_JAGN4Xp8w@mail.gmail.com>
In-Reply-To: <CAFyqS9pfyWVpDUNt8ZodfbWrhjyWOV_C-s-9_Vjf_JAGN4Xp8w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Application Development
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
X-List-Received-Date: Fri, 07 Jun 2013 14:21:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

When you create your image, what profile did you use.  Are you building one=
 of our existing images, e.g. core-image-minimal, etc. or it's a customized=
 image and if so, how did you customize your image, via layer or install ex=
tra packages?  I think x11 is brought in via some package dependency.  You =
said you were able to build the image, was the x11 packages there?  We're b=
uilding a toolchain plus the sysroot that matching the rootfs of your targe=
t image here so it's not just the toolchain that is built.

-----Original Message-----
From: Hans Beck=E9rus [mailto:hans.beckerus@gmail.com]
Sent: Friday, June 07, 2013 7:09 AM
To: Zhang, Jessica
Cc: DAMARLA Satya Swaroop; yocto@yoctoproject.org
Subject: Re: [yocto] Application Development

On Fri, Jun 7, 2013 at 4:03 PM, Zhang, Jessica <jessica.zhang@intel.com> wr=
ote:
> Yes, you need those packages in your sysroot for cross development.
>
>
Ok. But out of curiosity, why should I need X11 packages for a simple comma=
nd-line based toolchain?
I assume that none of these X11 packages gets copied to my target device ro=
otfs, or?

>
> Cheers,
>
> Jessica
>
>
>
> From: satyaswaroop.damarla@gmail.com
> [mailto:satyaswaroop.damarla@gmail.com]
> On Behalf Of DAMARLA Satya Swaroop
> Sent: Friday, June 07, 2013 12:10 AM
> To: Zhang, Jessica; yocto@yoctoproject.org
> Subject: Re: [yocto] Application Development
>
>
>
> SHould we install development and debigging pacakages in the images
> when we want to build a toolchain.. I mean this
>
>
>
>  "dbg-pkgs"       - add -dbg packages for all installed packages
>
> #                     (adds symbol information for debugging/profiling)
>
> #  "dev-pkgs"       - add -dev packages for all installed packages
>
> #                     (useful if you want to develop against libs in the
> image)
>
>
>
>
>
> Greets,
>
> Satya
>
>
>
> On Thu, Jun 6, 2013 at 1:07 PM, DAMARLA Satya Swaroop
> <swaroop.damarla@gmail.com> wrote:
>
> Hi Jessica & Philip,
>
>
>
> I have an issue... This is such a long error ... I even did a fresh
> build by deleting the "tmp" directory. The image build went very well
> but the toolchain is always giving me a error...
>
>
>
> | Selecting previously unselected package xz-dev.
>
> | Unpacking xz-dev (from .../xz-dev_5.1.2alpha-r0_armel.deb) ...
>
> | The following package disappeared from your system as
>
> | all files have been overwritten by other packages:
>
> |   avahi
>
> | log_check: Using
> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-
> poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sdk.
> 4066
> as logfile
>
> | Logfile is clean
>
> | Installing NATIVESDK packages
>
> | Ign file: ./ InRelease
>
> | Ign file: ./ InRelease
>
> | Ign file: ./ Release.gpg
>
> | Ign file: ./ Release.gpg
>
> | Get:1 file: ./ Release [24 B]
>
> | Get:2 file: ./ Release [11 B]
>
> | Ign file: ./ Translation-en
>
> | Ign file: ./ Translation-en
>
> | Reading package lists...
>
> | W: Ignoring Provides line with DepCompareOp for package
> nativesdk-pkgconfig__pkg-config__
>
> | W: You may want to run apt-get update to correct these problems
>
> | Reading package lists...
>
> | Building dependency tree...
>
> | Reading state information...
>
> | Some packages could not be installed. This may mean that you have
>
> | requested an impossible situation or if you are using the unstable
>
> | distribution that some required packages have not yet been created
>
> | or been moved out of Incoming.
>
> | The following information may help to resolve the situation:
>
> |
>
> | The following packages have unmet dependencies:
>
> |  packagegroup-cross-canadian-arm : Depends: gdb-cross-canadian-arm
> | but it
> is not installable
>
> |                                    Depends: gcc-cross-canadian-arm
> | but it
> is not installable
>
> |                                    Depends: meta-environment-arm but
> | it is
> not installable
>
> |                                    Depends:
> | binutils-cross-canadian-arm
> but it is not installable
>
> | W: Ignoring Provides line with DepCompareOp for package
> nativesdk-pkgconfig__pkg-config__
>
> | W: You may want to run apt-get update to correct these problems
>
> | E: Unable to correct problems, you have held broken packages.
>
> | DEBUG: Python function do_populate_sdk finished
>
> | ERROR: Function failed: populate_sdk_image (see
> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-
> poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sdk.
> 4066
> for further information)
>
> ERROR: Task 10
> (/home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-skid
> ata.bb,
> do_populate_sdk) failed with exit code '1'
>
> NOTE: Tasks Summary: Attempted 5020 tasks of which 4939 didn't need to
> be rerun and 1 failed.
>
>
>
> Summary: 1 task failed:
>
>
> /home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-skida
> ta.bb,
> do_populate_sdk
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
>
> I am not able to install those packages as they say there are no
> installation candidate for them...
>
>
>
> On Thu, Jun 6, 2013 at 6:52 AM, Zhang, Jessica
> <jessica.zhang@intel.com>
> wrote:
>
> Hi Satya,
>
>
>
> Use bitbake image-name -c populate_sdk, this allows you to create a
> toolchain with sysroot that match your target image that allows you to
> develop app against...
>
>
>
> Cheers,
>
> Jessica
>
>
>
> From: yocto-bounces@yoctoproject.org
> [mailto:yocto-bounces@yoctoproject.org]
> On Behalf Of Satya Swaroop Damarla
> Sent: Wednesday, June 05, 2013 6:05 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] Application Development
>
>
>
> Hi Guys,
>
>
>
> I have an issue... I created a custom image based on NVIDIA Tegra2
> with a custom kernel. I installed  packages specific Tegra board and
> application specific. Now we want to send the baord and the new linux
> image for application development...
>
>
>
> As I went through ADT manual, I only found qemu based toolchains but I
> want to create toolchain based on my rootfs and kernel... so that the
> development team can develop a voip application for the board... I am
> kind of stuck how to proceed in this issue...
>
>
>
> I really need a small way out and hopefully I will catch things
> automatically..
>
>
>
> Cheers,
>
> Satya
>
>
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


On Fri, Jun 7, 2013 at 4:03 PM, Zhang, Jessica <jessica.zhang@intel.com> wr=
ote:
> Yes, you need those packages in your sysroot for cross development.
>
>
>
> Cheers,
>
> Jessica
>
>
>
> From: satyaswaroop.damarla@gmail.com
> [mailto:satyaswaroop.damarla@gmail.com]
> On Behalf Of DAMARLA Satya Swaroop
> Sent: Friday, June 07, 2013 12:10 AM
> To: Zhang, Jessica; yocto@yoctoproject.org
> Subject: Re: [yocto] Application Development
>
>
>
> SHould we install development and debigging pacakages in the images
> when we want to build a toolchain.. I mean this
>
>
>
>  "dbg-pkgs"       - add -dbg packages for all installed packages
>
> #                     (adds symbol information for debugging/profiling)
>
> #  "dev-pkgs"       - add -dev packages for all installed packages
>
> #                     (useful if you want to develop against libs in the
> image)
>
>
>
>
>
> Greets,
>
> Satya
>
>
>
> On Thu, Jun 6, 2013 at 1:07 PM, DAMARLA Satya Swaroop
> <swaroop.damarla@gmail.com> wrote:
>
> Hi Jessica & Philip,
>
>
>
> I have an issue... This is such a long error ... I even did a fresh
> build by deleting the "tmp" directory. The image build went very well
> but the toolchain is always giving me a error...
>
>
>
> | Selecting previously unselected package xz-dev.
>
> | Unpacking xz-dev (from .../xz-dev_5.1.2alpha-r0_armel.deb) ...
>
> | The following package disappeared from your system as
>
> | all files have been overwritten by other packages:
>
> |   avahi
>
> | log_check: Using
> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-
> poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sdk.
> 4066
> as logfile
>
> | Logfile is clean
>
> | Installing NATIVESDK packages
>
> | Ign file: ./ InRelease
>
> | Ign file: ./ InRelease
>
> | Ign file: ./ Release.gpg
>
> | Ign file: ./ Release.gpg
>
> | Get:1 file: ./ Release [24 B]
>
> | Get:2 file: ./ Release [11 B]
>
> | Ign file: ./ Translation-en
>
> | Ign file: ./ Translation-en
>
> | Reading package lists...
>
> | W: Ignoring Provides line with DepCompareOp for package
> nativesdk-pkgconfig__pkg-config__
>
> | W: You may want to run apt-get update to correct these problems
>
> | Reading package lists...
>
> | Building dependency tree...
>
> | Reading state information...
>
> | Some packages could not be installed. This may mean that you have
>
> | requested an impossible situation or if you are using the unstable
>
> | distribution that some required packages have not yet been created
>
> | or been moved out of Incoming.
>
> | The following information may help to resolve the situation:
>
> |
>
> | The following packages have unmet dependencies:
>
> |  packagegroup-cross-canadian-arm : Depends: gdb-cross-canadian-arm
> | but it
> is not installable
>
> |                                    Depends: gcc-cross-canadian-arm
> | but it
> is not installable
>
> |                                    Depends: meta-environment-arm but
> | it is
> not installable
>
> |                                    Depends:
> | binutils-cross-canadian-arm
> but it is not installable
>
> | W: Ignoring Provides line with DepCompareOp for package
> nativesdk-pkgconfig__pkg-config__
>
> | W: You may want to run apt-get update to correct these problems
>
> | E: Unable to correct problems, you have held broken packages.
>
> | DEBUG: Python function do_populate_sdk finished
>
> | ERROR: Function failed: populate_sdk_image (see
> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-
> poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sdk.
> 4066
> for further information)
>
> ERROR: Task 10
> (/home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-skid
> ata.bb,
> do_populate_sdk) failed with exit code '1'
>
> NOTE: Tasks Summary: Attempted 5020 tasks of which 4939 didn't need to
> be rerun and 1 failed.
>
>
>
> Summary: 1 task failed:
>
>
> /home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-skida
> ta.bb,
> do_populate_sdk
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
>
> I am not able to install those packages as they say there are no
> installation candidate for them...
>
>
>
> On Thu, Jun 6, 2013 at 6:52 AM, Zhang, Jessica
> <jessica.zhang@intel.com>
> wrote:
>
> Hi Satya,
>
>
>
> Use bitbake image-name -c populate_sdk, this allows you to create a
> toolchain with sysroot that match your target image that allows you to
> develop app against...
>
>
>
> Cheers,
>
> Jessica
>
>
>
> From: yocto-bounces@yoctoproject.org
> [mailto:yocto-bounces@yoctoproject.org]
> On Behalf Of Satya Swaroop Damarla
> Sent: Wednesday, June 05, 2013 6:05 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] Application Development
>
>
>
> Hi Guys,
>
>
>
> I have an issue... I created a custom image based on NVIDIA Tegra2
> with a custom kernel. I installed  packages specific Tegra board and
> application specific. Now we want to send the baord and the new linux
> image for application development...
>
>
>
> As I went through ADT manual, I only found qemu based toolchains but I
> want to create toolchain based on my rootfs and kernel... so that the
> development team can develop a voip application for the board... I am
> kind of stuck how to proceed in this issue...
>
>
>
> I really need a small way out and hopefully I will catch things
> automatically..
>
>
>
> Cheers,
>
> Satya
>
>
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

