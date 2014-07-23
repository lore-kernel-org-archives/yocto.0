Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E6E1E00576; Tue, 22 Jul 2014 23:55:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.9 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM, FSL_HELO_BARE_IP_2, NML_ADSP_CUSTOM_MED,
	RCVD_IN_DNSWL_NONE, RCVD_IN_SORBS_WEB, RCVD_NUMERIC_HELO,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (babu.anoop[at]gmail.com)
	*  0.8 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [115.248.23.130 listed in dnsbl.sorbs.net]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* 1.2 RCVD_NUMERIC_HELO Received: contains an IP address used for HELO
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	*  2.0 FSL_HELO_BARE_IP_2 FSL_HELO_BARE_IP_2
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B89E2E00524
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 23:55:08 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1X9qS8-00005j-RG
	for yocto@yoctoproject.org; Wed, 23 Jul 2014 08:55:05 +0200
Received: from 115.248.23.130 ([115.248.23.130])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 08:55:04 +0200
Received: from babu.anoop by 115.248.23.130 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 08:55:04 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Anoop <babu.anoop@gmail.com>
Date: Wed, 23 Jul 2014 06:51:18 +0000 (UTC)
Message-ID: <loom.20140723T084046-919@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 115.248.23.130 (Mozilla/5.0 (Windows NT 6.1;
	WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153
	Safari/537.36)
Subject: Yocto Bitbake Error - rmp-native task failure
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
X-List-Received-Date: Wed, 23 Jul 2014 06:55:16 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


I gave bitbake for imx6qsabreauto

command used 
bitbake -v tizen-common-core-image-minimal-dev


below is the error section from the log
+ patch -p0

patch: **** Can't create file /tmp/tmpT3pUSD/poMZnbmM : No such file or 
directory

+ bb_exit_handler
+ ret=2
+ echo WARNING: exit code 2 from a shell command.
WARNING: exit code 2 from a shell command.
+ exit 2

ERROR: Function failed: do_prep (log file is located at 
/home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-
r0/temp/log.do_patch.32228)
/usr/bin/install -c -m 644 ./Lib/test/test_bool.py 
/home/sfm/yocto_temp/build/tmp/sysroots/i686-linux/usr/lib/python2.7/test

ERROR: Logfile of failure stored in: 
/home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-
r0/temp/log.do_patch.32228
NOTE: recipe rpm-native-git-r0: task do_patch: Failed
ERROR: Task 85 (virtual:native:/home/sfm/yocto_temp/meta-tizen/recipes-
tizen/rpm/rpm_git.bb, do_patch) failed with exit code '1'

Error log from patch file
+ 
chmod
 -Rf
 a+rX,u+w,g-w,o-w
 /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-r0/git


+ cp /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-
r0/git/packaging/rpm.manifest .

+ rm -rf sqlite

+ tar xjf /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-
r0/git/packaging/db-4.8.30.tar.bz2

+ ln -s db-4.8.30 db

+ chmod -R u+w db/LICENSE db/README db/btree db/build_brew db/build_s60 
db/build_unix db/build_vxworks db/build_wince db/build_windows db/clib 
db/common db/crypto db/csharp db/cxx db/db db/db185 db/db_archive 
db/db_checkpoint db/db_deadlock db/db_dump db/db_dump185 db/db_hotbackup 
db/db_load db/db_printlog db/db_recover db/db_sql db/db_stat db/db_upgrade 
db/db_verify db/dbinc db/dbinc_auto db/dbm db/dbreg db/dist db/docs 
db/docs_src db/env db/examples_c db/examples_csharp db/examples_cxx 
db/examples_java db/examples_stl db/fileops db/hash db/hmac db/hsearch 
db/java db/libdb_csharp db/libdb_java db/lock db/log db/mod_db4 db/mp 
db/mutex db/os db/os_brew db/os_qnx db/os_s60 db/os_vxworks db/os_windows 
db/perl db/php_db4 db/qam db/rep db/repmgr db/sequence db/stl db/tcl db/test 
db/test_micro db/test_stl db/txn

+ rm -f rpmdb/db.h

+ patch -p0

patch: **** Can't create file /tmp/tmpT3pUSD/poMZnbmM : No such file or 
directory

+ bb_exit_handler
+ ret=2
+ echo WARNING: exit code 2 from a shell command.
WARNING: exit code 2 from a shell command.
+ exit 2

+ cd /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-r0/git
+ do_prep
+ cd /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-r0/git
+ chmod -Rf a+rX,u+w,g-w,o-w /home/sfm/yocto_temp/build/tmp/work/i686-
linux/rpm-native/git-r0/git
+ cp /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-
r0/git/packaging/rpm.manifest .
+ rm -rf sqlite
+ tar xjf /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-
r0/git/packaging/db-4.8.30.tar.bz2
+ ln -s db-4.8.30 db
+ chmod -R u+w db/LICENSE db/README db/btree db/build_brew db/build_s60 
db/build_unix db/build_vxworks db/build_wince db/build_windows db/clib 
db/common db/crypto db/csharp db/cxx db/db db/db185 db/db_archive 
db/db_checkpoint db/db_deadlock db/db_dump db/db_dump185 db/db_hotbackup 
db/db_load db/db_printlog db/db_recover db/db_sql db/db_stat db/db_upgrade 
db/db_verify db/dbinc db/dbinc_auto db/dbm db/dbreg db/dist db/docs 
db/docs_src db/env db/examples_c db/examples_csharp db/examples_cxx 
db/examples_java db/examples_stl db/fileops db/hash db/hmac db/hsearch 
db/java db/libdb_csharp db/libdb_java db/lock db/log db/mod_db4 db/mp 
db/mutex db/os db/os_brew db/os_qnx db/os_s60 db/os_vxworks db/os_windows 
db/perl db/php_db4 db/qam db/rep db/repmgr db/sequence db/stl db/tcl db/test 
db/test_micro db/test_stl db/txn
+ rm -f rpmdb/db.h
+ patch -p0
patch: **** Can't create file /tmp/tmpT3pUSD/poMZnbmM : No such file or 
directory
+ bb_exit_handler
+ ret=2
+ echo WARNING: exit code 2 from a shell command.
WARNING: exit code 2 from a shell command.
+ exit 2
DEBUG: Python function do_patch finished
ERROR: Function failed: do_prep (log file is located at 
/home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-
r0/temp/log.do_patch.32228)

can any one help on how to resolve this error



