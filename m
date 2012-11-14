Return-Path: <marek.belisko@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 010CCE0032E
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2012 07:49:29 -0800 (PST)
Received: by mail-ob0-f176.google.com with SMTP id un3so588423obb.35
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2012 07:49:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	bh=Xyb68YHwYWA//WPj0gZNxQlF0DjUNG1D3zkC+Pmmna8=;
	b=RsUnX0A+Ates1m6DwSZkU0VFY1DUeQ3kcc+8FfaCWZc2h5u9rOqlew7p3ZgDhp+tgr
	51BdAZapdIUk8jE6m/ZOUW/3+jNVVGNuy+m2EJYOZ0Gzaq3GyqfCedV6vAq5ihguwnjm
	5jPZ2fOxK9OxpkMaFAOsVMRDDEH8lsrn4vKYGdDkK/kr4/rCVA2TuZagvqK8E5PUBxTQ
	zzDwSAVjg1mwAzC8/8DIh3ZlNMM4309HLuDc1dfIaUJVAbKYfrnjB3C82R3NGv6aQHo7
	RTsSxqW1sKRExc9JuhFhSR4Ysss074UL/dIgVZhv7QXj2HIbMl2AzcbEjllCMOnZZG3k
	hKRw==
MIME-Version: 1.0
Received: by 10.60.172.226 with SMTP id bf2mr20049002oec.48.1352908169147;
	Wed, 14 Nov 2012 07:49:29 -0800 (PST)
Received: by 10.76.113.231 with HTTP; Wed, 14 Nov 2012 07:49:29 -0800 (PST)
Date: Wed, 14 Nov 2012 16:49:29 +0100
Message-ID: <CAAfyv37kw6e4F_4wnhCwCa9Rq37DKEMrpCfmdt6UmXPpa3SZ9Q@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
To: yocto@yoctoproject.org
Subject: pandaboard kernel fetching fail
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
X-List-Received-Date: Wed, 14 Nov 2012 15:49:30 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to build core-image-minimal for pandaboard.
I'm stuck when getting kernel:

