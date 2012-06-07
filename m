Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BA61E013BB
	for <yocto@yoctoproject.org>; Thu,  7 Jun 2012 12:39:27 -0700 (PDT)
Received: from [109.224.129.17] (port=45517
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1SciYI-0005IP-6j
	for yocto@yoctoproject.org; Thu, 07 Jun 2012 20:39:26 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Thu, 7 Jun 2012 20:39:23 +0100
Message-Id: <288C1D0C-014A-4EE2-BDF3-9B8F22AD8B80@keylevel.com>
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Denzil kernel configuration for BSP - fetch error
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
X-List-Received-Date: Thu, 07 Jun 2012 19:39:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm trying to create a bbappend file for the 3.0 kernel under Denzil for =
a BSP. This includes the following:

COMPATIBLE_MACHINE_mybsp =3D "mybsp"

KMACHINE_mybsp =3D "yocto/standard/base"
KBRANCH_mybsp =3D "${KMACHINE}"
SRCREV_machine_pn-linux-yocto_mybsp =3D =
"da7c40006b08916ff3a3db104def82aaf9ac2716"
SRCREV_meta_pn-linux-yocto_mybsp =3D =
"34e0d2b4b4e9778b31f9ea99ca43f0dc71a7ee23"

I'm trying to select a base kernel that I can then configure as required =
(for the ALIX 3D3 / AMD Geode LX). However, this results in a fetcher =
failure:

WARNING: Failed to fetch URL =
git://git.yoctoproject.org/linux-yocto-3.0;protocol=3Dgit;bareclone=3D1;br=
anch=3Dyocto/standard/base,meta;name=3Dmachine,meta
ERROR: Fetcher failure: Fetch command export HOME=3D"/home/chris"; =
export SSH_AGENT_PID=3D"1905"; export =
SSH_AUTH_SOCK=3D"/tmp/keyring-LUaoN9/ssh"; export =
GIT_CONFIG=3D"/media/SSD-RAID/build-denzil-alix/tmp/sysroots/x86_64-linux/=
etc/gitconfig"; export =
PATH=3D"/media/SSD-RAID/build-denzil-alix/tmp/sysroots/x86_64-linux/usr/bi=
n/i586-poky-linux:/media/SSD-RAID/build-denzil-alix/tmp/sysroots/mybsp/usr=
/bin/crossscripts:/media/SSD-RAID/build-denzil-alix/tmp/sysroots/x86_64-li=
nux/usr/sbin:/media/SSD-RAID/build-denzil-alix/tmp/sysroots/x86_64-linux/u=
sr/bin:/media/SSD-RAID/build-denzil-alix/tmp/sysroots/x86_64-linux/sbin:/m=
edia/SSD-RAID/build-denzil-alix/tmp/sysroots/x86_64-linux//bin:/media/SSD-=
RAID/poky-denzil-7.0/scripts:/media/SSD-RAID/poky-denzil-7.0/bitbake/bin/:=
/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin=
:/sbin:/bin:/usr/games:/media/SSD-RAID/poky-denzil-7.0/scripts"; git =
remote add --mirror=3Dfetch origin =
git://git.yoctoproject.org/linux-yocto-3.0 could not be run:
None
ERROR: Function failed: Fetcher failure for URL: =
'git://git.yoctoproject.org/linux-yocto-3.0;protocol=3Dgit;bareclone=3D1;b=
ranch=3Dyocto/standard/base,meta;name=3Dmachine,meta'. Unable to fetch =
URL from any source.

What have I got wrong?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




