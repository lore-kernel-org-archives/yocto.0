Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vb0-f54.google.com (mail-vb0-f54.google.com
	[209.85.212.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01754E01538
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 04:04:36 -0700 (PDT)
Received: by mail-vb0-f54.google.com with SMTP id q12so2142949vbe.13
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 04:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:content-type;
	bh=Sz4LaFoHAuPGOUMfYAN+lNLWwWhan5V9uB7V403QMH0=;
	b=f4ErNuH30SfbFZFWP27Pphi/txEcLZVcghTR8DUfmgQ3R/JS1KLPsuCsIMjJYGEjdY
	coIfCxW1q9uVhkhCvRH+lcGLtENsJb1A1fDcV0ay3CitlDQaLSqkC0sSLThhzauzQcnQ
	+/Hyba/uMG2jCn1G9yg+56WeLCHIjgMC0PgHtWAlXgraOyYeGiejwxVCv6swqur9MrwS
	MzSIxO96f2ItiNYzvY/nkIY47T8e98H25Uj8GxjqpeXw2z+tuwJYntNWvsHpP9hrOZVc
	ZmxPgpt/9SCKe/ow5o0usD+R4B8oHEgZ3rx/mcpn4fVhn/9hM4jriBG9Fp/zN829ShyD
	GWHQ==
MIME-Version: 1.0
X-Received: by 10.58.85.134 with SMTP id h6mr7868338vez.18.1370948675168; Tue,
	11 Jun 2013 04:04:35 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.179.33 with HTTP; Tue, 11 Jun 2013 04:04:34 -0700 (PDT)
In-Reply-To: <CAFyqS9o5BUWAk+JitYHj47cuVJMkCkN_TASp_3S+-Ge_XZfb+A@mail.gmail.com>
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
	<CAFyqS9qQ6uotr0KEEjFG8OrO8H=nwC4x+22kZYuhxtrw2XFMRg@mail.gmail.com>
	<CAFyqS9pW4qtnt0z6yRnAM_owbUAPbCJ8xGdyqGbaOL4y78TDoQ@mail.gmail.com>
	<CAFMfyzKTxfLECC+inGzBbNGM8z9oaV--MV=rh_movEHGr6hR9Q@mail.gmail.com>
	<CAFyqS9r05Nvak8y4Me0KZfL1Fv7TzM3Snk5hsaVmjeD9TroFNg@mail.gmail.com>
	<CAFMfyz+KLEH59G+0m3o-N++gUMTd297ZCB61hkPQkAi87z3jpw@mail.gmail.com>
	<CAFyqS9qJyC+==fd=mpFnLrzb+pFjJcC=tNGuWPxgcHKrdyz9EA@mail.gmail.com>
	<CAFMfyzJhMRGY==AeQCcV_LhxHycckF8mFdp=D9QCROhZKAsK0A@mail.gmail.com>
	<CAFyqS9o5BUWAk+JitYHj47cuVJMkCkN_TASp_3S+-Ge_XZfb+A@mail.gmail.com>
Date: Tue, 11 Jun 2013 13:04:34 +0200
X-Google-Sender-Auth: Sraii9SB6iwiqVjUXboDL5iTcnk
Message-ID: <CAFMfyzK85uVuV1Li3b0Kb+1mpXCLgnnWSqcdCDbPjOk1m4_YXQ@mail.gmail.com>
From: DAMARLA Satya Swaroop <swaroop.damarla@gmail.com>
To: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>, 
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
X-List-Received-Date: Tue, 11 Jun 2013 11:04:37 -0000
Content-Type: multipart/alternative; boundary=047d7b6d9340c9f44304dededc48

--047d7b6d9340c9f44304dededc48
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Its very unfortunate as I dont have such a directory /home/damarla/yocto/
myToolchain/sysroots/x86_64-pokysdk-linux/usr/bin/*cortexa9-*-gnueabi/ *at
all and the other search gave me no result... I think the cross compiler is
not being installed.... Can you think about anything that restricts the
cross compiler addition into the toolchain

Greets,
Satya


On Tue, Jun 11, 2013 at 11:50 AM, Hans Beck=E9rus <hans.beckerus@gmail.com>=
wrote:

> Hmm. Try to be less specific in your searg, eg.
>
> >find /home/damarla/yocto/myToolchain -name \*-gcc
>
> Could be that your toolchain names it differently.
> Otherwise it should be here
>
>
>
> /home/damarla/yocto/myToolchain/sysroots/x86_64-pokysdk-linux/usr/bin/cor=
texa9-*-gnueabi/
>
> Hans
>
> On Tue, Jun 11, 2013 at 11:06 AM, DAMARLA Satya Swaroop
> <swaroop.damarla@gmail.com> wrote:
> > Hi Hans,
> >
> > I am sorry to disturb but I think I dont have cross compiler installed
> in my
> > toolchain... I compiled the toolcahin using bitbake core-image-skidata =
-c
> > populate_sdk  and installed  as below
> >
> > damarla@linuxbuildsrv:~/yocto/poky/buildSkidataHarmony/tmp/deploy/sdk$
> > ./poky-eglibc-x86_64-arm-toolchain-1.3+snapshot-20130611.sh
> > Enter target directory for SDK (default: /opt/poky/1.3+snapshot):
> > /home/damarla/yocto/myToolchain
> > You are about to install the SDK to "/home/damarla/yocto/myToolchain".
> > Proceed[Y/n]?Y
> > Extracting SDK...done
> > Setting it up...done
> > SDK has been successfully set up and is ready to be used.
> >
> > I checked the it for cross compiler but seems its not installed ...
> > /home/damarla/yocto/myToolchain/ -name "arm-poky-linux-gnueabi**" -type=
 f
> > gives me no result... Do you know where could be the potential issue...=
 I
> > actually made a clean build
> >
> > Greets,
> > Satya
> >
> >
> >
> > On Tue, Jun 11, 2013 at 10:50 AM, Hans Beck=E9rus <hans.beckerus@gmail.=
com
> >
> > wrote:
> >>
> >> Hmm, I must say that I am curious to why you need to know the exact
> path?
> >> A toolchain does not require you to know the path? The environment
> >> script automatically adds the path to the compiler to your PATH
> >> variable. But if you really need to know it is located here (in my
> >> case but of course depends on were you choose to install the
> >> toolchain)
> >>
> >> Hans
> >>
> >> ls
> >>
> /opt/poky/1.4+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/cortexa9-vfp=
-poky-linux-gnueabi/
> >> arm-poky-linux-gnueabi-addr2line  arm-poky-linux-gnueabi-elfedit
> >> arm-poky-linux-gnueabi-gcc-ranlib  arm-poky-linux-gnueabi-ld.bfd
> >> arm-poky-linux-gnueabi-readelf
> >> arm-poky-linux-gnueabi-ar         arm-poky-linux-gnueabi-g++
> >> arm-poky-linux-gnueabi-gcov        arm-poky-linux-gnueabi-nm
> >> arm-poky-linux-gnueabi-size
> >> arm-poky-linux-gnueabi-as         arm-poky-linux-gnueabi-gcc
> >> arm-poky-linux-gnueabi-gdb         arm-poky-linux-gnueabi-objcopy
> >> arm-poky-linux-gnueabi-strings
> >> arm-poky-linux-gnueabi-c++filt    arm-poky-linux-gnueabi-gcc-ar
> >> arm-poky-linux-gnueabi-gprof       arm-poky-linux-gnueabi-objdump
> >> arm-poky-linux-gnueabi-strip
> >> arm-poky-linux-gnueabi-cpp        arm-poky-linux-gnueabi-gcc-nm
> >> arm-poky-linux-gnueabi-ld          arm-poky-linux-gnueabi-ranlib
> >>
> >>
> >> On Tue, Jun 11, 2013 at 8:59 AM, DAMARLA Satya Swaroop
> >> <satyaswaroop.damarla@gmail.com> wrote:
> >> > hI Hans,
> >> >
> >> > My last mail is incomplete.. Will you please tell me where to find t=
he
> >> > cross
> >> > compiler...Please send me the path :-)
> >> >
> >> > Greeting,
> >> > Satya
> >> >
> >> >
> >> > On Mon, Jun 10, 2013 at 5:00 PM, Hans Beck=E9rus <
> hans.beckerus@gmail.com>
> >> > wrote:
> >> >>
> >> >> Yes I tried the toolchain on a test application. But I do not use
> >> >> eclipse, do not know if additional plug-ins are needed for that. Bu=
t
> a
> >> >> standard eclipse workbench should be fine unless you need some Yoct=
o
> >> >> specific features or tools.
> >> >> After you built the toolchain you will get a huge .sh file in
> >> >> tmp/deploy/sdk. Just run it. It will ask you were to install the
> >> >> toolchain. Once you have done that you need to source the environme=
nt
> >> >> script located in the root of the toolchain destination folder. Onc=
e
> >> >> the environment is sourced you should be ready to go.
> >> >> You will get a compiler with a name similar to
> >> >> arm-poky-linux-gnueabi-gcc, and all other build/debug tools will be
> >> >> prefixed the same. The path to the compiler is setup by the
> >> >> environment script.
> >> >>
> >> >> Now, if you have eg. a autotools based package, simply do
> >> >>
> >> >> 1) ./configure --host=3Darm-poky-linux
> >> >> 2) make
> >> >>
> >> >> You package should now be built using the cross-compiler towards th=
e
> >> >> exact same libraries as your target platform image.
> >> >>
> >> >> If your test application is a simple .c file or a Makefile project,
> >> >> just try to compile it manually or run make ($GCC should be set to
> >> >> point to your cross-compiler so make should automatically pick it u=
p
> >> >> if the Makefile was written properly).
> >> >>
> >> >> Hans
> >> >>
> >> >>
> >> >>
> >> >> On Mon, Jun 10, 2013 at 4:28 PM, DAMARLA Satya Swaroop
> >> >> <satyaswaroop.damarla@gmail.com> wrote:
> >> >> > Ok this is damn cool... I have a question.. Did you already do a
> test
> >> >> > application.... Can you explain me as I didnot understand where i=
s
> >> >> > the
> >> >> > cross
> >> >> > compiler binaries... I dont see any.... Did you test the toolchai=
n
> >> >> > using
> >> >> > Eclipse or some other IDE.. If you used Eclipse, did you also
> install
> >> >> > the
> >> >> > Yocto plugin?
> >> >> >
> >> >> >
> >> >> > On Mon, Jun 10, 2013 at 4:07 PM, Hans Beck=E9rus
> >> >> > <hans.beckerus@gmail.com>
> >> >> > wrote:
> >> >> >>
> >> >> >> [SOLVED]
> >> >> >>
> >> >> >> Now it works! I do not know how my poky environment got polluted=
,
> >> >> >> but
> >> >> >> after doing
> >> >> >>   bitbake -c cleanall meta-environment-arm
> >> >> >>   bitbake -c cleanall sdk-gnu-config
> >> >> >> building the SDK passed without errors and I got my installation
> in
> >> >> >> deploy/sdk.
> >> >> >> Even tried if for a small test application and it seems to work
> fine
> >> >> >> :)
> >> >> >>
> >> >> >> So no need to add sdk-tools, all that I have is what is added to
> >> >> >> SDKIMAGE_FEATURES by image.bbclass which is dev-pkgs and dbg-pkg=
s.
> >> >> >>
> >> >> >>
> >> >> >> Hans
> >> >> >>
> >> >> >> On Mon, Jun 10, 2013 at 1:28 PM, Hans Beck=E9rus
> >> >> >> <hans.beckerus@gmail.com>
> >> >> >> wrote:
> >> >> >> > On Mon, Jun 10, 2013 at 12:33 PM, DAMARLA Satya Swaroop
> >> >> >> > <satyaswaroop.damarla@gmail.com> wrote:
> >> >> >> >> I installed "dev-pkgs" in EXTRA_IMAGE_FEATURES ... and then
> build
> >> >> >> >> the
> >> >> >> >> toolchain, it was successfull....
> >> >> >> >>
> >> >> >> > That should already be provided by image.bbclass?
> >> >> >> > Checking the file packagegroup-cross-canadian.bbclass i found
> this
> >> >> >> >
> >> >> >> > # For backwards compatibility after rename
> >> >> >> > RPROVIDES_${PN} =3D
> "task-cross-canadian-${TRANSLATED_TARGET_ARCH}"
> >> >> >> >
> >> >> >> > RDEPENDS_${PN} =3D "\
> >> >> >> >     binutils-cross-canadian-${TRANSLATED_TARGET_ARCH} \
> >> >> >> >     gdb-cross-canadian-${TRANSLATED_TARGET_ARCH} \
> >> >> >> >     gcc-cross-canadian-${TRANSLATED_TARGET_ARCH} \
> >> >> >> >     meta-environment-${TRANSLATED_TARGET_ARCH} \
> >> >> >> >     "
> >> >> >> >
> >> >> >> > So, now I understand were the dependency to meta-environment-a=
rm
> >> >> >> > came
> >> >> >> > from. But how to resolve it?
> >> >> >> > Am I missing some package(s) in my environment? What *should*
> >> >> >> > provide
> >> >> >> > meta-environment-arm?
> >> >> >> > All I can find under Poky is meta-environment.bb.
> >> >> >> >
> >> >> >> > Hans
> >> >> >> >
> >> >> >> >>
> >> >> >> >> On Mon, Jun 10, 2013 at 12:03 PM, Hans Beck=E9rus
> >> >> >> >> <hans.beckerus@gmail.com>
> >> >> >> >> wrote:
> >> >> >> >>>
> >> >> >> >>> Any updates on this matter? Do I need to provide more
> >> >> >> >>> information?
> >> >> >> >>> /Hans
> >> >> >> >>>
> >> >> >> >>> On Fri, Jun 7, 2013 at 4:29 PM, Hans Beck=E9rus
> >> >> >> >>> <hans.beckerus@gmail.com>
> >> >> >> >>> wrote:
> >> >> >> >>> > On Fri, Jun 7, 2013 at 4:21 PM, Zhang, Jessica
> >> >> >> >>> > <jessica.zhang@intel.com>
> >> >> >> >>> > wrote:
> >> >> >> >>> >> When you create your image, what profile did you use.  Ar=
e
> >> >> >> >>> >> you
> >> >> >> >>> >> building
> >> >> >> >>> >> one of our existing images, e.g. core-image-minimal, etc.
> or
> >> >> >> >>> >> it's a
> >> >> >> >>> >> customized image and if so, how did you customize your
> image,
> >> >> >> >>> >> via
> >> >> >> >>> >> layer or
> >> >> >> >>> >> install extra packages?  I think x11 is brought in via so=
me
> >> >> >> >>> >> package
> >> >> >> >>> >> dependency.  You said you were able to build the image, w=
as
> >> >> >> >>> >> the
> >> >> >> >>> >> x11
> >> >> >> >>> >> packages
> >> >> >> >>> >> there?  We're building a toolchain plus the sysroot that
> >> >> >> >>> >> matching
> >> >> >> >>> >> the rootfs
> >> >> >> >>> >> of your target image here so it's not just the toolchain
> that
> >> >> >> >>> >> is
> >> >> >> >>> >> built.
> >> >> >> >>> >>
> >> >> >> >>> >
> >> >> >> >>> > Hi Jessica.
> >> >> >> >>> >
> >> >> >> >>> > I am building my own image recipe that basically does:
> >> >> >> >>> >
> >> >> >> >>> > require recipes-core/images/core-image-minimal-mtdutils.bb
> >> >> >> >>> > IMAGE_FEATURES +=3D " ssh-server-dropbear \
> >> >> >> >>> >                   "
> >> >> >> >>> >
> >> >> >> >>> > Its a console-only type of image for an embedded device wi=
th
> >> >> >> >>> > no
> >> >> >> >>> > graphic support what so ever.
> >> >> >> >>> > Building the the rootfs and booting it up on the device
> works
> >> >> >> >>> > fine.
> >> >> >> >>> > I have had no X11 dependency until I added tools-sdk to
> >> >> >> >>> > IMAGE_FEATURES
> >> >> >> >>> > as suggested.
> >> >> >> >>> > What I am after is a command-line-only toolchain which wil=
l
> be
> >> >> >> >>> > using
> >> >> >> >>> > the sysroot from my rootfs build.
> >> >> >> >>> > Maybe I am asking for something that is not supported?
> >> >> >> >>> >
> >> >> >> >>> > Hans
> >> >> >> >>> >
> >> >> >> >>> >
> >> >> >> >>> >> -----Original Message-----
> >> >> >> >>> >> From: Hans Beck=E9rus [mailto:hans.beckerus@gmail.com]
> >> >> >> >>> >> Sent: Friday, June 07, 2013 7:09 AM
> >> >> >> >>> >> To: Zhang, Jessica
> >> >> >> >>> >> Cc: DAMARLA Satya Swaroop; yocto@yoctoproject.org
> >> >> >> >>> >> Subject: Re: [yocto] Application Development
> >> >> >> >>> >>
> >> >> >> >>> >> On Fri, Jun 7, 2013 at 4:03 PM, Zhang, Jessica
> >> >> >> >>> >> <jessica.zhang@intel.com> wrote:
> >> >> >> >>> >>> Yes, you need those packages in your sysroot for cross
> >> >> >> >>> >>> development.
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >> Ok. But out of curiosity, why should I need X11 packages
> for
> >> >> >> >>> >> a
> >> >> >> >>> >> simple
> >> >> >> >>> >> command-line based toolchain?
> >> >> >> >>> >> I assume that none of these X11 packages gets copied to m=
y
> >> >> >> >>> >> target
> >> >> >> >>> >> device rootfs, or?
> >> >> >> >>> >>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Cheers,
> >> >> >> >>> >>>
> >> >> >> >>> >>> Jessica
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> From: satyaswaroop.damarla@gmail.com
> >> >> >> >>> >>> [mailto:satyaswaroop.damarla@gmail.com]
> >> >> >> >>> >>> On Behalf Of DAMARLA Satya Swaroop
> >> >> >> >>> >>> Sent: Friday, June 07, 2013 12:10 AM
> >> >> >> >>> >>> To: Zhang, Jessica; yocto@yoctoproject.org
> >> >> >> >>> >>> Subject: Re: [yocto] Application Development
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> SHould we install development and debigging pacakages in
> the
> >> >> >> >>> >>> images
> >> >> >> >>> >>> when we want to build a toolchain.. I mean this
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>  "dbg-pkgs"       - add -dbg packages for all installed
> >> >> >> >>> >>> packages
> >> >> >> >>> >>>
> >> >> >> >>> >>> #                     (adds symbol information for
> >> >> >> >>> >>> debugging/profiling)
> >> >> >> >>> >>>
> >> >> >> >>> >>> #  "dev-pkgs"       - add -dev packages for all installe=
d
> >> >> >> >>> >>> packages
> >> >> >> >>> >>>
> >> >> >> >>> >>> #                     (useful if you want to develop
> against
> >> >> >> >>> >>> libs
> >> >> >> >>> >>> in
> >> >> >> >>> >>> the
> >> >> >> >>> >>> image)
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Greets,
> >> >> >> >>> >>>
> >> >> >> >>> >>> Satya
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> On Thu, Jun 6, 2013 at 1:07 PM, DAMARLA Satya Swaroop
> >> >> >> >>> >>> <swaroop.damarla@gmail.com> wrote:
> >> >> >> >>> >>>
> >> >> >> >>> >>> Hi Jessica & Philip,
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> I have an issue... This is such a long error ... I even
> did
> >> >> >> >>> >>> a
> >> >> >> >>> >>> fresh
> >> >> >> >>> >>> build by deleting the "tmp" directory. The image build
> went
> >> >> >> >>> >>> very
> >> >> >> >>> >>> well
> >> >> >> >>> >>> but the toolchain is always giving me a error...
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Selecting previously unselected package xz-dev.
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Unpacking xz-dev (from
> .../xz-dev_5.1.2alpha-r0_armel.deb)
> >> >> >> >>> >>> ...
> >> >> >> >>> >>>
> >> >> >> >>> >>> | The following package disappeared from your system as
> >> >> >> >>> >>>
> >> >> >> >>> >>> | all files have been overwritten by other packages:
> >> >> >> >>> >>>
> >> >> >> >>> >>> |   avahi
> >> >> >> >>> >>>
> >> >> >> >>> >>> | log_check: Using
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sdk.
> >> >> >> >>> >>> 4066
> >> >> >> >>> >>> as logfile
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Logfile is clean
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Installing NATIVESDK packages
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ InRelease
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ InRelease
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ Release.gpg
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ Release.gpg
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Get:1 file: ./ Release [24 B]
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Get:2 file: ./ Release [11 B]
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ Translation-en
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ Translation-en
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Reading package lists...
> >> >> >> >>> >>>
> >> >> >> >>> >>> | W: Ignoring Provides line with DepCompareOp for packag=
e
> >> >> >> >>> >>> nativesdk-pkgconfig__pkg-config__
> >> >> >> >>> >>>
> >> >> >> >>> >>> | W: You may want to run apt-get update to correct these
> >> >> >> >>> >>> problems
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Reading package lists...
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Building dependency tree...
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Reading state information...
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Some packages could not be installed. This may mean th=
at
> >> >> >> >>> >>> you
> >> >> >> >>> >>> have
> >> >> >> >>> >>>
> >> >> >> >>> >>> | requested an impossible situation or if you are using
> the
> >> >> >> >>> >>> unstable
> >> >> >> >>> >>>
> >> >> >> >>> >>> | distribution that some required packages have not yet
> been
> >> >> >> >>> >>> created
> >> >> >> >>> >>>
> >> >> >> >>> >>> | or been moved out of Incoming.
> >> >> >> >>> >>>
> >> >> >> >>> >>> | The following information may help to resolve the
> >> >> >> >>> >>> situation:
> >> >> >> >>> >>>
> >> >> >> >>> >>> |
> >> >> >> >>> >>>
> >> >> >> >>> >>> | The following packages have unmet dependencies:
> >> >> >> >>> >>>
> >> >> >> >>> >>> |  packagegroup-cross-canadian-arm : Depends:
> >> >> >> >>> >>> gdb-cross-canadian-arm
> >> >> >> >>> >>> | but it
> >> >> >> >>> >>> is not installable
> >> >> >> >>> >>>
> >> >> >> >>> >>> |                                    Depends:
> >> >> >> >>> >>> gcc-cross-canadian-arm
> >> >> >> >>> >>> | but it
> >> >> >> >>> >>> is not installable
> >> >> >> >>> >>>
> >> >> >> >>> >>> |                                    Depends:
> >> >> >> >>> >>> meta-environment-arm
> >> >> >> >>> >>> but
> >> >> >> >>> >>> | it is
> >> >> >> >>> >>> not installable
> >> >> >> >>> >>>
> >> >> >> >>> >>> |                                    Depends:
> >> >> >> >>> >>> | binutils-cross-canadian-arm
> >> >> >> >>> >>> but it is not installable
> >> >> >> >>> >>>
> >> >> >> >>> >>> | W: Ignoring Provides line with DepCompareOp for packag=
e
> >> >> >> >>> >>> nativesdk-pkgconfig__pkg-config__
> >> >> >> >>> >>>
> >> >> >> >>> >>> | W: You may want to run apt-get update to correct these
> >> >> >> >>> >>> problems
> >> >> >> >>> >>>
> >> >> >> >>> >>> | E: Unable to correct problems, you have held broken
> >> >> >> >>> >>> packages.
> >> >> >> >>> >>>
> >> >> >> >>> >>> | DEBUG: Python function do_populate_sdk finished
> >> >> >> >>> >>>
> >> >> >> >>> >>> | ERROR: Function failed: populate_sdk_image (see
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sdk.
> >> >> >> >>> >>> 4066
> >> >> >> >>> >>> for further information)
> >> >> >> >>> >>>
> >> >> >> >>> >>> ERROR: Task 10
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> (/home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-skid
> >> >> >> >>> >>> ata.bb,
> >> >> >> >>> >>> do_populate_sdk) failed with exit code '1'
> >> >> >> >>> >>>
> >> >> >> >>> >>> NOTE: Tasks Summary: Attempted 5020 tasks of which 4939
> >> >> >> >>> >>> didn't
> >> >> >> >>> >>> need to
> >> >> >> >>> >>> be rerun and 1 failed.
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Summary: 1 task failed:
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> /home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-skida
> >> >> >> >>> >>> ta.bb,
> >> >> >> >>> >>> do_populate_sdk
> >> >> >> >>> >>>
> >> >> >> >>> >>> Summary: There was 1 ERROR message shown, returning a
> >> >> >> >>> >>> non-zero
> >> >> >> >>> >>> exit
> >> >> >> >>> >>> code.
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> I am not able to install those packages as they say ther=
e
> >> >> >> >>> >>> are
> >> >> >> >>> >>> no
> >> >> >> >>> >>> installation candidate for them...
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> On Thu, Jun 6, 2013 at 6:52 AM, Zhang, Jessica
> >> >> >> >>> >>> <jessica.zhang@intel.com>
> >> >> >> >>> >>> wrote:
> >> >> >> >>> >>>
> >> >> >> >>> >>> Hi Satya,
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Use bitbake image-name -c populate_sdk, this allows you =
to
> >> >> >> >>> >>> create
> >> >> >> >>> >>> a
> >> >> >> >>> >>> toolchain with sysroot that match your target image that
> >> >> >> >>> >>> allows
> >> >> >> >>> >>> you to
> >> >> >> >>> >>> develop app against...
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Cheers,
> >> >> >> >>> >>>
> >> >> >> >>> >>> Jessica
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> From: yocto-bounces@yoctoproject.org
> >> >> >> >>> >>> [mailto:yocto-bounces@yoctoproject.org]
> >> >> >> >>> >>> On Behalf Of Satya Swaroop Damarla
> >> >> >> >>> >>> Sent: Wednesday, June 05, 2013 6:05 AM
> >> >> >> >>> >>> To: yocto@yoctoproject.org
> >> >> >> >>> >>> Subject: [yocto] Application Development
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Hi Guys,
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> I have an issue... I created a custom image based on
> NVIDIA
> >> >> >> >>> >>> Tegra2
> >> >> >> >>> >>> with a custom kernel. I installed  packages specific Teg=
ra
> >> >> >> >>> >>> board
> >> >> >> >>> >>> and
> >> >> >> >>> >>> application specific. Now we want to send the baord and
> the
> >> >> >> >>> >>> new
> >> >> >> >>> >>> linux
> >> >> >> >>> >>> image for application development...
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> As I went through ADT manual, I only found qemu based
> >> >> >> >>> >>> toolchains
> >> >> >> >>> >>> but I
> >> >> >> >>> >>> want to create toolchain based on my rootfs and kernel..=
.
> so
> >> >> >> >>> >>> that
> >> >> >> >>> >>> the
> >> >> >> >>> >>> development team can develop a voip application for the
> >> >> >> >>> >>> board... I
> >> >> >> >>> >>> am
> >> >> >> >>> >>> kind of stuck how to proceed in this issue...
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> I really need a small way out and hopefully I will catch
> >> >> >> >>> >>> things
> >> >> >> >>> >>> automatically..
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Cheers,
> >> >> >> >>> >>>
> >> >> >> >>> >>> Satya
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> _______________________________________________
> >> >> >> >>> >>> yocto mailing list
> >> >> >> >>> >>> yocto@yoctoproject.org
> >> >> >> >>> >>> https://lists.yoctoproject.org/listinfo/yocto
> >> >> >> >>> >>>
> >> >> >> >>> >>
> >> >> >> >>> >>
> >> >> >> >>> >> On Fri, Jun 7, 2013 at 4:03 PM, Zhang, Jessica
> >> >> >> >>> >> <jessica.zhang@intel.com> wrote:
> >> >> >> >>> >>> Yes, you need those packages in your sysroot for cross
> >> >> >> >>> >>> development.
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Cheers,
> >> >> >> >>> >>>
> >> >> >> >>> >>> Jessica
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> From: satyaswaroop.damarla@gmail.com
> >> >> >> >>> >>> [mailto:satyaswaroop.damarla@gmail.com]
> >> >> >> >>> >>> On Behalf Of DAMARLA Satya Swaroop
> >> >> >> >>> >>> Sent: Friday, June 07, 2013 12:10 AM
> >> >> >> >>> >>> To: Zhang, Jessica; yocto@yoctoproject.org
> >> >> >> >>> >>> Subject: Re: [yocto] Application Development
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> SHould we install development and debigging pacakages in
> the
> >> >> >> >>> >>> images
> >> >> >> >>> >>> when we want to build a toolchain.. I mean this
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>  "dbg-pkgs"       - add -dbg packages for all installed
> >> >> >> >>> >>> packages
> >> >> >> >>> >>>
> >> >> >> >>> >>> #                     (adds symbol information for
> >> >> >> >>> >>> debugging/profiling)
> >> >> >> >>> >>>
> >> >> >> >>> >>> #  "dev-pkgs"       - add -dev packages for all installe=
d
> >> >> >> >>> >>> packages
> >> >> >> >>> >>>
> >> >> >> >>> >>> #                     (useful if you want to develop
> against
> >> >> >> >>> >>> libs
> >> >> >> >>> >>> in
> >> >> >> >>> >>> the
> >> >> >> >>> >>> image)
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Greets,
> >> >> >> >>> >>>
> >> >> >> >>> >>> Satya
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> On Thu, Jun 6, 2013 at 1:07 PM, DAMARLA Satya Swaroop
> >> >> >> >>> >>> <swaroop.damarla@gmail.com> wrote:
> >> >> >> >>> >>>
> >> >> >> >>> >>> Hi Jessica & Philip,
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> I have an issue... This is such a long error ... I even
> did
> >> >> >> >>> >>> a
> >> >> >> >>> >>> fresh
> >> >> >> >>> >>> build by deleting the "tmp" directory. The image build
> went
> >> >> >> >>> >>> very
> >> >> >> >>> >>> well
> >> >> >> >>> >>> but the toolchain is always giving me a error...
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Selecting previously unselected package xz-dev.
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Unpacking xz-dev (from
> .../xz-dev_5.1.2alpha-r0_armel.deb)
> >> >> >> >>> >>> ...
> >> >> >> >>> >>>
> >> >> >> >>> >>> | The following package disappeared from your system as
> >> >> >> >>> >>>
> >> >> >> >>> >>> | all files have been overwritten by other packages:
> >> >> >> >>> >>>
> >> >> >> >>> >>> |   avahi
> >> >> >> >>> >>>
> >> >> >> >>> >>> | log_check: Using
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sdk.
> >> >> >> >>> >>> 4066
> >> >> >> >>> >>> as logfile
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Logfile is clean
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Installing NATIVESDK packages
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ InRelease
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ InRelease
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ Release.gpg
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ Release.gpg
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Get:1 file: ./ Release [24 B]
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Get:2 file: ./ Release [11 B]
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ Translation-en
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ Translation-en
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Reading package lists...
> >> >> >> >>> >>>
> >> >> >> >>> >>> | W: Ignoring Provides line with DepCompareOp for packag=
e
> >> >> >> >>> >>> nativesdk-pkgconfig__pkg-config__
> >> >> >> >>> >>>
> >> >> >> >>> >>> | W: You may want to run apt-get update to correct these
> >> >> >> >>> >>> problems
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Reading package lists...
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Building dependency tree...
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Reading state information...
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Some packages could not be installed. This may mean th=
at
> >> >> >> >>> >>> you
> >> >> >> >>> >>> have
> >> >> >> >>> >>>
> >> >> >> >>> >>> | requested an impossible situation or if you are using
> the
> >> >> >> >>> >>> unstable
> >> >> >> >>> >>>
> >> >> >> >>> >>> | distribution that some required packages have not yet
> been
> >> >> >> >>> >>> created
> >> >> >> >>> >>>
> >> >> >> >>> >>> | or been moved out of Incoming.
> >> >> >> >>> >>>
> >> >> >> >>> >>> | The following information may help to resolve the
> >> >> >> >>> >>> situation:
> >> >> >> >>> >>>
> >> >> >> >>> >>> |
> >> >> >> >>> >>>
> >> >> >> >>> >>> | The following packages have unmet dependencies:
> >> >> >> >>> >>>
> >> >> >> >>> >>> |  packagegroup-cross-canadian-arm : Depends:
> >> >> >> >>> >>> gdb-cross-canadian-arm
> >> >> >> >>> >>> | but it
> >> >> >> >>> >>> is not installable
> >> >> >> >>> >>>
> >> >> >> >>> >>> |                                    Depends:
> >> >> >> >>> >>> gcc-cross-canadian-arm
> >> >> >> >>> >>> | but it
> >> >> >> >>> >>> is not installable
> >> >> >> >>> >>>
> >> >> >> >>> >>> |                                    Depends:
> >> >> >> >>> >>> meta-environment-arm
> >> >> >> >>> >>> but
> >> >> >> >>> >>> | it is
> >> >> >> >>> >>> not installable
> >> >> >> >>> >>>
> >> >> >> >>> >>> |                                    Depends:
> >> >> >> >>> >>> | binutils-cross-canadian-arm
> >> >> >> >>> >>> but it is not installable
> >> >> >> >>> >>>
> >> >> >> >>> >>> | W: Ignoring Provides line with DepCompareOp for packag=
e
> >> >> >> >>> >>> nativesdk-pkgconfig__pkg-config__
> >> >> >> >>> >>>
> >> >> >> >>> >>> | W: You may want to run apt-get update to correct these
> >> >> >> >>> >>> problems
> >> >> >> >>> >>>
> >> >> >> >>> >>> | E: Unable to correct problems, you have held broken
> >> >> >> >>> >>> packages.
> >> >> >> >>> >>>
> >> >> >> >>> >>> | DEBUG: Python function do_populate_sdk finished
> >> >> >> >>> >>>
> >> >> >> >>> >>> | ERROR: Function failed: populate_sdk_image (see
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sdk.
> >> >> >> >>> >>> 4066
> >> >> >> >>> >>> for further information)
> >> >> >> >>> >>>
> >> >> >> >>> >>> ERROR: Task 10
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> (/home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-skid
> >> >> >> >>> >>> ata.bb,
> >> >> >> >>> >>> do_populate_sdk) failed with exit code '1'
> >> >> >> >>> >>>
> >> >> >> >>> >>> NOTE: Tasks Summary: Attempted 5020 tasks of which 4939
> >> >> >> >>> >>> didn't
> >> >> >> >>> >>> need to
> >> >> >> >>> >>> be rerun and 1 failed.
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Summary: 1 task failed:
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> /home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-skida
> >> >> >> >>> >>> ta.bb,
> >> >> >> >>> >>> do_populate_sdk
> >> >> >> >>> >>>
> >> >> >> >>> >>> Summary: There was 1 ERROR message shown, returning a
> >> >> >> >>> >>> non-zero
> >> >> >> >>> >>> exit
> >> >> >> >>> >>> code.
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> I am not able to install those packages as they say ther=
e
> >> >> >> >>> >>> are
> >> >> >> >>> >>> no
> >> >> >> >>> >>> installation candidate for them...
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> On Thu, Jun 6, 2013 at 6:52 AM, Zhang, Jessica
> >> >> >> >>> >>> <jessica.zhang@intel.com>
> >> >> >> >>> >>> wrote:
> >> >> >> >>> >>>
> >> >> >> >>> >>> Hi Satya,
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Use bitbake image-name -c populate_sdk, this allows you =
to
> >> >> >> >>> >>> create
> >> >> >> >>> >>> a
> >> >> >> >>> >>> toolchain with sysroot that match your target image that
> >> >> >> >>> >>> allows
> >> >> >> >>> >>> you to
> >> >> >> >>> >>> develop app against...
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Cheers,
> >> >> >> >>> >>>
> >> >> >> >>> >>> Jessica
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> From: yocto-bounces@yoctoproject.org
> >> >> >> >>> >>> [mailto:yocto-bounces@yoctoproject.org]
> >> >> >> >>> >>> On Behalf Of Satya Swaroop Damarla
> >> >> >> >>> >>> Sent: Wednesday, June 05, 2013 6:05 AM
> >> >> >> >>> >>> To: yocto@yoctoproject.org
> >> >> >> >>> >>> Subject: [yocto] Application Development
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Hi Guys,
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> I have an issue... I created a custom image based on
> NVIDIA
> >> >> >> >>> >>> Tegra2
> >> >> >> >>> >>> with a custom kernel. I installed  packages specific Teg=
ra
> >> >> >> >>> >>> board
> >> >> >> >>> >>> and
> >> >> >> >>> >>> application specific. Now we want to send the baord and
> the
> >> >> >> >>> >>> new
> >> >> >> >>> >>> linux
> >> >> >> >>> >>> image for application development...
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> As I went through ADT manual, I only found qemu based
> >> >> >> >>> >>> toolchains
> >> >> >> >>> >>> but I
> >> >> >> >>> >>> want to create toolchain based on my rootfs and kernel..=
.
> so
> >> >> >> >>> >>> that
> >> >> >> >>> >>> the
> >> >> >> >>> >>> development team can develop a voip application for the
> >> >> >> >>> >>> board... I
> >> >> >> >>> >>> am
> >> >> >> >>> >>> kind of stuck how to proceed in this issue...
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> I really need a small way out and hopefully I will catch
> >> >> >> >>> >>> things
> >> >> >> >>> >>> automatically..
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Cheers,
> >> >> >> >>> >>>
> >> >> >> >>> >>> Satya
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> _______________________________________________
> >> >> >> >>> >>> yocto mailing list
> >> >> >> >>> >>> yocto@yoctoproject.org
> >> >> >> >>> >>> https://lists.yoctoproject.org/listinfo/yocto
> >> >> >> >>> >>>
> >> >> >> >>> >
> >> >> >> >>> > On Fri, Jun 7, 2013 at 4:21 PM, Zhang, Jessica
> >> >> >> >>> > <jessica.zhang@intel.com>
> >> >> >> >>> > wrote:
> >> >> >> >>> >> When you create your image, what profile did you use.  Ar=
e
> >> >> >> >>> >> you
> >> >> >> >>> >> building
> >> >> >> >>> >> one of our existing images, e.g. core-image-minimal, etc.
> or
> >> >> >> >>> >> it's a
> >> >> >> >>> >> customized image and if so, how did you customize your
> image,
> >> >> >> >>> >> via
> >> >> >> >>> >> layer or
> >> >> >> >>> >> install extra packages?  I think x11 is brought in via so=
me
> >> >> >> >>> >> package
> >> >> >> >>> >> dependency.  You said you were able to build the image, w=
as
> >> >> >> >>> >> the
> >> >> >> >>> >> x11
> >> >> >> >>> >> packages
> >> >> >> >>> >> there?  We're building a toolchain plus the sysroot that
> >> >> >> >>> >> matching
> >> >> >> >>> >> the rootfs
> >> >> >> >>> >> of your target image here so it's not just the toolchain
> that
> >> >> >> >>> >> is
> >> >> >> >>> >> built.
> >> >> >> >>> >>
> >> >> >> >>> >> -----Original Message-----
> >> >> >> >>> >> From: Hans Beck=E9rus [mailto:hans.beckerus@gmail.com]
> >> >> >> >>> >> Sent: Friday, June 07, 2013 7:09 AM
> >> >> >> >>> >> To: Zhang, Jessica
> >> >> >> >>> >> Cc: DAMARLA Satya Swaroop; yocto@yoctoproject.org
> >> >> >> >>> >> Subject: Re: [yocto] Application Development
> >> >> >> >>> >>
> >> >> >> >>> >> On Fri, Jun 7, 2013 at 4:03 PM, Zhang, Jessica
> >> >> >> >>> >> <jessica.zhang@intel.com> wrote:
> >> >> >> >>> >>> Yes, you need those packages in your sysroot for cross
> >> >> >> >>> >>> development.
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >> Ok. But out of curiosity, why should I need X11 packages
> for
> >> >> >> >>> >> a
> >> >> >> >>> >> simple
> >> >> >> >>> >> command-line based toolchain?
> >> >> >> >>> >> I assume that none of these X11 packages gets copied to m=
y
> >> >> >> >>> >> target
> >> >> >> >>> >> device rootfs, or?
> >> >> >> >>> >>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Cheers,
> >> >> >> >>> >>>
> >> >> >> >>> >>> Jessica
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> From: satyaswaroop.damarla@gmail.com
> >> >> >> >>> >>> [mailto:satyaswaroop.damarla@gmail.com]
> >> >> >> >>> >>> On Behalf Of DAMARLA Satya Swaroop
> >> >> >> >>> >>> Sent: Friday, June 07, 2013 12:10 AM
> >> >> >> >>> >>> To: Zhang, Jessica; yocto@yoctoproject.org
> >> >> >> >>> >>> Subject: Re: [yocto] Application Development
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> SHould we install development and debigging pacakages in
> the
> >> >> >> >>> >>> images
> >> >> >> >>> >>> when we want to build a toolchain.. I mean this
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>  "dbg-pkgs"       - add -dbg packages for all installed
> >> >> >> >>> >>> packages
> >> >> >> >>> >>>
> >> >> >> >>> >>> #                     (adds symbol information for
> >> >> >> >>> >>> debugging/profiling)
> >> >> >> >>> >>>
> >> >> >> >>> >>> #  "dev-pkgs"       - add -dev packages for all installe=
d
> >> >> >> >>> >>> packages
> >> >> >> >>> >>>
> >> >> >> >>> >>> #                     (useful if you want to develop
> against
> >> >> >> >>> >>> libs
> >> >> >> >>> >>> in
> >> >> >> >>> >>> the
> >> >> >> >>> >>> image)
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Greets,
> >> >> >> >>> >>>
> >> >> >> >>> >>> Satya
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> On Thu, Jun 6, 2013 at 1:07 PM, DAMARLA Satya Swaroop
> >> >> >> >>> >>> <swaroop.damarla@gmail.com> wrote:
> >> >> >> >>> >>>
> >> >> >> >>> >>> Hi Jessica & Philip,
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> I have an issue... This is such a long error ... I even
> did
> >> >> >> >>> >>> a
> >> >> >> >>> >>> fresh
> >> >> >> >>> >>> build by deleting the "tmp" directory. The image build
> went
> >> >> >> >>> >>> very
> >> >> >> >>> >>> well
> >> >> >> >>> >>> but the toolchain is always giving me a error...
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Selecting previously unselected package xz-dev.
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Unpacking xz-dev (from
> .../xz-dev_5.1.2alpha-r0_armel.deb)
> >> >> >> >>> >>> ...
> >> >> >> >>> >>>
> >> >> >> >>> >>> | The following package disappeared from your system as
> >> >> >> >>> >>>
> >> >> >> >>> >>> | all files have been overwritten by other packages:
> >> >> >> >>> >>>
> >> >> >> >>> >>> |   avahi
> >> >> >> >>> >>>
> >> >> >> >>> >>> | log_check: Using
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sdk.
> >> >> >> >>> >>> 4066
> >> >> >> >>> >>> as logfile
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Logfile is clean
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Installing NATIVESDK packages
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ InRelease
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ InRelease
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ Release.gpg
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ Release.gpg
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Get:1 file: ./ Release [24 B]
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Get:2 file: ./ Release [11 B]
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ Translation-en
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ Translation-en
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Reading package lists...
> >> >> >> >>> >>>
> >> >> >> >>> >>> | W: Ignoring Provides line with DepCompareOp for packag=
e
> >> >> >> >>> >>> nativesdk-pkgconfig__pkg-config__
> >> >> >> >>> >>>
> >> >> >> >>> >>> | W: You may want to run apt-get update to correct these
> >> >> >> >>> >>> problems
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Reading package lists...
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Building dependency tree...
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Reading state information...
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Some packages could not be installed. This may mean th=
at
> >> >> >> >>> >>> you
> >> >> >> >>> >>> have
> >> >> >> >>> >>>
> >> >> >> >>> >>> | requested an impossible situation or if you are using
> the
> >> >> >> >>> >>> unstable
> >> >> >> >>> >>>
> >> >> >> >>> >>> | distribution that some required packages have not yet
> been
> >> >> >> >>> >>> created
> >> >> >> >>> >>>
> >> >> >> >>> >>> | or been moved out of Incoming.
> >> >> >> >>> >>>
> >> >> >> >>> >>> | The following information may help to resolve the
> >> >> >> >>> >>> situation:
> >> >> >> >>> >>>
> >> >> >> >>> >>> |
> >> >> >> >>> >>>
> >> >> >> >>> >>> | The following packages have unmet dependencies:
> >> >> >> >>> >>>
> >> >> >> >>> >>> |  packagegroup-cross-canadian-arm : Depends:
> >> >> >> >>> >>> gdb-cross-canadian-arm
> >> >> >> >>> >>> | but it
> >> >> >> >>> >>> is not installable
> >> >> >> >>> >>>
> >> >> >> >>> >>> |                                    Depends:
> >> >> >> >>> >>> gcc-cross-canadian-arm
> >> >> >> >>> >>> | but it
> >> >> >> >>> >>> is not installable
> >> >> >> >>> >>>
> >> >> >> >>> >>> |                                    Depends:
> >> >> >> >>> >>> meta-environment-arm
> >> >> >> >>> >>> but
> >> >> >> >>> >>> | it is
> >> >> >> >>> >>> not installable
> >> >> >> >>> >>>
> >> >> >> >>> >>> |                                    Depends:
> >> >> >> >>> >>> | binutils-cross-canadian-arm
> >> >> >> >>> >>> but it is not installable
> >> >> >> >>> >>>
> >> >> >> >>> >>> | W: Ignoring Provides line with DepCompareOp for packag=
e
> >> >> >> >>> >>> nativesdk-pkgconfig__pkg-config__
> >> >> >> >>> >>>
> >> >> >> >>> >>> | W: You may want to run apt-get update to correct these
> >> >> >> >>> >>> problems
> >> >> >> >>> >>>
> >> >> >> >>> >>> | E: Unable to correct problems, you have held broken
> >> >> >> >>> >>> packages.
> >> >> >> >>> >>>
> >> >> >> >>> >>> | DEBUG: Python function do_populate_sdk finished
> >> >> >> >>> >>>
> >> >> >> >>> >>> | ERROR: Function failed: populate_sdk_image (see
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sdk.
> >> >> >> >>> >>> 4066
> >> >> >> >>> >>> for further information)
> >> >> >> >>> >>>
> >> >> >> >>> >>> ERROR: Task 10
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> (/home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-skid
> >> >> >> >>> >>> ata.bb,
> >> >> >> >>> >>> do_populate_sdk) failed with exit code '1'
> >> >> >> >>> >>>
> >> >> >> >>> >>> NOTE: Tasks Summary: Attempted 5020 tasks of which 4939
> >> >> >> >>> >>> didn't
> >> >> >> >>> >>> need to
> >> >> >> >>> >>> be rerun and 1 failed.
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Summary: 1 task failed:
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> /home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-skida
> >> >> >> >>> >>> ta.bb,
> >> >> >> >>> >>> do_populate_sdk
> >> >> >> >>> >>>
> >> >> >> >>> >>> Summary: There was 1 ERROR message shown, returning a
> >> >> >> >>> >>> non-zero
> >> >> >> >>> >>> exit
> >> >> >> >>> >>> code.
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> I am not able to install those packages as they say ther=
e
> >> >> >> >>> >>> are
> >> >> >> >>> >>> no
> >> >> >> >>> >>> installation candidate for them...
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> On Thu, Jun 6, 2013 at 6:52 AM, Zhang, Jessica
> >> >> >> >>> >>> <jessica.zhang@intel.com>
> >> >> >> >>> >>> wrote:
> >> >> >> >>> >>>
> >> >> >> >>> >>> Hi Satya,
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Use bitbake image-name -c populate_sdk, this allows you =
to
> >> >> >> >>> >>> create
> >> >> >> >>> >>> a
> >> >> >> >>> >>> toolchain with sysroot that match your target image that
> >> >> >> >>> >>> allows
> >> >> >> >>> >>> you to
> >> >> >> >>> >>> develop app against...
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Cheers,
> >> >> >> >>> >>>
> >> >> >> >>> >>> Jessica
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> From: yocto-bounces@yoctoproject.org
> >> >> >> >>> >>> [mailto:yocto-bounces@yoctoproject.org]
> >> >> >> >>> >>> On Behalf Of Satya Swaroop Damarla
> >> >> >> >>> >>> Sent: Wednesday, June 05, 2013 6:05 AM
> >> >> >> >>> >>> To: yocto@yoctoproject.org
> >> >> >> >>> >>> Subject: [yocto] Application Development
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Hi Guys,
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> I have an issue... I created a custom image based on
> NVIDIA
> >> >> >> >>> >>> Tegra2
> >> >> >> >>> >>> with a custom kernel. I installed  packages specific Teg=
ra
> >> >> >> >>> >>> board
> >> >> >> >>> >>> and
> >> >> >> >>> >>> application specific. Now we want to send the baord and
> the
> >> >> >> >>> >>> new
> >> >> >> >>> >>> linux
> >> >> >> >>> >>> image for application development...
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> As I went through ADT manual, I only found qemu based
> >> >> >> >>> >>> toolchains
> >> >> >> >>> >>> but I
> >> >> >> >>> >>> want to create toolchain based on my rootfs and kernel..=
.
> so
> >> >> >> >>> >>> that
> >> >> >> >>> >>> the
> >> >> >> >>> >>> development team can develop a voip application for the
> >> >> >> >>> >>> board... I
> >> >> >> >>> >>> am
> >> >> >> >>> >>> kind of stuck how to proceed in this issue...
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> I really need a small way out and hopefully I will catch
> >> >> >> >>> >>> things
> >> >> >> >>> >>> automatically..
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Cheers,
> >> >> >> >>> >>>
> >> >> >> >>> >>> Satya
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> _______________________________________________
> >> >> >> >>> >>> yocto mailing list
> >> >> >> >>> >>> yocto@yoctoproject.org
> >> >> >> >>> >>> https://lists.yoctoproject.org/listinfo/yocto
> >> >> >> >>> >>>
> >> >> >> >>> >>
> >> >> >> >>> >>
> >> >> >> >>> >> On Fri, Jun 7, 2013 at 4:03 PM, Zhang, Jessica
> >> >> >> >>> >> <jessica.zhang@intel.com> wrote:
> >> >> >> >>> >>> Yes, you need those packages in your sysroot for cross
> >> >> >> >>> >>> development.
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Cheers,
> >> >> >> >>> >>>
> >> >> >> >>> >>> Jessica
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> From: satyaswaroop.damarla@gmail.com
> >> >> >> >>> >>> [mailto:satyaswaroop.damarla@gmail.com]
> >> >> >> >>> >>> On Behalf Of DAMARLA Satya Swaroop
> >> >> >> >>> >>> Sent: Friday, June 07, 2013 12:10 AM
> >> >> >> >>> >>> To: Zhang, Jessica; yocto@yoctoproject.org
> >> >> >> >>> >>> Subject: Re: [yocto] Application Development
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> SHould we install development and debigging pacakages in
> the
> >> >> >> >>> >>> images
> >> >> >> >>> >>> when we want to build a toolchain.. I mean this
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>  "dbg-pkgs"       - add -dbg packages for all installed
> >> >> >> >>> >>> packages
> >> >> >> >>> >>>
> >> >> >> >>> >>> #                     (adds symbol information for
> >> >> >> >>> >>> debugging/profiling)
> >> >> >> >>> >>>
> >> >> >> >>> >>> #  "dev-pkgs"       - add -dev packages for all installe=
d
> >> >> >> >>> >>> packages
> >> >> >> >>> >>>
> >> >> >> >>> >>> #                     (useful if you want to develop
> against
> >> >> >> >>> >>> libs
> >> >> >> >>> >>> in
> >> >> >> >>> >>> the
> >> >> >> >>> >>> image)
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Greets,
> >> >> >> >>> >>>
> >> >> >> >>> >>> Satya
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> On Thu, Jun 6, 2013 at 1:07 PM, DAMARLA Satya Swaroop
> >> >> >> >>> >>> <swaroop.damarla@gmail.com> wrote:
> >> >> >> >>> >>>
> >> >> >> >>> >>> Hi Jessica & Philip,
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> I have an issue... This is such a long error ... I even
> did
> >> >> >> >>> >>> a
> >> >> >> >>> >>> fresh
> >> >> >> >>> >>> build by deleting the "tmp" directory. The image build
> went
> >> >> >> >>> >>> very
> >> >> >> >>> >>> well
> >> >> >> >>> >>> but the toolchain is always giving me a error...
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Selecting previously unselected package xz-dev.
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Unpacking xz-dev (from
> .../xz-dev_5.1.2alpha-r0_armel.deb)
> >> >> >> >>> >>> ...
> >> >> >> >>> >>>
> >> >> >> >>> >>> | The following package disappeared from your system as
> >> >> >> >>> >>>
> >> >> >> >>> >>> | all files have been overwritten by other packages:
> >> >> >> >>> >>>
> >> >> >> >>> >>> |   avahi
> >> >> >> >>> >>>
> >> >> >> >>> >>> | log_check: Using
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sdk.
> >> >> >> >>> >>> 4066
> >> >> >> >>> >>> as logfile
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Logfile is clean
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Installing NATIVESDK packages
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ InRelease
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ InRelease
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ Release.gpg
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ Release.gpg
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Get:1 file: ./ Release [24 B]
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Get:2 file: ./ Release [11 B]
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ Translation-en
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Ign file: ./ Translation-en
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Reading package lists...
> >> >> >> >>> >>>
> >> >> >> >>> >>> | W: Ignoring Provides line with DepCompareOp for packag=
e
> >> >> >> >>> >>> nativesdk-pkgconfig__pkg-config__
> >> >> >> >>> >>>
> >> >> >> >>> >>> | W: You may want to run apt-get update to correct these
> >> >> >> >>> >>> problems
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Reading package lists...
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Building dependency tree...
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Reading state information...
> >> >> >> >>> >>>
> >> >> >> >>> >>> | Some packages could not be installed. This may mean th=
at
> >> >> >> >>> >>> you
> >> >> >> >>> >>> have
> >> >> >> >>> >>>
> >> >> >> >>> >>> | requested an impossible situation or if you are using
> the
> >> >> >> >>> >>> unstable
> >> >> >> >>> >>>
> >> >> >> >>> >>> | distribution that some required packages have not yet
> been
> >> >> >> >>> >>> created
> >> >> >> >>> >>>
> >> >> >> >>> >>> | or been moved out of Incoming.
> >> >> >> >>> >>>
> >> >> >> >>> >>> | The following information may help to resolve the
> >> >> >> >>> >>> situation:
> >> >> >> >>> >>>
> >> >> >> >>> >>> |
> >> >> >> >>> >>>
> >> >> >> >>> >>> | The following packages have unmet dependencies:
> >> >> >> >>> >>>
> >> >> >> >>> >>> |  packagegroup-cross-canadian-arm : Depends:
> >> >> >> >>> >>> gdb-cross-canadian-arm
> >> >> >> >>> >>> | but it
> >> >> >> >>> >>> is not installable
> >> >> >> >>> >>>
> >> >> >> >>> >>> |                                    Depends:
> >> >> >> >>> >>> gcc-cross-canadian-arm
> >> >> >> >>> >>> | but it
> >> >> >> >>> >>> is not installable
> >> >> >> >>> >>>
> >> >> >> >>> >>> |                                    Depends:
> >> >> >> >>> >>> meta-environment-arm
> >> >> >> >>> >>> but
> >> >> >> >>> >>> | it is
> >> >> >> >>> >>> not installable
> >> >> >> >>> >>>
> >> >> >> >>> >>> |                                    Depends:
> >> >> >> >>> >>> | binutils-cross-canadian-arm
> >> >> >> >>> >>> but it is not installable
> >> >> >> >>> >>>
> >> >> >> >>> >>> | W: Ignoring Provides line with DepCompareOp for packag=
e
> >> >> >> >>> >>> nativesdk-pkgconfig__pkg-config__
> >> >> >> >>> >>>
> >> >> >> >>> >>> | W: You may want to run apt-get update to correct these
> >> >> >> >>> >>> problems
> >> >> >> >>> >>>
> >> >> >> >>> >>> | E: Unable to correct problems, you have held broken
> >> >> >> >>> >>> packages.
> >> >> >> >>> >>>
> >> >> >> >>> >>> | DEBUG: Python function do_populate_sdk finished
> >> >> >> >>> >>>
> >> >> >> >>> >>> | ERROR: Function failed: populate_sdk_image (see
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sdk.
> >> >> >> >>> >>> 4066
> >> >> >> >>> >>> for further information)
> >> >> >> >>> >>>
> >> >> >> >>> >>> ERROR: Task 10
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> (/home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-skid
> >> >> >> >>> >>> ata.bb,
> >> >> >> >>> >>> do_populate_sdk) failed with exit code '1'
> >> >> >> >>> >>>
> >> >> >> >>> >>> NOTE: Tasks Summary: Attempted 5020 tasks of which 4939
> >> >> >> >>> >>> didn't
> >> >> >> >>> >>> need to
> >> >> >> >>> >>> be rerun and 1 failed.
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Summary: 1 task failed:
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> /home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-skida
> >> >> >> >>> >>> ta.bb,
> >> >> >> >>> >>> do_populate_sdk
> >> >> >> >>> >>>
> >> >> >> >>> >>> Summary: There was 1 ERROR message shown, returning a
> >> >> >> >>> >>> non-zero
> >> >> >> >>> >>> exit
> >> >> >> >>> >>> code.
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> I am not able to install those packages as they say ther=
e
> >> >> >> >>> >>> are
> >> >> >> >>> >>> no
> >> >> >> >>> >>> installation candidate for them...
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> On Thu, Jun 6, 2013 at 6:52 AM, Zhang, Jessica
> >> >> >> >>> >>> <jessica.zhang@intel.com>
> >> >> >> >>> >>> wrote:
> >> >> >> >>> >>>
> >> >> >> >>> >>> Hi Satya,
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Use bitbake image-name -c populate_sdk, this allows you =
to
> >> >> >> >>> >>> create
> >> >> >> >>> >>> a
> >> >> >> >>> >>> toolchain with sysroot that match your target image that
> >> >> >> >>> >>> allows
> >> >> >> >>> >>> you to
> >> >> >> >>> >>> develop app against...
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Cheers,
> >> >> >> >>> >>>
> >> >> >> >>> >>> Jessica
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> From: yocto-bounces@yoctoproject.org
> >> >> >> >>> >>> [mailto:yocto-bounces@yoctoproject.org]
> >> >> >> >>> >>> On Behalf Of Satya Swaroop Damarla
> >> >> >> >>> >>> Sent: Wednesday, June 05, 2013 6:05 AM
> >> >> >> >>> >>> To: yocto@yoctoproject.org
> >> >> >> >>> >>> Subject: [yocto] Application Development
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Hi Guys,
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> I have an issue... I created a custom image based on
> NVIDIA
> >> >> >> >>> >>> Tegra2
> >> >> >> >>> >>> with a custom kernel. I installed  packages specific Teg=
ra
> >> >> >> >>> >>> board
> >> >> >> >>> >>> and
> >> >> >> >>> >>> application specific. Now we want to send the baord and
> the
> >> >> >> >>> >>> new
> >> >> >> >>> >>> linux
> >> >> >> >>> >>> image for application development...
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> As I went through ADT manual, I only found qemu based
> >> >> >> >>> >>> toolchains
> >> >> >> >>> >>> but I
> >> >> >> >>> >>> want to create toolchain based on my rootfs and kernel..=
.
> so
> >> >> >> >>> >>> that
> >> >> >> >>> >>> the
> >> >> >> >>> >>> development team can develop a voip application for the
> >> >> >> >>> >>> board... I
> >> >> >> >>> >>> am
> >> >> >> >>> >>> kind of stuck how to proceed in this issue...
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> I really need a small way out and hopefully I will catch
> >> >> >> >>> >>> things
> >> >> >> >>> >>> automatically..
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> Cheers,
> >> >> >> >>> >>>
> >> >> >> >>> >>> Satya
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>>
> >> >> >> >>> >>> _______________________________________________
> >> >> >> >>> >>> yocto mailing list
> >> >> >> >>> >>> yocto@yoctoproject.org
> >> >> >> >>> >>> https://lists.yoctoproject.org/listinfo/yocto
> >> >> >> >>> >>>
> >> >> >> >>
> >> >> >> >>
> >> >> >
> >> >> >
> >> >
> >> >
> >
> >
>

--047d7b6d9340c9f44304dededc48
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Its very unfortunate as I dont have such a directory=A0<sp=
an style=3D"font-style:italic;font-family:arial,sans-serif;font-size:13px">=
/home/damarla/yocto/</span><span style=3D"font-style:italic;font-family:ari=
al,sans-serif;font-size:13px">myToolchain/sysroots/x86_64-</span><span styl=
e=3D"font-style:italic;font-family:arial,sans-serif;font-size:13px">pokysdk=
-linux/usr/bin/</span><span style=3D"font-family:arial,sans-serif;font-size=
:13px"><i>cortexa9-*-gnueabi/ </i>at all and the other search gave me no re=
sult... I think the cross compiler is not being installed.... Can you think=
 about anything that restricts the cross compiler addition into the toolcha=
in</span><div>
<span style=3D"font-family:arial,sans-serif;font-size:13px"><br></span></di=
v><div style><span style=3D"font-family:arial,sans-serif;font-size:13px">Gr=
eets,</span></div><div style><span style=3D"font-family:arial,sans-serif;fo=
nt-size:13px">Satya</span></div>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue,=
 Jun 11, 2013 at 11:50 AM, Hans Beck=E9rus <span dir=3D"ltr">&lt;<a href=3D=
"mailto:hans.beckerus@gmail.com" target=3D"_blank">hans.beckerus@gmail.com<=
/a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hmm. Try to be less specific in your searg, =
eg.<br>
<br>
&gt;find /home/damarla/yocto/myToolchain -name \*-gcc<br>
<br>
Could be that your toolchain names it differently.<br>
Otherwise it should be here<br>
<br>
<br>
/home/damarla/yocto/myToolchain/sysroots/x86_64-pokysdk-linux/usr/bin/corte=
xa9-*-gnueabi/<br>
<br>
Hans<br>
<br>
On Tue, Jun 11, 2013 at 11:06 AM, DAMARLA Satya Swaroop<br>
<div class=3D"HOEnZb"><div class=3D"h5">&lt;<a href=3D"mailto:swaroop.damar=
la@gmail.com">swaroop.damarla@gmail.com</a>&gt; wrote:<br>
&gt; Hi Hans,<br>
&gt;<br>
&gt; I am sorry to disturb but I think I dont have cross compiler installed=
 in my<br>
&gt; toolchain... I compiled the toolcahin using bitbake core-image-skidata=
 -c<br>
&gt; populate_sdk =A0and installed =A0as below<br>
&gt;<br>
&gt; damarla@linuxbuildsrv:~/yocto/poky/buildSkidataHarmony/tmp/deploy/sdk$=
<br>
&gt; ./poky-eglibc-x86_64-arm-toolchain-1.3+snapshot-20130611.sh<br>
&gt; Enter target directory for SDK (default: /opt/poky/1.3+snapshot):<br>
&gt; /home/damarla/yocto/myToolchain<br>
&gt; You are about to install the SDK to &quot;/home/damarla/yocto/myToolch=
ain&quot;.<br>
&gt; Proceed[Y/n]?Y<br>
&gt; Extracting SDK...done<br>
&gt; Setting it up...done<br>
&gt; SDK has been successfully set up and is ready to be used.<br>
&gt;<br>
&gt; I checked the it for cross compiler but seems its not installed ...<br=
>
&gt; /home/damarla/yocto/myToolchain/ -name &quot;arm-poky-linux-gnueabi**&=
quot; -type f<br>
&gt; gives me no result... Do you know where could be the potential issue..=
. I<br>
&gt; actually made a clean build<br>
&gt;<br>
&gt; Greets,<br>
&gt; Satya<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Tue, Jun 11, 2013 at 10:50 AM, Hans Beck=E9rus &lt;<a href=3D"mailt=
o:hans.beckerus@gmail.com">hans.beckerus@gmail.com</a>&gt;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hmm, I must say that I am curious to why you need to know the exac=
t path?<br>
&gt;&gt; A toolchain does not require you to know the path? The environment=
<br>
&gt;&gt; script automatically adds the path to the compiler to your PATH<br=
>
&gt;&gt; variable. But if you really need to know it is located here (in my=
<br>
&gt;&gt; case but of course depends on were you choose to install the<br>
&gt;&gt; toolchain)<br>
&gt;&gt;<br>
&gt;&gt; Hans<br>
&gt;&gt;<br>
&gt;&gt; ls<br>
&gt;&gt; /opt/poky/1.4+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/corte=
xa9-vfp-poky-linux-gnueabi/<br>
&gt;&gt; arm-poky-linux-gnueabi-addr2line =A0arm-poky-linux-gnueabi-elfedit=
<br>
&gt;&gt; arm-poky-linux-gnueabi-gcc-ranlib =A0arm-poky-linux-gnueabi-ld.bfd=
<br>
&gt;&gt; arm-poky-linux-gnueabi-readelf<br>
&gt;&gt; arm-poky-linux-gnueabi-ar =A0 =A0 =A0 =A0 arm-poky-linux-gnueabi-g=
++<br>
&gt;&gt; arm-poky-linux-gnueabi-gcov =A0 =A0 =A0 =A0arm-poky-linux-gnueabi-=
nm<br>
&gt;&gt; arm-poky-linux-gnueabi-size<br>
&gt;&gt; arm-poky-linux-gnueabi-as =A0 =A0 =A0 =A0 arm-poky-linux-gnueabi-g=
cc<br>
&gt;&gt; arm-poky-linux-gnueabi-gdb =A0 =A0 =A0 =A0 arm-poky-linux-gnueabi-=
objcopy<br>
&gt;&gt; arm-poky-linux-gnueabi-strings<br>
&gt;&gt; arm-poky-linux-gnueabi-c++filt =A0 =A0arm-poky-linux-gnueabi-gcc-a=
r<br>
&gt;&gt; arm-poky-linux-gnueabi-gprof =A0 =A0 =A0 arm-poky-linux-gnueabi-ob=
jdump<br>
&gt;&gt; arm-poky-linux-gnueabi-strip<br>
&gt;&gt; arm-poky-linux-gnueabi-cpp =A0 =A0 =A0 =A0arm-poky-linux-gnueabi-g=
cc-nm<br>
&gt;&gt; arm-poky-linux-gnueabi-ld =A0 =A0 =A0 =A0 =A0arm-poky-linux-gnueab=
i-ranlib<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Jun 11, 2013 at 8:59 AM, DAMARLA Satya Swaroop<br>
&gt;&gt; &lt;<a href=3D"mailto:satyaswaroop.damarla@gmail.com">satyaswaroop=
.damarla@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; hI Hans,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; My last mail is incomplete.. Will you please tell me where to=
 find the<br>
&gt;&gt; &gt; cross<br>
&gt;&gt; &gt; compiler...Please send me the path :-)<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Greeting,<br>
&gt;&gt; &gt; Satya<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Mon, Jun 10, 2013 at 5:00 PM, Hans Beck=E9rus &lt;<a href=
=3D"mailto:hans.beckerus@gmail.com">hans.beckerus@gmail.com</a>&gt;<br>
&gt;&gt; &gt; wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Yes I tried the toolchain on a test application. But I do=
 not use<br>
&gt;&gt; &gt;&gt; eclipse, do not know if additional plug-ins are needed fo=
r that. But a<br>
&gt;&gt; &gt;&gt; standard eclipse workbench should be fine unless you need=
 some Yocto<br>
&gt;&gt; &gt;&gt; specific features or tools.<br>
&gt;&gt; &gt;&gt; After you built the toolchain you will get a huge .sh fil=
e in<br>
&gt;&gt; &gt;&gt; tmp/deploy/sdk. Just run it. It will ask you were to inst=
all the<br>
&gt;&gt; &gt;&gt; toolchain. Once you have done that you need to source the=
 environment<br>
&gt;&gt; &gt;&gt; script located in the root of the toolchain destination f=
older. Once<br>
&gt;&gt; &gt;&gt; the environment is sourced you should be ready to go.<br>
&gt;&gt; &gt;&gt; You will get a compiler with a name similar to<br>
&gt;&gt; &gt;&gt; arm-poky-linux-gnueabi-gcc, and all other build/debug too=
ls will be<br>
&gt;&gt; &gt;&gt; prefixed the same. The path to the compiler is setup by t=
he<br>
&gt;&gt; &gt;&gt; environment script.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Now, if you have eg. a autotools based package, simply do=
<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; 1) ./configure --host=3Darm-poky-linux<br>
&gt;&gt; &gt;&gt; 2) make<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; You package should now be built using the cross-compiler =
towards the<br>
&gt;&gt; &gt;&gt; exact same libraries as your target platform image.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; If your test application is a simple .c file or a Makefil=
e project,<br>
&gt;&gt; &gt;&gt; just try to compile it manually or run make ($GCC should =
be set to<br>
&gt;&gt; &gt;&gt; point to your cross-compiler so make should automatically=
 pick it up<br>
&gt;&gt; &gt;&gt; if the Makefile was written properly).<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Hans<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On Mon, Jun 10, 2013 at 4:28 PM, DAMARLA Satya Swaroop<br=
>
&gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:satyaswaroop.damarla@gmail.com">sat=
yaswaroop.damarla@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt; Ok this is damn cool... I have a question.. Did you =
already do a test<br>
&gt;&gt; &gt;&gt; &gt; application.... Can you explain me as I didnot under=
stand where is<br>
&gt;&gt; &gt;&gt; &gt; the<br>
&gt;&gt; &gt;&gt; &gt; cross<br>
&gt;&gt; &gt;&gt; &gt; compiler binaries... I dont see any.... Did you test=
 the toolchain<br>
&gt;&gt; &gt;&gt; &gt; using<br>
&gt;&gt; &gt;&gt; &gt; Eclipse or some other IDE.. If you used Eclipse, did=
 you also install<br>
&gt;&gt; &gt;&gt; &gt; the<br>
&gt;&gt; &gt;&gt; &gt; Yocto plugin?<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; On Mon, Jun 10, 2013 at 4:07 PM, Hans Beck=E9rus<br>
&gt;&gt; &gt;&gt; &gt; &lt;<a href=3D"mailto:hans.beckerus@gmail.com">hans.=
beckerus@gmail.com</a>&gt;<br>
&gt;&gt; &gt;&gt; &gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; [SOLVED]<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; Now it works! I do not know how my poky environm=
ent got polluted,<br>
&gt;&gt; &gt;&gt; &gt;&gt; but<br>
&gt;&gt; &gt;&gt; &gt;&gt; after doing<br>
&gt;&gt; &gt;&gt; &gt;&gt; =A0 bitbake -c cleanall meta-environment-arm<br>
&gt;&gt; &gt;&gt; &gt;&gt; =A0 bitbake -c cleanall sdk-gnu-config<br>
&gt;&gt; &gt;&gt; &gt;&gt; building the SDK passed without errors and I got=
 my installation in<br>
&gt;&gt; &gt;&gt; &gt;&gt; deploy/sdk.<br>
&gt;&gt; &gt;&gt; &gt;&gt; Even tried if for a small test application and i=
t seems to work fine<br>
&gt;&gt; &gt;&gt; &gt;&gt; :)<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; So no need to add sdk-tools, all that I have is =
what is added to<br>
&gt;&gt; &gt;&gt; &gt;&gt; SDKIMAGE_FEATURES by image.bbclass which is dev-=
pkgs and dbg-pkgs.<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; Hans<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; On Mon, Jun 10, 2013 at 1:28 PM, Hans Beck=E9rus=
<br>
&gt;&gt; &gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:hans.beckerus@gmail.com">h=
ans.beckerus@gmail.com</a>&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; On Mon, Jun 10, 2013 at 12:33 PM, DAMARLA S=
atya Swaroop<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; &lt;<a href=3D"mailto:satyaswaroop.damarla@=
gmail.com">satyaswaroop.damarla@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt; I installed &quot;dev-pkgs&quot; in EXT=
RA_IMAGE_FEATURES ... and then build<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt; the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt; toolchain, it was successfull....<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; That should already be provided by image.bb=
class?<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; Checking the file packagegroup-cross-canadi=
an.bbclass i found this<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; # For backwards compatibility after rename<=
br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; RPROVIDES_${PN} =3D &quot;task-cross-canadi=
an-${TRANSLATED_TARGET_ARCH}&quot;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; RDEPENDS_${PN} =3D &quot;\<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; =A0 =A0 binutils-cross-canadian-${TRANSLATE=
D_TARGET_ARCH} \<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; =A0 =A0 gdb-cross-canadian-${TRANSLATED_TAR=
GET_ARCH} \<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; =A0 =A0 gcc-cross-canadian-${TRANSLATED_TAR=
GET_ARCH} \<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; =A0 =A0 meta-environment-${TRANSLATED_TARGE=
T_ARCH} \<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; =A0 =A0 &quot;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; So, now I understand were the dependency to=
 meta-environment-arm<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; came<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; from. But how to resolve it?<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; Am I missing some package(s) in my environm=
ent? What *should*<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; provide<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; meta-environment-arm?<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; All I can find under Poky is <a href=3D"htt=
p://meta-environment.bb" target=3D"_blank">meta-environment.bb</a>.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt; Hans<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt; On Mon, Jun 10, 2013 at 12:03 PM, Hans =
Beck=E9rus<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:hans.beckerus@gma=
il.com">hans.beckerus@gmail.com</a>&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; Any updates on this matter? Do I ne=
ed to provide more<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; information?<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; /Hans<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; On Fri, Jun 7, 2013 at 4:29 PM, Han=
s Beck=E9rus<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &lt;<a href=3D"mailto:hans.beckerus=
@gmail.com">hans.beckerus@gmail.com</a>&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; On Fri, Jun 7, 2013 at 4:21 PM=
, Zhang, Jessica<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; &lt;<a href=3D"mailto:jessica.=
zhang@intel.com">jessica.zhang@intel.com</a>&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; When you create your image=
, what profile did you use. =A0Are<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; you<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; building<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; one of our existing images=
, e.g. core-image-minimal, etc. or<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; it&#39;s a<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; customized image and if so=
, how did you customize your image,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; via<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; layer or<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; install extra packages? =
=A0I think x11 is brought in via some<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; package<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; dependency. =A0You said yo=
u were able to build the image, was<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; x11<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; packages<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; there? =A0We&#39;re buildi=
ng a toolchain plus the sysroot that<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; matching<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; the rootfs<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; of your target image here =
so it&#39;s not just the toolchain that<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; is<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; built.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; Hi Jessica.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; I am building my own image rec=
ipe that basically does:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; require recipes-core/images/<a=
 href=3D"http://core-image-minimal-mtdutils.bb" target=3D"_blank">core-imag=
e-minimal-mtdutils.bb</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; IMAGE_FEATURES +=3D &quot; ssh=
-server-dropbear \<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 &quot;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; Its a console-only type of ima=
ge for an embedded device with<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; no<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; graphic support what so ever.<=
br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; Building the the rootfs and bo=
oting it up on the device works<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; fine.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; I have had no X11 dependency u=
ntil I added tools-sdk to<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; IMAGE_FEATURES<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; as suggested.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; What I am after is a command-l=
ine-only toolchain which will be<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; using<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; the sysroot from my rootfs bui=
ld.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; Maybe I am asking for somethin=
g that is not supported?<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; Hans<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; -----Original Message-----=
<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; From: Hans Beck=E9rus [mai=
lto:<a href=3D"mailto:hans.beckerus@gmail.com">hans.beckerus@gmail.com</a>]=
<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; Sent: Friday, June 07, 201=
3 7:09 AM<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; To: Zhang, Jessica<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; Cc: DAMARLA Satya Swaroop;=
 <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; Subject: Re: [yocto] Appli=
cation Development<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; On Fri, Jun 7, 2013 at 4:0=
3 PM, Zhang, Jessica<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:jess=
ica.zhang@intel.com">jessica.zhang@intel.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Yes, you need those pa=
ckages in your sysroot for cross<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; development.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; Ok. But out of curiosity, =
why should I need X11 packages for<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; a<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; simple<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; command-line based toolcha=
in?<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; I assume that none of thes=
e X11 packages gets copied to my<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; target<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; device rootfs, or?<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Cheers,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Jessica<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; From: <a href=3D"mailt=
o:satyaswaroop.damarla@gmail.com">satyaswaroop.damarla@gmail.com</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; [mailto:<a href=3D"mai=
lto:satyaswaroop.damarla@gmail.com">satyaswaroop.damarla@gmail.com</a>]<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; On Behalf Of DAMARLA S=
atya Swaroop<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Sent: Friday, June 07,=
 2013 12:10 AM<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; To: Zhang, Jessica; <a=
 href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Subject: Re: [yocto] A=
pplication Development<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; SHould we install deve=
lopment and debigging pacakages in the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; images<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; when we want to build =
a toolchain.. I mean this<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; =A0&quot;dbg-pkgs&quot=
; =A0 =A0 =A0 - add -dbg packages for all installed<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; packages<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; # =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 (adds symbol information for<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; debugging/profiling)<b=
r>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; # =A0&quot;dev-pkgs&qu=
ot; =A0 =A0 =A0 - add -dev packages for all installed<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; packages<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; # =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 (useful if you want to develop against<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; libs<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; in<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; image)<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Greets,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Satya<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; On Thu, Jun 6, 2013 at=
 1:07 PM, DAMARLA Satya Swaroop<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &lt;<a href=3D"mailto:=
swaroop.damarla@gmail.com">swaroop.damarla@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Hi Jessica &amp; Phili=
p,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; I have an issue... Thi=
s is such a long error ... I even did<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; a<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; fresh<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; build by deleting the =
&quot;tmp&quot; directory. The image build went<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; very<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; well<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; but the toolchain is a=
lways giving me a error...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Selecting previously=
 unselected package xz-dev.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Unpacking xz-dev (fr=
om .../xz-dev_5.1.2alpha-r0_armel.deb)<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; ...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | The following packag=
e disappeared from your system as<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | all files have been =
overwritten by other packages:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | =A0 avahi<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | log_check: Using<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; /home/damarla/yocto/po=
ky/buildSkidataHarmony/tmp/work/skidata_harmony-<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; poky-linux-gnueabi/cor=
e-image-skidata/1.0-r0/temp/log.do_populate_sdk.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; 4066<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; as logfile<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Logfile is clean<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Installing NATIVESDK=
 packages<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ InRelea=
se<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ InRelea=
se<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ Release=
.gpg<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ Release=
.gpg<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Get:1 file: ./ Relea=
se [24 B]<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Get:2 file: ./ Relea=
se [11 B]<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ Transla=
tion-en<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ Transla=
tion-en<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Reading package list=
s...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | W: Ignoring Provides=
 line with DepCompareOp for package<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; nativesdk-pkgconfig__p=
kg-config__<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | W: You may want to r=
un apt-get update to correct these<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; problems<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Reading package list=
s...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Building dependency =
tree...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Reading state inform=
ation...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Some packages could =
not be installed. This may mean that<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; you<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; have<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | requested an impossi=
ble situation or if you are using the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; unstable<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | distribution that so=
me required packages have not yet been<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; created<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | or been moved out of=
 Incoming.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | The following inform=
ation may help to resolve the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; situation:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; |<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | The following packag=
es have unmet dependencies:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | =A0packagegroup-cros=
s-canadian-arm : Depends:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; gdb-cross-canadian-arm=
<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | but it<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; is not installable<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Depends:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; gcc-cross-canadian-arm=
<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | but it<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; is not installable<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Depends:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; meta-environment-arm<b=
r>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; but<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | it is<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; not installable<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Depends:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | binutils-cross-canad=
ian-arm<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; but it is not installa=
ble<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | W: Ignoring Provides=
 line with DepCompareOp for package<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; nativesdk-pkgconfig__p=
kg-config__<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | W: You may want to r=
un apt-get update to correct these<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; problems<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | E: Unable to correct=
 problems, you have held broken<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; packages.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | DEBUG: Python functi=
on do_populate_sdk finished<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | ERROR: Function fail=
ed: populate_sdk_image (see<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; /home/damarla/yocto/po=
ky/buildSkidataHarmony/tmp/work/skidata_harmony-<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; poky-linux-gnueabi/cor=
e-image-skidata/1.0-r0/temp/log.do_populate_sdk.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; 4066<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; for further informatio=
n)<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; ERROR: Task 10<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; (/home/damarla/yocto/p=
oky/meta/recipes-graphics/images/core-image-skid<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; <a href=3D"http://ata.=
bb" target=3D"_blank">ata.bb</a>,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; do_populate_sdk) faile=
d with exit code &#39;1&#39;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; NOTE: Tasks Summary: A=
ttempted 5020 tasks of which 4939<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; didn&#39;t<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; need to<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; be rerun and 1 failed.=
<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Summary: 1 task failed=
:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; /home/damarla/yocto/po=
ky/meta/recipes-graphics/images/core-image-skida<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; <a href=3D"http://ta.b=
b" target=3D"_blank">ta.bb</a>,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; do_populate_sdk<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Summary: There was 1 E=
RROR message shown, returning a<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; non-zero<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; exit<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; code.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; I am not able to insta=
ll those packages as they say there<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; are<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; no<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; installation candidate=
 for them...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; On Thu, Jun 6, 2013 at=
 6:52 AM, Zhang, Jessica<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &lt;<a href=3D"mailto:=
jessica.zhang@intel.com">jessica.zhang@intel.com</a>&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Hi Satya,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Use bitbake image-name=
 -c populate_sdk, this allows you to<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; create<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; a<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; toolchain with sysroot=
 that match your target image that<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; allows<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; you to<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; develop app against...=
<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Cheers,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Jessica<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; From: <a href=3D"mailt=
o:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; [mailto:<a href=3D"mai=
lto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a>]<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; On Behalf Of Satya Swa=
roop Damarla<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Sent: Wednesday, June =
05, 2013 6:05 AM<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; To: <a href=3D"mailto:=
yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Subject: [yocto] Appli=
cation Development<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Hi Guys,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; I have an issue... I c=
reated a custom image based on NVIDIA<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Tegra2<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; with a custom kernel. =
I installed =A0packages specific Tegra<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; board<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; and<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; application specific. =
Now we want to send the baord and the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; new<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; linux<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; image for application =
development...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; As I went through ADT =
manual, I only found qemu based<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; toolchains<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; but I<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; want to create toolcha=
in based on my rootfs and kernel... so<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; that<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; development team can d=
evelop a voip application for the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; board... I<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; am<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; kind of stuck how to p=
roceed in this issue...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; I really need a small =
way out and hopefully I will catch<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; things<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; automatically..<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Cheers,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Satya<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; ______________________=
_________________________<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; yocto mailing list<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; <a href=3D"mailto:yoct=
o@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; <a href=3D"https://lis=
ts.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctopr=
oject.org/listinfo/yocto</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; On Fri, Jun 7, 2013 at 4:0=
3 PM, Zhang, Jessica<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:jess=
ica.zhang@intel.com">jessica.zhang@intel.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Yes, you need those pa=
ckages in your sysroot for cross<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; development.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Cheers,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Jessica<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; From: <a href=3D"mailt=
o:satyaswaroop.damarla@gmail.com">satyaswaroop.damarla@gmail.com</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; [mailto:<a href=3D"mai=
lto:satyaswaroop.damarla@gmail.com">satyaswaroop.damarla@gmail.com</a>]<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; On Behalf Of DAMARLA S=
atya Swaroop<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Sent: Friday, June 07,=
 2013 12:10 AM<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; To: Zhang, Jessica; <a=
 href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Subject: Re: [yocto] A=
pplication Development<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; SHould we install deve=
lopment and debigging pacakages in the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; images<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; when we want to build =
a toolchain.. I mean this<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; =A0&quot;dbg-pkgs&quot=
; =A0 =A0 =A0 - add -dbg packages for all installed<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; packages<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; # =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 (adds symbol information for<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; debugging/profiling)<b=
r>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; # =A0&quot;dev-pkgs&qu=
ot; =A0 =A0 =A0 - add -dev packages for all installed<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; packages<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; # =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 (useful if you want to develop against<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; libs<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; in<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; image)<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Greets,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Satya<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; On Thu, Jun 6, 2013 at=
 1:07 PM, DAMARLA Satya Swaroop<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &lt;<a href=3D"mailto:=
swaroop.damarla@gmail.com">swaroop.damarla@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Hi Jessica &amp; Phili=
p,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; I have an issue... Thi=
s is such a long error ... I even did<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; a<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; fresh<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; build by deleting the =
&quot;tmp&quot; directory. The image build went<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; very<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; well<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; but the toolchain is a=
lways giving me a error...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Selecting previously=
 unselected package xz-dev.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Unpacking xz-dev (fr=
om .../xz-dev_5.1.2alpha-r0_armel.deb)<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; ...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | The following packag=
e disappeared from your system as<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | all files have been =
overwritten by other packages:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | =A0 avahi<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | log_check: Using<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; /home/damarla/yocto/po=
ky/buildSkidataHarmony/tmp/work/skidata_harmony-<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; poky-linux-gnueabi/cor=
e-image-skidata/1.0-r0/temp/log.do_populate_sdk.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; 4066<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; as logfile<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Logfile is clean<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Installing NATIVESDK=
 packages<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ InRelea=
se<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ InRelea=
se<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ Release=
.gpg<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ Release=
.gpg<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Get:1 file: ./ Relea=
se [24 B]<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Get:2 file: ./ Relea=
se [11 B]<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ Transla=
tion-en<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ Transla=
tion-en<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Reading package list=
s...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | W: Ignoring Provides=
 line with DepCompareOp for package<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; nativesdk-pkgconfig__p=
kg-config__<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | W: You may want to r=
un apt-get update to correct these<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; problems<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Reading package list=
s...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Building dependency =
tree...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Reading state inform=
ation...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Some packages could =
not be installed. This may mean that<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; you<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; have<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | requested an impossi=
ble situation or if you are using the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; unstable<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | distribution that so=
me required packages have not yet been<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; created<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | or been moved out of=
 Incoming.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | The following inform=
ation may help to resolve the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; situation:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; |<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | The following packag=
es have unmet dependencies:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | =A0packagegroup-cros=
s-canadian-arm : Depends:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; gdb-cross-canadian-arm=
<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | but it<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; is not installable<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Depends:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; gcc-cross-canadian-arm=
<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | but it<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; is not installable<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Depends:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; meta-environment-arm<b=
r>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; but<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | it is<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; not installable<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Depends:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | binutils-cross-canad=
ian-arm<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; but it is not installa=
ble<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | W: Ignoring Provides=
 line with DepCompareOp for package<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; nativesdk-pkgconfig__p=
kg-config__<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | W: You may want to r=
un apt-get update to correct these<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; problems<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | E: Unable to correct=
 problems, you have held broken<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; packages.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | DEBUG: Python functi=
on do_populate_sdk finished<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | ERROR: Function fail=
ed: populate_sdk_image (see<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; /home/damarla/yocto/po=
ky/buildSkidataHarmony/tmp/work/skidata_harmony-<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; poky-linux-gnueabi/cor=
e-image-skidata/1.0-r0/temp/log.do_populate_sdk.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; 4066<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; for further informatio=
n)<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; ERROR: Task 10<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; (/home/damarla/yocto/p=
oky/meta/recipes-graphics/images/core-image-skid<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; <a href=3D"http://ata.=
bb" target=3D"_blank">ata.bb</a>,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; do_populate_sdk) faile=
d with exit code &#39;1&#39;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; NOTE: Tasks Summary: A=
ttempted 5020 tasks of which 4939<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; didn&#39;t<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; need to<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; be rerun and 1 failed.=
<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Summary: 1 task failed=
:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; /home/damarla/yocto/po=
ky/meta/recipes-graphics/images/core-image-skida<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; <a href=3D"http://ta.b=
b" target=3D"_blank">ta.bb</a>,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; do_populate_sdk<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Summary: There was 1 E=
RROR message shown, returning a<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; non-zero<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; exit<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; code.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; I am not able to insta=
ll those packages as they say there<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; are<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; no<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; installation candidate=
 for them...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; On Thu, Jun 6, 2013 at=
 6:52 AM, Zhang, Jessica<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &lt;<a href=3D"mailto:=
jessica.zhang@intel.com">jessica.zhang@intel.com</a>&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Hi Satya,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Use bitbake image-name=
 -c populate_sdk, this allows you to<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; create<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; a<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; toolchain with sysroot=
 that match your target image that<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; allows<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; you to<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; develop app against...=
<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Cheers,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Jessica<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; From: <a href=3D"mailt=
o:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; [mailto:<a href=3D"mai=
lto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a>]<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; On Behalf Of Satya Swa=
roop Damarla<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Sent: Wednesday, June =
05, 2013 6:05 AM<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; To: <a href=3D"mailto:=
yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Subject: [yocto] Appli=
cation Development<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Hi Guys,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; I have an issue... I c=
reated a custom image based on NVIDIA<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Tegra2<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; with a custom kernel. =
I installed =A0packages specific Tegra<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; board<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; and<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; application specific. =
Now we want to send the baord and the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; new<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; linux<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; image for application =
development...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; As I went through ADT =
manual, I only found qemu based<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; toolchains<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; but I<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; want to create toolcha=
in based on my rootfs and kernel... so<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; that<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; development team can d=
evelop a voip application for the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; board... I<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; am<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; kind of stuck how to p=
roceed in this issue...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; I really need a small =
way out and hopefully I will catch<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; things<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; automatically..<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Cheers,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Satya<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; ______________________=
_________________________<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; yocto mailing list<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; <a href=3D"mailto:yoct=
o@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; <a href=3D"https://lis=
ts.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctopr=
oject.org/listinfo/yocto</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; On Fri, Jun 7, 2013 at 4:21 PM=
, Zhang, Jessica<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; &lt;<a href=3D"mailto:jessica.=
zhang@intel.com">jessica.zhang@intel.com</a>&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; When you create your image=
, what profile did you use. =A0Are<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; you<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; building<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; one of our existing images=
, e.g. core-image-minimal, etc. or<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; it&#39;s a<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; customized image and if so=
, how did you customize your image,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; via<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; layer or<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; install extra packages? =
=A0I think x11 is brought in via some<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; package<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; dependency. =A0You said yo=
u were able to build the image, was<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; x11<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; packages<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; there? =A0We&#39;re buildi=
ng a toolchain plus the sysroot that<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; matching<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; the rootfs<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; of your target image here =
so it&#39;s not just the toolchain that<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; is<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; built.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; -----Original Message-----=
<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; From: Hans Beck=E9rus [mai=
lto:<a href=3D"mailto:hans.beckerus@gmail.com">hans.beckerus@gmail.com</a>]=
<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; Sent: Friday, June 07, 201=
3 7:09 AM<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; To: Zhang, Jessica<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; Cc: DAMARLA Satya Swaroop;=
 <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; Subject: Re: [yocto] Appli=
cation Development<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; On Fri, Jun 7, 2013 at 4:0=
3 PM, Zhang, Jessica<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:jess=
ica.zhang@intel.com">jessica.zhang@intel.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Yes, you need those pa=
ckages in your sysroot for cross<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; development.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; Ok. But out of curiosity, =
why should I need X11 packages for<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; a<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; simple<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; command-line based toolcha=
in?<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; I assume that none of thes=
e X11 packages gets copied to my<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; target<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; device rootfs, or?<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Cheers,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Jessica<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; From: <a href=3D"mailt=
o:satyaswaroop.damarla@gmail.com">satyaswaroop.damarla@gmail.com</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; [mailto:<a href=3D"mai=
lto:satyaswaroop.damarla@gmail.com">satyaswaroop.damarla@gmail.com</a>]<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; On Behalf Of DAMARLA S=
atya Swaroop<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Sent: Friday, June 07,=
 2013 12:10 AM<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; To: Zhang, Jessica; <a=
 href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Subject: Re: [yocto] A=
pplication Development<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; SHould we install deve=
lopment and debigging pacakages in the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; images<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; when we want to build =
a toolchain.. I mean this<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; =A0&quot;dbg-pkgs&quot=
; =A0 =A0 =A0 - add -dbg packages for all installed<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; packages<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; # =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 (adds symbol information for<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; debugging/profiling)<b=
r>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; # =A0&quot;dev-pkgs&qu=
ot; =A0 =A0 =A0 - add -dev packages for all installed<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; packages<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; # =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 (useful if you want to develop against<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; libs<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; in<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; image)<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Greets,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Satya<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; On Thu, Jun 6, 2013 at=
 1:07 PM, DAMARLA Satya Swaroop<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &lt;<a href=3D"mailto:=
swaroop.damarla@gmail.com">swaroop.damarla@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Hi Jessica &amp; Phili=
p,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; I have an issue... Thi=
s is such a long error ... I even did<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; a<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; fresh<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; build by deleting the =
&quot;tmp&quot; directory. The image build went<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; very<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; well<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; but the toolchain is a=
lways giving me a error...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Selecting previously=
 unselected package xz-dev.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Unpacking xz-dev (fr=
om .../xz-dev_5.1.2alpha-r0_armel.deb)<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; ...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | The following packag=
e disappeared from your system as<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | all files have been =
overwritten by other packages:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | =A0 avahi<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | log_check: Using<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; /home/damarla/yocto/po=
ky/buildSkidataHarmony/tmp/work/skidata_harmony-<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; poky-linux-gnueabi/cor=
e-image-skidata/1.0-r0/temp/log.do_populate_sdk.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; 4066<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; as logfile<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Logfile is clean<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Installing NATIVESDK=
 packages<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ InRelea=
se<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ InRelea=
se<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ Release=
.gpg<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ Release=
.gpg<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Get:1 file: ./ Relea=
se [24 B]<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Get:2 file: ./ Relea=
se [11 B]<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ Transla=
tion-en<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ Transla=
tion-en<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Reading package list=
s...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | W: Ignoring Provides=
 line with DepCompareOp for package<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; nativesdk-pkgconfig__p=
kg-config__<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | W: You may want to r=
un apt-get update to correct these<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; problems<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Reading package list=
s...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Building dependency =
tree...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Reading state inform=
ation...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Some packages could =
not be installed. This may mean that<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; you<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; have<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | requested an impossi=
ble situation or if you are using the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; unstable<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | distribution that so=
me required packages have not yet been<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; created<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | or been moved out of=
 Incoming.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | The following inform=
ation may help to resolve the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; situation:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; |<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | The following packag=
es have unmet dependencies:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | =A0packagegroup-cros=
s-canadian-arm : Depends:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; gdb-cross-canadian-arm=
<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | but it<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; is not installable<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Depends:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; gcc-cross-canadian-arm=
<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | but it<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; is not installable<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Depends:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; meta-environment-arm<b=
r>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; but<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | it is<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; not installable<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Depends:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | binutils-cross-canad=
ian-arm<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; but it is not installa=
ble<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | W: Ignoring Provides=
 line with DepCompareOp for package<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; nativesdk-pkgconfig__p=
kg-config__<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | W: You may want to r=
un apt-get update to correct these<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; problems<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | E: Unable to correct=
 problems, you have held broken<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; packages.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | DEBUG: Python functi=
on do_populate_sdk finished<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | ERROR: Function fail=
ed: populate_sdk_image (see<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; /home/damarla/yocto/po=
ky/buildSkidataHarmony/tmp/work/skidata_harmony-<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; poky-linux-gnueabi/cor=
e-image-skidata/1.0-r0/temp/log.do_populate_sdk.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; 4066<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; for further informatio=
n)<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; ERROR: Task 10<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; (/home/damarla/yocto/p=
oky/meta/recipes-graphics/images/core-image-skid<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; <a href=3D"http://ata.=
bb" target=3D"_blank">ata.bb</a>,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; do_populate_sdk) faile=
d with exit code &#39;1&#39;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; NOTE: Tasks Summary: A=
ttempted 5020 tasks of which 4939<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; didn&#39;t<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; need to<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; be rerun and 1 failed.=
<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Summary: 1 task failed=
:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; /home/damarla/yocto/po=
ky/meta/recipes-graphics/images/core-image-skida<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; <a href=3D"http://ta.b=
b" target=3D"_blank">ta.bb</a>,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; do_populate_sdk<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Summary: There was 1 E=
RROR message shown, returning a<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; non-zero<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; exit<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; code.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; I am not able to insta=
ll those packages as they say there<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; are<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; no<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; installation candidate=
 for them...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; On Thu, Jun 6, 2013 at=
 6:52 AM, Zhang, Jessica<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &lt;<a href=3D"mailto:=
jessica.zhang@intel.com">jessica.zhang@intel.com</a>&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Hi Satya,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Use bitbake image-name=
 -c populate_sdk, this allows you to<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; create<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; a<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; toolchain with sysroot=
 that match your target image that<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; allows<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; you to<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; develop app against...=
<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Cheers,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Jessica<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; From: <a href=3D"mailt=
o:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; [mailto:<a href=3D"mai=
lto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a>]<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; On Behalf Of Satya Swa=
roop Damarla<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Sent: Wednesday, June =
05, 2013 6:05 AM<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; To: <a href=3D"mailto:=
yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Subject: [yocto] Appli=
cation Development<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Hi Guys,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; I have an issue... I c=
reated a custom image based on NVIDIA<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Tegra2<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; with a custom kernel. =
I installed =A0packages specific Tegra<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; board<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; and<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; application specific. =
Now we want to send the baord and the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; new<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; linux<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; image for application =
development...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; As I went through ADT =
manual, I only found qemu based<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; toolchains<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; but I<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; want to create toolcha=
in based on my rootfs and kernel... so<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; that<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; development team can d=
evelop a voip application for the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; board... I<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; am<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; kind of stuck how to p=
roceed in this issue...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; I really need a small =
way out and hopefully I will catch<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; things<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; automatically..<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Cheers,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Satya<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; ______________________=
_________________________<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; yocto mailing list<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; <a href=3D"mailto:yoct=
o@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; <a href=3D"https://lis=
ts.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctopr=
oject.org/listinfo/yocto</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; On Fri, Jun 7, 2013 at 4:0=
3 PM, Zhang, Jessica<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:jess=
ica.zhang@intel.com">jessica.zhang@intel.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Yes, you need those pa=
ckages in your sysroot for cross<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; development.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Cheers,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Jessica<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; From: <a href=3D"mailt=
o:satyaswaroop.damarla@gmail.com">satyaswaroop.damarla@gmail.com</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; [mailto:<a href=3D"mai=
lto:satyaswaroop.damarla@gmail.com">satyaswaroop.damarla@gmail.com</a>]<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; On Behalf Of DAMARLA S=
atya Swaroop<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Sent: Friday, June 07,=
 2013 12:10 AM<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; To: Zhang, Jessica; <a=
 href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Subject: Re: [yocto] A=
pplication Development<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; SHould we install deve=
lopment and debigging pacakages in the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; images<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; when we want to build =
a toolchain.. I mean this<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; =A0&quot;dbg-pkgs&quot=
; =A0 =A0 =A0 - add -dbg packages for all installed<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; packages<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; # =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 (adds symbol information for<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; debugging/profiling)<b=
r>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; # =A0&quot;dev-pkgs&qu=
ot; =A0 =A0 =A0 - add -dev packages for all installed<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; packages<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; # =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 (useful if you want to develop against<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; libs<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; in<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; image)<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Greets,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Satya<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; On Thu, Jun 6, 2013 at=
 1:07 PM, DAMARLA Satya Swaroop<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &lt;<a href=3D"mailto:=
swaroop.damarla@gmail.com">swaroop.damarla@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Hi Jessica &amp; Phili=
p,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; I have an issue... Thi=
s is such a long error ... I even did<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; a<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; fresh<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; build by deleting the =
&quot;tmp&quot; directory. The image build went<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; very<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; well<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; but the toolchain is a=
lways giving me a error...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Selecting previously=
 unselected package xz-dev.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Unpacking xz-dev (fr=
om .../xz-dev_5.1.2alpha-r0_armel.deb)<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; ...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | The following packag=
e disappeared from your system as<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | all files have been =
overwritten by other packages:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | =A0 avahi<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | log_check: Using<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; /home/damarla/yocto/po=
ky/buildSkidataHarmony/tmp/work/skidata_harmony-<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; poky-linux-gnueabi/cor=
e-image-skidata/1.0-r0/temp/log.do_populate_sdk.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; 4066<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; as logfile<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Logfile is clean<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Installing NATIVESDK=
 packages<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ InRelea=
se<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ InRelea=
se<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ Release=
.gpg<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ Release=
.gpg<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Get:1 file: ./ Relea=
se [24 B]<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Get:2 file: ./ Relea=
se [11 B]<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ Transla=
tion-en<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Ign file: ./ Transla=
tion-en<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Reading package list=
s...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | W: Ignoring Provides=
 line with DepCompareOp for package<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; nativesdk-pkgconfig__p=
kg-config__<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | W: You may want to r=
un apt-get update to correct these<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; problems<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Reading package list=
s...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Building dependency =
tree...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Reading state inform=
ation...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | Some packages could =
not be installed. This may mean that<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; you<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; have<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | requested an impossi=
ble situation or if you are using the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; unstable<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | distribution that so=
me required packages have not yet been<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; created<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | or been moved out of=
 Incoming.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | The following inform=
ation may help to resolve the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; situation:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; |<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | The following packag=
es have unmet dependencies:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | =A0packagegroup-cros=
s-canadian-arm : Depends:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; gdb-cross-canadian-arm=
<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | but it<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; is not installable<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Depends:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; gcc-cross-canadian-arm=
<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | but it<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; is not installable<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Depends:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; meta-environment-arm<b=
r>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; but<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | it is<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; not installable<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Depends:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | binutils-cross-canad=
ian-arm<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; but it is not installa=
ble<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | W: Ignoring Provides=
 line with DepCompareOp for package<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; nativesdk-pkgconfig__p=
kg-config__<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | W: You may want to r=
un apt-get update to correct these<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; problems<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | E: Unable to correct=
 problems, you have held broken<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; packages.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | DEBUG: Python functi=
on do_populate_sdk finished<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; | ERROR: Function fail=
ed: populate_sdk_image (see<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; /home/damarla/yocto/po=
ky/buildSkidataHarmony/tmp/work/skidata_harmony-<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; poky-linux-gnueabi/cor=
e-image-skidata/1.0-r0/temp/log.do_populate_sdk.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; 4066<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; for further informatio=
n)<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; ERROR: Task 10<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; (/home/damarla/yocto/p=
oky/meta/recipes-graphics/images/core-image-skid<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; <a href=3D"http://ata.=
bb" target=3D"_blank">ata.bb</a>,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; do_populate_sdk) faile=
d with exit code &#39;1&#39;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; NOTE: Tasks Summary: A=
ttempted 5020 tasks of which 4939<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; didn&#39;t<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; need to<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; be rerun and 1 failed.=
<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Summary: 1 task failed=
:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; /home/damarla/yocto/po=
ky/meta/recipes-graphics/images/core-image-skida<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; <a href=3D"http://ta.b=
b" target=3D"_blank">ta.bb</a>,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; do_populate_sdk<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Summary: There was 1 E=
RROR message shown, returning a<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; non-zero<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; exit<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; code.<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; I am not able to insta=
ll those packages as they say there<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; are<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; no<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; installation candidate=
 for them...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; On Thu, Jun 6, 2013 at=
 6:52 AM, Zhang, Jessica<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; &lt;<a href=3D"mailto:=
jessica.zhang@intel.com">jessica.zhang@intel.com</a>&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Hi Satya,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Use bitbake image-name=
 -c populate_sdk, this allows you to<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; create<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; a<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; toolchain with sysroot=
 that match your target image that<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; allows<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; you to<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; develop app against...=
<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Cheers,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Jessica<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; From: <a href=3D"mailt=
o:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; [mailto:<a href=3D"mai=
lto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a>]<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; On Behalf Of Satya Swa=
roop Damarla<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Sent: Wednesday, June =
05, 2013 6:05 AM<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; To: <a href=3D"mailto:=
yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Subject: [yocto] Appli=
cation Development<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Hi Guys,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; I have an issue... I c=
reated a custom image based on NVIDIA<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Tegra2<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; with a custom kernel. =
I installed =A0packages specific Tegra<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; board<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; and<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; application specific. =
Now we want to send the baord and the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; new<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; linux<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; image for application =
development...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; As I went through ADT =
manual, I only found qemu based<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; toolchains<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; but I<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; want to create toolcha=
in based on my rootfs and kernel... so<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; that<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; development team can d=
evelop a voip application for the<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; board... I<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; am<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; kind of stuck how to p=
roceed in this issue...<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; I really need a small =
way out and hopefully I will catch<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; things<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; automatically..<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Cheers,<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; Satya<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; ______________________=
_________________________<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; yocto mailing list<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; <a href=3D"mailto:yoct=
o@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt; <a href=3D"https://lis=
ts.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctopr=
oject.org/listinfo/yocto</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--047d7b6d9340c9f44304dededc48--
