Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f46.google.com (mail-qe0-f46.google.com
	[209.85.128.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E412E015EA
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2013 04:28:02 -0700 (PDT)
Received: by mail-qe0-f46.google.com with SMTP id nd7so1450993qeb.33
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2013 04:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=pLptyCHYfznPsRSabgkxcC5Pa1lGC9vib9XvHintkZU=;
	b=Lwpcbac69qDRmVG8DDif31u4HYOjviJblNfW/nZZRc9uZZHv4aVybY3P+5Ok55WxtJ
	JZviwqZ/3gA2FLwi417ydgQBSrxY12EVN458gkWtSFoFEiUlw2nxJCgemJ+5Lzx1pMjV
	eWwLWwvNWGjheSUch8VIPENchS1zGu6pOAl2Lb1txc3eXIqrFsjiqu7Zjc7CzHuON5wK
	aKTWG2QkBc2ly0RGiekJSaoXXo8tCkYB0phHfx6JRSXM2hzxvheP+eoswCltRtp4c4eN
	LDG5tLGtkYb+Vae63846xqM0rs1L/Mn6LSVQe3SSIIux1eG7rIooeYRv1wM8PLt0fUiz
	fZ4g==
MIME-Version: 1.0
X-Received: by 10.49.85.131 with SMTP id h3mr10349342qez.42.1370863682245;
	Mon, 10 Jun 2013 04:28:02 -0700 (PDT)
Received: by 10.49.24.239 with HTTP; Mon, 10 Jun 2013 04:28:02 -0700 (PDT)
In-Reply-To: <CAFMfyzKgaoFNRjvw9qy14SmqXAqhWsHcBTaeZnMog1DUsaFLjQ@mail.gmail.com>
References: <CAFMfyzKvAfk7o_r1d0EjJw=kHTEY4_AfkGdprxPAhmv9MSkt1A@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C73C379DD@ORSMSX103.amr.corp.intel.com>
	<CAFMfyzJb4U0AXTfC80TtizhX_AzOxuDk5D_Lkgz10SopdTGxWA@mail.gmail.com>
	<CAFMfyzJjrtEkON57=7+d433FMZo+memj8oMufqAWb5tTysydaQ@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C73C38476@ORSMSX103.amr.corp.intel.com>
	<CAFyqS9pfyWVpDUNt8ZodfbWrhjyWOV_C-s-9_Vjf_JAGN4Xp8w@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C73C384BA@ORSMSX103.amr.corp.intel.com>
	<CAFyqS9rwJZM3bO4zbj2JFcKrTNdQ20uWG3dXqW=v921zsxfWQQ@mail.gmail.com>
	<CAFyqS9qxuw0G7nQOPPwdNR9cnP2yYZ-L+XjCDEdTFsV7BrKJeA@mail.gmail.com>
	<CAFMfyzKgaoFNRjvw9qy14SmqXAqhWsHcBTaeZnMog1DUsaFLjQ@mail.gmail.com>
Date: Mon, 10 Jun 2013 13:28:02 +0200
Message-ID: <CAFyqS9qQ6uotr0KEEjFG8OrO8H=nwC4x+22kZYuhxtrw2XFMRg@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 10 Jun 2013 11:28:03 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 10, 2013 at 12:33 PM, DAMARLA Satya Swaroop
<satyaswaroop.damarla@gmail.com> wrote:
> I installed "dev-pkgs" in EXTRA_IMAGE_FEATURES ... and then build the
> toolchain, it was successfull....
>
That should already be provided by image.bbclass?
Checking the file packagegroup-cross-canadian.bbclass i found this

# For backwards compatibility after rename
RPROVIDES_${PN} =3D "task-cross-canadian-${TRANSLATED_TARGET_ARCH}"

RDEPENDS_${PN} =3D "\
    binutils-cross-canadian-${TRANSLATED_TARGET_ARCH} \
    gdb-cross-canadian-${TRANSLATED_TARGET_ARCH} \
    gcc-cross-canadian-${TRANSLATED_TARGET_ARCH} \
    meta-environment-${TRANSLATED_TARGET_ARCH} \
    "

So, now I understand were the dependency to meta-environment-arm came
from. But how to resolve it?
Am I missing some package(s) in my environment? What *should* provide
meta-environment-arm?
All I can find under Poky is meta-environment.bb.

Hans

>
> On Mon, Jun 10, 2013 at 12:03 PM, Hans Beck=E9rus <hans.beckerus@gmail.co=
m>
> wrote:
>>
>> Any updates on this matter? Do I need to provide more information?
>> /Hans
>>
>> On Fri, Jun 7, 2013 at 4:29 PM, Hans Beck=E9rus <hans.beckerus@gmail.com=
>
>> wrote:
>> > On Fri, Jun 7, 2013 at 4:21 PM, Zhang, Jessica <jessica.zhang@intel.co=
m>
>> > wrote:
>> >> When you create your image, what profile did you use.  Are you buildi=
ng
>> >> one of our existing images, e.g. core-image-minimal, etc. or it's a
>> >> customized image and if so, how did you customize your image, via lay=
er or
>> >> install extra packages?  I think x11 is brought in via some package
>> >> dependency.  You said you were able to build the image, was the x11 p=
ackages
>> >> there?  We're building a toolchain plus the sysroot that matching the=
 rootfs
>> >> of your target image here so it's not just the toolchain that is buil=
t.
>> >>
>> >
>> > Hi Jessica.
>> >
>> > I am building my own image recipe that basically does:
>> >
>> > require recipes-core/images/core-image-minimal-mtdutils.bb
>> > IMAGE_FEATURES +=3D " ssh-server-dropbear \
>> >                   "
>> >
>> > Its a console-only type of image for an embedded device with no
>> > graphic support what so ever.
>> > Building the the rootfs and booting it up on the device works fine.
>> > I have had no X11 dependency until I added tools-sdk to IMAGE_FEATURES
>> > as suggested.
>> > What I am after is a command-line-only toolchain which will be using
>> > the sysroot from my rootfs build.
>> > Maybe I am asking for something that is not supported?
>> >
>> > Hans
>> >
>> >
>> >> -----Original Message-----
>> >> From: Hans Beck=E9rus [mailto:hans.beckerus@gmail.com]
>> >> Sent: Friday, June 07, 2013 7:09 AM
>> >> To: Zhang, Jessica
>> >> Cc: DAMARLA Satya Swaroop; yocto@yoctoproject.org
>> >> Subject: Re: [yocto] Application Development
>> >>
>> >> On Fri, Jun 7, 2013 at 4:03 PM, Zhang, Jessica
>> >> <jessica.zhang@intel.com> wrote:
>> >>> Yes, you need those packages in your sysroot for cross development.
>> >>>
>> >>>
>> >> Ok. But out of curiosity, why should I need X11 packages for a simple
>> >> command-line based toolchain?
>> >> I assume that none of these X11 packages gets copied to my target
>> >> device rootfs, or?
>> >>
>> >>>
>> >>> Cheers,
>> >>>
>> >>> Jessica
>> >>>
>> >>>
>> >>>
>> >>> From: satyaswaroop.damarla@gmail.com
>> >>> [mailto:satyaswaroop.damarla@gmail.com]
>> >>> On Behalf Of DAMARLA Satya Swaroop
>> >>> Sent: Friday, June 07, 2013 12:10 AM
>> >>> To: Zhang, Jessica; yocto@yoctoproject.org
>> >>> Subject: Re: [yocto] Application Development
>> >>>
>> >>>
>> >>>
>> >>> SHould we install development and debigging pacakages in the images
>> >>> when we want to build a toolchain.. I mean this
>> >>>
>> >>>
>> >>>
>> >>>  "dbg-pkgs"       - add -dbg packages for all installed packages
>> >>>
>> >>> #                     (adds symbol information for
>> >>> debugging/profiling)
>> >>>
>> >>> #  "dev-pkgs"       - add -dev packages for all installed packages
>> >>>
>> >>> #                     (useful if you want to develop against libs in
>> >>> the
>> >>> image)
>> >>>
>> >>>
>> >>>
>> >>>
>> >>>
>> >>> Greets,
>> >>>
>> >>> Satya
>> >>>
>> >>>
>> >>>
>> >>> On Thu, Jun 6, 2013 at 1:07 PM, DAMARLA Satya Swaroop
>> >>> <swaroop.damarla@gmail.com> wrote:
>> >>>
>> >>> Hi Jessica & Philip,
>> >>>
>> >>>
>> >>>
>> >>> I have an issue... This is such a long error ... I even did a fresh
>> >>> build by deleting the "tmp" directory. The image build went very wel=
l
>> >>> but the toolchain is always giving me a error...
>> >>>
>> >>>
>> >>>
>> >>> | Selecting previously unselected package xz-dev.
>> >>>
>> >>> | Unpacking xz-dev (from .../xz-dev_5.1.2alpha-r0_armel.deb) ...
>> >>>
>> >>> | The following package disappeared from your system as
>> >>>
>> >>> | all files have been overwritten by other packages:
>> >>>
>> >>> |   avahi
>> >>>
>> >>> | log_check: Using
>> >>> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmon=
y-
>> >>> poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sd=
k.
>> >>> 4066
>> >>> as logfile
>> >>>
>> >>> | Logfile is clean
>> >>>
>> >>> | Installing NATIVESDK packages
>> >>>
>> >>> | Ign file: ./ InRelease
>> >>>
>> >>> | Ign file: ./ InRelease
>> >>>
>> >>> | Ign file: ./ Release.gpg
>> >>>
>> >>> | Ign file: ./ Release.gpg
>> >>>
>> >>> | Get:1 file: ./ Release [24 B]
>> >>>
>> >>> | Get:2 file: ./ Release [11 B]
>> >>>
>> >>> | Ign file: ./ Translation-en
>> >>>
>> >>> | Ign file: ./ Translation-en
>> >>>
>> >>> | Reading package lists...
>> >>>
>> >>> | W: Ignoring Provides line with DepCompareOp for package
>> >>> nativesdk-pkgconfig__pkg-config__
>> >>>
>> >>> | W: You may want to run apt-get update to correct these problems
>> >>>
>> >>> | Reading package lists...
>> >>>
>> >>> | Building dependency tree...
>> >>>
>> >>> | Reading state information...
>> >>>
>> >>> | Some packages could not be installed. This may mean that you have
>> >>>
>> >>> | requested an impossible situation or if you are using the unstable
>> >>>
>> >>> | distribution that some required packages have not yet been created
>> >>>
>> >>> | or been moved out of Incoming.
>> >>>
>> >>> | The following information may help to resolve the situation:
>> >>>
>> >>> |
>> >>>
>> >>> | The following packages have unmet dependencies:
>> >>>
>> >>> |  packagegroup-cross-canadian-arm : Depends: gdb-cross-canadian-arm
>> >>> | but it
>> >>> is not installable
>> >>>
>> >>> |                                    Depends: gcc-cross-canadian-arm
>> >>> | but it
>> >>> is not installable
>> >>>
>> >>> |                                    Depends: meta-environment-arm b=
ut
>> >>> | it is
>> >>> not installable
>> >>>
>> >>> |                                    Depends:
>> >>> | binutils-cross-canadian-arm
>> >>> but it is not installable
>> >>>
>> >>> | W: Ignoring Provides line with DepCompareOp for package
>> >>> nativesdk-pkgconfig__pkg-config__
>> >>>
>> >>> | W: You may want to run apt-get update to correct these problems
>> >>>
>> >>> | E: Unable to correct problems, you have held broken packages.
>> >>>
>> >>> | DEBUG: Python function do_populate_sdk finished
>> >>>
>> >>> | ERROR: Function failed: populate_sdk_image (see
>> >>> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmon=
y-
>> >>> poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sd=
k.
>> >>> 4066
>> >>> for further information)
>> >>>
>> >>> ERROR: Task 10
>> >>> (/home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-sk=
id
>> >>> ata.bb,
>> >>> do_populate_sdk) failed with exit code '1'
>> >>>
>> >>> NOTE: Tasks Summary: Attempted 5020 tasks of which 4939 didn't need =
to
>> >>> be rerun and 1 failed.
>> >>>
>> >>>
>> >>>
>> >>> Summary: 1 task failed:
>> >>>
>> >>>
>> >>> /home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-ski=
da
>> >>> ta.bb,
>> >>> do_populate_sdk
>> >>>
>> >>> Summary: There was 1 ERROR message shown, returning a non-zero exit
>> >>> code.
>> >>>
>> >>>
>> >>>
>> >>> I am not able to install those packages as they say there are no
>> >>> installation candidate for them...
>> >>>
>> >>>
>> >>>
>> >>> On Thu, Jun 6, 2013 at 6:52 AM, Zhang, Jessica
>> >>> <jessica.zhang@intel.com>
>> >>> wrote:
>> >>>
>> >>> Hi Satya,
>> >>>
>> >>>
>> >>>
>> >>> Use bitbake image-name -c populate_sdk, this allows you to create a
>> >>> toolchain with sysroot that match your target image that allows you =
to
>> >>> develop app against...
>> >>>
>> >>>
>> >>>
>> >>> Cheers,
>> >>>
>> >>> Jessica
>> >>>
>> >>>
>> >>>
>> >>> From: yocto-bounces@yoctoproject.org
>> >>> [mailto:yocto-bounces@yoctoproject.org]
>> >>> On Behalf Of Satya Swaroop Damarla
>> >>> Sent: Wednesday, June 05, 2013 6:05 AM
>> >>> To: yocto@yoctoproject.org
>> >>> Subject: [yocto] Application Development
>> >>>
>> >>>
>> >>>
>> >>> Hi Guys,
>> >>>
>> >>>
>> >>>
>> >>> I have an issue... I created a custom image based on NVIDIA Tegra2
>> >>> with a custom kernel. I installed  packages specific Tegra board and
>> >>> application specific. Now we want to send the baord and the new linu=
x
>> >>> image for application development...
>> >>>
>> >>>
>> >>>
>> >>> As I went through ADT manual, I only found qemu based toolchains but=
 I