DEBUG: Executing python function do_fetch
DEBUG: Executing python function base_do_fetch
DEBUG: Trying Upstream
DEBUG: Running export HOME=3D"/home/open-nandra"; export
SSH_AGENT_PID=3D"3240"; export
SSH_AUTH_SOCK=3D"/run/user/open-nandra/keyring-xpuvGP/ssh"; export
GIT_CONFIG=3D"/home/open-nandra/yocto/poky-danny-8.0/panda_build/tmp/sysroo=
ts/i686-linux/etc/gitconfig";
export PATH=3D"/home/open-nandra/yocto/poky-danny-8.0/scripts:/home/open-na=
ndra/yocto/poky-danny-8.0/panda_build/tmp/sysroots/i686-linux/usr/bin/armv7=
a-vfp-neon-poky-linux-gnueabi:/home/open-nandra/yocto/poky-danny-8.0/panda_=
build/tmp/sysroots/pandaboard/usr/bin/crossscripts:/home/open-nandra/yocto/=
poky-danny-8.0/panda_build/tmp/sysroots/i686-linux/usr/sbin:/home/open-nand=
ra/yocto/poky-danny-8.0/panda_build/tmp/sysroots/i686-linux/usr/bin:/home/o=
pen-nandra/yocto/poky-danny-8.0/panda_build/tmp/sysroots/i686-linux/sbin:/h=
ome/open-nandra/yocto/poky-danny-8.0/panda_build/tmp/sysroots/i686-linux//b=
in:/home/open-nandra/yocto/poky-danny-8.0/scripts:/home/open-nandra/yocto/p=
oky-danny-8.0/bitbake/bin/:/home/open-nandra/bin:/usr/lib/lightdm/lightdm:/=
usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr=
/local/games:/opt/gcc-linaro-arm-linux-gnueabi-2012.02-20120222_linux/bin:/=
home/open-nandra/bin:/opt/gcc-linaro-arm-linux-gnueabi-2012.02-20120222_lin=
ux/bin:/home/open-nandra/bin";
git log --pretty=3Doneline -n 1 c34a43ec74168b892a948b45695486f1a3d700af
-- 2> /dev/null | wc -l
DEBUG: Running export HOME=3D"/home/open-nandra"; export
SSH_AGENT_PID=3D"3240"; export
SSH_AUTH_SOCK=3D"/run/user/open-nandra/keyring-xpuvGP/ssh"; export
GIT_CONFIG=3D"/home/open-nandra/yocto/poky-danny-8.0/panda_build/tmp/sysroo=
ts/i686-linux/etc/gitconfig";
export PATH=3D"/home/open-nandra/yocto/poky-danny-8.0/scripts:/home/open-na=
ndra/yocto/poky-danny-8.0/panda_build/tmp/sysroots/i686-linux/usr/bin/armv7=
a-vfp-neon-poky-linux-gnueabi:/home/open-nandra/yocto/poky-danny-8.0/panda_=
build/tmp/sysroots/pandaboard/usr/bin/crossscripts:/home/open-nandra/yocto/=
poky-danny-8.0/panda_build/tmp/sysroots/i686-linux/usr/sbin:/home/open-nand=
ra/yocto/poky-danny-8.0/panda_build/tmp/sysroots/i686-linux/usr/bin:/home/o=
pen-nandra/yocto/poky-danny-8.0/panda_build/tmp/sysroots/i686-linux/sbin:/h=
ome/open-nandra/yocto/poky-danny-8.0/panda_build/tmp/sysroots/i686-linux//b=
in:/home/open-nandra/yocto/poky-danny-8.0/scripts:/home/open-nandra/yocto/p=
oky-danny-8.0/bitbake/bin/:/home/open-nandra/bin:/usr/lib/lightdm/lightdm:/=
usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr=
/local/games:/opt/gcc-linaro-arm-linux-gnueabi-2012.02-20120222_linux/bin:/=
home/open-nandra/bin:/opt/gcc-linaro-arm-linux-gnueabi-2012.02-20120222_lin=
ux/bin:/home/open-nandra/bin";
git remote rm origin
DEBUG: No Origin
DEBUG: Running export HOME=3D"/home/open-nandra"; export
SSH_AGENT_PID=3D"3240"; export
SSH_AUTH_SOCK=3D"/run/user/open-nandra/keyring-xpuvGP/ssh"; export
GIT_CONFIG=3D"/home/open-nandra/yocto/poky-danny-8.0/panda_build/tmp/sysroo=
ts/i686-linux/etc/gitconfig";
export PATH=3D"/home/open-nandra/yocto/poky-danny-8.0/scripts:/home/open-na=
ndra/yocto/poky-danny-8.0/panda_build/tmp/sysroots/i686-linux/usr/bin/armv7=
a-vfp-neon-poky-linux-gnueabi:/home/open-nandra/yocto/poky-danny-8.0/panda_=
build/tmp/sysroots/pandaboard/usr/bin/crossscripts:/home/open-nandra/yocto/=
poky-danny-8.0/panda_build/tmp/sysroots/i686-linux/usr/sbin:/home/open-nand=
ra/yocto/poky-danny-8.0/panda_build/tmp/sysroots/i686-linux/usr/bin:/home/o=
pen-nandra/yocto/poky-danny-8.0/panda_build/tmp/sysroots/i686-linux/sbin:/h=
ome/open-nandra/yocto/poky-danny-8.0/panda_build/tmp/sysroots/i686-linux//b=
in:/home/open-nandra/yocto/poky-danny-8.0/scripts:/home/open-nandra/yocto/p=
oky-danny-8.0/bitbake/bin/:/home/open-nandra/bin:/usr/lib/lightdm/lightdm:/=
usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr=
/local/games:/opt/gcc-linaro-arm-linux-gnueabi-2012.02-20120222_linux/bin:/=
home/open-nandra/bin:/opt/gcc-linaro-arm-linux-gnueabi-2012.02-20120222_lin=
ux/bin:/home/open-nandra/bin";
git remote add --mirror=3Dfetch origin
git://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git
WARNING: Failed to fetch URL
git://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;protocol=3Dgit=
;branch=3Dti-ubuntu-3.4-1487,
attempting MIRRORS if available
DEBUG: Fetcher failure: Fetch command failed with exit code 128, output:
fatal: Not a git repository (or any parent up to mount point /home)
Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not set).

