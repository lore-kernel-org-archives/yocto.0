Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f53.google.com (mail-vb0-f53.google.com
	[209.85.212.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EA8CE014E9
	for <yocto@yoctoproject.org>; Fri, 26 Apr 2013 15:49:24 -0700 (PDT)
Received: by mail-vb0-f53.google.com with SMTP id i3so975024vbh.26
	for <yocto@yoctoproject.org>; Fri, 26 Apr 2013 15:49:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type:content-transfer-encoding:x-gm-message-state;
	bh=r79k/07/7Pe4AE/YeF12pzRlYahZStbfamDabXJCGyQ=;
	b=MRIbBJW59D4UWBJrALo10zjJD7oIbHlEW81syj//6GRX2QYQqdPZU3MNa7HIB6sju5
	WTOn4TxnKyfRi3TSWDc2ZKPu7FGb8QNZLG7d7PO6BdeE22EucQNPrtv7VZ1OlV8yiNwU
	aIHWzmvb/TpMIQFSop5VSoiOohOphCmsoiaxWjBEqI6sxOj8qcKPhwwcLg7Hf3sqnKKj
	O6JaGucrOKFlxtNUUnR5k1SbX9cXpMYJAu4U/h11x885pgrl4zFi48tVdjGKbQrCg6Bs
	CpyNl1EysSOD+A8jcj5yPysVhjutUI1W/Q3/iC5C6dX0pKTzJjX1Nwb42TRK22tW22mu
	9EMg==
MIME-Version: 1.0
X-Received: by 10.220.168.2 with SMTP id s2mr29724082vcy.6.1367016563516; Fri,
	26 Apr 2013 15:49:23 -0700 (PDT)
Received: by 10.52.163.79 with HTTP; Fri, 26 Apr 2013 15:49:23 -0700 (PDT)
Date: Fri, 26 Apr 2013 15:49:23 -0700
Message-ID: <CAPhnLPDTKb2Ukvc+wUGiwS9zbZ12HdhSjDAMM6DGPgpWnYxa6Q@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org, yocto-announce@yoctoproject.org
X-Gm-Message-State: ALoCoQn+PsUukctij382vd8XtGvMggYnc0idPomgwLEqkoTgci+vabgti2W/AETHX52W3j85LHEp
Subject: [ANNOUNCEMENT] Yocto Project 1.4 "dylan" Released.
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
X-List-Received-Date: Fri, 26 Apr 2013 22:49:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

All,

I am pleased to announce the availability of the latest major release
of the Yocto Project, "dylan".
gpg signed release notes are available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/RELEASENOTES.txt

The kernel.org sync is not quite complete, but should finish in the
next few hours.

Congratulations to everyone for a successful release!

--=20
Elizabeth Flanagan
Yocto Project
Build and Release
--

Yocto Project 1.4 "Dylan" Release (poky 9.0.0)

* Summary
* Errata and Downloads
* Features
* Bug Metrics
* Migration Issues
* Known Issues

____________________
Summary
____________________

The latest major release of the Yocto Project, 1.4 "dylan", is now
available for download at:

* http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/poky-dylan-9.0=
.0.tar.bz2
* http://mirrors.kernel.org/yocto/yocto/yocto-1.4/poky-dylan-9.0.0.tar.bz2

Improvements over the Yocto Project 1.3 "danny" Release include:

    - Major performance improvements
    - Smart, a replacement for zypper
    - Read-only rootfs
    - Wayland support, an X replacement.
    - Systemd support, a replacement for the system V init daemon.
    - Over 400 bugs fixed

____________________
Errata and Downloads
____________________

Release Name: poky-dylan-9.0.0
Branch:  dylan
Tag:  dylan-9.0.0
Hash:  789b2b7e0cca404ff8ba8ed5ba823d215e6ba5b4
md5: 9f9ac0c4152df569aa8707a228828741
Download Locations:

 * http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/poky-dylan-9.=
0.0.tar.bz2
 * http://mirrors.kernel.org/yocto/yocto/yocto-1.4/poky-dylan-9.0.0.tar.gz

Release Name: meta-qt3-dylan-9.0.0
Branch:  dylan
Tag:  dylan-9.0.0
Hash:  4c27cce6688aa39852f3cba5e7b80ec279019605
md5: 4c14c1a19b5cd74eb4884520b2b94a37
Download Locations:

 * http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/meta-qt3-dyla=
n-9.0.0.tar.bz2
 * http://mirrors.kernel.org/yocto/yocto/yocto-1.4/meta-qt3-dylan-9.0.0.tar=
.gz

Release Name: eclipse-poky-dylan-9.0.0
Branch:  dylan
Tag:  dylan-9.0.0
Hash:  dc9a609c68fe4a6bbbf34d418fd6611489c1d6f7
md5: 6da1f0b3ca179da097fe3109e6208715
Download Locations:

 * http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/eclipse-poky-=
dylan-9.0.0.tar.bz2
 * http://mirrors.kernel.org/yocto/yocto/yocto-1.4/eclipse-poky-dylan-9.0.0=
.tar.gz

Release Name: yocto-autobuilder-dylan-9.0.0
Branch:  dylan
Tag:  dylan-9.0.0
Hash:
md5: 4c821df298dcef2065e320ab989b78e4
Download Locations:

 * http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/yocto-autobui=
lder-dylan-9.0.0.tar.bz2
 * http://mirrors.kernel.org/yocto/yocto/yocto-1.4/yocto-autobuilder-dylan-=
9.0.0.tar.gz

The QA report is available at:

 * https://wiki.yoctoproject.org/wiki/1.4_QA_Status

____________________
Features
____________________

 * Performance improvements: The overall build time has been
   reduced by more than 10%. Kernel build time is reduced by
   about 25%. With rm_work enabled, 40% less storage will be
   used for the tmp directory.

 * Support for Wayland, a simpler alternative for X

 * Support for systemd, a replacement for system V init daemon.

 * Support for postinstall scripts to run at roofs creation time,
   which will reduce image boot time.

 * Support for both the Linux 3.8 kernel and LTSI (3.4) kernel.

 * Replace Zypper/RPM integration with a smaller/better package
   resolver/manager - SMART/RPM.

 * Support for read-only root file system.

 * Usability improvements to HOB, bitbake, yocto-bsp and other
   tools, including UI improvements, new features and bug fixes.

 * Documentation improvement/update and a new kernel development
   manual and profiling manual.

 * A complete rewrite of the yocto-autobuilder to allow for easier
   configuration, faster build times, and easier to maintain code.

 * Do you desire time proven technology? The meta-yocto-classic
   layer is now available from either the Yocto Project PVCS
   repository or in 38 3.5" floppies from Walnut Creek. Features
   include:
       - ext or minix filesystems
       - lilo or loadlin boot loaders
       - Linux kernel 0.99pl14. No more worrying about loadable modules!
       - a.out binaries as the standard executable file format
       - OSS comes as the standard sound system
       - ksh, tcsh, twm, pine, rn, mailx, mc and many others...

 * Many package updates for most of the packages.

 * Many bug fixes and stability improvements.

____________________
Bug Metrics
____________________

This release consists of 407 bug fixes.  For a complete Bugzilla view
of the list see:

https://bugzilla.yoctoproject.org/buglist.cgi?f1=3Dtarget_milestone&list_id=
=3D36841&bug_severity=3Dcritical&bug_severity=3Dmajor&bug_severity=3Dnormal=
&bug_severity=3Dminor&o1=3Dsubstring&resolution=3DFIXED&chfieldto=3D2013-04=
-18&query_format=3Dadvanced&chfield=3Dresolution&chfieldfrom=3D2012-10-25&c=
hfieldvalue=3DFIXED&bug_status=3DRESOLVED&bug_status=3DVERIFIED&bug_status=
=3DCLOSED&v1=3D1.4

____________________
Migration Issues
____________________

See the "Migrating to the Yocto Project 1.4 Release" section in the
Yocto Project Reference Manual at:

* http://www.yoctoproject.org/docs/1.4/ref-manual/ref-manual.html#moving-to=
-the-yocto-project-1.4-release

____________________
Known Issues
____________________

The Yocto project uses an implementation of Bugzilla at
http://bugzilla.yoctoproject.org to handle bug tracking.  You should
always consult that source first when experiencing
any issue with a Yocto Project release.

The following bugs are known issues in 1.4 and are currently scheduled
to be fixed in the next release, 1.4.1:

 4214 - Don't Mix and Match OE-Core and Meta-OE systemd - bad
        things will happen
 4339 - psplash won't start with systemd - no hooks available
        to start and stop psplash from systemd
 4341 - systemd will not work with a Read-Only Rootfs
 1502 - Debian packaging and multilib is also know to fail
 4248 - Host gcc 4.8 issues (gcc-cross-initial do_compile failure)

