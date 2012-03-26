Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0EAEE013DC
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 04:53:35 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SC8UQ-0005iL-B2
	for yocto@yoctoproject.org; Mon, 26 Mar 2012 07:53:34 -0400
Date: Mon, 26 Mar 2012 07:53:25 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1203260747350.4275@oneiric>
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
Subject: can all of the licensing discussion be centralized in an appendix?
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
X-List-Received-Date: Mon, 26 Mar 2012 11:53:35 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  still clawing my way through the ref manual and it seems that
there's *way* too much coverage of licensing sprinkled throughout.
most people are not going to care about licensing until the time comes
to maybe start distributing their BSP.

  as it stands, in the *development* version of the ref manual,
section 3.4 is all about licensing, then ch 4 is essentially the BSP
guide where section 4.2.1 is "License Files" and all of section 4.3 is
"BSP Licensing Considerations."

  that just seems like too much licensing info that breaks up the flow
of the reference manual.  can all of that be moved to one location and
referenced from there?

rday

p.s.  i'm also not keen on an entire chapter of the ref manual being
nothing more than an include of the BSP guide.  if you've got a
perfectly respectable BSP guide, there's no point having it magically
appear as part of another manual.  but that's just my $0.02.

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

