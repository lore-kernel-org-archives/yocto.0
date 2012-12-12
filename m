Return-Path: <tim+yoctoproject.org@coote.org>
Received: from mercury.coote.org (mail.coote.org [46.65.100.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A63A9E00770
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 03:14:03 -0800 (PST)
Received: by mercury.coote.org (Postfix, from userid 500)
	id EC82C4AB3; Wed, 12 Dec 2012 11:14:02 +0000 (GMT)
Received: from [127.0.0.1] (fw.coote.org [172.17.1.1])
	by mercury.coote.org (Postfix) with ESMTP id 8150043C3
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 11:14:02 +0000 (GMT)
From: Tim Coote <tim+yoctoproject.org@coote.org>
Message-Id: <C56AD576-BC63-4357-A090-C0DA3D5398C1@coote.org>
Date: Wed, 12 Dec 2012 11:13:59 +0000
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
X-Mailer: Apple Mail (2.1499)
X-Spambayes-Classification: ham; 0.00
Subject: adding package management
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
X-List-Received-Date: Wed, 12 Dec 2012 11:14:03 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hullo
I'm new to yocto, so I'm probably not going about this in the optimum =
way.

I'm trying to add package management to a yocto build. My preference =
would be yum/rpm on a rh/centos/fedora distro (as that's the distro used =
elsewhere), but I don't think that's feasible.

I've added:
[code]
IMAGE_FEATURES +=3D "package-management"
IMAGE_INSTALL_append +=3D " apt perl"
[/code]

to the bottom of =85conf/local.conf (I started without the perl, which I =
added to fix this specific issue). However, when I run
[code]
bitbake core-image-minimal
[/code]
I get the following error
[code]
[tim@mercury mybuilds]$ less =
/opt/poky/mybuilds/tmp/work/qemuarm-poky-linux-gnueabi/core-image-minimal-=
1.0-r0/temp/log.do_rootfs.18707
DEBUG: Executing shell function do_rootfs
Generating solve db for /opt/poky/mybuilds/tmp/deploy/rpm/qemuarm...
Generating solve db for /opt/poky/mybuilds/tmp/deploy/rpm/armv5te...
Generating solve db for /opt/poky/mybuilds/tmp/deploy/rpm/all...
Generating solve db for /opt/poky/mybuilds/tmp/deploy/rpm/all...
Processing rpm...
Processing zypper...
Processing packagegroup-core-boot...
Processing apt...
Processing perl...
error: Failed dependencies:
       =
/opt/poky/mybuilds/tmp/sysroots/i686-linux/usr/bin/perl-native/perl is =
needed by dpkg-1.16.8-r18.0.armv5te
ERROR: Function failed: do_rootfs (see =
/opt/poky/mybuilds/tmp/work/qemuarm-poky-linux-gnueabi/core-image-minimal-=
1.0-r0/temp/log.do_rootfs.18707 for further information)
[/code]

the rpm for dpkg-1.16.8-r18.0.armv5te does indeed include that =
dependency. However, the file *is* present:
[code]
[tim@mercury mybuilds]$ ll =
/opt/poky/mybuilds/tmp/sysroots/i686-linux/usr/bin/perl-native/perl
-rwxr-xr-x 1 tim tim 244 Dec 10 11:04 =
/opt/poky/mybuilds/tmp/sysroots/i686-linux/usr/bin/perl-native/perl
[/code]

=85 and since it's a couple of days old, I can see that adding perl =
after apt to IMAGE_INSTALL_append is pointless.

Have I missed something obvious? Is this a real issue?

Should I add a package manager some other way in any case?

thanks
Tim=