>> >>> want to create toolchain based on my rootfs and kernel... so that th=
e
>> >>> development team can develop a voip application for the board... I a=
m
>> >>> kind of stuck how to proceed in this issue...
>> >>>
>> >>>
>> >>>
>> >>> I really need a small way out and hopefully I will catch things
>> >>> automatically..
>> >>>
>> >>>
>> >>>
>> >>> Cheers,
>> >>>
>> >>> Satya
>> >>>
>> >>>
>> >>>
>> >>>
>> >>>
>> >>>
>> >>> _______________________________________________
>> >>> yocto mailing list
>> >>> yocto@yoctoproject.org
>> >>> https://lists.yoctoproject.org/listinfo/yocto
>> >>>
>> >>
>> >>
>> >> On Fri, Jun 7, 2013 at 4:03 PM, Zhang, Jessica
>> >> <jessica.zhang@intel.com> wrote:
>> >>> Yes, you need those packages in your sysroot for cross development.
>> >>>
>> >>>
>> >>>
>> >>> Cheers,
>> >>>
>> >>> Jessica
>> >>>
>> >>>
>> >>>
>> >>> From: satyaswaroop.damarla@gmail.com
>> >>> [mailto:satyaswaroop.damarla@gmail.com]
>> >>> On Behalf Of DAMARLA Satya Swaroop
>> >>> Sent: Friday, June 07, 2013 12:10 AM
>> >>> To: Zhang, Jessica; yocto@yoctoproject.org
>> >>> Subject: Re: [yocto] Application Development
>> >>>
>> >>>
>> >>>
>> >>> SHould we install development and debigging pacakages in the images
>> >>> when we want to build a toolchain.. I mean this
>> >>>
>> >>>
>> >>>
>> >>>  "dbg-pkgs"       - add -dbg packages for all installed packages
>> >>>
>> >>> #                     (adds symbol information for
>> >>> debugging/profiling)
>> >>>
>> >>> #  "dev-pkgs"       - add -dev packages for all installed packages
>> >>>
>> >>> #                     (useful if you want to develop against libs in
>> >>> the
>> >>> image)
>> >>>
>> >>>
>> >>>
>> >>>
>> >>>
>> >>> Greets,
>> >>>
>> >>> Satya
>> >>>
>> >>>
>> >>>
>> >>> On Thu, Jun 6, 2013 at 1:07 PM, DAMARLA Satya Swaroop
>> >>> <swaroop.damarla@gmail.com> wrote:
>> >>>
>> >>> Hi Jessica & Philip,
>> >>>
>> >>>
>> >>>
>> >>> I have an issue... This is such a long error ... I even did a fresh
>> >>> build by deleting the "tmp" directory. The image build went very wel=
l
>> >>> but the toolchain is always giving me a error...
>> >>>
>> >>>
>> >>>
>> >>> | Selecting previously unselected package xz-dev.
>> >>>
>> >>> | Unpacking xz-dev (from .../xz-dev_5.1.2alpha-r0_armel.deb) ...
>> >>>
>> >>> | The following package disappeared from your system as
>> >>>
>> >>> | all files have been overwritten by other packages:
>> >>>
>> >>> |   avahi
>> >>>
>> >>> | log_check: Using
>> >>> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmon=
y-
>> >>> poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sd=
k.
>> >>> 4066
>> >>> as logfile
>> >>>
>> >>> | Logfile is clean
>> >>>
>> >>> | Installing NATIVESDK packages
>> >>>
>> >>> | Ign file: ./ InRelease
>> >>>
>> >>> | Ign file: ./ InRelease
>> >>>
>> >>> | Ign file: ./ Release.gpg
>> >>>
>> >>> | Ign file: ./ Release.gpg
>> >>>
>> >>> | Get:1 file: ./ Release [24 B]
>> >>>
>> >>> | Get:2 file: ./ Release [11 B]
>> >>>
>> >>> | Ign file: ./ Translation-en
>> >>>
>> >>> | Ign file: ./ Translation-en
>> >>>
>> >>> | Reading package lists...
>> >>>
>> >>> | W: Ignoring Provides line with DepCompareOp for package
>> >>> nativesdk-pkgconfig__pkg-config__
>> >>>
>> >>> | W: You may want to run apt-get update to correct these problems
>> >>>
>> >>> | Reading package lists...
>> >>>
>> >>> | Building dependency tree...
>> >>>
>> >>> | Reading state information...
>> >>>
>> >>> | Some packages could not be installed. This may mean that you have
>> >>>
>> >>> | requested an impossible situation or if you are using the unstable
>> >>>
>> >>> | distribution that some required packages have not yet been created
>> >>>
>> >>> | or been moved out of Incoming.
>> >>>
>> >>> | The following information may help to resolve the situation:
>> >>>
>> >>> |
>> >>>
>> >>> | The following packages have unmet dependencies:
>> >>>
>> >>> |  packagegroup-cross-canadian-arm : Depends: gdb-cross-canadian-arm
>> >>> | but it
>> >>> is not installable
>> >>>
>> >>> |                                    Depends: gcc-cross-canadian-arm
>> >>> | but it
>> >>> is not installable
>> >>>
>> >>> |                                    Depends: meta-environment-arm b=
ut
>> >>> | it is
>> >>> not installable
>> >>>
>> >>> |                                    Depends:
>> >>> | binutils-cross-canadian-arm
>> >>> but it is not installable
>> >>>
>> >>> | W: Ignoring Provides line with DepCompareOp for package
>> >>> nativesdk-pkgconfig__pkg-config__
>> >>>
>> >>> | W: You may want to run apt-get update to correct these problems
>> >>>
>> >>> | E: Unable to correct problems, you have held broken packages.
>> >>>
>> >>> | DEBUG: Python function do_populate_sdk finished
>> >>>
>> >>> | ERROR: Function failed: populate_sdk_image (see
>> >>> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmon=
y-
>> >>> poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sd=
k.
>> >>> 4066
>> >>> for further information)
>> >>>
>> >>> ERROR: Task 10
>> >>> (/home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-sk=
id
>> >>> ata.bb,
>> >>> do_populate_sdk) failed with exit code '1'
>> >>>
>> >>> NOTE: Tasks Summary: Attempted 5020 tasks of which 4939 didn't need =
to
>> >>> be rerun and 1 failed.
>> >>>
>> >>>
>> >>>
>> >>> Summary: 1 task failed:
>> >>>
>> >>>
>> >>> /home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-ski=
da
>> >>> ta.bb,
>> >>> do_populate_sdk
>> >>>
>> >>> Summary: There was 1 ERROR message shown, returning a non-zero exit
>> >>> code.
>> >>>
>> >>>
>> >>>
>> >>> I am not able to install those packages as they say there are no
>> >>> installation candidate for them...
>> >>>
>> >>>
>> >>>
>> >>> On Thu, Jun 6, 2013 at 6:52 AM, Zhang, Jessica
>> >>> <jessica.zhang@intel.com>
>> >>> wrote:
>> >>>
>> >>> Hi Satya,
>> >>>
>> >>>
>> >>>
>> >>> Use bitbake image-name -c populate_sdk, this allows you to create a
>> >>> toolchain with sysroot that match your target image that allows you =
to
>> >>> develop app against...
>> >>>
>> >>>
>> >>>
>> >>> Cheers,
>> >>>
>> >>> Jessica
>> >>>
>> >>>
>> >>>
>> >>> From: yocto-bounces@yoctoproject.org
>> >>> [mailto:yocto-bounces@yoctoproject.org]
>> >>> On Behalf Of Satya Swaroop Damarla
>> >>> Sent: Wednesday, June 05, 2013 6:05 AM
>> >>> To: yocto@yoctoproject.org
>> >>> Subject: [yocto] Application Development
>> >>>
>> >>>
>> >>>
>> >>> Hi Guys,
>> >>>
>> >>>
>> >>>
>> >>> I have an issue... I created a custom image based on NVIDIA Tegra2
>> >>> with a custom kernel. I installed  packages specific Tegra board and
>> >>> application specific. Now we want to send the baord and the new linu=
x
>> >>> image for application development...
>> >>>
>> >>>
>> >>>
>> >>> As I went through ADT manual, I only found qemu based toolchains but=
 I
