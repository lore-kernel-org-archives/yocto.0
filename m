Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qc0-f170.google.com (mail-qc0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5106E00742
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2013 07:09:12 -0700 (PDT)
Received: by mail-qc0-f170.google.com with SMTP id s11so2469425qcw.29
	for <yocto@yoctoproject.org>; Fri, 07 Jun 2013 07:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=EAQLqlojsoTUxWCAR7MJ7o8W63A/Xs0B+omamjS4QIQ=;
	b=WWiSJu0KOlJ2jEHCWBPRJkK4V08LL4KByP/nGgoFePCMEEDDE+isaJjFR6yJZ5rQ3R
	UAQJAvSdlY2JzorDFV0xEzVVwYDibFAQwdCXYpzS/VIM3QGcvG4JSL4Y/3wWR0516jy4
	QVKtSpb06hgjBqoZNjq5geBwkB/idjTh3aVqVXXwhBGexPm2zs1dyeMthPZW9I7F2j80
	jN4wYG10Jb0PFXXLkoh7nkZJcjUwjrBe8h/SDLWhqI9jHfRgd8ALb5cFMVU/yoxaehUF
	ruRFe8RuXK9OahVcwD+OWDAPbfIyOp5knq4ZwF73sZAyGQnflhq13RvrEQctSIVXIto5
	FP3A==
MIME-Version: 1.0
X-Received: by 10.49.96.104 with SMTP id dr8mr47239944qeb.43.1370614152136;
	Fri, 07 Jun 2013 07:09:12 -0700 (PDT)
Received: by 10.49.24.239 with HTTP; Fri, 7 Jun 2013 07:09:12 -0700 (PDT)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C73C38476@ORSMSX103.amr.corp.intel.com>
References: <CAFMfyzKvAfk7o_r1d0EjJw=kHTEY4_AfkGdprxPAhmv9MSkt1A@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C73C379DD@ORSMSX103.amr.corp.intel.com>
	<CAFMfyzJb4U0AXTfC80TtizhX_AzOxuDk5D_Lkgz10SopdTGxWA@mail.gmail.com>
	<CAFMfyzJjrtEkON57=7+d433FMZo+memj8oMufqAWb5tTysydaQ@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C73C38476@ORSMSX103.amr.corp.intel.com>
Date: Fri, 7 Jun 2013 16:09:12 +0200
Message-ID: <CAFyqS9pfyWVpDUNt8ZodfbWrhjyWOV_C-s-9_Vjf_JAGN4Xp8w@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
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
X-List-Received-Date: Fri, 07 Jun 2013 14:09:13 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 7, 2013 at 4:03 PM, Zhang, Jessica <jessica.zhang@intel.com> wr=
ote:
> Yes, you need those packages in your sysroot for cross development.
>
>
Ok. But out of curiosity, why should I need X11 packages for a simple
command-line based toolchain?
I assume that none of these X11 packages gets copied to my target
device rootfs, or?

>
> Cheers,
>
> Jessica
>
>
>
> From: satyaswaroop.damarla@gmail.com [mailto:satyaswaroop.damarla@gmail.c=
om]
> On Behalf Of DAMARLA Satya Swaroop
> Sent: Friday, June 07, 2013 12:10 AM
> To: Zhang, Jessica; yocto@yoctoproject.org
> Subject: Re: [yocto] Application Development
>
>
>
> SHould we install development and debigging pacakages in the images when =
we
> want to build a toolchain.. I mean this
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
> I have an issue... This is such a long error ... I even did a fresh build=
 by
> deleting the "tmp" directory. The image build went very well but the
> toolchain is always giving me a error...
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
> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-pok=
y-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sdk.4066
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
> |  packagegroup-cross-canadian-arm : Depends: gdb-cross-canadian-arm but =
it
> is not installable
>
> |                                    Depends: gcc-cross-canadian-arm but =
it
> is not installable
>
> |                                    Depends: meta-environment-arm but it=
 is
> not installable
>
> |                                    Depends: binutils-cross-canadian-arm
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
> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-pok=
y-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sdk.4066
> for further information)
>
> ERROR: Task 10
> (/home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-skidata=
.bb,
> do_populate_sdk) failed with exit code '1'
>
> NOTE: Tasks Summary: Attempted 5020 tasks of which 4939 didn't need to be
> rerun and 1 failed.
>
>
>
> Summary: 1 task failed:
>
>
> /home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-skidata.=
bb,
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
> On Thu, Jun 6, 2013 at 6:52 AM, Zhang, Jessica <jessica.zhang@intel.com>
> wrote:
>
> Hi Satya,
>
>
>
> Use bitbake image-name =96c populate_sdk, this allows you to create a
> toolchain with sysroot that match your target image that allows you to
> develop app against=85
>
>
>
> Cheers,
>
> Jessica
>
>
>
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg]
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
> I have an issue... I created a custom image based on NVIDIA Tegra2 with a
> custom kernel. I installed  packages specific Tegra board and application
> specific. Now we want to send the baord and the new linux image for
> application development...
>
>
>
> As I went through ADT manual, I only found qemu based toolchains but I wa=
nt
> to create toolchain based on my rootfs and kernel... so that the developm=
ent
> team can develop a voip application for the board... I am kind of stuck h=
ow
> to proceed in this issue...
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
> From: satyaswaroop.damarla@gmail.com [mailto:satyaswaroop.damarla@gmail.c=
om]
> On Behalf Of DAMARLA Satya Swaroop
> Sent: Friday, June 07, 2013 12:10 AM
> To: Zhang, Jessica; yocto@yoctoproject.org
> Subject: Re: [yocto] Application Development
>
>
>
> SHould we install development and debigging pacakages in the images when =
we
> want to build a toolchain.. I mean this
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
> I have an issue... This is such a long error ... I even did a fresh build=
 by
> deleting the "tmp" directory. The image build went very well but the
> toolchain is always giving me a error...
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
> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-pok=
y-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sdk.4066
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
> |  packagegroup-cross-canadian-arm : Depends: gdb-cross-canadian-arm but =
it
> is not installable
>
> |                                    Depends: gcc-cross-canadian-arm but =
it
> is not installable
>
> |                                    Depends: meta-environment-arm but it=
 is
> not installable
>
> |                                    Depends: binutils-cross-canadian-arm
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
> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-pok=
y-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sdk.4066
> for further information)
>
> ERROR: Task 10
> (/home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-skidata=
.bb,
> do_populate_sdk) failed with exit code '1'
>
> NOTE: Tasks Summary: Attempted 5020 tasks of which 4939 didn't need to be
> rerun and 1 failed.
>
>
>
> Summary: 1 task failed:
>
>
> /home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-skidata.=
bb,
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
> On Thu, Jun 6, 2013 at 6:52 AM, Zhang, Jessica <jessica.zhang@intel.com>
> wrote:
>
> Hi Satya,
>
>
>
> Use bitbake image-name =96c populate_sdk, this allows you to create a
> toolchain with sysroot that match your target image that allows you to
> develop app against=85
>
>
>
> Cheers,
>
> Jessica
>
>
>
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg]
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
> I have an issue... I created a custom image based on NVIDIA Tegra2 with a
> custom kernel. I installed  packages specific Tegra board and application
> specific. Now we want to send the baord and the new linux image for
> application development...
>
>
>
> As I went through ADT manual, I only found qemu based toolchains but I wa=
nt
> to create toolchain based on my rootfs and kernel... so that the developm=
ent
> team can develop a voip application for the board... I am kind of stuck h=
ow
> to proceed in this issue...
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

