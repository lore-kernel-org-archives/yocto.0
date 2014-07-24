Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE704E0078E; Thu, 24 Jul 2014 00:06:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.9 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM, FSL_HELO_BARE_IP_2, NML_ADSP_CUSTOM_MED,
	RCVD_IN_DNSWL_NONE, RCVD_IN_SORBS_WEB, RCVD_NUMERIC_HELO,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	*  0.8 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [115.248.23.130 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (babu.anoop[at]gmail.com)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* 1.2 RCVD_NUMERIC_HELO Received: contains an IP address used for HELO
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  2.0 FSL_HELO_BARE_IP_2 FSL_HELO_BARE_IP_2
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62DCCE006B7
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 00:06:09 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1XAD6O-0002XA-3D
	for yocto@yoctoproject.org; Thu, 24 Jul 2014 09:06:08 +0200
Received: from 115.248.23.130 ([115.248.23.130])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 09:06:08 +0200
Received: from babu.anoop by 115.248.23.130 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 09:06:08 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Anoop <babu.anoop@gmail.com>
Date: Thu, 24 Jul 2014 07:05:57 +0000 (UTC)
Message-ID: <loom.20140724T085712-749@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 115.248.23.130 (Mozilla/5.0 (Windows NT 6.1;
	WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153
	Safari/537.36)
Subject: Bitbake error for elfutils-native
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
X-List-Received-Date: Thu, 24 Jul 2014 07:06:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

bitbake for imx6qsabreauto

command used 
bitbake -v tizen-common-core-image-minimal-dev

I have applied fix to -	meta/classes/patch.bbclass
i.e 
+ del os.environ['TMPDIR']

***Error Log****
ERROR: Command Error: exit status: 1  Output:
Applying patch redhat-portability.diff
patching file backends/ChangeLog
patching file backends/Makefile.am
patching file backends/Makefile.in
patching file ChangeLog
patching file config/ChangeLog
patching file config/eu.am
patching file config/Makefile.in
Hunk #1 succeeded at 147 (offset 1 line).
Hunk #2 succeeded at 179 (offset 1 line).
patching file config.h.in
patching file configure
Hunk #1 FAILED at 661.
Hunk #2 FAILED at 678.
Hunk #3 FAILED at 802.
Hunk #4 FAILED at 1461.
Hunk #5 succeeded at 4943 with fuzz 1 (offset 234 lines).
Hunk #6 FAILED at 4869.
Hunk #7 succeeded at 5535 (offset 256 lines).
Hunk #8 FAILED at 6015.
Hunk #9 succeeded at 7010 with fuzz 1 (offset 257 lines).
6 out of 9 hunks FAILED -- rejects in file configure
patching file configure.ac
patching file lib/ChangeLog
patching file lib/eu-config.h
patching file lib/Makefile.in
patching file libasm/ChangeLog
patching file libasm/Makefile.in
patching file libcpu/ChangeLog
patching file libcpu/i386_disasm.c
patching file libcpu/Makefile.in
patching file libdw/ChangeLog
patching file libdw/dwarf_begin_elf.c
patching file libdw/libdw.h
patching file libdw/Makefile.in
patching file libdwfl/ChangeLog
patching file libdwfl/linux-core-attach.c
patching file libdwfl/linux-pid-attach.c
patching file libdwfl/Makefile.in
patching file libebl/ChangeLog
patching file libebl/Makefile.in
patching file libelf/ChangeLog
patching file libelf/common.h
patching file libelf/gnuhash_xlate.h
patching file libelf/Makefile.in
patching file m4/Makefile.in
patching file Makefile.in
patching file src/addr2line.c
patching file src/ChangeLog
patching file src/findtextrel.c
patching file src/ld.h
patching file src/Makefile.am
patching file src/Makefile.in
patching file src/readelf.c
patching file src/strings.c
patching file src/strip.c
patching file tests/backtrace.c
patching file tests/ChangeLog
patching file tests/line2addr.c
patching file tests/Makefile.in
Patch redhat-portability.diff does not apply (enforce with -f)
ERROR: Function failed: patch_do_patch
ERROR: Logfile of failure stored in: 
/home/sfm/yocto_temp/build/tmp/work/i686-linux/elfutils-native/0.158-
r0/temp/log.do_patch.3531
ERROR: Task 993 (virtual:native:/home/sfm/yocto_temp/poky/meta/recipes-
devtools/elfutils/elfutils_0.158.bb, do_patch) failed with exit code '1'


************do patch log file************************************

/home/sfm/yocto_temp/poky/meta/recipes-devtools/elfutils/elfutils/
/home/sfm/yocto_temp/poky/meta/recipes-devtools/elfutils/files/
NOTE: Applying patch 'redhat-portability.diff' (../poky/meta/recipes-
devtools/elfutils/elfutils-0.158/redhat-portability.diff)
ERROR: Command Error: exit status: 1  Output:
Applying patch redhat-portability.diff
patching file backends/ChangeLog
patching file backends/Makefile.am
patching file backends/Makefile.in
patching file ChangeLog
patching file config/ChangeLog
patching file config/eu.am
patching file config/Makefile.in
Hunk #1 succeeded at 147 (offset 1 line).
Hunk #2 succeeded at 179 (offset 1 line).
patching file config.h.in
patching file configure
Hunk #1 FAILED at 661.
Hunk #2 FAILED at 678.
Hunk #3 FAILED at 802.
Hunk #4 FAILED at 1461.
Hunk #5 succeeded at 4943 with fuzz 1 (offset 234 lines).
Hunk #6 FAILED at 4869.
Hunk #7 succeeded at 5535 (offset 256 lines).
Hunk #8 FAILED at 6015.
Hunk #9 succeeded at 7010 with fuzz 1 (offset 257 lines).
6 out of 9 hunks FAILED -- rejects in file configure
patching file configure.ac
patching file lib/ChangeLog
patching file lib/eu-config.h
patching file lib/Makefile.in
patching file libasm/ChangeLog
patching file libasm/Makefile.in
patching file libcpu/ChangeLog
patching file libcpu/i386_disasm.c
patching file libcpu/Makefile.in
patching file libdw/ChangeLog
patching file libdw/dwarf_begin_elf.c
patching file libdw/libdw.h
patching file libdw/Makefile.in
patching file libdwfl/ChangeLog
patching file libdwfl/linux-core-attach.c
patching file libdwfl/linux-pid-attach.c
patching file libdwfl/Makefile.in
patching file libebl/ChangeLog
patching file libebl/Makefile.in
patching file libelf/ChangeLog
patching file libelf/common.h
patching file libelf/gnuhash_xlate.h
patching file libelf/Makefile.in
patching file m4/Makefile.in
patching file Makefile.in
patching file src/addr2line.c
patching file src/ChangeLog
patching file src/findtextrel.c
patching file src/ld.h
patching file src/Makefile.am
patching file src/Makefile.in
patching file src/readelf.c
patching file src/strings.c
patching file src/strip.c
patching file tests/backtrace.c
patching file tests/ChangeLog
patching file tests/line2addr.c
patching file tests/Makefile.in
Patch redhat-portability.diff does not apply (enforce with -f)
DEBUG: Python function patch_do_patch finished
DEBUG: Python function do_patch finished
ERROR: Function failed: patch_do_patch

Any inputs to resolve this error




