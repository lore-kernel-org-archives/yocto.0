Return-Path: <dorian.vegara@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8859EE0082D; Thu, 19 Feb 2015 08:27:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dorian.vegara[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f172.google.com (mail-lb0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF4C1E00827
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 08:27:25 -0800 (PST)
Received: by lbvp9 with SMTP id p9so912580lbv.0
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 08:27:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=yD3karDhljJeY57kJ6dlSn8vbnaz5cjbE2wdFiP68qc=;
	b=l/kdfDSDZp/8HSdTeTEvwoWycVvXCWC34QK/dNItLP8d3G8rkQ/F5rVPhMbMHaCuK8
	ePTEcw82KojA7TSbNdS4RKF643Z5oNvqCqUipwgRvKNWGSkbY5JUqsbU4gxNN0DQ+UAJ
	z+lZGekOZP+7a8t49mxmAfS1VSbzhgOSstYavjc+S4O3ZkQVGbZMQzqpEPaIYvUzSIty
	HVnTXLuQh1XHDNE99cr/1u0ygP9bZiWWAi+DkTlmePz0eVayGv8u8QEKfPyV/hmU5XfO
	FDsEZEVqAvUjfcizu2/k1pWapl5v3q4Ep2IgGEbGJs6PUbkbKSQ36mMScuFsoy40o3tk
	vEaw==
MIME-Version: 1.0
X-Received: by 10.152.219.2 with SMTP id pk2mr4505836lac.107.1424363243248;
	Thu, 19 Feb 2015 08:27:23 -0800 (PST)
Received: by 10.152.166.197 with HTTP; Thu, 19 Feb 2015 08:27:22 -0800 (PST)
Date: Thu, 19 Feb 2015 17:27:22 +0100
Message-ID: <CAOQDsMw6-UXHFrCYvasB+pW7siZGn9y-pPK4-YthW9H4jRDQ7g@mail.gmail.com>
From: Dorian VEGARA <dorian.vegara@gmail.com>
To: yocto@yoctoproject.org
Subject: "do_patch" error when I build Tizen
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
X-List-Received-Date: Thu, 19 Feb 2015 16:27:30 -0000
X-Groupsio-MsgNum: 23667
Content-Type: multipart/mixed; boundary=001a1134188c259c13050f736965

--001a1134188c259c13050f736965
Content-Type: text/plain; charset=UTF-8

Hello to everyone,

I try to build the image "tizen-common-core-image-minimal-dev" thanks
to Yocto. But I encounter an error when I execute the bitbake command
:

ERROR: Function failed: do_prep (log file is located at
/home/dvegara/Documents/tizen-distro/build-common/tmp-glibc/work/x86_64-linux/rpm-native/4.11.0.1-r0/temp/log.do_patch.18439)
ERROR: Logfile of failure stored in:
/home/dvegara/Documents/tizen-distro/build-common/tmp-glibc/work/x86_64-linux/rpm-native/4.11.0.1-r0/temp/log.do_patch.18439
Log data follows : [...] (I will put it latter in this message, and
inside an attachment)
ERROR: Task 95 (virtual:native:/home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm_git.bb,
do_patch) failed with exit code '1'

The logs are contained in the attached text file, and farther in this mail.

I followed these steps to try to build the image :
1. git clone git://review.tizen.org/scm/bb/tizen-distro
2. cd tizen-distro; git checkout tizen;
build_directory_name=build-common; source
./tizen-common-init-build-env $build_directory_name
3. I didn't modify the [...]/conf/local.conf file because I don't need it.
4. Then, I typed : tizen-common-core-image-minimal-dev

Why is it bugging according to you ?
Thanks a lot.

Best regards,
Dorian Vegara.


LOGS (also contained in the attachment) :
DEBUG: Executing python function do_patch
DEBUG: Executing python function patch_do_patch
DEBUG: Searching for disable_debuginfo.patch in paths:
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/
DEBUG: Searching for disable_shortcircuited.patch in paths:
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/
DEBUG: Searching for fix_libdir.patch in paths:
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/
DEBUG: Searching for rpm-scriptetexechelp.patch in paths:
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/
DEBUG: Searching for fix-python-rpm-conf.patch in paths:
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/
DEBUG: Searching for rpmmodule.c.patch in paths:
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/
DEBUG: Searching for python-rpm.Makefile.am.patch in paths:
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/
DEBUG: Searching for pythondeps.sh in paths:
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/tizen
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/x86-64
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm-4.11.0.1/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/rpm/
    /home/dvegara/Documents/tizen-distro/meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/
NOTE: Applying patch 'disable_debuginfo.patch'
(../meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/disable_debuginfo.patch)
NOTE: Applying patch 'disable_shortcircuited.patch'
(../meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/disable_shortcircuited.patch)
NOTE: Applying patch 'fix_libdir.patch'
(../meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/fix_libdir.patch)
NOTE: Applying patch 'rpm-scriptetexechelp.patch'
(../meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/rpm-scriptetexechelp.patch)
NOTE: Applying patch 'fix-python-rpm-conf.patch'
(../meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/fix-python-rpm-conf.patch)
NOTE: Applying patch 'rpmmodule.c.patch'
(../meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/rpmmodule.c.patch)
NOTE: Applying patch 'python-rpm.Makefile.am.patch'
(../meta-tizen/meta-tizen-common-base/recipes-devtools/rpm/files/python-rpm.Makefile.am.patch)
DEBUG: Python function patch_do_patch finished
DEBUG: Executing shell function do_prep
+ cd /home/dvegara/Documents/tizen-distro/build-common/tmp-glibc/work/x86_64-linux/rpm-native/4.11.0.1-r0/git

+ do_prep

+ cd /home/dvegara/Documents/tizen-distro/build-common/tmp-glibc/work/x86_64-linux/rpm-native/4.11.0.1-r0/git

+ chmod -Rf a+rX,u+w,g-w,o-w
/home/dvegara/Documents/tizen-distro/build-common/tmp-glibc/work/x86_64-linux/rpm-native/4.11.0.1-r0/git

+ cp /home/dvegara/Documents/tizen-distro/build-common/tmp-glibc/work/x86_64-linux/rpm-native/4.11.0.1-r0/git/packaging/rpm.manifest
.

+ rm -rf sqlite

+ tar xjf /home/dvegara/Documents/tizen-distro/build-common/tmp-glibc/work/x86_64-linux/rpm-native/4.11.0.1-r0/git/packaging/db-4.8.30.tar.bz2

+ ln -sfn db-4.8.30 db

+ chmod -R u+w db/LICENSE db/README db/btree db/build_brew
db/build_s60 db/build_unix db/build_vxworks db/build_wince
db/build_windows db/clib db/common db/crypto db/csharp db/cxx db/db
db/db185 db/db_archive db/db_checkpoint db/db_deadlock db/db_dump
db/db_dump185 db/db_hotbackup db/db_load db/db_printlog db/db_recover
db/db_sql db/db_stat db/db_upgrade db/db_verify db/dbinc db/dbinc_auto
db/dbm db/dbreg db/dist db/docs db/docs_src db/env db/examples_c
db/examples_csharp db/examples_cxx db/examples_java db/examples_stl
db/fileops db/hash db/hmac db/hsearch db/java db/libdb_csharp
db/libdb_java db/lock db/log db/mod_db4 db/mp db/mutex db/os
db/os_brew db/os_qnx db/os_s60 db/os_vxworks db/os_windows db/perl
db/php_db4 db/qam db/rep db/repmgr db/sequence db/stl db/tcl db/test
db/test_micro db/test_stl db/txn

+ rm -f rpmdb/db.h

+ patch -p0

Refusing to follow symbolic link db

+ bb_exit_handler
+ ret=2
+ case $ret in
+ case $BASH_VERSION in
+ echo 'WARNING:
/home/dvegara/Documents/tizen-distro/build-common/tmp-glibc/work/x86_64-linux/rpm-native/4.11.0.1-r0/temp/run.do_prep.18439:1
exit 2 from
  patch' -p0 '<'
/home/dvegara/Documents/tizen-distro/build-common/tmp-glibc/work/x86_64-linux/rpm-native/4.11.0.1-r0/git/packaging/db-4.8.30-integration.dif
WARNING: /home/dvegara/Documents/tizen-distro/build-common/tmp-glibc/work/x86_64-linux/rpm-native/4.11.0.1-r0/temp/run.do_prep.18439:1
exit 2 from
  patch -p0 < /home/dvegara/Documents/tizen-distro/build-common/tmp-glibc/work/x86_64-linux/rpm-native/4.11.0.1-r0/git/packaging/db-4.8.30-integration.dif
+ exit 2

+ cd /home/dvegara/Documents/tizen-distro/build-common/tmp-glibc/work/x86_64-linux/rpm-native/4.11.0.1-r0/git
+ do_prep
+ cd /home/dvegara/Documents/tizen-distro/build-common/tmp-glibc/work/x86_64-linux/rpm-native/4.11.0.1-r0/git
+ chmod -Rf a+rX,u+w,g-w,o-w
/home/dvegara/Documents/tizen-distro/build-common/tmp-glibc/work/x86_64-linux/rpm-native/4.11.0.1-r0/git
+ cp /home/dvegara/Documents/tizen-distro/build-common/tmp-glibc/work/x86_64-linux/rpm-native/4.11.0.1-r0/git/packaging/rpm.manifest
.
+ rm -rf sqlite
+ tar xjf /home/dvegara/Documents/tizen-distro/build-common/tmp-glibc/work/x86_64-linux/rpm-native/4.11.0.1-r0/git/packaging/db-4.8.30.tar.bz2
+ ln -sfn db-4.8.30 db
+ chmod -R u+w db/LICENSE db/README db/btree db/build_brew
db/build_s60 db/build_unix db/build_vxworks db/build_wince
db/build_windows db/clib db/common db/crypto db/csharp db/cxx db/db
db/db185 db/db_archive db/db_checkpoint db/db_deadlock db/db_dump
db/db_dump185 db/db_hotbackup db/db_load db/db_printlog db/db_recover
db/db_sql db/db_stat db/db_upgrade db/db_verify db/dbinc db/dbinc_auto
db/dbm db/dbreg db/dist db/docs db/docs_src db/env db/examples_c
db/examples_csharp db/examples_cxx db/examples_java db/examples_stl
db/fileops db/hash db/hmac db/hsearch db/java db/libdb_csharp
db/libdb_java db/lock db/log db/mod_db4 db/mp db/mutex db/os
db/os_brew db/os_qnx db/os_s60 db/os_vxworks db/os_windows db/perl
db/php_db4 db/qam db/rep db/repmgr db/sequence db/stl db/tcl db/test
db/test_micro db/test_stl db/txn
+ rm -f rpmdb/db.h
+ patch -p0
Refusing to follow symbolic link db
+ bb_exit_handler
+ ret=2
+ case $ret in
+ case $BASH_VERSION in
+ echo 'WARNING:
/home/dvegara/Documents/tizen-distro/build-common/tmp-glibc/work/x86_64-linux/rpm-native/4.11.0.1-r0/temp/run.do_prep.18439:1
exit 2 from
  patch' -p0 '<'
/home/dvegara/Documents/tizen-distro/build-common/tmp-glibc/work/x86_64-linux/rpm-native/4.11.0.1-r0/git/packaging/db-4.8.30-integration.dif
WARNING: /home/dvegara/Documents/tizen-distro/build-common/tmp-glibc/work/x86_64-linux/rpm-native/4.11.0.1-r0/temp/run.do_prep.18439:1
exit 2 from
  patch -p0 < /home/dvegara/Documents/tizen-distro/build-common/tmp-glibc/work/x86_64-linux/rpm-native/4.11.0.1-r0/git/packaging/db-4.8.30-integration.dif
+ exit 2
DEBUG: Python function do_patch finished
ERROR: Function failed: do_prep (log file is located at
/home/dvegara/Documents/tizen-distro/build-common/tmp-glibc/work/x86_64-linux/rpm-native/4.11.0.1-r0/temp/log.do_patch.18439)

--001a1134188c259c13050f736965
Content-Type: application/octet-stream; name="log.do_patch.18439"
Content-Disposition: attachment; filename="log.do_patch.18439"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_i6ccxbxf0

REVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gZG9fcGF0Y2gKREVCVUc6IEV4ZWN1dGlu
ZyBweXRob24gZnVuY3Rpb24gcGF0Y2hfZG9fcGF0Y2gKREVCVUc6IFNlYXJjaGluZyBmb3IgZGlz
YWJsZV9kZWJ1Z2luZm8ucGF0Y2ggaW4gcGF0aHM6CiAgICAvaG9tZS9kdmVnYXJhL0RvY3VtZW50
cy90aXplbi1kaXN0cm8vbWV0YS10aXplbi9tZXRhLXRpemVuLWNvbW1vbi1iYXNlL3JlY2lwZXMt
ZGV2dG9vbHMvcnBtL3JwbS00LjExLjAuMS90aXplbgogICAgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVu
dHMvdGl6ZW4tZGlzdHJvL21ldGEtdGl6ZW4vbWV0YS10aXplbi1jb21tb24tYmFzZS9yZWNpcGVz
LWRldnRvb2xzL3JwbS9ycG0vdGl6ZW4KICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVu
LWRpc3Ryby9tZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0b29s
cy9ycG0vZmlsZXMvdGl6ZW4KICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVuLWRpc3Ry
by9tZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0b29scy9ycG0v
cnBtLTQuMTEuMC4xLwogICAgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJvL21l
dGEtdGl6ZW4vbWV0YS10aXplbi1jb21tb24tYmFzZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9ycG0v
CiAgICAvaG9tZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1kaXN0cm8vbWV0YS10aXplbi9tZXRh
LXRpemVuLWNvbW1vbi1iYXNlL3JlY2lwZXMtZGV2dG9vbHMvcnBtL2ZpbGVzLwogICAgL2hvbWUv
ZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJvL21ldGEtdGl6ZW4vbWV0YS10aXplbi1jb21t
b24tYmFzZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9ycG0tNC4xMS4wLjEveDg2LTY0CiAgICAvaG9t
ZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1kaXN0cm8vbWV0YS10aXplbi9tZXRhLXRpemVuLWNv
bW1vbi1iYXNlL3JlY2lwZXMtZGV2dG9vbHMvcnBtL3JwbS94ODYtNjQKICAgIC9ob21lL2R2ZWdh
cmEvRG9jdW1lbnRzL3RpemVuLWRpc3Ryby9tZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJh
c2UvcmVjaXBlcy1kZXZ0b29scy9ycG0vZmlsZXMveDg2LTY0CiAgICAvaG9tZS9kdmVnYXJhL0Rv
Y3VtZW50cy90aXplbi1kaXN0cm8vbWV0YS10aXplbi9tZXRhLXRpemVuLWNvbW1vbi1iYXNlL3Jl
Y2lwZXMtZGV2dG9vbHMvcnBtL3JwbS00LjExLjAuMS8KICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1l
bnRzL3RpemVuLWRpc3Ryby9tZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBl
cy1kZXZ0b29scy9ycG0vcnBtLwogICAgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlz
dHJvL21ldGEtdGl6ZW4vbWV0YS10aXplbi1jb21tb24tYmFzZS9yZWNpcGVzLWRldnRvb2xzL3Jw
bS9maWxlcy8KREVCVUc6IFNlYXJjaGluZyBmb3IgZGlzYWJsZV9zaG9ydGNpcmN1aXRlZC5wYXRj
aCBpbiBwYXRoczoKICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVuLWRpc3Ryby9tZXRh
LXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0b29scy9ycG0vcnBtLTQu
MTEuMC4xL3RpemVuCiAgICAvaG9tZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1kaXN0cm8vbWV0
YS10aXplbi9tZXRhLXRpemVuLWNvbW1vbi1iYXNlL3JlY2lwZXMtZGV2dG9vbHMvcnBtL3JwbS90
aXplbgogICAgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJvL21ldGEtdGl6ZW4v
bWV0YS10aXplbi1jb21tb24tYmFzZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9maWxlcy90aXplbgog
ICAgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJvL21ldGEtdGl6ZW4vbWV0YS10
aXplbi1jb21tb24tYmFzZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9ycG0tNC4xMS4wLjEvCiAgICAv
aG9tZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1kaXN0cm8vbWV0YS10aXplbi9tZXRhLXRpemVu
LWNvbW1vbi1iYXNlL3JlY2lwZXMtZGV2dG9vbHMvcnBtL3JwbS8KICAgIC9ob21lL2R2ZWdhcmEv
RG9jdW1lbnRzL3RpemVuLWRpc3Ryby9tZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2Uv
cmVjaXBlcy1kZXZ0b29scy9ycG0vZmlsZXMvCiAgICAvaG9tZS9kdmVnYXJhL0RvY3VtZW50cy90
aXplbi1kaXN0cm8vbWV0YS10aXplbi9tZXRhLXRpemVuLWNvbW1vbi1iYXNlL3JlY2lwZXMtZGV2
dG9vbHMvcnBtL3JwbS00LjExLjAuMS94ODYtNjQKICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRz
L3RpemVuLWRpc3Ryby9tZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1k
ZXZ0b29scy9ycG0vcnBtL3g4Ni02NAogICAgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4t
ZGlzdHJvL21ldGEtdGl6ZW4vbWV0YS10aXplbi1jb21tb24tYmFzZS9yZWNpcGVzLWRldnRvb2xz
L3JwbS9maWxlcy94ODYtNjQKICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVuLWRpc3Ry
by9tZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0b29scy9ycG0v
cnBtLTQuMTEuMC4xLwogICAgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJvL21l
dGEtdGl6ZW4vbWV0YS10aXplbi1jb21tb24tYmFzZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9ycG0v
CiAgICAvaG9tZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1kaXN0cm8vbWV0YS10aXplbi9tZXRh
LXRpemVuLWNvbW1vbi1iYXNlL3JlY2lwZXMtZGV2dG9vbHMvcnBtL2ZpbGVzLwpERUJVRzogU2Vh
cmNoaW5nIGZvciBmaXhfbGliZGlyLnBhdGNoIGluIHBhdGhzOgogICAgL2hvbWUvZHZlZ2FyYS9E
b2N1bWVudHMvdGl6ZW4tZGlzdHJvL21ldGEtdGl6ZW4vbWV0YS10aXplbi1jb21tb24tYmFzZS9y
ZWNpcGVzLWRldnRvb2xzL3JwbS9ycG0tNC4xMS4wLjEvdGl6ZW4KICAgIC9ob21lL2R2ZWdhcmEv
RG9jdW1lbnRzL3RpemVuLWRpc3Ryby9tZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2Uv
cmVjaXBlcy1kZXZ0b29scy9ycG0vcnBtL3RpemVuCiAgICAvaG9tZS9kdmVnYXJhL0RvY3VtZW50
cy90aXplbi1kaXN0cm8vbWV0YS10aXplbi9tZXRhLXRpemVuLWNvbW1vbi1iYXNlL3JlY2lwZXMt
ZGV2dG9vbHMvcnBtL2ZpbGVzL3RpemVuCiAgICAvaG9tZS9kdmVnYXJhL0RvY3VtZW50cy90aXpl
bi1kaXN0cm8vbWV0YS10aXplbi9tZXRhLXRpemVuLWNvbW1vbi1iYXNlL3JlY2lwZXMtZGV2dG9v
bHMvcnBtL3JwbS00LjExLjAuMS8KICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVuLWRp
c3Ryby9tZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0b29scy9y
cG0vcnBtLwogICAgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJvL21ldGEtdGl6
ZW4vbWV0YS10aXplbi1jb21tb24tYmFzZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9maWxlcy8KICAg
IC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVuLWRpc3Ryby9tZXRhLXRpemVuL21ldGEtdGl6
ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0b29scy9ycG0vcnBtLTQuMTEuMC4xL3g4Ni02NAog
ICAgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJvL21ldGEtdGl6ZW4vbWV0YS10
aXplbi1jb21tb24tYmFzZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9ycG0veDg2LTY0CiAgICAvaG9t
ZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1kaXN0cm8vbWV0YS10aXplbi9tZXRhLXRpemVuLWNv
bW1vbi1iYXNlL3JlY2lwZXMtZGV2dG9vbHMvcnBtL2ZpbGVzL3g4Ni02NAogICAgL2hvbWUvZHZl
Z2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJvL21ldGEtdGl6ZW4vbWV0YS10aXplbi1jb21tb24t
YmFzZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9ycG0tNC4xMS4wLjEvCiAgICAvaG9tZS9kdmVnYXJh
L0RvY3VtZW50cy90aXplbi1kaXN0cm8vbWV0YS10aXplbi9tZXRhLXRpemVuLWNvbW1vbi1iYXNl
L3JlY2lwZXMtZGV2dG9vbHMvcnBtL3JwbS8KICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3Rp
emVuLWRpc3Ryby9tZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0
b29scy9ycG0vZmlsZXMvCkRFQlVHOiBTZWFyY2hpbmcgZm9yIHJwbS1zY3JpcHRldGV4ZWNoZWxw
LnBhdGNoIGluIHBhdGhzOgogICAgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJv
L21ldGEtdGl6ZW4vbWV0YS10aXplbi1jb21tb24tYmFzZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9y
cG0tNC4xMS4wLjEvdGl6ZW4KICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVuLWRpc3Ry
by9tZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0b29scy9ycG0v
cnBtL3RpemVuCiAgICAvaG9tZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1kaXN0cm8vbWV0YS10
aXplbi9tZXRhLXRpemVuLWNvbW1vbi1iYXNlL3JlY2lwZXMtZGV2dG9vbHMvcnBtL2ZpbGVzL3Rp
emVuCiAgICAvaG9tZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1kaXN0cm8vbWV0YS10aXplbi9t
ZXRhLXRpemVuLWNvbW1vbi1iYXNlL3JlY2lwZXMtZGV2dG9vbHMvcnBtL3JwbS00LjExLjAuMS8K
ICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVuLWRpc3Ryby9tZXRhLXRpemVuL21ldGEt
dGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0b29scy9ycG0vcnBtLwogICAgL2hvbWUvZHZl
Z2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJvL21ldGEtdGl6ZW4vbWV0YS10aXplbi1jb21tb24t
YmFzZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9maWxlcy8KICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1l
bnRzL3RpemVuLWRpc3Ryby9tZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBl
cy1kZXZ0b29scy9ycG0vcnBtLTQuMTEuMC4xL3g4Ni02NAogICAgL2hvbWUvZHZlZ2FyYS9Eb2N1
bWVudHMvdGl6ZW4tZGlzdHJvL21ldGEtdGl6ZW4vbWV0YS10aXplbi1jb21tb24tYmFzZS9yZWNp
cGVzLWRldnRvb2xzL3JwbS9ycG0veDg2LTY0CiAgICAvaG9tZS9kdmVnYXJhL0RvY3VtZW50cy90
aXplbi1kaXN0cm8vbWV0YS10aXplbi9tZXRhLXRpemVuLWNvbW1vbi1iYXNlL3JlY2lwZXMtZGV2
dG9vbHMvcnBtL2ZpbGVzL3g4Ni02NAogICAgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4t
ZGlzdHJvL21ldGEtdGl6ZW4vbWV0YS10aXplbi1jb21tb24tYmFzZS9yZWNpcGVzLWRldnRvb2xz
L3JwbS9ycG0tNC4xMS4wLjEvCiAgICAvaG9tZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1kaXN0
cm8vbWV0YS10aXplbi9tZXRhLXRpemVuLWNvbW1vbi1iYXNlL3JlY2lwZXMtZGV2dG9vbHMvcnBt
L3JwbS8KICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVuLWRpc3Ryby9tZXRhLXRpemVu
L21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0b29scy9ycG0vZmlsZXMvCkRFQlVH
OiBTZWFyY2hpbmcgZm9yIGZpeC1weXRob24tcnBtLWNvbmYucGF0Y2ggaW4gcGF0aHM6CiAgICAv
aG9tZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1kaXN0cm8vbWV0YS10aXplbi9tZXRhLXRpemVu
LWNvbW1vbi1iYXNlL3JlY2lwZXMtZGV2dG9vbHMvcnBtL3JwbS00LjExLjAuMS90aXplbgogICAg
L2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJvL21ldGEtdGl6ZW4vbWV0YS10aXpl
bi1jb21tb24tYmFzZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9ycG0vdGl6ZW4KICAgIC9ob21lL2R2
ZWdhcmEvRG9jdW1lbnRzL3RpemVuLWRpc3Ryby9tZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9u
LWJhc2UvcmVjaXBlcy1kZXZ0b29scy9ycG0vZmlsZXMvdGl6ZW4KICAgIC9ob21lL2R2ZWdhcmEv
RG9jdW1lbnRzL3RpemVuLWRpc3Ryby9tZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2Uv
cmVjaXBlcy1kZXZ0b29scy9ycG0vcnBtLTQuMTEuMC4xLwogICAgL2hvbWUvZHZlZ2FyYS9Eb2N1
bWVudHMvdGl6ZW4tZGlzdHJvL21ldGEtdGl6ZW4vbWV0YS10aXplbi1jb21tb24tYmFzZS9yZWNp
cGVzLWRldnRvb2xzL3JwbS9ycG0vCiAgICAvaG9tZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1k
aXN0cm8vbWV0YS10aXplbi9tZXRhLXRpemVuLWNvbW1vbi1iYXNlL3JlY2lwZXMtZGV2dG9vbHMv
cnBtL2ZpbGVzLwogICAgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJvL21ldGEt
dGl6ZW4vbWV0YS10aXplbi1jb21tb24tYmFzZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9ycG0tNC4x
MS4wLjEveDg2LTY0CiAgICAvaG9tZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1kaXN0cm8vbWV0
YS10aXplbi9tZXRhLXRpemVuLWNvbW1vbi1iYXNlL3JlY2lwZXMtZGV2dG9vbHMvcnBtL3JwbS94
ODYtNjQKICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVuLWRpc3Ryby9tZXRhLXRpemVu
L21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0b29scy9ycG0vZmlsZXMveDg2LTY0
CiAgICAvaG9tZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1kaXN0cm8vbWV0YS10aXplbi9tZXRh
LXRpemVuLWNvbW1vbi1iYXNlL3JlY2lwZXMtZGV2dG9vbHMvcnBtL3JwbS00LjExLjAuMS8KICAg
IC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVuLWRpc3Ryby9tZXRhLXRpemVuL21ldGEtdGl6
ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0b29scy9ycG0vcnBtLwogICAgL2hvbWUvZHZlZ2Fy
YS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJvL21ldGEtdGl6ZW4vbWV0YS10aXplbi1jb21tb24tYmFz
ZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9maWxlcy8KREVCVUc6IFNlYXJjaGluZyBmb3IgcnBtbW9k
dWxlLmMucGF0Y2ggaW4gcGF0aHM6CiAgICAvaG9tZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1k
aXN0cm8vbWV0YS10aXplbi9tZXRhLXRpemVuLWNvbW1vbi1iYXNlL3JlY2lwZXMtZGV2dG9vbHMv
cnBtL3JwbS00LjExLjAuMS90aXplbgogICAgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4t
ZGlzdHJvL21ldGEtdGl6ZW4vbWV0YS10aXplbi1jb21tb24tYmFzZS9yZWNpcGVzLWRldnRvb2xz
L3JwbS9ycG0vdGl6ZW4KICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVuLWRpc3Ryby9t
ZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0b29scy9ycG0vZmls
ZXMvdGl6ZW4KICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVuLWRpc3Ryby9tZXRhLXRp
emVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0b29scy9ycG0vcnBtLTQuMTEu
MC4xLwogICAgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJvL21ldGEtdGl6ZW4v
bWV0YS10aXplbi1jb21tb24tYmFzZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9ycG0vCiAgICAvaG9t
ZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1kaXN0cm8vbWV0YS10aXplbi9tZXRhLXRpemVuLWNv
bW1vbi1iYXNlL3JlY2lwZXMtZGV2dG9vbHMvcnBtL2ZpbGVzLwogICAgL2hvbWUvZHZlZ2FyYS9E
b2N1bWVudHMvdGl6ZW4tZGlzdHJvL21ldGEtdGl6ZW4vbWV0YS10aXplbi1jb21tb24tYmFzZS9y
ZWNpcGVzLWRldnRvb2xzL3JwbS9ycG0tNC4xMS4wLjEveDg2LTY0CiAgICAvaG9tZS9kdmVnYXJh
L0RvY3VtZW50cy90aXplbi1kaXN0cm8vbWV0YS10aXplbi9tZXRhLXRpemVuLWNvbW1vbi1iYXNl
L3JlY2lwZXMtZGV2dG9vbHMvcnBtL3JwbS94ODYtNjQKICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1l
bnRzL3RpemVuLWRpc3Ryby9tZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBl
cy1kZXZ0b29scy9ycG0vZmlsZXMveDg2LTY0CiAgICAvaG9tZS9kdmVnYXJhL0RvY3VtZW50cy90
aXplbi1kaXN0cm8vbWV0YS10aXplbi9tZXRhLXRpemVuLWNvbW1vbi1iYXNlL3JlY2lwZXMtZGV2
dG9vbHMvcnBtL3JwbS00LjExLjAuMS8KICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVu
LWRpc3Ryby9tZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0b29s
cy9ycG0vcnBtLwogICAgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJvL21ldGEt
dGl6ZW4vbWV0YS10aXplbi1jb21tb24tYmFzZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9maWxlcy8K
REVCVUc6IFNlYXJjaGluZyBmb3IgcHl0aG9uLXJwbS5NYWtlZmlsZS5hbS5wYXRjaCBpbiBwYXRo
czoKICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVuLWRpc3Ryby9tZXRhLXRpemVuL21l
dGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0b29scy9ycG0vcnBtLTQuMTEuMC4xL3Rp
emVuCiAgICAvaG9tZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1kaXN0cm8vbWV0YS10aXplbi9t
ZXRhLXRpemVuLWNvbW1vbi1iYXNlL3JlY2lwZXMtZGV2dG9vbHMvcnBtL3JwbS90aXplbgogICAg
L2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJvL21ldGEtdGl6ZW4vbWV0YS10aXpl
bi1jb21tb24tYmFzZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9maWxlcy90aXplbgogICAgL2hvbWUv
ZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJvL21ldGEtdGl6ZW4vbWV0YS10aXplbi1jb21t
b24tYmFzZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9ycG0tNC4xMS4wLjEvCiAgICAvaG9tZS9kdmVn
YXJhL0RvY3VtZW50cy90aXplbi1kaXN0cm8vbWV0YS10aXplbi9tZXRhLXRpemVuLWNvbW1vbi1i
YXNlL3JlY2lwZXMtZGV2dG9vbHMvcnBtL3JwbS8KICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRz
L3RpemVuLWRpc3Ryby9tZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1k
ZXZ0b29scy9ycG0vZmlsZXMvCiAgICAvaG9tZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1kaXN0
cm8vbWV0YS10aXplbi9tZXRhLXRpemVuLWNvbW1vbi1iYXNlL3JlY2lwZXMtZGV2dG9vbHMvcnBt
L3JwbS00LjExLjAuMS94ODYtNjQKICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVuLWRp
c3Ryby9tZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0b29scy9y
cG0vcnBtL3g4Ni02NAogICAgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJvL21l
dGEtdGl6ZW4vbWV0YS10aXplbi1jb21tb24tYmFzZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9maWxl
cy94ODYtNjQKICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVuLWRpc3Ryby9tZXRhLXRp
emVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0b29scy9ycG0vcnBtLTQuMTEu
MC4xLwogICAgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJvL21ldGEtdGl6ZW4v
bWV0YS10aXplbi1jb21tb24tYmFzZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9ycG0vCiAgICAvaG9t
ZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1kaXN0cm8vbWV0YS10aXplbi9tZXRhLXRpemVuLWNv
bW1vbi1iYXNlL3JlY2lwZXMtZGV2dG9vbHMvcnBtL2ZpbGVzLwpERUJVRzogU2VhcmNoaW5nIGZv
ciBweXRob25kZXBzLnNoIGluIHBhdGhzOgogICAgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6
ZW4tZGlzdHJvL21ldGEtdGl6ZW4vbWV0YS10aXplbi1jb21tb24tYmFzZS9yZWNpcGVzLWRldnRv
b2xzL3JwbS9ycG0tNC4xMS4wLjEvdGl6ZW4KICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3Rp
emVuLWRpc3Ryby9tZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0
b29scy9ycG0vcnBtL3RpemVuCiAgICAvaG9tZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1kaXN0
cm8vbWV0YS10aXplbi9tZXRhLXRpemVuLWNvbW1vbi1iYXNlL3JlY2lwZXMtZGV2dG9vbHMvcnBt
L2ZpbGVzL3RpemVuCiAgICAvaG9tZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1kaXN0cm8vbWV0
YS10aXplbi9tZXRhLXRpemVuLWNvbW1vbi1iYXNlL3JlY2lwZXMtZGV2dG9vbHMvcnBtL3JwbS00
LjExLjAuMS8KICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVuLWRpc3Ryby9tZXRhLXRp
emVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0b29scy9ycG0vcnBtLwogICAg
L2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJvL21ldGEtdGl6ZW4vbWV0YS10aXpl
bi1jb21tb24tYmFzZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9maWxlcy8KICAgIC9ob21lL2R2ZWdh
cmEvRG9jdW1lbnRzL3RpemVuLWRpc3Ryby9tZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJh
c2UvcmVjaXBlcy1kZXZ0b29scy9ycG0vcnBtLTQuMTEuMC4xL3g4Ni02NAogICAgL2hvbWUvZHZl
Z2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJvL21ldGEtdGl6ZW4vbWV0YS10aXplbi1jb21tb24t
YmFzZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9ycG0veDg2LTY0CiAgICAvaG9tZS9kdmVnYXJhL0Rv
Y3VtZW50cy90aXplbi1kaXN0cm8vbWV0YS10aXplbi9tZXRhLXRpemVuLWNvbW1vbi1iYXNlL3Jl
Y2lwZXMtZGV2dG9vbHMvcnBtL2ZpbGVzL3g4Ni02NAogICAgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVu
dHMvdGl6ZW4tZGlzdHJvL21ldGEtdGl6ZW4vbWV0YS10aXplbi1jb21tb24tYmFzZS9yZWNpcGVz
LWRldnRvb2xzL3JwbS9ycG0tNC4xMS4wLjEvCiAgICAvaG9tZS9kdmVnYXJhL0RvY3VtZW50cy90
aXplbi1kaXN0cm8vbWV0YS10aXplbi9tZXRhLXRpemVuLWNvbW1vbi1iYXNlL3JlY2lwZXMtZGV2
dG9vbHMvcnBtL3JwbS8KICAgIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVuLWRpc3Ryby9t
ZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0b29scy9ycG0vZmls
ZXMvCk5PVEU6IEFwcGx5aW5nIHBhdGNoICdkaXNhYmxlX2RlYnVnaW5mby5wYXRjaCcgKC4uL21l
dGEtdGl6ZW4vbWV0YS10aXplbi1jb21tb24tYmFzZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9maWxl
cy9kaXNhYmxlX2RlYnVnaW5mby5wYXRjaCkKTk9URTogQXBwbHlpbmcgcGF0Y2ggJ2Rpc2FibGVf
c2hvcnRjaXJjdWl0ZWQucGF0Y2gnICguLi9tZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJh
c2UvcmVjaXBlcy1kZXZ0b29scy9ycG0vZmlsZXMvZGlzYWJsZV9zaG9ydGNpcmN1aXRlZC5wYXRj
aCkKTk9URTogQXBwbHlpbmcgcGF0Y2ggJ2ZpeF9saWJkaXIucGF0Y2gnICguLi9tZXRhLXRpemVu
L21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0b29scy9ycG0vZmlsZXMvZml4X2xp
YmRpci5wYXRjaCkKTk9URTogQXBwbHlpbmcgcGF0Y2ggJ3JwbS1zY3JpcHRldGV4ZWNoZWxwLnBh
dGNoJyAoLi4vbWV0YS10aXplbi9tZXRhLXRpemVuLWNvbW1vbi1iYXNlL3JlY2lwZXMtZGV2dG9v
bHMvcnBtL2ZpbGVzL3JwbS1zY3JpcHRldGV4ZWNoZWxwLnBhdGNoKQpOT1RFOiBBcHBseWluZyBw
YXRjaCAnZml4LXB5dGhvbi1ycG0tY29uZi5wYXRjaCcgKC4uL21ldGEtdGl6ZW4vbWV0YS10aXpl
bi1jb21tb24tYmFzZS9yZWNpcGVzLWRldnRvb2xzL3JwbS9maWxlcy9maXgtcHl0aG9uLXJwbS1j
b25mLnBhdGNoKQpOT1RFOiBBcHBseWluZyBwYXRjaCAncnBtbW9kdWxlLmMucGF0Y2gnICguLi9t
ZXRhLXRpemVuL21ldGEtdGl6ZW4tY29tbW9uLWJhc2UvcmVjaXBlcy1kZXZ0b29scy9ycG0vZmls
ZXMvcnBtbW9kdWxlLmMucGF0Y2gpCk5PVEU6IEFwcGx5aW5nIHBhdGNoICdweXRob24tcnBtLk1h
a2VmaWxlLmFtLnBhdGNoJyAoLi4vbWV0YS10aXplbi9tZXRhLXRpemVuLWNvbW1vbi1iYXNlL3Jl
Y2lwZXMtZGV2dG9vbHMvcnBtL2ZpbGVzL3B5dGhvbi1ycG0uTWFrZWZpbGUuYW0ucGF0Y2gpCkRF
QlVHOiBQeXRob24gZnVuY3Rpb24gcGF0Y2hfZG9fcGF0Y2ggZmluaXNoZWQKREVCVUc6IEV4ZWN1
dGluZyBzaGVsbCBmdW5jdGlvbiBkb19wcmVwCisgY2QgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMv
dGl6ZW4tZGlzdHJvL2J1aWxkLWNvbW1vbi90bXAtZ2xpYmMvd29yay94ODZfNjQtbGludXgvcnBt
LW5hdGl2ZS80LjExLjAuMS1yMC9naXQKCisgZG9fcHJlcAoKKyBjZCAvaG9tZS9kdmVnYXJhL0Rv
Y3VtZW50cy90aXplbi1kaXN0cm8vYnVpbGQtY29tbW9uL3RtcC1nbGliYy93b3JrL3g4Nl82NC1s
aW51eC9ycG0tbmF0aXZlLzQuMTEuMC4xLXIwL2dpdAoKKyBjaG1vZCAtUmYgYStyWCx1K3csZy13
LG8tdyAvaG9tZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1kaXN0cm8vYnVpbGQtY29tbW9uL3Rt
cC1nbGliYy93b3JrL3g4Nl82NC1saW51eC9ycG0tbmF0aXZlLzQuMTEuMC4xLXIwL2dpdAoKKyBj
cCAvaG9tZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1kaXN0cm8vYnVpbGQtY29tbW9uL3RtcC1n
bGliYy93b3JrL3g4Nl82NC1saW51eC9ycG0tbmF0aXZlLzQuMTEuMC4xLXIwL2dpdC9wYWNrYWdp
bmcvcnBtLm1hbmlmZXN0IC4KCisgcm0gLXJmIHNxbGl0ZQoKKyB0YXIgeGpmIC9ob21lL2R2ZWdh
cmEvRG9jdW1lbnRzL3RpemVuLWRpc3Ryby9idWlsZC1jb21tb24vdG1wLWdsaWJjL3dvcmsveDg2
XzY0LWxpbnV4L3JwbS1uYXRpdmUvNC4xMS4wLjEtcjAvZ2l0L3BhY2thZ2luZy9kYi00LjguMzAu
dGFyLmJ6MgoKKyBsbiAtc2ZuIGRiLTQuOC4zMCBkYgoKKyBjaG1vZCAtUiB1K3cgZGIvTElDRU5T
RSBkYi9SRUFETUUgZGIvYnRyZWUgZGIvYnVpbGRfYnJldyBkYi9idWlsZF9zNjAgZGIvYnVpbGRf
dW5peCBkYi9idWlsZF92eHdvcmtzIGRiL2J1aWxkX3dpbmNlIGRiL2J1aWxkX3dpbmRvd3MgZGIv
Y2xpYiBkYi9jb21tb24gZGIvY3J5cHRvIGRiL2NzaGFycCBkYi9jeHggZGIvZGIgZGIvZGIxODUg
ZGIvZGJfYXJjaGl2ZSBkYi9kYl9jaGVja3BvaW50IGRiL2RiX2RlYWRsb2NrIGRiL2RiX2R1bXAg
ZGIvZGJfZHVtcDE4NSBkYi9kYl9ob3RiYWNrdXAgZGIvZGJfbG9hZCBkYi9kYl9wcmludGxvZyBk
Yi9kYl9yZWNvdmVyIGRiL2RiX3NxbCBkYi9kYl9zdGF0IGRiL2RiX3VwZ3JhZGUgZGIvZGJfdmVy
aWZ5IGRiL2RiaW5jIGRiL2RiaW5jX2F1dG8gZGIvZGJtIGRiL2RicmVnIGRiL2Rpc3QgZGIvZG9j
cyBkYi9kb2NzX3NyYyBkYi9lbnYgZGIvZXhhbXBsZXNfYyBkYi9leGFtcGxlc19jc2hhcnAgZGIv
ZXhhbXBsZXNfY3h4IGRiL2V4YW1wbGVzX2phdmEgZGIvZXhhbXBsZXNfc3RsIGRiL2ZpbGVvcHMg
ZGIvaGFzaCBkYi9obWFjIGRiL2hzZWFyY2ggZGIvamF2YSBkYi9saWJkYl9jc2hhcnAgZGIvbGli
ZGJfamF2YSBkYi9sb2NrIGRiL2xvZyBkYi9tb2RfZGI0IGRiL21wIGRiL211dGV4IGRiL29zIGRi
L29zX2JyZXcgZGIvb3NfcW54IGRiL29zX3M2MCBkYi9vc192eHdvcmtzIGRiL29zX3dpbmRvd3Mg
ZGIvcGVybCBkYi9waHBfZGI0IGRiL3FhbSBkYi9yZXAgZGIvcmVwbWdyIGRiL3NlcXVlbmNlIGRi
L3N0bCBkYi90Y2wgZGIvdGVzdCBkYi90ZXN0X21pY3JvIGRiL3Rlc3Rfc3RsIGRiL3R4bgoKKyBy
bSAtZiBycG1kYi9kYi5oCgorIHBhdGNoIC1wMAoKUmVmdXNpbmcgdG8gZm9sbG93IHN5bWJvbGlj
IGxpbmsgZGIKCisgYmJfZXhpdF9oYW5kbGVyCisgcmV0PTIKKyBjYXNlICRyZXQgaW4KKyBjYXNl
ICRCQVNIX1ZFUlNJT04gaW4KKyBlY2hvICdXQVJOSU5HOiAvaG9tZS9kdmVnYXJhL0RvY3VtZW50
cy90aXplbi1kaXN0cm8vYnVpbGQtY29tbW9uL3RtcC1nbGliYy93b3JrL3g4Nl82NC1saW51eC9y
cG0tbmF0aXZlLzQuMTEuMC4xLXIwL3RlbXAvcnVuLmRvX3ByZXAuMTg0Mzk6MSBleGl0IDIgZnJv
bQogIHBhdGNoJyAtcDAgJzwnIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVuLWRpc3Ryby9i
dWlsZC1jb21tb24vdG1wLWdsaWJjL3dvcmsveDg2XzY0LWxpbnV4L3JwbS1uYXRpdmUvNC4xMS4w
LjEtcjAvZ2l0L3BhY2thZ2luZy9kYi00LjguMzAtaW50ZWdyYXRpb24uZGlmCldBUk5JTkc6IC9o
b21lL2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVuLWRpc3Ryby9idWlsZC1jb21tb24vdG1wLWdsaWJj
L3dvcmsveDg2XzY0LWxpbnV4L3JwbS1uYXRpdmUvNC4xMS4wLjEtcjAvdGVtcC9ydW4uZG9fcHJl
cC4xODQzOToxIGV4aXQgMiBmcm9tCiAgcGF0Y2ggLXAwIDwgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVu
dHMvdGl6ZW4tZGlzdHJvL2J1aWxkLWNvbW1vbi90bXAtZ2xpYmMvd29yay94ODZfNjQtbGludXgv
cnBtLW5hdGl2ZS80LjExLjAuMS1yMC9naXQvcGFja2FnaW5nL2RiLTQuOC4zMC1pbnRlZ3JhdGlv
bi5kaWYKKyBleGl0IDIKCisgY2QgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJv
L2J1aWxkLWNvbW1vbi90bXAtZ2xpYmMvd29yay94ODZfNjQtbGludXgvcnBtLW5hdGl2ZS80LjEx
LjAuMS1yMC9naXQKKyBkb19wcmVwCisgY2QgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4t
ZGlzdHJvL2J1aWxkLWNvbW1vbi90bXAtZ2xpYmMvd29yay94ODZfNjQtbGludXgvcnBtLW5hdGl2
ZS80LjExLjAuMS1yMC9naXQKKyBjaG1vZCAtUmYgYStyWCx1K3csZy13LG8tdyAvaG9tZS9kdmVn
YXJhL0RvY3VtZW50cy90aXplbi1kaXN0cm8vYnVpbGQtY29tbW9uL3RtcC1nbGliYy93b3JrL3g4
Nl82NC1saW51eC9ycG0tbmF0aXZlLzQuMTEuMC4xLXIwL2dpdAorIGNwIC9ob21lL2R2ZWdhcmEv
RG9jdW1lbnRzL3RpemVuLWRpc3Ryby9idWlsZC1jb21tb24vdG1wLWdsaWJjL3dvcmsveDg2XzY0
LWxpbnV4L3JwbS1uYXRpdmUvNC4xMS4wLjEtcjAvZ2l0L3BhY2thZ2luZy9ycG0ubWFuaWZlc3Qg
LgorIHJtIC1yZiBzcWxpdGUKKyB0YXIgeGpmIC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVu
LWRpc3Ryby9idWlsZC1jb21tb24vdG1wLWdsaWJjL3dvcmsveDg2XzY0LWxpbnV4L3JwbS1uYXRp
dmUvNC4xMS4wLjEtcjAvZ2l0L3BhY2thZ2luZy9kYi00LjguMzAudGFyLmJ6MgorIGxuIC1zZm4g
ZGItNC44LjMwIGRiCisgY2htb2QgLVIgdSt3IGRiL0xJQ0VOU0UgZGIvUkVBRE1FIGRiL2J0cmVl
IGRiL2J1aWxkX2JyZXcgZGIvYnVpbGRfczYwIGRiL2J1aWxkX3VuaXggZGIvYnVpbGRfdnh3b3Jr
cyBkYi9idWlsZF93aW5jZSBkYi9idWlsZF93aW5kb3dzIGRiL2NsaWIgZGIvY29tbW9uIGRiL2Ny
eXB0byBkYi9jc2hhcnAgZGIvY3h4IGRiL2RiIGRiL2RiMTg1IGRiL2RiX2FyY2hpdmUgZGIvZGJf
Y2hlY2twb2ludCBkYi9kYl9kZWFkbG9jayBkYi9kYl9kdW1wIGRiL2RiX2R1bXAxODUgZGIvZGJf
aG90YmFja3VwIGRiL2RiX2xvYWQgZGIvZGJfcHJpbnRsb2cgZGIvZGJfcmVjb3ZlciBkYi9kYl9z
cWwgZGIvZGJfc3RhdCBkYi9kYl91cGdyYWRlIGRiL2RiX3ZlcmlmeSBkYi9kYmluYyBkYi9kYmlu
Y19hdXRvIGRiL2RibSBkYi9kYnJlZyBkYi9kaXN0IGRiL2RvY3MgZGIvZG9jc19zcmMgZGIvZW52
IGRiL2V4YW1wbGVzX2MgZGIvZXhhbXBsZXNfY3NoYXJwIGRiL2V4YW1wbGVzX2N4eCBkYi9leGFt
cGxlc19qYXZhIGRiL2V4YW1wbGVzX3N0bCBkYi9maWxlb3BzIGRiL2hhc2ggZGIvaG1hYyBkYi9o
c2VhcmNoIGRiL2phdmEgZGIvbGliZGJfY3NoYXJwIGRiL2xpYmRiX2phdmEgZGIvbG9jayBkYi9s
b2cgZGIvbW9kX2RiNCBkYi9tcCBkYi9tdXRleCBkYi9vcyBkYi9vc19icmV3IGRiL29zX3FueCBk
Yi9vc19zNjAgZGIvb3Nfdnh3b3JrcyBkYi9vc193aW5kb3dzIGRiL3BlcmwgZGIvcGhwX2RiNCBk
Yi9xYW0gZGIvcmVwIGRiL3JlcG1nciBkYi9zZXF1ZW5jZSBkYi9zdGwgZGIvdGNsIGRiL3Rlc3Qg
ZGIvdGVzdF9taWNybyBkYi90ZXN0X3N0bCBkYi90eG4KKyBybSAtZiBycG1kYi9kYi5oCisgcGF0
Y2ggLXAwClJlZnVzaW5nIHRvIGZvbGxvdyBzeW1ib2xpYyBsaW5rIGRiCisgYmJfZXhpdF9oYW5k
bGVyCisgcmV0PTIKKyBjYXNlICRyZXQgaW4KKyBjYXNlICRCQVNIX1ZFUlNJT04gaW4KKyBlY2hv
ICdXQVJOSU5HOiAvaG9tZS9kdmVnYXJhL0RvY3VtZW50cy90aXplbi1kaXN0cm8vYnVpbGQtY29t
bW9uL3RtcC1nbGliYy93b3JrL3g4Nl82NC1saW51eC9ycG0tbmF0aXZlLzQuMTEuMC4xLXIwL3Rl
bXAvcnVuLmRvX3ByZXAuMTg0Mzk6MSBleGl0IDIgZnJvbQogIHBhdGNoJyAtcDAgJzwnIC9ob21l
L2R2ZWdhcmEvRG9jdW1lbnRzL3RpemVuLWRpc3Ryby9idWlsZC1jb21tb24vdG1wLWdsaWJjL3dv
cmsveDg2XzY0LWxpbnV4L3JwbS1uYXRpdmUvNC4xMS4wLjEtcjAvZ2l0L3BhY2thZ2luZy9kYi00
LjguMzAtaW50ZWdyYXRpb24uZGlmCldBUk5JTkc6IC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3Rp
emVuLWRpc3Ryby9idWlsZC1jb21tb24vdG1wLWdsaWJjL3dvcmsveDg2XzY0LWxpbnV4L3JwbS1u
YXRpdmUvNC4xMS4wLjEtcjAvdGVtcC9ydW4uZG9fcHJlcC4xODQzOToxIGV4aXQgMiBmcm9tCiAg
cGF0Y2ggLXAwIDwgL2hvbWUvZHZlZ2FyYS9Eb2N1bWVudHMvdGl6ZW4tZGlzdHJvL2J1aWxkLWNv
bW1vbi90bXAtZ2xpYmMvd29yay94ODZfNjQtbGludXgvcnBtLW5hdGl2ZS80LjExLjAuMS1yMC9n
aXQvcGFja2FnaW5nL2RiLTQuOC4zMC1pbnRlZ3JhdGlvbi5kaWYKKyBleGl0IDIKREVCVUc6IFB5
dGhvbiBmdW5jdGlvbiBkb19wYXRjaCBmaW5pc2hlZApFUlJPUjogRnVuY3Rpb24gZmFpbGVkOiBk
b19wcmVwIChsb2cgZmlsZSBpcyBsb2NhdGVkIGF0IC9ob21lL2R2ZWdhcmEvRG9jdW1lbnRzL3Rp
emVuLWRpc3Ryby9idWlsZC1jb21tb24vdG1wLWdsaWJjL3dvcmsveDg2XzY0LWxpbnV4L3JwbS1u
YXRpdmUvNC4xMS4wLjEtcjAvdGVtcC9sb2cuZG9fcGF0Y2guMTg0MzkpCg==

--001a1134188c259c13050f736965--
