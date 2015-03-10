Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D822AE006E9; Tue, 10 Mar 2015 09:53:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A131E003A8
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 09:53:17 -0700 (PDT)
Received: from [99.240.204.5] (port=60624 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YVNPC-00058C-Gg
	for yocto@yoctoproject.org; Tue, 10 Mar 2015 12:53:18 -0400
Date: Tue, 10 Mar 2015 12:53:12 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1503101232170.12637@localhost>
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
Subject: pedantic observations on bitbake user manual (ch 1)
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
X-List-Received-Date: Tue, 10 Mar 2015 16:53:21 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  since bitbake is primarily under the YP banner these days, i'm just
going to throw out a number of observations on the current user
manual, and others can decide what to do about any of them. so without
further ado, chapter 1 cuz i'll break this into bite-size pieces ...

1.3.3 Classes

  "Class files, which are denoted by the .bbclass extension, contain
information that is useful to share between metadata files. The
BitBake source tree currently comes with one class metadata file
called base.bbclass. You can find this file in the classes directory.
The base.bbclass class files is special since it is always included
automatically for all recipes and classes. This class contains
definitions for standard basic tasks such as fetching, ..."

  this is slightly confusing since, if you check out bitbake directly
from its repo, then, yes, it has a single class file (base.bbclass),
but that file has very little functionality -- certainly nothing to do
with fetching, etc. OTOH, if you check out the poky repo, then, yes,
you get a base.bbclass file (and many other class files) that is far
more complete and defines basic fetching and so on.

  that subsection seems to conflate what you get if you check out
bitbake directly, versus what you get if you more typically check out
poky. and i think that's confusing since a later section talks about
how to obtain bitbake, and its first suggestion is "git clone." so i
think section 1.3.3 has the potential to confuse some readers.

1.4 Obtaining BitBake

  "Cloning BitBake: Using Git to clone the BitBake source code
repository is the recommended method for obtaining BitBake..."
                  ^^^^^^^^^^^

  it is? i would think that the recommended method is to check out
poky, which guarantees that the version of bitbake you get has been
Q/A tested against the other layers that come with it. i would think
that cloning bitbake from its repo is more for testers than regular
developers.

1.5.1 Usage and Syntax

  - needs to update output of "bitbake -h", there's a bit more being
printed these days.

1.5.2.1 Executing a Task Against a Single Recipe

  - seems contradictory, first says, "BitBake obeys inter-task
dependencies when doing so, then says, "The "-b" option explicitly
does not handle recipe dependencies."

  that will *definitely* confuse some readers.

1.5.2.2 Executing Tasks Against a Set of Recipe Files

  "This next example "PROVIDES" the package name and also uses the
"-c" option to tell BitBake to just execute the do_clean task:"

  AIUI, "-c" will also require outdated dependent tasks to be run as
well, no?  the way the above is worded doesn't read that way.

  that's it for chapter 1.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

