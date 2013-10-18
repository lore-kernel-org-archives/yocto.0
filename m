Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35F0BE0167D
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 12:54:50 -0700 (PDT)
Received: by mail-vc0-f178.google.com with SMTP id lh4so707161vcb.9
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 12:54:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=PVqoUqJmoLxXBtrp9qRI8HqBzb6kvvtZde4CBW/rruQ=;
	b=WNSrjgTHkb7G/Hohb17G3EZPF7PfkiiQdHrizvCytCssHNBhFuOyaZFg4AX6fhvkjD
	4hMB04azV54GXaniExFcMeszyFGZIGI/NYNwrl1P/osqfvWxFgQmmF44eYSFiH5nB9l1
	CWZd9ReAj27SbRrvxxIARiMVvRSN7PNKxZG3b6bcEokM9RLzQfSj4UdwddwFA+rgkxIp
	qk++wnGbMeSTxPX0GVsnBX0uaKggJEBCuXi2dyZ9dNkZeLnNgDcTA77WN9IvALvjJXWQ
	XbICTTdb3l7kbF96hHyrLnbiTUS5nXiJcS8QTnTV6mZalE9/jm1Trd+jc/QksT2P1d8j
	mcXw==
X-Gm-Message-State: ALoCoQlq8O8j4jpwLpLJr52pEGLLGp8Kkc+UQFpu14BsiaQHVzl2Qa7ms6klmHeILhx/DRxmGAaa
MIME-Version: 1.0
X-Received: by 10.221.6.195 with SMTP id ol3mr44798vcb.34.1382126089634; Fri,
	18 Oct 2013 12:54:49 -0700 (PDT)
Received: by 10.52.147.201 with HTTP; Fri, 18 Oct 2013 12:54:49 -0700 (PDT)
Date: Fri, 18 Oct 2013 12:54:49 -0700
Message-ID: <CAPhnLPBEKRK-6zfX8+31qWidf_LLFq=U-9O1gkPjmMTzg+kGiQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: [Announcement] Yocto Project 1.5 now available.
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
X-List-Received-Date: Fri, 18 Oct 2013 19:54:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

All,

The latest major release of the Yocto Project, 1.5 "Dora" (poky-10.0.0), is=
 now
available for download at:

* http://downloads.yoctoproject.org/releases/yocto/yocto-1.5/poky-dora-10.0=
.0.tar.bz2
* http://mirrors.kernel.org/yocto/yocto/yocto-1.5/poky-dora-10.0.0.tar.bz2

Improvements over the Yocto Project 1.4 "dylan" Release include:

        * Major performance improvements
        * 180+ recipe upgrades
        * New x86 and x86-64 reference BSPs
        * Over 400 bugs fixed

____________________
Errata and Downloads
____________________

Release Name: poky-dora-10.0.0
Branch:  dora
Tag:  dora-10.0.0.final
Hash:  faf8f8660fae26a14578738b642fdeb08bcb9d54
md5:  53dd6fdbbf1f5a5b432af15ab9d0da13
Download Locations:

 * http://downloads.yoctoproject.org/releases/yocto/yocto-1.5/poky-dora-10.=
0.0.tar.bz2
 * http://mirrors.kernel.org/yocto/yocto/yocto-1.5/poky-dora-10.0.0.tar.bz2

Release Name: meta-qt3-dora-10.0.0
Branch:  dora
Tag:  dora-10.0.0.final
Hash:  b73552fb998fd30a01dbee5a172e432a16078222
md5:  1f679807beff534f1ec29bac227db034
Download Locations:

 * http://downloads.yoctoproject.org/releases/yocto/yocto-1.5/meta-qt3-dora=
-10.0.0.tar.bz2
 * http://mirrors.kernel.org/yocto/yocto/yocto-1.5/meta-qt3-dora-10.0.0.tar=
.bz2

Release Name: eclipse-poky-juno-dora-10.0.0
Branch:  dora
Tag:  dora-10.0.0.final
Hash:  2fa1c58940141a3c547c8790b8a6832167e8eb66
md5:  7351df2f38dd80cd36aeb3a68f8b42cf
Download Locations:

 * http://downloads.yoctoproject.org/releases/yocto/yocto-1.5/eclipse-poky-=
juno-dora-10.0.0.tar.bz2
 * http://mirrors.kernel.org/yocto/yocto/yocto-1.5/eclipse-poky-juno-dora-1=
0.0.0.tar.bz2

Release Name: eclipse-poky-kepler-dora-10.0.0
Branch:  dora
Tag:  dora-10.0.0.final
Hash:  ad74249895f882a8f00bdeef7a0f7c18998cc43e
md5:  d9cceb07cdadde1d6263c5b25ab570f5
Download Locations:

 * http://downloads.yoctoproject.org/releases/yocto/yocto-1.5/eclipse-poky-=
kepler-dora-10.0.0.tar.bz2
 * http://mirrors.kernel.org/yocto/yocto/yocto-1.5/eclipse-poky-kepler-dora=
-10.0.0.tar.bz2

Release Name: yocto-autobuilder-dora-10.0.0
Branch:  dora
Tag:  dora-10.0.0.final
Hash:  1a86156016e2cfbb1fc0c3e28b03d247cb9038d2
md5:  e030b33211ba237a263ec6ec479d9f30
Download Locations:

 * http://downloads.yoctoproject.org/releases/yocto/yocto-1.5/yocto-autobui=