>> >>> want to create toolchain based on my rootfs and kernel... so that th=
e
>> >>> development team can develop a voip application for the board... I a=
m
>> >>> kind of stuck how to proceed in this issue...
>> >>>
>> >>>
>> >>>
>> >>> I really need a small way out and hopefully I will catch things
>> >>> automatically..
>> >>>
>> >>>
>> >>>
>> >>> Cheers,
>> >>>
>> >>> Satya
>> >>>
>> >>>
>> >>>
>> >>>
>> >>>
>> >>>
>> >>> _______________________________________________
>> >>> yocto mailing list
>> >>> yocto@yoctoproject.org
>> >>> https://lists.yoctoproject.org/listinfo/yocto
>> >>>
>> >
>> > On Fri, Jun 7, 2013 at 4:21 PM, Zhang, Jessica <jessica.zhang@intel.co=
m>
>> > wrote:
>> >> When you create your image, what profile did you use.  Are you buildi=
ng
>> >> one of our existing images, e.g. core-image-minimal, etc. or it's a
>> >> customized image and if so, how did you customize your image, via lay=
er or
>> >> install extra packages?  I think x11 is brought in via some package
>> >> dependency.  You said you were able to build the image, was the x11 p=
ackages
>> >> there?  We're building a toolchain plus the sysroot that matching the=
 rootfs
