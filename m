Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f41.google.com (mail-oa0-f41.google.com
	[209.85.219.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6057E01358
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 02:32:14 -0700 (PDT)
Received: by mail-oa0-f41.google.com with SMTP id j6so10602925oag.28
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 02:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=E90p+nlhp2hxRBZx07/fmgeHFtYsXMhcN8Eu/1ZzVi0=;
	b=i1SdnMOCdpxgPr0zJAhumDwIymB9D+lMYwXrkORw1gen/zlduUSH8ZrYuTboQOaSbj
	BGcuStqPxYlmqABkZDpY3fKc/u2CSERSxdIG6DeQFJaEj2R/xt9jJUpdkc6dpsH8l3vi
	kGi4HkaWnhBJ+Cx+C39XMwj/ARMRFCbiY1D5WNRsAieVpZJ0Riy4e+aPfugQcaLnaNqJ
	o0UL+IDNPRLBfdarJKO6AmiMeK5tNwUX/+uMFfn3TYMr48+HTn1bftU6RQPykxQE/jHb
	PBpooDe85z2nOgLpDj+MqVF0ckMHQhHhYKXFm9YyzZZGUH9WPRp/CMmMiQ2QdIBcNfPS
	jHoQ==
MIME-Version: 1.0
X-Received: by 10.182.24.105 with SMTP id t9mr92891obf.86.1378978334142; Thu,
	12 Sep 2013 02:32:14 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Thu, 12 Sep 2013 02:32:14 -0700 (PDT)
In-Reply-To: <CABHD4K_Xp5aCs2B_nZ52TfTw8mnSk1J=7TXZHUvVhU4uTBDeDQ@mail.gmail.com>
References: <CABHD4K9QJO=OOojPX4KmHXBMgfDK1wX-nWasJ82CL3m1ZzoZUg@mail.gmail.com>
	<CAFyqS9qQd1mcQ1OYxjRbRZnwezA=V8bvCLb+uvMBDYS1EwM-dA@mail.gmail.com>
	<CABHD4K9m06Rd3NNbB3ha4xz_ohFicXaQTBuOPzj4fkgA19Bg0g@mail.gmail.com>
	<CAFyqS9rMfTRP9zT0-99fUgyPhr0fxHNKR=ozVAZa4HbH+1Or+g@mail.gmail.com>
	<CABHD4K_Xp5aCs2B_nZ52TfTw8mnSk1J=7TXZHUvVhU4uTBDeDQ@mail.gmail.com>
Date: Thu, 12 Sep 2013 11:32:14 +0200
Message-ID: <CAFyqS9p=qeJV4f_z6e7NWtC01V5uYUV6NBtw5pYfCWdJAvfmuA@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: amit tomer <amittomer25@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to change machine name in yocto
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
X-List-Received-Date: Thu, 12 Sep 2013 09:32:16 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 12, 2013 at 11:08 AM, amit tomer <amittomer25@gmail.com> wrote:
> Hans, there are couple issue I have seen after I changed machine name to =
k2.
> First issue was->
>
> NOTE: make -j 16 CROSS_COMPILE=3Darm-poky-linux-gnueabi-
> CC=3Darm-poky-linux-gnueabi-gcc  --sysroot=3D/build/tmp/sysroots/k2
> argon_k2_config
> | make: *** No rule to make target `argon_k2_config'.  Stop.
> | make: *** [argon_k2_config] Error 1
> | ERROR: oe_runmake failed
> | ERROR: Function failed: do_compile (see
> /build/tmp/work/k2-poky-linux-gnueabi/u-boot/2013.01-r3+gitrAUTOINC+64c3a=
ae8986eb05aa9b7c326a9432810839120b1/temp/log.do_compile.19901
> for further information)
> ERROR: Task 74 (/meta-ti/recipes-bsp/u-boot/u-boot_2013.01.bb, do_compile=
)
> failed with exit code '1'
>
>
> Now what I did was i replace pyp-ii to k2 at various places in
> :meta-xyz/recipes-bsp/u-boot/uboot.bbappend
>
> like below
>
> SRCREV_pyp-ii =3D "0ecb4d63c273abc395d11906ebf59d80263394e3" to SRCREV_k2=
 =3D
> "0ecb4d63c273abc395d11906ebf59d80263394e3"
>
> And this issue was resolved.
>
> Second issue I faced was->
>
> ERROR: Task 324 (/meta-xyz/recipes-kernel/linux/linux-pyp-ii.bb, do_compi=
le)
> failed with exit code '1'
>
> Now to resolve it I renamed /meta-xyz/recipes-kernel/linux/linux-pyp-ii.b=
b
> to /meta-xyz/recipes-kernel/linux/linux-k2.bb
>
> and its fixed now
>
> But now I run into another problem after doing bitbake
>
>
> Build Configuration:
> BB_VERSION        =3D "1.18.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "RedHatEnterpriseServer-5.6"
> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> MACHINE           =3D "zzz_ii"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.4.1"
> TUNE_FEATURES     =3D "armv7a vfp neon callconvention-hard cortexa15"
> TARGET_FPU        =3D "vfp-neon"
> meta
> meta-yocto
> meta-yocto-bsp    =3D "(nobranch):beda5013e46da16a3d76f095869a5a5c5b1bc08=
a"
> meta-linaro-toolchain =3D
> "(nobranch):0f679485b945c1b929a44d1865eb517a096ac4ef"
> meta-ti           =3D "(nobranch):3eb71003af3ebb025285493721332111ac581a4=
2"
> meta-nsn          =3D "master:d2f9cf6bc90df95d53db0973e07a52394191faf5"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: multiple providers are available for runtime kernel-image
> (linux-keystone, linux-k2)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match kernel-image
> NOTE: multiple providers are available for runtime kernel-devicetree
> (linux-keystone, linux-k2)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match
> kernel-devicetree
>
Now you suddenly changed to zzz_ii, or what?
Honestly, I am bit confused about the whole thing and what you are
trying to accomplish here really :(
You should also make sure to use PREFERRED_PROVIDER to point out what
version of the kernel you wish to build in your machine .conf. And,
are you not setting UBOOT_MACHINE =3D "<your uboot target>"?
Also, I set KERNEL_DEVICETREE in my kernel recipe to point out which
.dts file to build. Maybe I am doing it wrong but that has worked fine
for me so far. Maybe someone else that understands your use case
better can tune in and assist?

>
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> Currently 1 running tasks (3160 of 3233):
> 0: linux-keystone-3.6.6-r0 do_fetch (pid 27433)
>
> and this job is hagging here for last 20 mins
>
> Could you tell me is it expected or what??
>
Probably not, but fetching the kernel source tree might take a *very* long =
time.
Also the server may experience problems. Try cloning the kernel source
manually using the URL from you recipe to check if things are
progressing normally.

>
>
>
>
>
> On Thu, Sep 12, 2013 at 1:25 PM, Hans Beck=E9rus <hans.beckerus@gmail.com=
>
> wrote:
>>
>> On Thu, Sep 12, 2013 at 9:11 AM, amit tomer <amittomer25@gmail.com> wrot=
e:
>> > Thanks Hans for kind reply
>> >
>> > I somehow manage to change the machine name in build confriguation
>> >
>> > Build Configuration:
>> > BB_VERSION        =3D "1.18.0"
>> > BUILD_SYS         =3D "x86_64-linux"
>> > NATIVELSBSTRING   =3D "RedHatEnterpriseServer-5.6"
>> > TARGET_SYS        =3D "arm-poky-linux-gnueabi"
>> > MACHINE           =3D "k2"
>> > DISTRO            =3D "poky"
>> > DISTRO_VERSION    =3D "1.4.1"
>> > TUNE_FEATURES     =3D "armv7a vfp neon callconvention-hard cortexa15"
>> > TARGET_FPU        =3D "vfp-neon"
>> > meta
>> > meta-yocto
>> >
>> >
>> > Now machine name is K2 for me,what I did is rename the
>> > "/meta-xyz/conf/machine/pyp-ii.conf  to k2.conf and set  MACHINE=3Dk2 =
in
>> > build/conf/local.conf .
>> >
>> >
>> > But my bitbake is still failing with different error this time.
>> >
>> > Could you please let me know whats needs to be changed in
>> > "build/conf/bblayers.conf file"  in order to change machine name. belo=
w
>> > is
>> > my "build/conf/bblayers.conf" file
>> >
>> Since your MACHINE is presented as "k2", the .conf file has been
>> picked up correctly. So far so good.
>> You should not need to add anything else in your bblayers.conf.
>> The new errors you are referring to might have nothing to do with your
>> current MACHINE setting.
>> You need to show the actual error you get. Not much we can do to help
>> otherwise.
>>
>> Thanks.
>> Hans
>>
>> >
>> > # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
>> > # changes incompatibly
>> > LCONF_VERSION =3D "6"
>> >
>> > BBPATH =3D "${TOPDIR}"
>> > BBFILES ?=3D ""
>> >
>> > BBLAYERS ?=3D " \
>> >   ${TOPDIR}/../poky/meta \
>> >   ${TOPDIR}/../poky/meta-yocto \
>> >   ${TOPDIR}/../poky/meta-yocto-bsp \
>> >   ${TOPDIR}/../linaro/meta-linaro-toolchain \
>> >   ${TOPDIR}/../meta-ti \
>> >   ${TOPDIR}/../meta-nsn \
>> >   "
>> > BBLAYERS_NON_REMOVABLE ?=3D " \
>> >   ${TOPDIR}/../poky/meta \
>> >   ${TOPDIR}/../poky/meta-yocto \
>> >   "
>> >
>> > BBMASK =3D "meta-ti/recipes-misc"
>> > BBMASK .=3D "|meta-ti/recipes-graphics"
>> >
>> > # meta-linaro is only able to supply linaro-4.7 without
>> > # toolchain-layer, therefore mask out linaro-4.6.  Note
>> > # that an associated change in local.conf to remove
>> > # toolchain-layer from LAYERDEPENDS_linaro is required.
>> > BBMASK .=3D "|gcc.*_linaro-4\.[^7]"
>> >
>> > # mask out lrc specific layer(s)
>> > BBMASK .=3D "|meta-nsn/recipes-connectivity-lrc"
>> >
>> >
>> >
>> >
>> > On Wed, Sep 11, 2013 at 8:26 PM, Hans Beck=E9rus <hans.beckerus@gmail.=
com>
>> > wrote:
>> >>
>> >> The MACHINE is simply a pointer to a machine specific configuration
>> >> file. So if you set your MACHINE=3Dfoo, then somewhere in your bblaye=
r
>> >> path(s) you need to make sure that a conf/machine/foo.conf is
>> >> available. Then it will use that.
>> >> Typically, I think you should do this in your own bsp meta, eg.
>> >> meta-foo/conf/machine/foo.conf and then add meta-foo to your
>> >> build/conf/bblayers.conf file.
>> >>
>> >> Thanks,
>> >> Hans
>> >>
>> >>
>> >>
>> >> On Wed, Sep 11, 2013 at 4:30 PM, amit tomer <amittomer25@gmail.com>
>> >> wrote:
>> >> >  I am new to opensource build framework Yocto and have a requiremen=
t
>> >> > wherein
>> >> > wanted to change the machine name ,when I do BITBAKE image-name
>> >> >
>> >> > Build Configuration:
>> >> >
>> >> > BB_VERSION        =3D "1.18.0"
>> >> > BUILD_SYS         =3D "x86_64-linux"
>> >> > NATIVELSBSTRING   =3D "RedHatEnterpriseServer-5.6"
>> >> > TARGET_SYS        =3D "arm-poky-linux-gnueabi"
>> >> > MACHINE           =3D "pyp-ii"
>> >> > DISTRO            =3D "poky"
>> >> > DISTRO_VERSION    =3D "1.4.1"
>> >> > TUNE_FEATURES     =3D "armv7a vfp neon callconvention-hard cortexa1=
5"
>> >> > TARGET_FPU        =3D "vfp-neon"
>> >> > meta
>> >> > meta-yocto
>> >> > meta-yocto-bsp    =3D
>> >> > "(nobranch):beda5013e46da16a3d76f095869a5a5c5b1bc08a"
>> >> > meta-linaro-toolchain =3D
>> >> > "(nobranch):0f679485b945c1b929a44d1865eb517a096ac4ef"
>> >> > meta-ti           =3D
>> >> > "(nobranch):3eb71003af3ebb025285493721332111ac581a42
>> >> >
>> >> > Now MACHIEN name I wanted to change something like k2 from pyp-ii ,=
I
>> >> > tried
>> >> > changing it in local.conf file but I am getting error like
>> >> >
>> >> > ERROR: OE-core's config sanity checker detected a potential
>> >> > misconfiguration. Either fix the cause of this error or at your own
>> >> > risk
>> >> > disable the checker (see sanity.conf). Following is the list of
>> >> > potential
>> >> > problems / advisories:
>> >> >
>> >> > Please set a valid MACHINE in your local.conf or environment
>> >> >
>> >> > ERROR: Execution of event handler 'check_sanity_eventhandler' faile=
d
>> >> >
>> >> > I also tried setting up export MACHINE=3D"k2" but I am getting the =
same
>> >> > error
>> >> > message
>> >> >
>> >> > In my /var/fpwork/tomar_yocto1/snz-yocto/meta-xyz/conf/machine ther=
e
>> >> > exist a
>> >> > pyp-ii.conf file.
>> >> >
>> >> > I tried renaming it to k2.conf but it also didn't work out.
>> >> >
>> >> >
>> >> > Can anybody let me know what needs to be done in order to change
>> >> > MACHINE
>> >> > name here.
>> >> >
>> >> >
>> >> > Thanks
>> >> >
>> >> > Amit Singh Tomar
>> >> >
>> >> >
>> >> > _______________________________________________
>> >> > yocto mailing list
>> >> > yocto@yoctoproject.org
>> >> > https://lists.yoctoproject.org/listinfo/yocto
>> >> >
>> >
>> >
>
>

