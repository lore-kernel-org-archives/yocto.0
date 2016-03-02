Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6ECD8E00D68; Wed,  2 Mar 2016 06:21:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [208.80.204.84 listed in list.dnswl.org]
Received: from smtp484.redcondor.net (smtp484.redcondor.net [208.80.204.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5BE5E00D5F
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 06:21:37 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20160302142136392_0484
	for <yocto@yoctoproject.org>; Wed, 02 Mar 2016 14:21:36 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [127.0.0.1] (port=34329 helo=localhost)
	by astoria.ccjclearline.com with esmtpa (Exim 4.80)
	(envelope-from <rpjday@crashcourse.ca>) id 1ab7fu-0006Yt-D3
	for yocto@yoctoproject.org; Wed, 02 Mar 2016 09:22:50 -0500
Received: from 216.191.234.70 ([216.191.234.70]) by
	astoria.ccjclearline.com (Horde Framework) with HTTP; Wed, 02 Mar 2016
	09:22:50 -0500
Message-ID: <20160302092250.86651hrgh71xijb4@astoria.ccjclearline.com>
Date: Wed, 02 Mar 2016 09:22:50 -0500
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: yocto@yoctoproject.org
MIME-Version: 1.0
User-Agent: Internet Messaging Program (IMP) H3 (4.3.11)
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: what's the recommended way to extend FILESOVERRIDES to add a powerpc CPU?
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
X-List-Received-Date: Wed, 02 Mar 2016 14:21:41 -0000
Content-Type: text/plain;
 charset=ISO-8859-1;
 DelSp="Yes";
 format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

   currently working on a layer for building for three powerpc-based  
target boards:

   * mach1 (8260-based)
   * mach2, mach3 (8360-based)

i wanted to use FILESOVERRIDES to be able to distinguish between patches
that were:

   * machine-specific
   * CPU-specific (8260 or 8360)
   * common across all powerpc targets

however, a quick check shows me that TRANSLATED_TARGET_ARCH contains
only "powerpc", so that FILESOVERRIDES starts with:

   "powerpc:machine-name:..."

in short, with the *default* powerpc recipes, i can't define patches
that are specific to a processor, only to powerpc (redundant) or to
only a single machine.

   i can, of course, hack either of those two variables and cram an extra
field in there, but is there a *recommended* way to do this so that
i don't feel i have to take a shower afterwards?

rday



