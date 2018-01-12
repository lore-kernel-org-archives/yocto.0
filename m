Return-Path: <hs@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6ECB8E00DC2; Thu, 11 Jan 2018 22:32:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 513 seconds by postgrey-1.32 at yocto-www;
	Thu, 11 Jan 2018 22:32:36 PST
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C6C0E00D20
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 22:32:36 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3zHt4L3c7Mz1qrMn;
	Fri, 12 Jan 2018 07:24:02 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 3zHt4L3Pkbz1qqkW;
	Fri, 12 Jan 2018 07:24:02 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id QDUptXfIQDp0; Fri, 12 Jan 2018 07:24:00 +0100 (CET)
X-Auth-Info: PhQ+CdVq9Jk5lo2gAyQbIjnydBXJrt9yyYF5ChZBs7Y=
Received: from [192.168.1.106] (87.97.49.20.pool.invitel.hu [87.97.49.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Fri, 12 Jan 2018 07:24:00 +0100 (CET)
To: yocto@yoctoproject.org
From: Heiko Schocher <hs@denx.de>
Message-ID: <dc44d34c-a4f9-18e2-61c3-a3ddafe7a372@denx.de>
Date: Fri, 12 Jan 2018 07:23:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
Subject: yocto test framework: problem with bitbake image -c testexport
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: hs@denx.de
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 12 Jan 2018 06:32:38 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hello all,

I just tried to use the yocto testframework as described in [1]. Base is
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=rocko&id=759b36a8de86bfe5355880a76077af47e156701d

As I want to start the tests manually with having the tests exported
(with the goal to fully automate all the steps with tbot [3]), I added

INHERIT += "testimage testexport"

to my local.conf

and start:

bitbake image -c testexport

But bitbaking fails with:

File: '***/meta/classes/testexport.bbclass', lineno: 42, function: do_testexport
      0038:do_testexport[depends] += "${TEST_EXPORT_DEPENDS} ${TESTIMAGEDEPENDS}"
      0039:do_testexport[lockfiles] += "${TEST_EXPORT_LOCK}"
      0040:
      0041:python do_testexport() {
  *** 0042:    testexport_main(d)
      0043:}
      0044:
      0045:def testexport_main(d):
      0046:    import json
File: '***/meta/classes/testexport.bbclass', lineno: 75, function: testexport_main
      0071:
      0072:    tc = OERuntimeTestContext(td, logger, target, host_dumper,
      0073:                              image_packages, extract_dir)
      0074:
  *** 0075:    copy_needed_files(d, tc)
      0076:
      0077:def copy_needed_files(d, tc):
      0078:    import shutil
      0079:    import oe.path
File: '***/meta/classes/testexport.bbclass', lineno: 135, function: copy_needed_files
      0131:    shutil.copy2(image_manifest, os.path.join(test_data_path, 'manifest'))
      0132:    shutil.copy2(tdname, os.path.join(test_data_path, 'testdata.json'))
      0133:
      0134:    # Create tar file for common parts of testexport
  *** 0135:    create_tarball(d, "testexport.tar.gz", d.getVar("TEST_EXPORT_DIR"))
      0136:
      0137:    # Copy packages needed for runtime testing
      0138:    package_extraction(d, tc.suites)
      0139:    test_pkg_dir = d.getVar("TEST_NEEDED_PACKAGES_DIR")
Exception: TypeError: create_tarball() missing 1 required positional argument: 'ar_outdir'

Fixed this (as I am a yocto beginner, only a dummy patch) with patch [4].

May a better fix is here appropriate ... ? If not, I can send a formal
patch to this list?

Going forward ...

With [4] bitbaking finishs, but I see no "tmp/testexport/image" directory, as described
in [1], instead only a "tmp/testimage/image" exists ... wrong in [1]?

In "tmp/testimage/image" no "runexported.py" ... but a "oe-test" file exists.

Hmm...  in "tmp/testimage/image" exists a file "testexport.tar.gz" ...

Extracting this on my machine, from where I have access to the Board I want to test:

$ ./oe-test runtime --list-tests module
2018-01-12 06:53:20,226 - runtime - INFO - Listing all available test modules:
2018-01-12 06:53:20,226 - runtime - INFO - ping
2018-01-12 06:53:20,226 - runtime - INFO - ssh
2018-01-12 06:53:20,226 - runtime - INFO - connman
2018-01-12 06:53:20,226 - runtime - INFO - date
2018-01-12 06:53:20,226 - runtime - INFO - df
2018-01-12 06:53:20,226 - runtime - INFO - dnf
2018-01-12 06:53:20,226 - runtime - INFO - rpm
2018-01-12 06:53:20,226 - runtime - INFO - scp
2018-01-12 06:53:20,226 - runtime - INFO - xorg
$

$ ./oe-test runtime --target-ip 192.168.3.24 --server-ip 192.168.3.1 --target-type simpleremote 
--run-tests ping ssh date df
2018-01-12 06:55:49,874 - runtime - INFO - test_ping (ping.PingTest)
2018-01-12 06:55:49,887 - runtime - INFO -  ... ok
2018-01-12 06:55:49,887 - runtime - INFO - test_ssh (ssh.SSHTest)
2018-01-12 06:55:50,599 - runtime - INFO -  ... ok
2018-01-12 06:55:50,600 - runtime - INFO - test_date (date.DateTest)
2018-01-12 06:55:53,798 - runtime - INFO -  ... ok
2018-01-12 06:55:53,799 - runtime - INFO - test_df (df.DfTest)
2018-01-12 06:55:54,195 - runtime - INFO -  ... ok
2018-01-12 06:55:54,195 - runtime - INFO - 
----------------------------------------------------------------------
2018-01-12 06:55:54,195 - runtime - INFO - Ran 4 tests in 4.321s
2018-01-12 06:55:54,195 - runtime - INFO - OK
2018-01-12 06:55:54,196 - runtime - INFO - RESULTS:
2018-01-12 06:55:54,196 - runtime - INFO - RESULTS - date.DateTest.test_date - Testcase 211: PASSED
2018-01-12 06:55:54,196 - runtime - INFO - RESULTS - df.DfTest.test_df - Testcase 234: PASSED
2018-01-12 06:55:54,196 - runtime - INFO - RESULTS - ping.PingTest.test_ping - Testcase 964: PASSED
2018-01-12 06:55:54,196 - runtime - INFO - RESULTS - ssh.SSHTest.test_ssh - Testcase 224: PASSED
2018-01-12 06:55:54,196 - runtime - INFO - SUMMARY:
2018-01-12 06:55:54,196 - runtime - INFO - runtime () - Ran 4 tests in 4.321s
2018-01-12 06:55:54,196 - runtime - INFO - runtime - OK - All required tests passed
$

So this seems to work ... Is this correct?

Hmm.. searching for any logs, what this tests do .. I cannot find any log?
No info, which commands are sent, nor any output from them is logged.

The only info I get is above output :-(

Is this correct?

Thanks in advance!

bye,
Heiko

[1] 
http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#performing-automated-runtime-testing
[2] http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#exporting-tests
[3] https://github.com/hsdenx/tbot
     https://www.tbot.tools/main.html
[4] patch for fixing testexport:
diff --git a/meta/classes/testexport.bbclass b/meta/classes/testexport.bbclass
index d070f07afa..000d23d98c 100644
--- a/meta/classes/testexport.bbclass
+++ b/meta/classes/testexport.bbclass
@@ -132,7 +132,7 @@ def copy_needed_files(d, tc):
      shutil.copy2(tdname, os.path.join(test_data_path, 'testdata.json'))

      # Create tar file for common parts of testexport
-    create_tarball(d, "testexport.tar.gz", d.getVar("TEST_EXPORT_DIR"))
+    _create_tarball(d, "testexport.tar.gz", d.getVar("TEST_EXPORT_DIR"))

      # Copy packages needed for runtime testing
      package_extraction(d, tc.suites)
@@ -141,7 +141,7 @@ def copy_needed_files(d, tc):
          export_pkg_dir = os.path.join(d.getVar("TEST_EXPORT_DIR"), "packages")
          oe.path.copytree(test_pkg_dir, export_pkg_dir)
          # Create tar file for packages needed by the DUT
-        create_tarball(d, "testexport_packages_%s.tar.gz" % d.getVar("MACHINE"), export_pkg_dir)
+        _create_tarball(d, "testexport_packages_%s.tar.gz" % d.getVar("MACHINE"), export_pkg_dir)

      # Copy SDK
      if d.getVar("TEST_EXPORT_SDK_ENABLED") == "1":
@@ -154,11 +154,11 @@ def copy_needed_files(d, tc):
          shutil.copy2(tarball_path, export_sdk_dir)

          # Create tar file for the sdk
-        create_tarball(d, "testexport_sdk_%s.tar.gz" % d.getVar("SDK_ARCH"), export_sdk_dir)
+        _create_tarball(d, "testexport_sdk_%s.tar.gz" % d.getVar("SDK_ARCH"), export_sdk_dir)

      bb.plain("Exported tests to: %s" % export_path)

-def create_tarball(d, tar_name, src_dir):
+def _create_tarball(d, tar_name, src_dir):

      import tarfile

-- 
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-52   Fax: +49-8142-66989-80   Email: hs@denx.de

