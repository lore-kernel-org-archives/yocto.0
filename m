Return-Path: <bryan.odonoghue@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7635C4C801D0
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2011 12:31:31 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Jun 2011 10:31:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,437,1304319600"; d="scan'208";a="21132686"
Received: from irsmsx601.ger.corp.intel.com ([163.33.7.164])
	by orsmga001.jf.intel.com with ESMTP; 28 Jun 2011 10:31:29 -0700
Received: from irsmsx502.ger.corp.intel.com ([163.33.7.249]) by
	irsmsx601.ger.corp.intel.com ([163.33.7.164]) with mapi;
	Tue, 28 Jun 2011 18:29:36 +0100
From: "O'donoghue, Bryan" <bryan.odonoghue@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 28 Jun 2011 18:29:33 +0100
Thread-Topic: Getting pseudo from yocto/poky toolchain working with my build
Thread-Index: Acw1uPHW8JmNOJZvRmqpkFXwpGXlbw==
Message-ID: <CFBC532374C38D45810FA00BC2D2C204016E851A48@irsmsx502.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: P1M= AzLK BnTw CDSu Ctsm FBJz F0DZ F04S HhbD IHB8 INdM
	ISLE IaY0 I7Sc J0Oc
	J1qm; 1; eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {27211A27-91D3-4F55-A1E3-2591B8238C7F};
	YgByAHkAYQBuAC4AbwAnAGQAbwBuAG8AZwBoAHUAZQBAAGkAbgB0AGUAbAAuAGMAbwBtAA==;
	Tue, 28 Jun 2011 17:29:33 GMT;
	RwBlAHQAdABpAG4AZwAgAHAAcwBlAHUAZABvACAAZgByAG8AbQAgAHkAbwBjAHQAbwAvAHAAbwBrAHkAIAB0AG8AbwBsAGMAaABhAGkAbgAgAHcAbwByAGsAaQBuAGcAIAB3AGkAdABoACAAbQB5ACAAYgB1AGkAbABkAA==
x-cr-puzzleid: {27211A27-91D3-4F55-A1E3-2591B8238C7F}
acceptlanguage: en-US
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 28 Jun 2011 12:37:31 -0500
Subject: Getting pseudo from yocto/poky toolchain working with my build
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
X-List-Received-Date: Tue, 28 Jun 2011 17:31:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Greetings list.

Having a bit of an issue getting pseudo working when building poky-image-mi=
nimal @ poky-bernard-5.0.1

I'm running Debian 6.0.1. I've attempted to set up as many of the native pa=
ckages as possible, to reduce compile time and I'm also using the yocto sup=
plied gcc toolchain.

http://yoctoproject.org/downloads/yocto-1.0/toolchain/

root@wintermute# apt-get install sed wget cvs subversion git-core coreutils=
 unzip texi2html texinfo libsdl1.2-dev docbook-utils gawk python-pysqlite2 =
diffstat help2man make gcc build-essential g++ desktop-file-utils chrpath l=
ibgl1-mesa-dev libglu1-mesa-dev mercurial autoconf automake groff git-core =
automake autoconf psyco quilt libtool gettext tcl sqlite3 libsqlite3-dev

I've installed /opt/poky/1.0/environment-setup-i586-poky-linux.
I've downloaded poky-bernard-5.0.1.tar.bz2 and extracted it to ~/Developmen=
t/yocto

I do the following

1.

source poky-bernard-5.0.1/poky-init-build-env poky-5.0.1-build

2.

vim conf/local.conf

------------------------

INHERIT +=3D rm_work

ASSUME_PROVIDED +=3D "m4-native tcl-native gettext-native libtool-native qu=
ilt-native autoconf-native automake-native perl-native sqlite3-native tar-r=
eplacement-native pseudo-native"

CVS_PROXY_HOST =3D "http://aaa.bbb.com"
CVS_PROXY_PORT =3D "1984"


3.

deckard@wintermute:~/Development/yocto/poky-5.0.1-build$ source /opt/poky/1=
.0/environment-setup-i586-poky-linux
deckard@wintermute:~/Development/yocto/poky-5.0.1-build$ $CC -v
Using built-in specs.
COLLECT_GCC=3Di586-poky-linux-gcc
COLLECT_LTO_WRAPPER=3D/opt/poky/1.0/sysroots/i686-pokysdk-linux/usr/libexec=
/i586-poky-linux/gcc/i586-poky-linux/4.5.1/lto-wrapper
Target: i586-poky-linux

<snip>
Thread model: posix
gcc version 4.5.1 (GCC)=20


4.

bitbake -v -k poky-image-minimal

5.

I'm having a bit of difficulty with pseudo in the build though. I've tried =
building pseudo - which chokes on sqlite3 - and then I thought it might be =
an idea to use the pseudo that comes with the toolchain provided on the web=
site.

5a.

deckard@wintermute:~/Development/yocto/poky-5.0.1-build$ which pseudo
/opt/poky/1.0/sysroots/i686-pokysdk-linux/usr/bin/pseudo


bitbake doesn't pick it up though

deckard@wintermute:~/Development/yocto/poky-5.0.1-build$ bitbake -v -k poky=
-image-minimal
Pseudo is not present but is required, building this first before the main =
build

<snip>

NOTE: Tasks Summary: Attempted 0 tasks of which 0 didn't need to be rerun a=
nd 0 failed.
/home/deckard/Development/yocto/poky-bernard-5.0.1/scripts/bitbake: line 55=
: /home/deckard/Development/yocto/poky-5.0.1-build/tmp/sysroots/i686-linux/=
usr/bin/pseudo: No such file or directory


5b.

I try to set that explicitly by setting PSEUDOBINDIR

export PSEUDOBINDIR=3D/opt/poky/1.0/sysroots/i686-pokysdk-linux/usr/bin

Same error.


deckard@wintermute:~/Development/yocto/poky-5.0.1-build$ export PSEUDOBINDI=
R=3D/opt/poky/1.0/sysroots/i686-pokysdk-linux/usr/bin
deckard@wintermute:~/Development/yocto/poky-5.0.1-build$ bitbake -v -k poky=
-image-minimal
Pseudo is not present but is required, building this first before the main =
build
<snip>

/home/deckard/Development/yocto/poky-bernard-5.0.1/scripts/bitbake: line 55=
: /home/deckard/Development/yocto/poky-5.0.1-build/tmp/sysroots/i686-linux/=
usr/bin/pseudo: No such file or directory

Is there a way to get bitbake to recognize the pseudo in /opt/poky/1.0/sysr=
oots/i686-pokysdk-linux/usr/bin/pseudo without modifying the bitbake script=
 - or am I taking the wrong approach here ?

6.

I've tried building pseudo but, get errors with using sqlite3-native =3D=3D=
 /home/deckard/Development/yocto/poky-5.0.1-build/tmp/sysroots/ as opposed =
to /usr/include/sqlite3.h - and errors with building sqlite3 of a different=
 sort.


Is there a solution that's evading me here ?

My preference obviously is to use as many native packages as possible to re=
duce disk space, and cycles.

Any pointers appreciated.


Bryan
-------------------------------------------------------------
Intel Ireland Limited (Branch)
Collinstown Industrial Park, Leixlip, County Kildare, Ireland
Registered Number: E902934

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


