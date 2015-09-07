Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49717E00D2B; Mon,  7 Sep 2015 07:05:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6FFEE0053A
	for <yocto@yoctoproject.org>; Mon,  7 Sep 2015 07:05:13 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1ZYx2f-00049z-6l
	for yocto@yoctoproject.org; Mon, 07 Sep 2015 16:05:05 +0200
Received: from gate.leotel.co.uk ([212.13.206.154])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 07 Sep 2015 16:05:05 +0200
Received: from Nicholas.Dounetas by gate.leotel.co.uk with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 07 Sep 2015 16:05:05 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Nicholas Dounetas <Nicholas.Dounetas@leotel-software.co.uk>
Date: Mon, 7 Sep 2015 14:00:40 +0000 (UTC)
Message-ID: <loom.20150907T155502-188@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 212.13.206.154 (Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:40.0) Gecko/20100101 Firefox/40.0)
Subject: Building the VAR-SOM-AM33 Yocto image - Error
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
X-List-Received-Date: Mon, 07 Sep 2015 14:05:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi,

I am trying to build the VAR-SOM-AM33 Yocto image and I get the 
following error:

| ERROR: oe_runmake failed
| WARNING: Can't find stubs-32.h, but usually need it to build 
32-bit libpseudo.
| WARNING: If the build fails, install 32-bit developer packages.
| WARNING: If you are using 32-bit binaries, the 32-bit libpseudo 
is NOT
optional.
| ERROR: Function failed: do_compile (log file is located at
/local/ndounetas/yocto/tmp-external-linaro-toolchain/work/
x86_64-linux/pseudo-native/1.6.2-r0/temp/log.do_compile.19031)
ERROR: Task 69
(virtual:native:/Projects/ndounetas/DIVAR/yocto_varsomam33/
tisdk/sources/oe-core/meta/recipes-devtools/pseudo/pseudo_1.6.2.bb,
do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 158 tasks of which 152 didn't need 
to be rerun and 1 failed.
NOTE: Writing buildhistory
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
 
virtual:native:/Projects/ndounetas/DIVAR/yocto_varsomam33/
tisdk/sources/oe-core/meta/recipes-devtools/pseudo/
pseudo_1.6.2.bb,
do_compile
Summary: There was 1 ERROR message shown, returning a non-zero 
exit code.

Any ideas what is going wrong?

Thanks


