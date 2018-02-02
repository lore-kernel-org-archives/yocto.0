Return-Path: <christian.staffa@avl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B99AE00E89; Fri,  2 Feb 2018 06:52:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,HEXHASH_WORD,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [62.245.148.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 HEXHASH_WORD Multiple instances of word + hexadecimal hash
X-Greylist: delayed 479 seconds by postgrey-1.32 at yocto-www;
	Fri, 02 Feb 2018 06:52:41 PST
Received: from mailout02.rmx.de (mailout02.rmx.de [62.245.148.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FABCE00DF0
	for <yocto@yoctoproject.org>; Fri,  2 Feb 2018 06:52:41 -0800 (PST)
Received: from cryptout01.retarus.com (unknown [172.19.21.78])
	by mailout02.rmx.de (Postfix) with ESMTP id 3zY0BJ1FrszNnvy
	for <yocto@yoctoproject.org>; Fri,  2 Feb 2018 15:44:40 +0100 (CET)
Received: from cryptout01 (localhost [127.0.0.1])
	by cryptout01.retarus.com (Postfix) with ESMTP id 3zY0BJ0zWPzPrd6
	for <yocto@yoctoproject.org>; Fri,  2 Feb 2018 15:44:40 +0100 (CET)
Received: from mailcc11.dmz2.retloc (unknown [172.19.21.11])
	by cryptout01.retarus.com (Postfix) with SMTP id 3zY0BJ0K5fzPq1c
	for <yocto@yoctoproject.org>; Fri,  2 Feb 2018 15:44:40 +0100 (CET)
Received: from unknown (unknown [10.12.64.114])
	by kdin04 (Postfix) with SMTP id 3zY0BF5vnKzxNnG;
	Fri, 2 Feb 2018 15:44:38 +0100 (CET)
Received: from atgrzsw1696.avl01.avlcorp.lan (10.12.64.164) by
	atgrzsw1693.avl01.avlcorp.lan (10.12.64.114) with Microsoft SMTP Server
	(TLS) id 15.0.1347.2; Fri, 2 Feb 2018 15:44:03 +0100
Received: from atgrzsw1693.avl01.avlcorp.lan (10.12.64.114) by
	atgrzsw1696.avl01.avlcorp.lan (10.12.64.164) with Microsoft SMTP Server
	(TLS) id 15.0.1347.2; Fri, 2 Feb 2018 15:44:03 +0100
Received: from atgrzsw1693.avl01.avlcorp.lan ([172.18.42.157]) by
	atgrzsw1693.avl01.avlcorp.lan ([172.18.42.157]) with mapi id
	15.00.1347.000; Fri, 2 Feb 2018 15:44:03 +0100
From: "Staffa, Christian AVL/DE" <Christian.Staffa@avl.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: db-native fetching error
Thread-Index: AdOcMBr9K4b9rBg9QXiSr9nYSctz/g==
Date: Fri, 2 Feb 2018 14:44:02 +0000
Message-ID: <ae397a5a4a71435ebc45de0e88ed40b6@atgrzsw1693.avl01.avlcorp.lan>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.12.100.12]
x-exclaimer-md-config: f9e74532-fb7d-4806-8539-2b9574eafa9a
MIME-Version: 1.0
X-RMX-ID: 20180202-154437-3zY0BF5vnKzxNnG-0@kdin04
X-RMX-TRACE: 2018-02-02 15:44:37 KdIn2013@kdin04/mailcc32 [0.1s]
	20180202-154437-3zY0BF5vnKzxNnG-0@kdin04 0:00:00
X-RMX-TRACE: 2018-02-02 15:44:38 RmxMSO@kdin04/mailcc11 [0.1s]
	20180202-154437-3zY0BF5vnKzxNnG-0@kdin04 0:00:01
X-RMX-TRACE: 2018-02-02 15:44:38 LIVERmxSTO@kdin04/mailcc25 [0.1s]
	20180202-154437-3zY0BF5vnKzxNnG-0@kdin04 0:00:01
Subject: db-native fetching error
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
X-List-Received-Date: Fri, 02 Feb 2018 14:52:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all

I am trying to setup a yocto build environment. I am using win 10 with WSL =
and an ubuntu environment.

After coping with the company proxy to route the traffic properly I have an=
 error with db-native package now

{{{
$ bitbake -v db-native
Loading cache: 100% |######################################################=
###########################################################################=
########################################################################| T=
ime: 0:00:00
Loaded 1276 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies
NOTE: selecting pkgconfig-native to satisfy pkgconfig-native due to PREFERR=
ED_PROVIDERS

Build Configuration:
BB_VERSION           =3D "1.36.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "arm-poky-linux-gnueabi"
MACHINE              =3D "qemuarm"
DISTRO               =3D "poky"
DISTRO_VERSION       =3D "2.4.1"
TUNE_FEATURES        =3D "arm armv5 thumb dsp"
TARGET_FPU           =3D "soft"
meta
meta-poky
meta-yocto-bsp       =3D "rocko:21ba45aa77e4d43a93cd96d859707a4758e8b64b"

WARNING: The Linux kernel on your build host was not configured to provide =
process I/O statistics. (CONFIG_TASK_IO_ACCOUNTING is not set)
NOTE: Marking Active Tasks#################################################=
##################################                                         =
                                                                        | E=
TA:  0:00:00
NOTE: Pruned 286 inactive tasks, 66 left###################################=
##################################                                         =
                                                                        | E=
TA:  0:00:00
NOTE: Assign Weightings
NOTE: Compute totals (have 1 endpoint(s))##################################=
###################################                                        =
                                                                        | E=
TA:  0:00:00
Initialising tasks: 100% |#################################################=
###########################################################################=
########################################################################| T=
ime: 0:00:00
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: db-native-1_5.3.28-r1 do_fetch: Direct dependencies are []
NOTE: db-native-1_5.3.28-r1 do_fetch: Installed into sysroot: []
NOTE: db-native-1_5.3.28-r1 do_fetch: Skipping as already exists in sysroot=
: []
WARNING: db-native-1_5.3.28-r1 do_fetch: Checksum mismatch for local file /=
home/cs/dev/poky/build/downloads/db-5.3.28.tar.gz
Cleaning and trying again.
WARNING: db-native-1_5.3.28-r1 do_fetch: Renaming /home/cs/dev/poky/build/d=
ownloads/db-5.3.28.tar.gz to /home/cs/dev/poky/build/downloads/db-5.3.28.ta=
r.gz_bad-checksum_7b279d42c4f82b8e67a625cce54990f4
WARNING: db-native-1_5.3.28-r1 do_fetch: Checksum failure encountered with =
download of http://download.oracle.com/berkeley-db/db-5.3.28.tar.gz - will =
attempt other sources if available
WARNING: db-native-1_5.3.28-r1 do_fetch: Checksum mismatch for local file /=
home/cs/dev/poky/build/downloads/db-5.3.28.tar.gz
Cleaning and trying again.
WARNING: db-native-1_5.3.28-r1 do_fetch: Renaming /home/cs/dev/poky/build/d=
ownloads/db-5.3.28.tar.gz to /home/cs/dev/poky/build/downloads/db-5.3.28.ta=
r.gz_bad-checksum_73ef4c55d184a55807bee8d4c4a5cd40
ERROR: db-native-1_5.3.28-r1 do_fetch: Checksum failure fetching http://dow=
nload.oracle.com/berkeley-db/db-5.3.28.tar.gz
ERROR: db-native-1_5.3.28-r1 do_fetch: Fetcher failure for URL: 'http://dow=
nload.oracle.com/berkeley-db/db-5.3.28.tar.gz'. Checksum mismatch!
File: '/home/cs/dev/poky/build/downloads/db-5.3.28.tar.gz' has md5 checksum=
 73ef4c55d184a55807bee8d4c4a5cd40 when b99454564d5b4479750567031d66fe24 was=
 expected
File: '/home/cs/dev/poky/build/downloads/db-5.3.28.tar.gz' has sha256 check=
sum a6f3541280d4cec1811b08da02e2889fbca548b9b2b834fa495a6f42938bd621 when e=
0a992d740709892e81f9d93f06daf305cf73fb81b545afe72478043172c3628 was expecte=
d
If this change is expected (e.g. you have upgraded to a new version without=
 updating the checksums) then you can use these lines within the recipe:
SRC_URI[md5sum] =3D "73ef4c55d184a55807bee8d4c4a5cd40"
SRC_URI[sha256sum] =3D "a6f3541280d4cec1811b08da02e2889fbca548b9b2b834fa495=
a6f42938bd621"
Otherwise you should retry the download and/or check with upstream to deter=
mine if the file has become corrupted or otherwise unexpectedly modified.

ERROR: db-native-1_5.3.28-r1 do_fetch: Function failed: base_do_fetch
ERROR: Logfile of failure stored in: /home/cs/dev/poky/build/tmp/work/x86_6=
4-linux/db-native/1_5.3.28-r1/temp/log.do_fetch.3919
ERROR: Task (virtual:native:/home/cs/dev/poky/meta/recipes-support/db/db_5.=
3.28.bb:do_fetch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 57 tasks of which 56 didn't need to be rerun=
 and 1 failed.

Summary: 1 task failed:
  virtual:native:/home/cs/dev/poky/meta/recipes-support/db/db_5.3.28.bb:do_=
fetch
Summary: There were 6 WARNING messages shown.
Summary: There were 3 ERROR messages shown, returning a non-zero exit code.
}}}

Is this a problem with the upstream package? Does anyone else have this pro=
blem?

Regards
Christian