lder-dora-10.0.0.tar.bz2
 * http://mirrors.kernel.org/yocto/yocto/yocto-1.5/yocto-autobuilder-dora-1=
0.0.0.tar.bz2

The QA report is available at:

 * https://wiki.yoctoproject.org/wiki/WW41_-_2013-10-08_-_Full_Pass_Release=
_1.5_M5.rc8

____________________
Features
____________________


    * linux-yocto 3.10 kernel
    * gcc 4.8.1
    * eglibc 2.18
    * 180+ other recipe upgrades
    * Improvements in bitbake startup and parse time ( ~25% improvement in
      startup time, ~10% improvement in overall parse time)
    * Eclipse plug-in added CMake project support and is upgraded to Kepler
      release.  The code base has also gone through major refactoring to be=
tter
      support remote interaction.
    * Added gstreamer 1.0 (default version built is still 0.10)
    * Added bluez 5 (default version built is still 4)
    * New genericx86 / genericx86-64 hardware reference BSPs replacing atom=
-pc
    * New "buildtools-tarball" providing certain tools (python, git, chrpat=
h,
      tar, make) for host distributions whose own versions of those tools a=
re
      broken or too old to be compatible with the build system
    * New automated runtime testing framework to run tests written in Pytho=
n on
      images using QEMU
    * Support for /run from FHS 3 draft specification
    * BusyBox binary is now split into suid and non-suid portions, allowing=
 the
      replacement of tinylogin
    * Added ability to easily build initramfs binaries (kernel + initramfs
      image) and pair a rootfs image recipe with an initramfs image recipe
    * Added ability to explicitly exclude one or more packages from an imag=
e
    * Implementation of the tardis bbclass (Time And Relative DIsk Space) w=
hich
      allows disk images to take up an unlimited amount of space on limited=
 disk
      space.
    * Image creation now creates real ext3/ext4 filesystem images instead o=
f
      creating as ext2 and upgrading
    * Initial support for partitioning and advanced image creation (using n=
ew
      "wic" script)
    * Added inc file to enable compiler and linker flags that enhance secur=
ity
      (conf/distro/include/security_flags.inc)
    * Properly split SDKs for different machines that have the same/similar
      architecture
    * Added a "test-dependencies" script to detect missing or auto-enabled
      dependencies
    * Added ability to define additional users for an image not associated =
with
      a specific package (EXTRA_USERS_PARAMS)
    * Enabled ptest for ethtool, libxml2, perl, busybox, bzip2, python, kmo=
d,
      bash (GPLv2 version), strace
    * Easier customisation of DISTRO_FEATURES if building your custom distr=
o
      configuration on top of poky.conf
    * Added EFI support to ISO image generation
    * Bitbake wrapper script removed
    * Initial build of pseudo is now handled internally
    * Usability enhancements in Hob
    * Usability enhancements in buildhistory command line tools
    * Added beginnings of memory resident bitbake
    * Initial prototype of license scanning and SPDX license documentation
      generation
    * Added "A Closer Look at the Yocto Project Development Environment" ch=
apter
      to the Reference Manual giving an in-depth look at the build process.

____________________
Bug Metrics
____________________

This release consists of 407 bug fixes.  For a complete Bugzilla view
of the list see:

https://bugzilla.yoctoproject.org/buglist.cgi?f1=3Dtarget_milestone&list_id=
=3D36841&bug_severity=3Dcritical&bug_severity=3Dmajor&bug_severity=3Dnormal=
&bug_severity=3Dminor&o1=3Dsubstring&resolution=3DFIXED&chfieldto=3D2013-10=
-18&query_format=3Dadvanced&chfield=3Dresolution&chfieldfrom=3D2013-4-25&ch=
fieldvalue=3DFIXED&bug_status=3DRESOLVED&bug_status=3DVERIFIED&bug_status=
=3DCLOSED&v1=3D1.4

____________________
Migration Issues
____________________

See the "Moving to the Yocto Project 1.5 Release" section in the
Yocto Project Reference Manual at:

http://www.yoctoproject.org/docs/1.5/ref-manual/ref-manual.html#moving-to-t=
he-yocto-project-1.5-release

____________________
Known Issues
____________________

    * Bug 5311 - can't use PACKAGE_EXCLUDE with an ipk image based
    * Bug 5182/5183/5211 - [Beagleboard xM]X/Network Interface/USB do not w=
ork
      with 3.10 kernel
    * Bug 5351 - genericx86 auth.err getty[615]: tcgetattr: Input/output
    * Bug 5354 - Incorrect path set for ppc adt in x86 machines. Workaround
      Note: ADT issue with ppc ADT toolchain for spe enabled targets not
      coexisting well with the non-spe standard version. To work around, us=
e
      either one set of ppc targets or the other but don't build both. If y=
ou
      need both, put one in a separate ADT repository.
    * Known issue with feature #3847: New partitioning description and tool=
ing
      There is a new tool for image creation called wic which is available =
as a
      prototype in this release.
      We encourage experimentation and feedback from the community for wic;
      please send email to yocto@yoctoproject.org if you have questions or =
run
      into problems.
    * Due to a bad implementation of libchameleon in some host distribution=
s,
      tardis.bbclass will sometimes turn an embedded device into a large bl=
ue
      police box. Please send patches to the maintainer,
Tim.E.Lord@yoctoproject.org

