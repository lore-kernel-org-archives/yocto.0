Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4846E013C9
	for <yocto@yoctoproject.org>; Sat, 10 Mar 2012 02:35:49 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S6JeO-0006ho-P5
	for yocto@yoctoproject.org; Sat, 10 Mar 2012 05:35:48 -0500
Date: Sat, 10 Mar 2012 05:35:43 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1203100523020.26289@oneiric>
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
Subject: how to set up PREMIRRORS_prepend to avoid constant git clones?
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
X-List-Received-Date: Sat, 10 Mar 2012 10:35:50 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  over the years, i've built up a sizable collection of source
tarballs for use in various projects -- top-level directory called
"~/dl", about 5G in size with lots and lots of .tgz and .bz2 files and
so on, and i'd like to confirm the best way to take advantage of all
that source whenever i configure and build a yocto project.

  based on my reading, whenever i create a new project, i immediately
add the following to the bottom of its local.conf file:

PREMIRRORS_prepend = "\
git://.*/.* file:///home/rpjday/dl/ \n \
svn://.*/.* file:///home/rpjday/dl/ \n \
cvs://.*/.* file:///home/rpjday/dl/ \n \
ftp://.*/.* file:///home/rpjday/dl/ \n \
http://.*/.* file:///home/rpjday/dl/ \n \
https://.*/.* file:///home/rpjday/dl/ \n"

and that certainly makes a massive difference -- whenever the fetching
starts, matching tarballs will be located in my "dl" directory, and
the project's downloads directory will be populated with symlinks to
the actual tarballs, as in:

  vala-0.14.2.tar.xz -> /home/rpjday/dl/vala-0.14.2.tar.xz

and after the download, i sneak a peek at whatever newer tarballs
needed to be downloaded, and quietly copy them over to "dl" to avoid
ever downloading them again, and that's worked well so far.  so, the
questions:

1) does this sound reasonable?  i know about using DL_DIR and perhaps
sharing that across projects, but i rather like the idea of an
application-agnostic repository of straight tarballs and zip files
that any build system is allowed to pilfer from (especially since i
can make it read-only).

2) am i missing any fetch protocols from that list?

3) how do i set it up to avoid repeated git clones?

  it seems that, while i can avoid fetching simple tarballs, i still
end up doing the same "git clone" operations over and over.  am i just
missing something obvious?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================