>> >> of your target image here so it's not just the toolchain that is buil=
t.
>> >>
>> >> -----Original Message-----
>> >> From: Hans Beck=E9rus [mailto:hans.beckerus@gmail.com]
>> >> Sent: Friday, June 07, 2013 7:09 AM
>> >> To: Zhang, Jessica
>> >> Cc: DAMARLA Satya Swaroop; yocto@yoctoproject.org
>> >> Subject: Re: [yocto] Application Development
>> >>
>> >> On Fri, Jun 7, 2013 at 4:03 PM, Zhang, Jessica
>> >> <jessica.zhang@intel.com> wrote:
>> >>> Yes, you need those packages in your sysroot for cross development.
>> >>>
>> >>>
>> >> Ok. But out of curiosity, why should I need X11 packages for a simple
>> >> command-line based toolchain?
>> >> I assume that none of these X11 packages gets copied to my target
>> >> device rootfs, or?
>> >>
>> >>>
>> >>> Cheers,
>> >>>
>> >>> Jessica
>> >>>
>> >>>
>> >>>
>> >>> From: satyaswaroop.damarla@gmail.com
>> >>> [mailto:satyaswaroop.damarla@gmail.com]
>> >>> On Behalf Of DAMARLA Satya Swaroop
>> >>> Sent: Friday, June 07, 2013 12:10 AM
>> >>> To: Zhang, Jessica; yocto@yoctoproject.org
>> >>> Subject: Re: [yocto] Application Development
>> >>>
>> >>>
>> >>>
>> >>> SHould we install development and debigging pacakages in the images
>> >>> when we want to build a toolchain.. I mean this
>> >>>
>> >>>
>> >>>
>> >>>  "dbg-pkgs"       - add -dbg packages for all installed packages
>> >>>
>> >>> #                     (adds symbol information for
>> >>> debugging/profiling)
>> >>>
>> >>> #  "dev-pkgs"       - add -dev packages for all installed packages
>> >>>
>> >>> #                     (useful if you want to develop against libs in
>> >>> the
>> >>> image)
>> >>>
>> >>>
>> >>>
>> >>>
>> >>>
>> >>> Greets,
>> >>>
>> >>> Satya
>> >>>
>> >>>
>> >>>
>> >>> On Thu, Jun 6, 2013 at 1:07 PM, DAMARLA Satya Swaroop
>> >>> <swaroop.damarla@gmail.com> wrote:
>> >>>
>> >>> Hi Jessica & Philip,
>> >>>
>> >>>
>> >>>
>> >>> I have an issue... This is such a long error ... I even did a fresh
>> >>> build by deleting the "tmp" directory. The image build went very wel=
l
>> >>> but the toolchain is always giving me a error...
>> >>>
>> >>>
>> >>>
>> >>> | Selecting previously unselected package xz-dev.
>> >>>
>> >>> | Unpacking xz-dev (from .../xz-dev_5.1.2alpha-r0_armel.deb) ...
>> >>>
>> >>> | The following package disappeared from your system as
>> >>>
>> >>> | all files have been overwritten by other packages:
>> >>>
>> >>> |   avahi
>> >>>
>> >>> | log_check: Using
>> >>> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmon=
y-
>> >>> poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sd=
k.
>> >>> 4066
>> >>> as logfile
>> >>>
>> >>> | Logfile is clean
>> >>>
>> >>> | Installing NATIVESDK packages
>> >>>
>> >>> | Ign file: ./ InRelease
>> >>>
>> >>> | Ign file: ./ InRelease
>> >>>
>> >>> | Ign file: ./ Release.gpg
>> >>>
>> >>> | Ign file: ./ Release.gpg
>> >>>
>> >>> | Get:1 file: ./ Release [24 B]
>> >>>
>> >>> | Get:2 file: ./ Release [11 B]
>> >>>
>> >>> | Ign file: ./ Translation-en
>> >>>
>> >>> | Ign file: ./ Translation-en
>> >>>
>> >>> | Reading package lists...
>> >>>
>> >>> | W: Ignoring Provides line with DepCompareOp for package
>> >>> nativesdk-pkgconfig__pkg-config__
>> >>>
>> >>> | W: You may want to run apt-get update to correct these problems
>> >>>
>> >>> | Reading package lists...
>> >>>
>> >>> | Building dependency tree...
>> >>>
>> >>> | Reading state information...
>> >>>
>> >>> | Some packages could not be installed. This may mean that you have
>> >>>
>> >>> | requested an impossible situation or if you are using the unstable
>> >>>
>> >>> | distribution that some required packages have not yet been created
>> >>>
>> >>> | or been moved out of Incoming.
>> >>>
>> >>> | The following information may help to resolve the situation:
>> >>>
>> >>> |
>> >>>
>> >>> | The following packages have unmet dependencies:
>> >>>
>> >>> |  packagegroup-cross-canadian-arm : Depends: gdb-cross-canadian-arm
>> >>> | but it
>> >>> is not installable
>> >>>
>> >>> |                                    Depends: gcc-cross-canadian-arm
>> >>> | but it
>> >>> is not installable
>> >>>
>> >>> |                                    Depends: meta-environment-arm b=
ut
>> >>> | it is
>> >>> not installable
>> >>>
>> >>> |                                    Depends:
>> >>> | binutils-cross-canadian-arm
>> >>> but it is not installable
>> >>>
>> >>> | W: Ignoring Provides line with DepCompareOp for package
>> >>> nativesdk-pkgconfig__pkg-config__
>> >>>
>> >>> | W: You may want to run apt-get update to correct these problems
>> >>>
>> >>> | E: Unable to correct problems, you have held broken packages.
>> >>>
>> >>> | DEBUG: Python function do_populate_sdk finished
>> >>>
>> >>> | ERROR: Function failed: populate_sdk_image (see
>> >>> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmon=
y-
>> >>> poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sd=
k.
>> >>> 4066
>> >>> for further information)
>> >>>
>> >>> ERROR: Task 10
>> >>> (/home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-sk=
id
>> >>> ata.bb,
>> >>> do_populate_sdk) failed with exit code '1'
>> >>>
>> >>> NOTE: Tasks Summary: Attempted 5020 tasks of which 4939 didn't need =
to
>> >>> be rerun and 1 failed.
>> >>>
>> >>>
>> >>>
>> >>> Summary: 1 task failed:
>> >>>
>> >>>
>> >>> /home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-ski=
da
>> >>> ta.bb,
>> >>> do_populate_sdk
>> >>>
>> >>> Summary: There was 1 ERROR message shown, returning a non-zero exit
>> >>> code.
>> >>>
>> >>>
>> >>>
>> >>> I am not able to install those packages as they say there are no
>> >>> installation candidate for them...
>> >>>
>> >>>
>> >>>
>> >>> On Thu, Jun 6, 2013 at 6:52 AM, Zhang, Jessica
>> >>> <jessica.zhang@intel.com>
>> >>> wrote:
>> >>>
>> >>> Hi Satya,
>> >>>
>> >>>
>> >>>
>> >>> Use bitbake image-name -c populate_sdk, this allows you to create a
>> >>> toolchain with sysroot that match your target image that allows you =
to
>> >>> develop app against...
>> >>>
>> >>>
>> >>>
>> >>> Cheers,
>> >>>
>> >>> Jessica
>> >>>
>> >>>
>> >>>
>> >>> From: yocto-bounces@yoctoproject.org
>> >>> [mailto:yocto-bounces@yoctoproject.org]
>> >>> On Behalf Of Satya Swaroop Damarla
>> >>> Sent: Wednesday, June 05, 2013 6:05 AM
>> >>> To: yocto@yoctoproject.org
>> >>> Subject: [yocto] Application Development
>> >>>
>> >>>
>> >>>
>> >>> Hi Guys,
>> >>>
>> >>>
>> >>>
>> >>> I have an issue... I created a custom image based on NVIDIA Tegra2
>> >>> with a custom kernel. I installed  packages specific Tegra board and
>> >>> application specific. Now we want to send the baord and the new linu=
x
>> >>> image for application development...
>> >>>
>> >>>
>> >>>
>> >>> As I went through ADT manual, I only found qemu based toolchains but=
 I
