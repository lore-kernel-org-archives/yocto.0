Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 277D7E00D6E; Sun, 20 Sep 2015 05:21:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34B9CE00A81
	for <yocto@yoctoproject.org>; Sun, 20 Sep 2015 05:21:42 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Zddce-0007Xj-PA
	for yocto@yoctoproject.org; Sun, 20 Sep 2015 14:21:36 +0200
Received: from ppp-2-86-165-4.home.otenet.gr ([2.86.165.4])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sun, 20 Sep 2015 14:21:36 +0200
Received: from gmane by ppp-2-86-165-4.home.otenet.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sun, 20 Sep 2015 14:21:36 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sun, 20 Sep 2015 15:21:27 +0300
Message-ID: <mtm8c8$ee9$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp-2-86-165-4.home.otenet.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
Subject: core-image-minimal + ARCHIVER_MODE[src] = xxx
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
X-List-Received-Date: Sun, 20 Sep 2015 12:21:44 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

With poky 1.8 I try to generate files for license compliance.

=====

add to local.conf:

INHERIT += "archiver"
ARCHIVER_MODE[src] = "original"

seems the only case which builds.

=====

I would like to use

ARCHIVER_MODE[src] = "configured"

and get:

NOTE: Preparing RunQueue
ERROR: Task do_ar_configured in
/tmp/yocto-autobuilder/yocto-autobuilder/yocto-worker/custom-fido-phyboard-wega-am335x-1-core-image-minimal/build/meta/recipes-devtools/gcc/gcc-source_4.9.bb
depends upon non-existent task do_configure in
/tmp/yocto-autobuilder/yocto-autobuilder/yocto-worker/custom-fido-phyboard-wega-am335x-1-core-image-minimal/build/meta/recipes-devtools/gcc/gcc-source_4.9.bb

=========


with:

ARCHIVER_MODE[src] = "patched"

I get:

different issues, looks like race conditions in the build.
Need to investigate this further.

=========

Am I missing something?
Does anybody else see similar issues?

Regards,

Robert..."Rules of Optimization: Rule1: Don't do it. Rule 2 (for experts
only): Don't do it yet." - M.A. Jackson (not the singer)

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



