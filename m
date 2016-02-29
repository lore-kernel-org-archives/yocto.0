Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E39FE00ADD; Mon, 29 Feb 2016 15:21:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 200 seconds by postgrey-1.32 at yocto-www;
	Mon, 29 Feb 2016 15:21:30 PST
Received: from smtp486.redcondor.net (smtp486.redcondor.net [208.80.204.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8AD9E00AAF
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 15:21:30 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20160229231758750_0486
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 23:17:58 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [127.0.0.1] (port=56991 helo=localhost)
	by astoria.ccjclearline.com with esmtpa (Exim 4.80)
	(envelope-from <rpjday@crashcourse.ca>) id 1aaX5s-0004kf-VK
	for yocto@yoctoproject.org; Mon, 29 Feb 2016 18:19:13 -0500
Received: from 99.240.204.5 ([99.240.204.5]) by astoria.ccjclearline.com
	(Horde Framework) with HTTP; Mon, 29 Feb 2016 18:19:12 -0500
Message-ID: <20160229181912.2795661i683s2v40@astoria.ccjclearline.com>
Date: Mon, 29 Feb 2016 18:19:12 -0500
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: yocto@yoctoproject.org
MIME-Version: 1.0
User-Agent: Internet Messaging Program (IMP) H3 (4.3.11)
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: how to organize my patches for multiple kernels and multiple target boards?
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
X-List-Received-Date: Mon, 29 Feb 2016 23:21:37 -0000
Content-Type: text/plain;
 charset=ISO-8859-1;
 DelSp="Yes";
 format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

   (i posted a much lengthier version of this on oe-core recently, but i want
to cut it down and ask specific questions to clarify what i *think* is going
on.)

   i want to pull in an existing layer with recipes for linux-4.0.bb  
and linux-4.1.bb, and extend them with .bbappend files, to support two  
closely-related
machines i'm defining -- call them "mach1" and "mach2". AFAICT, my  
patches will
fall somewhere in a 3x3 matrix of possibilities:

   * 3 possibilities of applying against mach1, mach2 or both
   * 3 possibilities of applying against linux-4.0, linux-4.1 or both

so there's my 3x3 matrix.

   the obvious kernel recipe directory structure would be:

   linux/
     linux-4.0.bbappend
     linux-4.1.bbappend
     linux-4.0/            [4.0-specific patches]
     linux-4.1/            [4.1-specific patches]
     linux/                [patches that apply to both]

which suggests that both my .bbappend files would have to contain the line:

   FILESEXTRAPATHS_prepend := "${THISDIR}/${BP}:${THISDIR}/${BPN}"

so the SRC_URI search path for linux-4.0.bbappend entries would be
prepended with:

   * linux-4.0/        [4.0-specific patches]
   * linux/            [patches that apply to both]

and similarly for linux.4.1.bbappend. how am i doing so far? this would
mean that, for each recipe, the more specific directory would be searched
before the general directory. but wait ... there's more.

   now i want to further categorize patches based on exclusive to mach1,
exclusive to mach2, or applicable to both, and since the machine name is
one of the entries in FILESOVERRIDES, i can extend the directory structure
as:

   linux-4.0/
     mach1/
     mach2/
   linux-4.1/
     mach1/
     mach2/
   linux/
     mach1/
     mach2/

and there's my 3x3 matrix of patches, correct? and here's where it gets
unclear.

   i really don't want to have to number all my patches with prefixes like
0001-, 0002- and so on, so what is the ordering of processing for .scc,
.cfg and .patch/.diff files? rather than just lump all the patches into
a single .scc file, i want to refine the patches across multiple .scc
files. is there an imposed order on SRC_URI entries, .scc files and so
on? that's probably all i need to finish this off.

rday




