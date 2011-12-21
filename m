Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC3ACE0030D
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2011 17:27:52 -0800 (PST)
Received: from mail-iy0-f180.google.com ([209.85.210.180])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 20 Dec 2011 17:27:52 -0800
Received: by iazz13 with SMTP id z13so8942596iaz.25
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2011 17:27:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.190.201 with SMTP id gs9mr606345igc.1.1324430871492; Tue,
	20 Dec 2011 17:27:51 -0800 (PST)
Received: by 10.50.208.98 with HTTP; Tue, 20 Dec 2011 17:27:51 -0800 (PST)
Date: Tue, 20 Dec 2011 17:27:51 -0800
Message-ID: <CAPhnLPBP-dzFFZ1P9bC1jMWUq3SfqLg_65Yu5Q8CNTe7VC-N2w@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Subject: [Announcement] Poky Bernard 5.0.2
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
X-List-Received-Date: Wed, 21 Dec 2011 01:27:53 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

All,

We are pleased to announce the release of Poky Bernard 5.0.2

This release of poky is available at:
http://downloads.yoctoproject.org/releases/poky/poky-bernard-5.0.2.tar.bz2
or
http://mirrors.kernel.org/yocto/poky/poky-bernard-5.0.2.tar.bz2

Thank you everyone for all the hard work. For more info, please see:
http://www.yoctoproject.org/download/yocto/yocto-project-1.0.2-release-note=
s-poky-5.0.2

--
Elizabeth Flanagan
Yocto Project
Build and Release


POKY 5.0.2 RELEASE NOTES
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Version: 5.0.2 "Bernard"
Location: http://downloads.yoctoproject.org/releases/poky/poky-bernard-5.0.=
2.tar.bz2
Mirror: http://mirrors.kernel.org/yocto/poky/poky-bernard-5.0.2.tar.bz2
QA Test Results: https://wiki.yoctoproject.org/wiki/Yocto_1.0.2_Test_Report


RELEASE INFO
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=A0 =A0* poky
=A0 =A0 =A0- Git location: git://git.yoctoproject.org/poky.git
=A0 =A0 =A0- Git branch: bernard
=A0 =A0 =A0- Git tag: bernard-5.0+docs
=A0 =A0 =A0- Git rev: c0060446113f4418e2b5bf9c23143b5fe9bc95c0
=A0 =A0 =A0- Download:
http://downloads.yoctoproject.org/releases/poky/poky-bernard-5.0.2.tar.bz2
=A0 =A0 =A0- Mirror: http://mirrors.kernel.org/yocto/poky/poky-bernard-5.0.=
2.tar.bz2
=A0 =A0 =A0- md5sum: 8bce9755b3dce9f67ff96c5311d89554

NOTES
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
The purpose of this release is to provide support for building Bernard
on newer distributions such as Fedora 16 and Ubuntu 11.10.

This support consists of several patches related to:
* cross compilation on hosts with a Linux 3.x kernel
* host libraries changing location (i.e. Debian based systems have moved
libgl to a new location which affects the build of qemu-native)
* Fixing Makefiles to work with the stricter parser shipped with newer
versions of GNU Make

Further we have included security patches from various upstreams including:
* the Linux kernel
* libpng
* Python

Known issues
--------------------
We are unable to fully support openSUSE 11.4 with this release of Poky.
We've discovered an issue where building binutils for a target machine
of the same architecture as the build host can result in nasty host
infection issues which cause the build to fail.
For more details see the bugzilla entry:
http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1833

