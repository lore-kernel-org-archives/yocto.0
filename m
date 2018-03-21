Return-Path: <sveinse@seldal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5029CE00CB2; Wed, 21 Mar 2018 06:49:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.63.252.70 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2380 seconds by postgrey-1.32 at yocto-www;
	Wed, 21 Mar 2018 06:49:34 PDT
Received: from webmail-smtp.domeneshop.no (webmail-smtp.domeneshop.no
	[194.63.252.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A69BE00C80
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 06:49:34 -0700 (PDT)
Received: from webmail13.domeneshop.no ([2a01:5b40:0:2703::1]:44335)
	by webmail-smtp.domeneshop.no with esmtp (Exim 4.80)
	(envelope-from <sveinse@seldal.com>) id 1eydV3-0006qq-Nk
	for yocto@yoctoproject.org; Wed, 21 Mar 2018 14:09:53 +0100
Received: from localhost ([::1]:44573 helo=webmail.domeneshop.no)
	by webmail13.domeneshop.no with esmtpa (Exim 4.84_2)
	(envelope-from <sveinse@seldal.com>) id 1eydV3-00049z-Hs
	for yocto@yoctoproject.org; Wed, 21 Mar 2018 14:09:53 +0100
MIME-Version: 1.0
Date: Wed, 21 Mar 2018 14:09:53 +0100
From: Svein Seldal <sveinse@seldal.com>
To: yocto@yoctoproject.org
Message-ID: <ad09d45b8456613da24304c00a2c2273@webmail.domeneshop.no>
X-Sender: sveinse@seldal.com
User-Agent: Domeneshop Webmail/1.1.10
Subject: Yocto and NPM issues
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
X-List-Received-Date: Wed, 21 Mar 2018 13:49:36 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi

I'm attempting to package a npm-based js application into a Rocko image, 
and I'm having some issues. For testing I use the official poky repo and 
the meta-openembedded repo (for installing nodejs 8.4.0). I'm building 
for qemux86-64.


Issue 1: NPM builds not working in Rocko

If I'm following the examples outlined in 
https://wiki.yoctoproject.org/wiki/TipsAndTricks/NPM, and run devtool 
add "npm://registry.npmjs.org;name=cute-files;version=1.0.2" and then 
bitbake cute-file. It fails on an npm error seen below. I found that 
this patch fixes the problem: 
https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/classes/npm.bbclass?id=d38e1e2c2ea4646b34ea6282d3d7620df5b0374b

Will there be more releases of rocko? Can I request that this patch is 
backported to the rocko branch please?


Issue 2: Workspace npm recipe does not work after bitbake -c cleanall

If using the devtool/workspace for the above recipe, and run bitbake -c 
cleanall cute-files, then try to rerun bitbake cute-files, it will warn 
on missing LICENSE files for the npm packages and fail on 
LIC_FILES_CHKSUM point to an invalid file QA error. E.g. something in 
line of:

WARNING: cute-files-1.0.2-r0 do_populate_lic: Could not copy license 
file 
/home/common/yocto/yocto-poky/build/workspace/sources/cute-files/node_modules/express/node_modules/serve-static/node_modules/send/node_modules/ms/license.md 
to 
/home/common/yocto/yocto-poky/build/tmp/work/core2-64-poky-linux/cute-files/1.0.2-r0/license-destdir/cute-files/license.md: 
[Errno 2] No such file or directory: 
'/home/common/yocto/yocto-poky/build/workspace/sources/cute-files/node_modules/express/node_modules/serve-static/node_modules/send/node_modules/ms/license.md'
ERROR: cute-files-1.0.2-r0 do_populate_lic: QA Issue: cute-files: 
LIC_FILES_CHKSUM points to an invalid file: 
/home/common/yocto/yocto-poky/build/workspace/sources/cute-files/node_modules/express/node_modules/accepts/LICENSE 
[license-checksum]


Issue 3: npm recipe fails to download npm images after -c cleanall

If the recipe is copied into a normal layer and run without externalsrc, 
and runned after a -c cleanall, the following error is returned:

WARNING: cute-files-1.0.2-r0 do_fetch: Checksum failure encountered with 
download of npm://registry.npmjs.org;name=cute-files;version=1.0.2 - 
will attempt other sources if available
ERROR: cute-files-1.0.2-r0 do_fetch: Fetcher failure: Checksum mismatch!
File: 'commander-2.15.1.tgz' has sha1 checksum 
df46e867d0fc2aec66a34662b406a9ccafff5b0f when * was expected
ERROR: cute-files-1.0.2-r0 do_fetch: Fetcher failure for URL: 
'npm://registry.npmjs.org;name=cute-files;version=1.0.2'. Unable to 
fetch URL from any source.
ERROR: cute-files-1.0.2-r0 do_fetch: Function failed: base_do_fetch
ERROR: Logfile of failure stored in: 
/home/common/yocto/yocto-poky/build/tmp/work/core2-64-poky-linux/cute-files/1.0.2-r0/temp/log.do_fetch.20513
ERROR: Task 
(/home/common/yocto/yocto-poky/meta-foobar/recipes/cute-files/cute-files_1.0.2.bb:do_fetch) 
failed with exit code '1'


The only way to circumvent issue 2 and 3 after a -c cleanall is to use 
the devtool to download the packages, and then build the package as 
normal.


Best regards,
Svein




FAILURE Building cute-files:

ERROR: cute-files-1.0.2-r0 do_compile: Function failed: do_compile (log 
file is located at 
/home/common/yocto/yocto-poky/build/tmp/work/core2-64-poky-linux/cute-files/1.0.2-r0/temp/log.do_compile.9536)
ERROR: Logfile of failure stored in: 
/home/common/yocto/yocto-poky/build/tmp/work/core2-64-poky-linux/cute-files/1.0.2-r0/temp/log.do_compile.9536
Log data follows:
| DEBUG: Executing python function externalsrc_compile_prefunc
| NOTE: cute-files: compiling from external source tree 
/home/common/yocto/yocto-poky/build/workspace/sources/cute-files
| DEBUG: Python function externalsrc_compile_prefunc finished
| DEBUG: Executing shell function do_compile
| npm ERR! As of npm@5, the npm cache self-heals from corruption issues 
and data extracted from the cache is guaranteed to be valid. If you want 
to make sure everything is consistent, use 'npm cache verify' instead.
| npm ERR!
| npm ERR! If you're sure you want to delete the entire cache, rerun 
this command with --force.
|
| npm ERR! A complete log of this run can be found in:
| npm ERR!     
/home/common/yocto/yocto-poky/build/tmp/work/core2-64-poky-linux/cute-files/1.0.2-r0/npm_cache/_logs/2018-03-21T12_36_48_034Z-debug.log
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at 
/home/common/yocto/yocto-poky/build/tmp/work/core2-64-poky-linux/cute-files/1.0.2-r0/temp/log.do_compile.9536)
ERROR: Task 
(/home/common/yocto/yocto-poky/build/workspace/recipes/cute-files/cute-files_1.0.2.bb:do_compile) 
failed with exit code '1'