DEBUG: Trying MIRRORS
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', '.*', '/.*', '',
'', {}] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/',
'', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['http', '.*', '/.*', '',
'', {}] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/',
'', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['https', '.*', '/.*', '',
'', {}] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/',
'', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.debian.org',
'/debian/pool', '', '', {}] to ['http', 'snapshot.debian.org',
'/archive/debian-archive/20120328T092752Z/debian/pool', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.debian.org',
'/debian/pool', '', '', {}] to ['http', 'snapshot.debian.org',
'/archive/debian-archive/20110127T084257Z/debian/pool', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.debian.org',
'/debian/pool', '', '', {}] to ['http', 'snapshot.debian.org',
'/archive/debian-archive/20090802T004153Z/debian/pool', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.debian.org',
'/debian/pool', '', '', {}] to ['ftp', 'ftp.de.debian.org',
'/debian/pool', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.debian.org',
'/debian/pool', '', '', {}] to ['ftp', 'ftp.au.debian.org',
'/debian/pool', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.debian.org',
'/debian/pool', '', '', {}] to ['ftp', 'ftp.cl.debian.org',
'/debian/pool', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.debian.org',
'/debian/pool', '', '', {}] to ['ftp', 'ftp.hr.debian.org',
'/debian/pool', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.debian.org',
'/debian/pool', '', '', {}] to ['ftp', 'ftp.fi.debian.org',
'/debian/pool', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.debian.org',
'/debian/pool', '', '', {}] to ['ftp', 'ftp.hk.debian.org',
'/debian/pool', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.debian.org',
'/debian/pool', '', '', {}] to ['ftp', 'ftp.hu.debian.org',
'/debian/pool', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.debian.org',
'/debian/pool', '', '', {}] to ['ftp', 'ftp.ie.debian.org',
'/debian/pool', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.debian.org',
'/debian/pool', '', '', {}] to ['ftp', 'ftp.it.debian.org',
'/debian/pool', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.debian.org',
'/debian/pool', '', '', {}] to ['ftp', 'ftp.jp.debian.org',
'/debian/pool', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.debian.org',
'/debian/pool', '', '', {}] to ['ftp', 'ftp.no.debian.org',
'/debian/pool', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.debian.org',
'/debian/pool', '', '', {}] to ['ftp', 'ftp.pl.debian.org',
'/debian/pool', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.debian.org',
'/debian/pool', '', '', {}] to ['ftp', 'ftp.ro.debian.org',
'/debian/pool', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.debian.org',
'/debian/pool', '', '', {}] to ['ftp', 'ftp.si.debian.org',
'/debian/pool', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.debian.org',
'/debian/pool', '', '', {}] to ['ftp', 'ftp.es.debian.org',
'/debian/pool', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.debian.org',
'/debian/pool', '', '', {}] to ['ftp', 'ftp.se.debian.org',
'/debian/pool', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.debian.org',
'/debian/pool', '', '', {}] to ['ftp', 'ftp.tr.debian.org',
'/debian/pool', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.gnu.org',
'/gnu', '', '', {}] to ['ftp', 'mirrors.kernel.org', '/gnu', '', '',
{}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['http', 'kernel.org',
'/pub', '', '', {}] to ['http', 'www.kernel.org', '/pub', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.gnupg.org',
'/gcrypt/', '', '', {}] to ['ftp', 'ftp.franken.de',
'/pub/crypt/mirror/ftp.gnupg.org/gcrypt/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.gnupg.org',
'/gcrypt/', '', '', {}] to ['ftp', 'ftp.surfnet.nl',
'/pub/security/gnupg/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.gnupg.org',
'/gcrypt/', '', '', {}] to ['http', 'gulus.USherbrooke.ca',
'/pub/appl/GnuPG/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'dante.ctan.org',
'/tex-archive', '', '', {}] to ['ftp', 'ftp.fu-berlin.de',
'/tex/CTAN', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'dante.ctan.org',
'/tex-archive', '', '', {}] to ['http', 'sunsite.sut.ac.jp',
'/pub/archives/ctan/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'dante.ctan.org',
'/tex-archive', '', '', {}] to ['http', 'ctan.unsw.edu.au', '/', '',
'', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.gnutls.org',
'/pub/gnutls', '', '', {}] to ['ftp', 'ftp.gnupg.org',
'/gcrypt/gnutls/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.gnutls.org',
'/pub/gnutls', '', '', {}] to ['http', 'www.mirrors.wiretapped.net',
'/security/network-security/gnutls/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.gnutls.org',
'/pub/gnutls', '', '', {}] to ['ftp', 'ftp.mirrors.wiretapped.net',
'/pub/security/network-security/gnutls/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', 'ftp.gnutls.org',
'/pub/gnutls', '', '', {}] to ['http', 'josefsson.org',
'/gnutls/releases/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['http',
'ftp.info-zip.org', '/pub/infozip/src/', '', '', {}] to ['http',
'mirror.switch.ch', '/ftp/mirror/infozip/src/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['http',
'ftp.info-zip.org', '/pub/infozip/src/', '', '', {}] to ['ftp',
'sunsite.icm.edu.pl', '/pub/unix/archiving/info-zip/src/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp',
'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/', '', '', {}] to
['ftp', 'ftp.cerias.purdue.edu', '/pub/tools/unix/sysutils/lsof/', '',
'', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp',
'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/', '', '', {}] to
['ftp', 'ftp.tau.ac.il', '/pub/unix/admin/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp',
'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/', '', '', {}] to
['ftp', 'ftp.cert.dfn.de', '/pub/tools/admin/lsof/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp',
'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/', '', '', {}] to
['ftp', 'ftp.fu-berlin.de', '/pub/unix/tools/lsof/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp',
'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/', '', '', {}] to
['ftp', 'ftp.kaizo.org', '/pub/lsof/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp',
'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/', '', '', {}] to
['ftp', 'ftp.tu-darmstadt.de', '/pub/sysadmin/lsof/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp',
'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/', '', '', {}] to
['ftp', 'ftp.tux.org',
'/pub/sites/vic.cc.purdue.edu/tools/unix/lsof/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp',
'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/', '', '', {}] to
['ftp', 'gd.tuwien.ac.at', '/utils/admin-tools/lsof/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp',
'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/', '', '', {}] to
['ftp', 'sunsite.ualberta.ca', '/pub/Mirror/lsof/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp',
'lsof.itap.purdue.edu', '/pub/tools/unix/lsof/', '', '', {}] to
['ftp', 'the.wiretapped.net', '/pub/security/host-security/lsof/', '',
'', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['http', 'www.apache.org',
'/dist', '', '', {}] to ['http', 'archive.apache.org', '/dist', '',
'', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['http',
'downloads.sourceforge.net', '/watchdog/', '', '', {}] to ['http',
'fossies.org', '/linux/misc/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['cvs', '.*', '/.*', '',
'', {}] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/',
'', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['svn', '.*', '/.*', '',
'', {}] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/',
'', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['git', '.*', '/.*', '',
'', {}] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/',
'', '', {}]
DEBUG: For url git://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git=
;protocol=3Dgit;branch=3Dti-ubuntu-3.4-1487
returning http://downloads.yoctoproject.org/mirror/sources/git2_dev.omapzoo=
m.org.pub.scm.integration.kernel-ubuntu.git.tar.gz
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['http', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['https', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['http', 'snapshot.debian.org',
'/archive/debian-archive/20120328T092752Z/debian/pool', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['http', 'snapshot.debian.org',
'/archive/debian-archive/20110127T084257Z/debian/pool', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['http', 'snapshot.debian.org',
'/archive/debian-archive/20090802T004153Z/debian/pool', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.de.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.au.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.cl.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.hr.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.fi.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.hk.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.hu.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.ie.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.it.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.jp.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.no.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.pl.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.ro.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.si.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.es.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.se.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.tr.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.gnu.org', '/gnu', '', '', {}] to
['ftp', 'mirrors.kernel.org', '/gnu', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['http', 'kernel.org', '/pub', '', '', {}] to
['http', 'www.kernel.org', '/pub', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.gnupg.org', '/gcrypt/', '', '', {}]
to ['ftp', 'ftp.franken.de',
'/pub/crypt/mirror/ftp.gnupg.org/gcrypt/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.gnupg.org', '/gcrypt/', '', '', {}]
to ['ftp', 'ftp.surfnet.nl', '/pub/security/gnupg/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.gnupg.org', '/gcrypt/', '', '', {}]
to ['http', 'gulus.USherbrooke.ca', '/pub/appl/GnuPG/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '',
'', {}] to ['ftp', 'ftp.fu-berlin.de', '/tex/CTAN', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '',
'', {}] to ['http', 'sunsite.sut.ac.jp', '/pub/archives/ctan/', '',
'', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '',
'', {}] to ['http', 'ctan.unsw.edu.au', '/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.gnutls.org', '/pub/gnutls', '', '',
{}] to ['ftp', 'ftp.gnupg.org', '/gcrypt/gnutls/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.gnutls.org', '/pub/gnutls', '', '',
{}] to ['http', 'www.mirrors.wiretapped.net',
'/security/network-security/gnutls/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.gnutls.org', '/pub/gnutls', '', '',
{}] to ['ftp', 'ftp.mirrors.wiretapped.net',
'/pub/security/network-security/gnutls/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.gnutls.org', '/pub/gnutls', '', '',
{}] to ['http', 'josefsson.org', '/gnutls/releases/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['http', 'ftp.info-zip.org',
'/pub/infozip/src/', '', '', {}] to ['http', 'mirror.switch.ch',
'/ftp/mirror/infozip/src/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['http', 'ftp.info-zip.org',
'/pub/infozip/src/', '', '', {}] to ['ftp', 'sunsite.icm.edu.pl',
'/pub/unix/archiving/info-zip/src/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'lsof.itap.purdue.edu',
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp',
'ftp.cerias.purdue.edu', '/pub/tools/unix/sysutils/lsof/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'lsof.itap.purdue.edu',
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'ftp.tau.ac.il',
'/pub/unix/admin/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'lsof.itap.purdue.edu',
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'ftp.cert.dfn.de',
'/pub/tools/admin/lsof/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'lsof.itap.purdue.edu',
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'ftp.fu-berlin.de',
'/pub/unix/tools/lsof/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'lsof.itap.purdue.edu',
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'ftp.kaizo.org',
'/pub/lsof/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'lsof.itap.purdue.edu',
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'ftp.tu-darmstadt.de',
'/pub/sysadmin/lsof/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'lsof.itap.purdue.edu',
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'ftp.tux.org',
'/pub/sites/vic.cc.purdue.edu/tools/unix/lsof/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'lsof.itap.purdue.edu',
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'gd.tuwien.ac.at',
'/utils/admin-tools/lsof/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'lsof.itap.purdue.edu',
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'sunsite.ualberta.ca',
'/pub/Mirror/lsof/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', 'lsof.itap.purdue.edu',
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'the.wiretapped.net',
'/pub/security/host-security/lsof/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['http', 'www.apache.org', '/dist', '', '', {}]
to ['http', 'archive.apache.org', '/dist', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['http', 'downloads.sourceforge.net',
'/watchdog/', '', '', {}] to ['http', 'fossies.org', '/linux/misc/',
'', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['cvs', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['svn', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['git', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['hg', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['bzr', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['svk', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['p4', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['osc', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['https?$', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['cvs', '.*', '/.*', '', '', {}] to ['http',
'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['svn', '.*', '/.*', '', '', {}] to ['http',
'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['git', '.*', '/.*', '', '', {}] to ['http',
'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['hg', '.*', '/.*', '', '', {}] to ['http',
'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['bzr', '.*', '/.*', '', '', {}] to ['http',
'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['svk', '.*', '/.*', '', '', {}] to ['http',
'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['p4', '.*', '/.*', '', '', {}] to ['http',
'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['osc', '.*', '/.*', '', '', {}] to ['http',
'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['https?$', '.*', '/.*', '', '', {}] to ['http',
'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url http://downloads.yoctoproject.org/mirror/sources/git2_dev.om=
apzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz
returning http://sources.openembedded.org/git2_dev.omapzoom.org.pub.scm.int=
egration.kernel-ubuntu.git.tar.gz
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['http', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url http://sources.openembedded.org/git2_dev.omapzoom.org.pub.sc=
m.integration.kernel-ubuntu.git.tar.gz
returning http://downloads.yoctoproject.org/mirror/sources/git2_dev.omapzoo=
m.org.pub.scm.integration.kernel-ubuntu.git.tar.gz
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['https', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['http', 'snapshot.debian.org',
'/archive/debian-archive/20120328T092752Z/debian/pool', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['http', 'snapshot.debian.org',
'/archive/debian-archive/20110127T084257Z/debian/pool', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['http', 'snapshot.debian.org',
'/archive/debian-archive/20090802T004153Z/debian/pool', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.de.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.au.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.cl.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.hr.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.fi.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.hk.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.hu.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.ie.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.it.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.jp.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.no.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.pl.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.ro.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.si.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.es.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.se.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '',
'', {}] to ['ftp', 'ftp.tr.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.gnu.org', '/gnu', '', '', {}] to
['ftp', 'mirrors.kernel.org', '/gnu', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['http', 'kernel.org', '/pub', '', '', {}] to
['http', 'www.kernel.org', '/pub', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.gnupg.org', '/gcrypt/', '', '', {}]
to ['ftp', 'ftp.franken.de',
'/pub/crypt/mirror/ftp.gnupg.org/gcrypt/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.gnupg.org', '/gcrypt/', '', '', {}]
to ['ftp', 'ftp.surfnet.nl', '/pub/security/gnupg/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.gnupg.org', '/gcrypt/', '', '', {}]
to ['http', 'gulus.USherbrooke.ca', '/pub/appl/GnuPG/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '',
'', {}] to ['ftp', 'ftp.fu-berlin.de', '/tex/CTAN', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '',
'', {}] to ['http', 'sunsite.sut.ac.jp', '/pub/archives/ctan/', '',
'', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '',
'', {}] to ['http', 'ctan.unsw.edu.au', '/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.gnutls.org', '/pub/gnutls', '', '',
{}] to ['ftp', 'ftp.gnupg.org', '/gcrypt/gnutls/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.gnutls.org', '/pub/gnutls', '', '',
{}] to ['http', 'www.mirrors.wiretapped.net',
'/security/network-security/gnutls/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.gnutls.org', '/pub/gnutls', '', '',
{}] to ['ftp', 'ftp.mirrors.wiretapped.net',
'/pub/security/network-security/gnutls/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'ftp.gnutls.org', '/pub/gnutls', '', '',
{}] to ['http', 'josefsson.org', '/gnutls/releases/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['http', 'ftp.info-zip.org',
'/pub/infozip/src/', '', '', {}] to ['http', 'mirror.switch.ch',
'/ftp/mirror/infozip/src/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['http', 'ftp.info-zip.org',
'/pub/infozip/src/', '', '', {}] to ['ftp', 'sunsite.icm.edu.pl',
'/pub/unix/archiving/info-zip/src/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'lsof.itap.purdue.edu',
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp',
'ftp.cerias.purdue.edu', '/pub/tools/unix/sysutils/lsof/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'lsof.itap.purdue.edu',
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'ftp.tau.ac.il',
'/pub/unix/admin/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'lsof.itap.purdue.edu',
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'ftp.cert.dfn.de',
'/pub/tools/admin/lsof/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'lsof.itap.purdue.edu',
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'ftp.fu-berlin.de',
'/pub/unix/tools/lsof/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'lsof.itap.purdue.edu',
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'ftp.kaizo.org',
'/pub/lsof/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'lsof.itap.purdue.edu',
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'ftp.tu-darmstadt.de',
'/pub/sysadmin/lsof/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'lsof.itap.purdue.edu',
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'ftp.tux.org',
'/pub/sites/vic.cc.purdue.edu/tools/unix/lsof/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'lsof.itap.purdue.edu',
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'gd.tuwien.ac.at',
'/utils/admin-tools/lsof/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'lsof.itap.purdue.edu',
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'sunsite.ualberta.ca',
'/pub/Mirror/lsof/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', 'lsof.itap.purdue.edu',
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'the.wiretapped.net',
'/pub/security/host-security/lsof/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['http', 'www.apache.org', '/dist', '', '', {}]
to ['http', 'archive.apache.org', '/dist', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['http', 'downloads.sourceforge.net',
'/watchdog/', '', '', {}] to ['http', 'fossies.org', '/linux/misc/',
'', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['cvs', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['svn', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['git', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['hg', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['bzr', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['svk', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['p4', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['osc', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['https?$', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url http://sources.openembedded.org/git2_dev.omapzoom.org.pub.sc=
m.integration.kernel-ubuntu.git.tar.gz
returning http://downloads.yoctoproject.org/mirror/sources/git2_dev.omapzoo=
m.org.pub.scm.integration.kernel-ubuntu.git.tar.gz
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', '.*', '/.*', '', '', {}] to ['http',
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['cvs', '.*', '/.*', '', '', {}] to ['http',
'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['svn', '.*', '/.*', '', '', {}] to ['http',
'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['git', '.*', '/.*', '', '', {}] to ['http',
'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['hg', '.*', '/.*', '', '', {}] to ['http',
'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['bzr', '.*', '/.*', '', '', {}] to ['http',
'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['svk', '.*', '/.*', '', '', {}] to ['http',
'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['p4', '.*', '/.*', '', '', {}] to ['http',
'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['osc', '.*', '/.*', '', '', {}] to ['http',
'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['https?$', '.*', '/.*', '', '', {}] to ['http',
'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['http', 'sources.openembedded.org',
'/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz',
'', '', {}] comparing ['ftp', '.*', '/.*', '', '', {}] to ['http',
'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org',
'/mirror/sources/git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.gi=
t.tar.gz',
'', '', {}] comparing ['ftp', '.*', '/.*', '', '', {}] to ['http',
'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['hg', '.*', '/.*', '', '',
{}] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '',
'', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['bzr', '.*', '/.*', '',
'', {}] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/',
'', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['svk', '.*', '/.*', '',
'', {}] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/',
'', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['p4', '.*', '/.*', '', '',
{}] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/', '',
'', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['osc', '.*', '/.*', '',
'', {}] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/',
'', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['https?$', '.*', '/.*',
'', '', {}] to ['http', 'downloads.yoctoproject.org',
'/mirror/sources/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', '.*', '/.*', '',
'', {}] to ['http', 'downloads.yoctoproject.org', '/mirror/sources/',
'', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['cvs', '.*', '/.*', '',
'', {}] to ['http', 'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['svn', '.*', '/.*', '',
'', {}] to ['http', 'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['git', '.*', '/.*', '',
'', {}] to ['http', 'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url git://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git=
;protocol=3Dgit;branch=3Dti-ubuntu-3.4-1487
returning http://sources.openembedded.org/git2_dev.omapzoom.org.pub.scm.int=
egration.kernel-ubuntu.git.tar.gz
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['hg', '.*', '/.*', '', '',
{}] to ['http', 'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['bzr', '.*', '/.*', '',
'', {}] to ['http', 'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['svk', '.*', '/.*', '',
'', {}] to ['http', 'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['p4', '.*', '/.*', '', '',
{}] to ['http', 'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['osc', '.*', '/.*', '',
'', {}] to ['http', 'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['https?$', '.*', '/.*',
'', '', {}] to ['http', 'sources.openembedded.org', '/', '', '', {}]
DEBUG: For url ['git', 'dev.omapzoom.org',
'/pub/scm/integration/kernel-ubuntu.git', '', '', {'protocol': 'git',
'branch': 'ti-ubuntu-3.4-1487'}] comparing ['ftp', '.*', '/.*', '',
'', {}] to ['http', 'sources.openembedded.org', '/', '', '', {}]
NOTE: fetch http://downloads.yoctoproject.org/mirror/sources/git2_dev.omapz=
oom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz
DEBUG: executing /usr/bin/env wget -t 2 -T 30 -nv --passive-ftp
--no-check-certificate -P
/home/open-nandra/yocto/poky-danny-8.0/panda_build/downloads
'http://downloads.yoctoproject.org/mirror/sources/git2_dev.omapzoom.org.pub=
.scm.integration.kernel-ubuntu.git.tar.gz'
DEBUG: Fetcher accessed the network with the command /usr/bin/env wget
-t 2 -T 30 -nv --passive-ftp --no-check-certificate -P
/home/open-nandra/yocto/poky-danny-8.0/panda_build/downloads
'http://downloads.yoctoproject.org/mirror/sources/git2_dev.omapzoom.org.pub=
.scm.integration.kernel-ubuntu.git.tar.gz'
DEBUG: Running export HOME=3D"/home/open-nandra"; export
SSH_AGENT_PID=3D"3240"; export
SSH_AUTH_SOCK=3D"/run/user/open-nandra/keyring-xpuvGP/ssh"; export
GIT_CONFIG=3D"/home/open-nandra/yocto/poky-danny-8.0/panda_build/tmp/sysroo=
ts/i686-linux/etc/gitconfig";
export PATH=3D"/home/open-nandra/yocto/poky-danny-8.0/scripts:/home/open-na=
ndra/yocto/poky-danny-8.0/panda_build/tmp/sysroots/i686-linux/usr/bin/armv7=
a-vfp-neon-poky-linux-gnueabi:/home/open-nandra/yocto/poky-danny-8.0/panda_=
build/tmp/sysroots/pandaboard/usr/bin/crossscripts:/home/open-nandra/yocto/=
poky-danny-8.0/panda_build/tmp/sysroots/i686-linux/usr/sbin:/home/open-nand=
ra/yocto/poky-danny-8.0/panda_build/tmp/sysroots/i686-linux/usr/bin:/home/o=
pen-nandra/yocto/poky-danny-8.0/panda_build/tmp/sysroots/i686-linux/sbin:/h=
ome/open-nandra/yocto/poky-danny-8.0/panda_build/tmp/sysroots/i686-linux//b=
in:/home/open-nandra/yocto/poky-danny-8.0/scripts:/home/open-nandra/yocto/p=
oky-danny-8.0/bitbake/bin/:/home/open-nandra/bin:/usr/lib/lightdm/lightdm:/=
usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr=
/local/games:/opt/gcc-linaro-arm-linux-gnueabi-2012.02-20120222_linux/bin:/=
home/open-nandra/bin:/opt/gcc-linaro-arm-linux-gnueabi-2012.02-20120222_lin=
ux/bin:/home/open-nandra/bin";
/usr/bin/env wget -t 2 -T 30 -nv --passive-ftp --no-check-certificate
-P /home/open-nandra/yocto/poky-danny-8.0/panda_build/downloads
'http://downloads.yoctoproject.org/mirror/sources/git2_dev.omapzoom.org.pub=
.scm.integration.kernel-ubuntu.git.tar.gz'
DEBUG: Mirror fetch failure for url
http://downloads.yoctoproject.org/mirror/sources/git2_dev.omapzoom.org.pub.=
scm.integration.kernel-ubuntu.git.tar.gz
(original url: git://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git=
;protocol=3Dgit;branch=3Dti-ubuntu-3.4-1487)
DEBUG: Fetcher failure: Fetch command failed with exit code 8, output:
http://downloads.yoctoproject.org/mirror/sources/git2_dev.omapzoom.org.pub.=
scm.integration.kernel-ubuntu.git.tar.gz:
2012-11-14 16:42:43 ERROR 404: Not Found.

NOTE: fetch http://sources.openembedded.org/git2_dev.omapzoom.org.pub.scm.i=
ntegration.kernel-ubuntu.git.tar.gz
DEBUG: executing /usr/bin/env wget -t 2 -T 30 -nv --passive-ftp
--no-check-certificate -P
/home/open-nandra/yocto/poky-danny-8.0/panda_build/downloads
'http://sources.openembedded.org/git2_dev.omapzoom.org.pub.scm.integration.=
kernel-ubuntu.git.tar.gz'
DEBUG: Fetcher accessed the network with the command /usr/bin/env wget
-t 2 -T 30 -nv --passive-ftp --no-check-certificate -P
/home/open-nandra/yocto/poky-danny-8.0/panda_build/downloads
'http://sources.openembedded.org/git2_dev.omapzoom.org.pub.scm.integration.=
kernel-ubuntu.git.tar.gz'
DEBUG: Running export HOME=3D"/home/open-nandra"; export
SSH_AGENT_PID=3D"3240"; export
SSH_AUTH_SOCK=3D"/run/user/open-nandra/keyring-xpuvGP/ssh"; export
GIT_CONFIG=3D"/home/open-nandra/yocto/poky-danny-8.0/panda_build/tmp/sysroo=
ts/i686-linux/etc/gitconfig";
export PATH=3D"/home/open-nandra/yocto/poky-danny-8.0/scripts:/home/open-na=
ndra/yocto/poky-danny-8.0/panda_build/tmp/sysroots/i686-linux/usr/bin/armv7=
a-vfp-neon-poky-linux-gnueabi:/home/open-nandra/yocto/poky-danny-8.0/panda_=
build/tmp/sysroots/pandaboard/usr/bin/crossscripts:/home/open-nandra/yocto/=
poky-danny-8.0/panda_build/tmp/sysroots/i686-linux/usr/sbin:/home/open-nand=
ra/yocto/poky-danny-8.0/panda_build/tmp/sysroots/i686-linux/usr/bin:/home/o=
pen-nandra/yocto/poky-danny-8.0/panda_build/tmp/sysroots/i686-linux/sbin:/h=
ome/open-nandra/yocto/poky-danny-8.0/panda_build/tmp/sysroots/i686-linux//b=
in:/home/open-nandra/yocto/poky-danny-8.0/scripts:/home/open-nandra/yocto/p=
oky-danny-8.0/bitbake/bin/:/home/open-nandra/bin:/usr/lib/lightdm/lightdm:/=
usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr=
/local/games:/opt/gcc-linaro-arm-linux-gnueabi-2012.02-20120222_linux/bin:/=
home/open-nandra/bin:/opt/gcc-linaro-arm-linux-gnueabi-2012.02-20120222_lin=
ux/bin:/home/open-nandra/bin";
/usr/bin/env wget -t 2 -T 30 -nv --passive-ftp --no-check-certificate
-P /home/open-nandra/yocto/poky-danny-8.0/panda_build/downloads
'http://sources.openembedded.org/git2_dev.omapzoom.org.pub.scm.integration.=
kernel-ubuntu.git.tar.gz'
DEBUG: Mirror fetch failure for url
http://sources.openembedded.org/git2_dev.omapzoom.org.pub.scm.integration.k=
ernel-ubuntu.git.tar.gz
(original url: git://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git=
;protocol=3Dgit;branch=3Dti-ubuntu-3.4-1487)
DEBUG: Fetcher failure: Fetch command failed with exit code 8, output:
http://sources.openembedded.org/git2_dev.omapzoom.org.pub.scm.integration.k=
ernel-ubuntu.git.tar.gz:
2012-11-14 16:42:44 ERROR 404: Not Found.

ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
fatal: Not a git repository (or any parent up to mount point /home)
Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not set).

DEBUG: Python function base_do_fetch finished
DEBUG: Python function do_fetch finished
ERROR: Function failed: Fetcher failure for URL:
'git://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;protocol=3Dgi=
t;branch=3Dti-ubuntu-3.4-1487'.
Unable to fetch URL from any source.

Any ideas?

Thanks,

marek

--=20
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

