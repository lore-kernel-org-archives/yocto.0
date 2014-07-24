Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 630F1E0078E; Thu, 24 Jul 2014 06:29:50 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C23A8E006B7
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 06:29:43 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1XAJ5Y-0000fu-6M
	for yocto@yoctoproject.org; Thu, 24 Jul 2014 15:29:40 +0200
Received: from 115.248.23.130 ([115.248.23.130])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 15:29:40 +0200
Received: from babu.anoop by 115.248.23.130 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 15:29:40 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Anoop <babu.anoop@gmail.com>
Date: Thu, 24 Jul 2014 13:29:29 +0000 (UTC)
Message-ID: <loom.20140724T152609-283@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 115.248.23.130 (Mozilla/5.0 (Windows NT 6.1;
	WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153
	Safari/537.36)
Subject: Bitbake error for rpm-native -- do compile failed
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
X-List-Received-Date: Thu, 24 Jul 2014 13:29:50 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


bitbake for imx6qsabreauto

command used 
bitbake -v tizen-common-core-image-minimal-dev

Summary: 1 task failed:
  virtual:native:/home/sfm/yocto_temp/meta-tizen/recipes-
tizen/rpm/rpm_git.bb, do_compile

+ CPPFLAGS=-isystem/home/sfm/yocto_temp/build/tmp/sysroots/i686-
linux/usr/include -I/home/sfm/yocto_temp/build/tmp/sysroots/i686-
linux/usr/include/nss3 
+ export CPPFLAGS
+ export LDFLAGS=-L/home/sfm/yocto_temp/build/tmp/sysroots/i686-
linux/usr/lib -L/home/sfm/yocto_temp/build/tmp/sysroots/i686-linux/lib -Wl,-
rpath-link,/home/sfm/yocto_temp/build/tmp/sysroots/i686-linux/usr/lib -Wl,-
rpath-link,/home/sfm/yocto_temp/build/tmp/sysroots/i686-linux/lib -Wl,-
rpath,/home/sfm/yocto_temp/build/tmp/sysroots/i686-linux/usr/lib -Wl,-
rpath,/home/sfm/yocto_temp/build/tmp/sysroots/i686-linux/lib -Wl,-O1 -Wl,-
Bsymbolic-functions -ffunction-sections
+ export CCFLAGS+= -fPIC 
/home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-
r0/temp/run.do_compile.26826: 120: export: CCFLAGS+: bad variable name
+ bb_exit_handler
+ ret=2
+ echo WARNING: exit code 2 from a shell command.
WARNING: exit code 2 from a shell command.
+ exit 2

ERROR: Function failed: do_compile (log file is located at 
/home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-
r0/temp/log.do_compile.26826)


*****do compile log file*****
DEBUG: Executing shell function do_compile
+ 
cd
 /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-r0/git


+ 
do_compile


+ 
cd
 /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-r0/git


+ 
LANG=C


+ 
export
 LANG


+ 
unset
 DISPLAY


+ 
LD_AS_NEEDED=1


+ 
export
 LD_AS_NEEDED


+ 
pkg-config
 --cflags
 nss


+ CPPFLAGS=-isystem/home/sfm/yocto_temp/build/tmp/sysroots/i686-
linux/usr/include -I/home/sfm/yocto_temp/build/tmp/sysroots/i686-
linux/usr/include/nss3 
+ export CPPFLAGS
+ export LDFLAGS=-L/home/sfm/yocto_temp/build/tmp/sysroots/i686-
linux/usr/lib -L/home/sfm/yocto_temp/build/tmp/sysroots/i686-linux/lib -Wl,-
rpath-link,/home/sfm/yocto_temp/build/tmp/sysroots/i686-linux/usr/lib -Wl,-
rpath-link,/home/sfm/yocto_temp/build/tmp/sysroots/i686-linux/lib -Wl,-
rpath,/home/sfm/yocto_temp/build/tmp/sysroots/i686-linux/usr/lib -Wl,-
rpath,/home/sfm/yocto_temp/build/tmp/sysroots/i686-linux/lib -Wl,-O1 -Wl,-
Bsymbolic-functions -ffunction-sections
+ export CCFLAGS+= -fPIC 
/home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-
r0/temp/run.do_compile.26826: 120: export: CCFLAGS+: bad variable name
+ bb_exit_handler
+ ret=2
+ echo WARNING: exit code 2 from a shell command.
WARNING: exit code 2 from a shell command.
+ exit 2

+ cd /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-r0/git
+ do_compile
+ cd /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-r0/git
+ LANG=C
+ export LANG
+ unset DISPLAY
+ LD_AS_NEEDED=1
+ export LD_AS_NEEDED
+ pkg-config --cflags nss
+ CPPFLAGS=-isystem/home/sfm/yocto_temp/build/tmp/sysroots/i686-
linux/usr/include -I/home/sfm/yocto_temp/build/tmp/sysroots/i686-
linux/usr/include/nss3 
+ export CPPFLAGS
+ export LDFLAGS=-L/home/sfm/yocto_temp/build/tmp/sysroots/i686-
linux/usr/lib -L/home/sfm/yocto_temp/build/tmp/sysroots/i686-linux/lib -Wl,-
rpath-link,/home/sfm/yocto_temp/build/tmp/sysroots/i686-linux/usr/lib -Wl,-
rpath-link,/home/sfm/yocto_temp/build/tmp/sysroots/i686-linux/lib -Wl,-
rpath,/home/sfm/yocto_temp/build/tmp/sysroots/i686-linux/usr/lib -Wl,-
rpath,/home/sfm/yocto_temp/build/tmp/sysroots/i686-linux/lib -Wl,-O1 -Wl,-
Bsymbolic-functions -ffunction-sections
+ export CCFLAGS+= -fPIC 
/home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-
r0/temp/run.do_compile.26826: 120: export: CCFLAGS+: bad variable name
+ bb_exit_handler
+ ret=2
+ echo WARNING: exit code 2 from a shell command.
WARNING: exit code 2 from a shell command.
+ exit 2
ERROR: Function failed: do_compile (log file is located at 
/home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-
r0/temp/log.do_compile.26826)

Request inputs to resolve this error


