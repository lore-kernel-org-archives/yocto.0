Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42C7EE01386
	for <yocto@yoctoproject.org>; Sun, 25 Mar 2012 03:16:56 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SBkVK-0003uE-IF
	for yocto@yoctoproject.org; Sun, 25 Mar 2012 06:16:54 -0400
Date: Sun, 25 Mar 2012 06:16:43 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1203250602350.25098@oneiric>
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
Subject: how to add a single package to an image, and the yocto FAQ
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
X-List-Received-Date: Sun, 25 Mar 2012 10:16:56 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  kind of a two-part nitpick but i was looking for where it was
documented how to simply add an existing package to an existing image
definition and that bit of info is frustratingly hard to find.  i
assumed that would be a blatantly obvious question for the ref manual
FAQ but, no, actually, it isn't there.  not really.

  if you check the FAQ:

file:///home/rpjday/yocto/yocto-docs/documentation/poky-ref-manual/poky-ref-manual.html#faq

what you get is exactly what is described in the foreword for the
subversion book:

http://www.visualsvn.com/support/svnbook/foreword/

hoping no one takes it personally but the current yocto ref manual FAQ
strikes me as *exactly* the kind of FAQ that was put together by
people who knew the answers to particular questions, and simply
defined those questions to be "frequently asked" because they knew
their answers.

  if i'm a beginner, one of the first questions i'd ask is something
like, "how can i bitbake a core-image-minimal, but tweak my local.conf
to add in an extra package that's not part of that image definition?"
and that's simply not there.  if i follow the FAQ, i end up here:

file:///home/rpjday/yocto/yocto-docs/documentation/poky-ref-manual/poky-ref-manual.html#idp1843008

then here:

http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#usingpoky-extend-addpkg

and if i keep reading, is this what i'm looking for?

http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#usingpoky-extend-customimage-localconf

  how is it that a question that obvious is simply not part of the
FAQ?   i can think of numerous questions that *should* be in that FAQ
and aren't.  is anyone keeping track of what questions people are
actually asking?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

