Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C579E00B89; Fri,  4 Mar 2016 10:42:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp484.redcondor.net (smtp484.redcondor.net [208.80.204.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CC6FE00B37
	for <yocto@yoctoproject.org>; Fri,  4 Mar 2016 10:42:35 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20160304184229366_0484
	for <yocto@yoctoproject.org>; Fri, 04 Mar 2016 18:42:29 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [127.0.0.1] (port=49945 helo=localhost)
	by astoria.ccjclearline.com with esmtpa (Exim 4.80)
	(envelope-from <rpjday@crashcourse.ca>) id 1abuhU-00006W-OJ
	for yocto@yoctoproject.org; Fri, 04 Mar 2016 13:43:44 -0500
Received: from 99.240.204.5 ([99.240.204.5]) by crashcourse.ca (Horde
	Framework) with HTTP; Fri, 04 Mar 2016 13:43:44 -0500
Message-ID: <20160304134344.88104lm6kl2e8yo0@crashcourse.ca>
Date: Fri, 04 Mar 2016 13:43:44 -0500
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: yocto@yoctoproject.org
MIME-Version: 1.0
User-Agent: Internet Messaging Program (IMP) H3 (4.3.11)
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: recommended structure to design a layer for multiple kernels and somewhat-related machines?
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
X-List-Received-Date: Fri, 04 Mar 2016 18:42:36 -0000
Content-Type: text/plain;
 charset=ISO-8859-1;
 DelSp="Yes";
 format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

   i just want some confirmation that i'm on the right track for designing a
BSP layer to handle a particular combination of kernel versions and machines,
so all i'm after is mostly a, "yeah, that's how i'd do it," or a, "no,
that's idiotic."

   the situation -- handle all possible combinations of:

   * two kernel versions (say, 4.0 and 4.1)
   * three machines:
     * m1           (based on powerpc mpc8260)
     * m2a, m2b     (two closely related machines, based on mpc8360)

the additional wrinkle there is that, although there are three machines,
two of them are closely-related enough that there is the possibility that
.scc, .cfg or .patch files could apply in the following ways.

   first, they could apply to a specific version of the kernel, or to any
version. no problem, that's easy.

   regarding machines, those patches could possibly apply to:

   * a single, specific machine
   * all machines
   * just to the mpc8360-based machines

so here's my idea.

   in a linux.inc file, have the lines:

   FILESEXTRAPATHS_prepend := "${THISDIR}/${BP}:${THISDIR}/${BPN}:"

   MACHINEOVERRIDES_prepend_m2a = "mpc8360:"
   MACHINEOVERRIDES_prepend_m2b = "mpc8360:"

that first line obviously extends my search path based on the kernel
version to look in (say, for kernel 4.0) in:

   * linux-4.0/
   * linux/

those next two lines deal with the fact that, for powerpc in this case,
with:

FILESOVERRIDES=${TRANSLATED_TARGET_ARCH}:${MACHINEOVERRIDES}:${DISTROOVERRIDES}

   TRANSLATED_TARGET_ARCH = "powerpc"
   MACHINEOVERRIDES = "machine name"

so between the two of them, i want to sneak in "mpc8360" so that the search
order is specific machine, followed by the more general "mpc8360". sound good
so far?

next, for full flexibility, i can define three .bbappend files:

   * linux_4.1.bbappend
   * linux_4.0.bbappend
   * linux_%.bbappend

since (as bruce mentioned recently), *all* matching bbappend files will
be processed in the (hopefully) intuitive order. (not sure i'll need that
wildcard .bbappend file, but i'll keep it in reserve, just in case.)

   and, ***finally***, given all of the above, i'll have three directories
for SRC_URI items:

   * linux-4.1/
   * linux-4.0/
   * linux/

where each directory will have the internal substructure:

   * m1/
   * m2a/
   * m2b/
   * mpc8360/

given all of the above, i think i've covered every conceivable possibility
for when patches might be applied. have i missed anything? is there an
easier way to do this?

rday






