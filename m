Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98148E0030B
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 07:50:36 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S2lnX-0002Hh-Us
	for yocto@yoctoproject.org; Wed, 29 Feb 2012 10:50:36 -0500
Date: Wed, 29 Feb 2012 10:50:30 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1202291046100.31971@oneiric>
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
Subject: worth adding PREMIRRORS_prepend note to QS guide?
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
X-List-Received-Date: Wed, 29 Feb 2012 15:50:36 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  just starting to go thru the thread regarding the QS guide and i
have to agree that there's probably too much lead-in when the people
reading the QS guide are probably competent enough to just want the
recipe, so it should be shorter.

  having said that, i think there is a note that should be *added*,
and that's telling users how to add something like this to their
local.conf:

PREMIRRORS_prepend = "\
git://.*/.* file:///home/rpjday/dl/ \n \
svn://.*/.* file:///home/rpjday/dl/ \n \
cvs://.*/.* file:///home/rpjday/dl/ \n \
ftp://.*/.* file:///home/rpjday/dl/ \n \
http://.*/.* file:///home/rpjday/dl/ \n \
https://.*/.* file:///home/rpjday/dl/ \n"

  if people are showing up at yocto having worked with build systems
like OE and angstrom, they probably already have a sizable directory
of tarballs they can take advantage of, but the QS guide gives them no
advice on how to do that.

  i think a note on how to do that would be useful.  experienced users
would immediately realize its value and take advantage of it, while
users without that kind of background would realize it doesn't apply
to them, skip it and carry on.

  thoughts?  anyway, i'm about to do another pass thru the QS guide so
prepare for pedantry.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

