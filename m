Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECBAEE00D9F; Tue, 20 Dec 2016 03:29:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.206.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp685.redcondor.net (smtp685.redcondor.net [208.80.206.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3508DE00D8B
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2016 03:29:04 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp685.redcondor.net ({20c8e40f-6b6c-4c9e-abff-1640ea7bf404})
	via TCP (outbound) with ESMTPS id 20161220112903260_0685
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2016 03:29:03 -0800
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [216.191.234.70] (port=12939 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cJIbJ-0002vb-9n
	for yocto@yoctoproject.org; Tue, 20 Dec 2016 06:28:57 -0500
Date: Tue, 20 Dec 2016 06:27:35 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1612200615540.5678@localhost.localdomain>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: questions about KBUILD_DEFCONFIG explanation in kernel-dev manual
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
X-List-Received-Date: Tue, 20 Dec 2016 11:29:06 -0000
Content-Type: text/plain; charset=US-ASCII


  (yes, i really am digging through the user guides these days ...)

from kernel-dev manual, section 2.2.4:

  "To specify an "in-tree" defconfig file, edit the recipe that builds
   your kernel so that it has the following command form:

     KBUILD_DEFCONFIG_KMACHINE ?= defconfig_file

   You need to append the variable with KMACHINE and then supply the
   path to your "in-tree" defconfig file."

first, i'm going to tag the "KMACHINE" part above with
<replaceable>, since it pretty clearly needs it.

  next, you need to "supply the path" to the defconfig file? uh, don't
you just need to give the simple name of the in-tree defconfig file
you want to use as it is somewhere under arch/<arch>/configs in the
kernel source tree? here's a snippet from the meta-altera layer:

   KBUILD_DEFCONFIG ?= "socfpga_defconfig"
   KBUILD_DEFCONFIG_stratix10swvp ?= "defconfig"
   KBUILD_DEFCONFIG_10m50 ?= "10m50_defconfig"

seems like one needs just the name of the defconfig file to be used,
there's no concept of needing a "path" to the file, is there?

  next, it appears that one does *not* "need to append the variable
with KMACHINE", given one of the lines from meta-altera above, is that
correct? this just sets a default, no?

   KBUILD_DEFCONFIG ?= "socfpga_defconfig"

  and finally, must all defconfig files identified via
KBUILD_DEFCONFIG be an "in-tree" file? i ask since this line above:

   KBUILD_DEFCONFIG_stratix10swvp ?= "defconfig"

is potentially confusing, and might make someone perusing the source
to think that's an alternative way to point at their "out-of-tree"
defconfig file. but it's not, is it?

  i checked that machine type, and it's armv8, so i'm *assuming* that
line would refer to the in-tree file arch/arm64/configs/defconfig, is
that right?

  i think that will do it for now.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


