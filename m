Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC081E0049A
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 10:03:13 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:45107 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1T0F5k-0003yo-04
	for yocto@yoctoproject.org; Sat, 11 Aug 2012 13:03:12 -0400
Date: Sat, 11 Aug 2012 13:03:08 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1208111301170.5438@oneiric>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
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
Subject: under what circumstances is BBCLASSEXTEND = "native" required in a recipe?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 11 Aug 2012 17:03:14 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


[aside:  i just tried to post to oe-core list but it bounced, and
since this involves the yocto QS guide, i figured i'd use the yocto
list as plan B.]

  kind of a followup from my earlier (oe-core) post but i'm a bit
puzzled as to the *necessity* of a recipe including the line:

  BBCLASSEXTEND = "native"

my original understanding (which could be wildly inaccurate) was that
this line meant that that recipe had support for being built natively;
as in, it was required on the build host.  so far, so good?

  but in the yocto quick start guide:

http://www.yoctoproject.org/docs/latest/yocto-project-qs/yocto-project-qs.html

you read about "The Packages", which allegedly represents the packages
the developer is *required* to have on his development host, based on
the developer *installing* those packages, which is what leads to my
confusion.

  for example, the QS guide claims that "chrpath" is required, and
that one is expected to install that command using whatever
distro-specific command is necessary.  that command is listed in
in meta/classes/sanity.bbclass in SANITY_REQUIRED_UTILITIES, so that
seems reasonable.

  however, the "chrpath" command is not listed in bitbake as part of
ASSUME_PROVIDED, and its recipe includes the line

  BBCLASSEXTEND = "native"

that's what's confusing -- if the QS guide demands that the user
install "chrpath" manually, what is the subsequent value of its recipe
dictating that it be natively buildable?

  clarification, please?

rday


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

