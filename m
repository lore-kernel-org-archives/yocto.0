Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DCCDE0078A; Tue, 26 Aug 2014 04:11:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.204.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp484.redcondor.net (smtp484.redcondor.net [208.80.204.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86FFCE0074B
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 04:11:13 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20140826111111843
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 11:11:11 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=43537 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XMEeX-00030v-OG
	for yocto@yoctoproject.org; Tue, 26 Aug 2014 07:11:05 -0400
Date: Tue, 26 Aug 2014 07:11:02 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1408260648030.28643@localhost>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: building a hierarchical poky variable glossary, noting what's missing
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
X-List-Received-Date: Tue, 26 Aug 2014 11:11:22 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  g'day, eh? for my own benefit (that is, for the sake of my upcoming
yocto project courses), i'm starting a topic-based poky variable
glossary, just so i can quickly display all of the variables related
to a particular topic.

  i know there's *some* of that in the ref manual here:

 http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#ref-varlocality

but i'm interested in a much more complete list and, more importantly,
i want to add chunks of code or explanations where i think it's
useful. i started one of those a while back, but i'm updating it now
and it's here (ignore everything below "----- OLD CONTENT, TO BE
DELETED -----"):

 http://www.crashcourse.ca/wiki/index.php/Poky_Variable_Glossary

and here are a couple features i'm adding that might be of interest to
other doc writers (like scott rifenbark).

  first, as i add more sections and variables, each variable will be
represented by a link to the (in-progress) ref manual entry, just so i
can take advantage of what already exists, so that's no big deal.

  next, in some cases, it's informative to grab some code or output
from grep to accompany the variable reference, such as what i do here
for the PARALLEL_MAKE* variables, just to show how they're being
used:

http://www.crashcourse.ca/wiki/index.php/Poky_Variable_Glossary#General_build_variables

this makes it really easy during class to show what some variables are
doing, and how to use them.

  finally, i can also note which variables aren't currently documented
in either the ref manual or in the meta/conf/documentation.conf file,
since that takes little extra time.

  here's an example documenting the variables that affect the final
size of the rootfs image:

http://www.crashcourse.ca/wiki/index.php/Poky_Variable_Glossary#Final_rootfs.2Fimage_size

first, as you can see, in some cases, it makes sense to reproduce the
code that uses all those variables so students see how they hang
together, after which i list the variables, and there are two
variations i'm using to show missing documentation.

  if there's no hyperlink (as with IMAGE_ROOTFS_MAXSIZE), that means
there is no entry for that variable in the poky reference manual, so
someone is welcome to add that.

  also, the string "{!doc}" means there's no entry for that variable
in the "documentation.conf" file so, once again, someone is welcome to
do something about that if they want.

  finally, in some cases, it's not clear whether a variable should be
documented anywhere if it's obvious it's being used only locally in a
recipe or class and is not meant to be manipulated by the developer.
here's an example:

 http://www.crashcourse.ca/wiki/index.php/Poky_Variable_Glossary#U-Boot

note in u-boot.inc the variable SPL_BINARY, then SPL_IMAGE and
SPL_SYMLINK which are calculated based on it. so which of these (if
any) deserve documentation? for now, i'm going with SPL_BINARY since
it's meant to be used by the developer (i even show show where), but
i'm leaving out the other two. it's all a judgment call.

  clearly, this is a long-term project but i'll add more sections on a
regular basis and try to keep things up to date. if there's a better
way to do this, i'm open to suggestions.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


