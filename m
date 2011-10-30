Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 482BBE0134F
	for <yocto@yoctoproject.org>; Sun, 30 Oct 2011 07:40:40 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.2.77] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RKWYw-0001Aj-BW
	for yocto@yoctoproject.org; Sun, 30 Oct 2011 10:40:38 -0400
Date: Sun, 30 Oct 2011 10:40:18 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1110301034330.32366@localhost6.localdomain6>
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
Subject: any objection to adding a PREMIRRORS section to the QS guide?
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
X-List-Received-Date: Sun, 30 Oct 2011 14:40:40 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  perhaps outside the scope of QS, but might it be worth adding a
short section on appending something like this to one's local.conf
file before starting the download?

PREMIRRORS_prepend = "\
git://.*/.* file:///home/rpjday/dl/ \n \
svn://.*/.* file:///home/rpjday/dl/ \n \
cvs://.*/.* file:///home/rpjday/dl/ \n \
ftp://.*/.* file:///home/rpjday/dl/ \n \
http://.*/.* file:///home/rpjday/dl/ \n \
https://.*/.* file:///home/rpjday/dl/ \n"

  the rationale is that, like myself, a number of people could be
coming to yocto from OE and already have a sizable downloads directory
somewhere on their system that they want to take advantage of and,
with the above, if my downloads directory is up to date, i end up not
having to download a single tarball from the net.

  thoughts?  is the above relatively complete or is there anything
else i would want to add to that variable?  and, again, is it worth
adding a side reference to that for people who could take advantage
of it?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