>> >>> want to create toolchain based on my rootfs and kernel... so that th=
e
>> >>> development team can develop a voip application for the board... I a=
m
>> >>> kind of stuck how to proceed in this issue...
>> >>>
>> >>>
>> >>>
>> >>> I really need a small way out and hopefully I will catch things
>> >>> automatically..
>> >>>
>> >>>
>> >>>
>> >>> Cheers,
>> >>>
>> >>> Satya
>> >>>
>> >>>
>> >>>
>> >>>
>> >>>
>> >>>
>> >>> _______________________________________________
>> >>> yocto mailing list
>> >>> yocto@yoctoproject.org
>> >>> https://lists.yoctoproject.org/listinfo/yocto
>> >>>
>> >>
>> >>
>> >> On Fri, Jun 7, 2013 at 4:03 PM, Zhang, Jessica
>> >> <jessica.zhang@intel.com> wrote:
>> >>> Yes, you need those packages in your sysroot for cross development.
>> >>>
>> >>>
>> >>>
>> >>> Cheers,
>> >>>
>> >>> Jessica
>> >>>
>> >>>
>> >>>
>> >>> From: satyaswaroop.damarla@gmail.com
>> >>> [mailto:satyaswaroop.damarla@gmail.com]
>> >>> On Behalf Of DAMARLA Satya Swaroop
>> >>> Sent: Friday, June 07, 2013 12:10 AM
>> >>> To: Zhang, Jessica; yocto@yoctoproject.org
>> >>> Subject: Re: [yocto] Application Development
>> >>>
>> >>>
>> >>>
>> >>> SHould we install development and debigging pacakages in the images
>> >>> when we want to build a toolchain.. I mean this
>> >>>
>> >>>
>> >>>
>> >>>  "dbg-pkgs"       - add -dbg packages for all installed packages
>> >>>
>> >>> #                     (adds symbol information for
>> >>> debugging/profiling)
>> >>>
>> >>> #  "dev-pkgs"       - add -dev packages for all installed packages
>> >>>
>> >>> #                     (useful if you want to develop against libs in
>> >>> the
>> >>> image)
>> >>>
>> >>>
>> >>>
>> >>>
>> >>>
>> >>> Greets,
>> >>>
>> >>> Satya
>> >>>
>> >>>
>> >>>
>> >>> On Thu, Jun 6, 2013 at 1:07 PM, DAMARLA Satya Swaroop
>> >>> <swaroop.damarla@gmail.com> wrote:
>> >>>
>> >>> Hi Jessica & Philip,
>> >>>
>> >>>
>> >>>
>> >>> I have an issue... This is such a long error ... I even did a fresh
>> >>> build by deleting the "tmp" directory. The image build went very wel=
l
>> >>> but the toolchain is always giving me a error...
>> >>>
>> >>>
>> >>>
>> >>> | Selecting previously unselected package xz-dev.
>> >>>
>> >>> | Unpacking xz-dev (from .../xz-dev_5.1.2alpha-r0_armel.deb) ...
>> >>>
>> >>> | The following package disappeared from your system as
>> >>>
>> >>> | all files have been overwritten by other packages:
>> >>>
>> >>> |   avahi
>> >>>
>> >>> | log_check: Using
>> >>> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmon=
y-
>> >>> poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sd=
k.
>> >>> 4066
>> >>> as logfile
>> >>>
>> >>> | Logfile is clean
>> >>>
>> >>> | Installing NATIVESDK packages
>> >>>
>> >>> | Ign file: ./ InRelease
>> >>>
>> >>> | Ign file: ./ InRelease
>> >>>
>> >>> | Ign file: ./ Release.gpg
>> >>>
>> >>> | Ign file: ./ Release.gpg
>> >>>
>> >>> | Get:1 file: ./ Release [24 B]
>> >>>
>> >>> | Get:2 file: ./ Release [11 B]
>> >>>
>> >>> | Ign file: ./ Translation-en
>> >>>
>> >>> | Ign file: ./ Translation-en
>> >>>
>> >>> | Reading package lists...
>> >>>
>> >>> | W: Ignoring Provides line with DepCompareOp for package
>> >>> nativesdk-pkgconfig__pkg-config__
>> >>>
>> >>> | W: You may want to run apt-get update to correct these problems
>> >>>
>> >>> | Reading package lists...
>> >>>
>> >>> | Building dependency tree...
>> >>>
>> >>> | Reading state information...
>> >>>
>> >>> | Some packages could not be installed. This may mean that you have
>> >>>
>> >>> | requested an impossible situation or if you are using the unstable
>> >>>
>> >>> | distribution that some required packages have not yet been created
>> >>>
>> >>> | or been moved out of Incoming.
>> >>>
>> >>> | The following information may help to resolve the situation:
>> >>>
>> >>> |
>> >>>
>> >>> | The following packages have unmet dependencies:
>> >>>
>> >>> |  packagegroup-cross-canadian-arm : Depends: gdb-cross-canadian-arm
>> >>> | but it
>> >>> is not installable
>> >>>
>> >>> |                                    Depends: gcc-cross-canadian-arm
>> >>> | but it
>> >>> is not installable
>> >>>
>> >>> |                                    Depends: meta-environment-arm b=
ut
>> >>> | it is
>> >>> not installable
>> >>>
>> >>> |                                    Depends:
>> >>> | binutils-cross-canadian-arm
>> >>> but it is not installable
>> >>>
>> >>> | W: Ignoring Provides line with DepCompareOp for package
>> >>> nativesdk-pkgconfig__pkg-config__
>> >>>
>> >>> | W: You may want to run apt-get update to correct these problems
>> >>>
>> >>> | E: Unable to correct problems, you have held broken packages.
>> >>>
>> >>> | DEBUG: Python function do_populate_sdk finished
>> >>>
>> >>> | ERROR: Function failed: populate_sdk_image (see
>> >>> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmon=
y-
>> >>> poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sd=
k.
>> >>> 4066
>> >>> for further information)
>> >>>
>> >>> ERROR: Task 10
>> >>> (/home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-sk=
id
>> >>> ata.bb,
>> >>> do_populate_sdk) failed with exit code '1'
>> >>>
>> >>> NOTE: Tasks Summary: Attempted 5020 tasks of which 4939 didn't need =
to
>> >>> be rerun and 1 failed.
>> >>>
>> >>>
>> >>>
>> >>> Summary: 1 task failed:
>> >>>
>> >>>
>> >>> /home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-ski=
da
>> >>> ta.bb,
>> >>> do_populate_sdk
>> >>>
>> >>> Summary: There was 1 ERROR message shown, returning a non-zero exit
>> >>> code.
>> >>>
>> >>>
>> >>>
>> >>> I am not able to install those packages as they say there are no
>> >>> installation candidate for them...
>> >>>
>> >>>
>> >>>
>> >>> On Thu, Jun 6, 2013 at 6:52 AM, Zhang, Jessica
>> >>> <jessica.zhang@intel.com>
>> >>> wrote:
>> >>>
>> >>> Hi Satya,
>> >>>
>> >>>
>> >>>
>> >>> Use bitbake image-name -c populate_sdk, this allows you to create a
>> >>> toolchain with sysroot that match your target image that allows you =
to
>> >>> develop app against...
>> >>>
>> >>>
>> >>>
>> >>> Cheers,
>> >>>
>> >>> Jessica
>> >>>
>> >>>
>> >>>
>> >>> From: yocto-bounces@yoctoproject.org
>> >>> [mailto:yocto-bounces@yoctoproject.org]
>> >>> On Behalf Of Satya Swaroop Damarla
>> >>> Sent: Wednesday, June 05, 2013 6:05 AM
>> >>> To: yocto@yoctoproject.org
>> >>> Subject: [yocto] Application Development
>> >>>
>> >>>
>> >>>
>> >>> Hi Guys,
>> >>>
>> >>>
>> >>>
>> >>> I have an issue... I created a custom image based on NVIDIA Tegra2
>> >>> with a custom kernel. I installed  packages specific Tegra board and
>> >>> application specific. Now we want to send the baord and the new linu=
x
>> >>> image for application development...
>> >>>
>> >>>
>> >>>
>> >>> As I went through ADT manual, I only found qemu based toolchains but=
 I
>> >>> want to create toolchain based on my rootfs and kernel... so that th=
e
>> >>> development team can develop a voip application for the board... I a=
m
>> >>> kind of stuck how to proceed in this issue...
>> >>>
>> >>>
>> >>>
>> >>> I really need a small way out and hopefully I will catch things
>> >>> automatically..
>> >>>
>> >>>
>> >>>
>> >>> Cheers,
>> >>>
>> >>> Satya
>> >>>
>> >>>
>> >>>
>> >>>
>> >>>
>> >>>
>> >>> _______________________________________________
>> >>> yocto mailing list
>> >>> yocto@yoctoproject.org
>> >>> https://lists.yoctoproject.org/listinfo/yocto
>> >>>
>
>

