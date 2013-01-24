Return-Path: <daniel.schnel.extern@ifm.com>
Received: from eu3sys201aog101.obsmtp.com (eu3sys201aog101.obsmtp.com
	[207.126.148.87])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 938D1E014EF
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 08:04:59 -0800 (PST)
Received: from deesdmz226.dmz.es.de.ifm ([194.156.152.226]) (using TLSv1) by
	eu3sys201aob101.postini.com ([207.126.154.11]) with SMTP
	ID DSNKUQFbqdz+dtirjLapG/nnK/GcVErK9Z1w@postini.com;
	Thu, 24 Jan 2013 16:04:59 UTC
Received: from deesdmz226.dmz.es.de.ifm (localhost.localdomain [127.0.0.1])
	by deesdmz226.dmz.es.de.ifm (Postfix) with ESMTP id 5900419F36F
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 17:04:57 +0100 (CET)
X-KeepSent: BE0EFB03:95C8CD96-C1257AFD:00580557;
 type=4; name=$KeepSent
To: yocto@yoctoproject.org
X-Mailer: Lotus Notes Release 8.5.2FP3 July 11, 2011
From: daniel.schnel.extern@ifm.com
Message-ID: <OFBE0EFB03.95C8CD96-ONC1257AFD.00580557-C1257AFD.00584DE3@ifm-electronic.com>
Date: Thu, 24 Jan 2013 17:04:31 +0100
X-MIMETrack: Serialize by Router on deesifmweb04/ifmwww(Release 8.5.2HF17 |
	August 31, 2010) at 24.01.2013 17:04:57
MIME-Version: 1.0
X-SafeGuard_MailGateway: Version: 5.80.2.12968 SGMG_SOPHOS Date:
	20130124160457Z
X-Mailman-Approved-At: Thu, 24 Jan 2013 10:12:19 -0800
Subject: PREMIRRORS_prepend & friends
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
X-List-Received-Date: Thu, 24 Jan 2013 16:05:00 -0000
Content-type: text/plain; charset=US-ASCII


Hi,

after hours of trying and googling I finally make my first coming out here
on this list to get some help with PREMIRRORS_prepend & friends.So please
be friendly ;)

I want to setup local mirrors for our yocto build for reproducability
purposes. I am using ELDK-5.2.1 which is based on yocto-1.2

I have made the following settings in my local.conf:

PREMIRRORS_prepend = "\
     git://.*/.*   git://git@dettlx79: \n \
     ftp://.*/.* http://dettlx79/sources \n \
     http://.*/.* http://dettlx79/sources \n \
     https://.*/.* http://dettlx79/sources \n \"


BB_FETCH_PREMIRRORONLY = "1"

The host dettlx79 is a local server in our LAN.

I was reading that you could use http:// or file:// as premirror protocols
but I'd like to access local git mirrors with the git:// protocol as well.
However this doesn't seem to work as the PREMIRROR appends some file
archive to the git URL:

$ bitbake u-boot

Parsing recipes: 100% |
################################################################################################################|
 Time: 00:00:18
Parsing of 874 .bb files complete (0 cached, 874 parsed). 1156 targets, 39
skipped, 0 masked, 0 errors.

OE Build Configuration:
BB_VERSION        = "1.15.1"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "nitrogen"
DISTRO            = "eldk"
DISTRO_VERSION    = "5.2.1"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto
meta-eldk
meta-goldeneye
meta-goldeneyeesw =
"goldeneye-esw-test:ea2f7c40c7da6e0d6494cb83813a94d35c730e4d"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 440 of 728 (ID:
4, /data/eswadmin/eldk-dzu/meta/recipes-bsp/u-boot/u-boot_2011.06.bb,
do_fetch)
NOTE: package u-boot-v2011.06+git58
+b1af6f532e0d348b153d5c148369229d24af361a-r1: task do_fetch: Started
ERROR: Function failed: Network access disabled through BB_NO_NETWORK but
access rquested with command git clone --bare --mirror
git://git.denx.de/u-boot.git /data/eswadmin/eldk-dzu/build/downloads/git2/git.denx.de.u-boot.git
 (for url None)
ERROR: Logfile of failure stored
in: /data/eswadmin/eldk-dzu/build/tmp/work/nitrogen-linux-gnueabi/u-boot-v2011.06
+git58+b1af6f532e0d348b153d5c148369229d24af361a-r1/temp/log.do_fetch.10681
Log data follows:
| DEBUG: Trying PREMIRRORS
| DEBUG: For url ['git', 'git.denx.de', '/u-boot.git', '', '', {'protocol':
'git', 'branch': 'master'}] comparing ['git', '.*', '/.*', '', '', {}] to
['git', '', 'dettlx79:', 'git', '', {}]
| DEBUG: For url git://git.denx.de/u-boot.git;branch=master;protocol=git
returning
git://git@dettlx79:/git2_git.denx.de.u-boot.git.tar.gz;protocol=git;branch=master
| DEBUG: Fetcher accessed the network with the command git clone --bare
--mirror
git://git@dettlx79:/git2_git.denx.de.u-boot.git.tar.gz /data/eswadmin/eldk-dzu/build/downloads/git2/dettlx79..git2_git.denx.de.u-boot.git.tar.gz


So how can I say that it should just access git://git@dettlx79:u-boot.git
and not append /git2_git.denx.de.u-boot.git.tar.gz to my base URI ?

Best regards,
Daniel Schnell.



