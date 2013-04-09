Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB522E00597
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 05:45:54 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:54994 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UPXvt-0006jQ-Vr
	for yocto@yoctoproject.org; Tue, 09 Apr 2013 08:45:54 -0400
Date: Tue, 9 Apr 2013 08:45:51 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1304090833380.5655@oneiric>
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
Subject: i think the list of "required software" needs to be clarified
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
X-List-Received-Date: Tue, 09 Apr 2013 12:45:55 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  i know i've mentioned this before, but it's still somewhat confusing
if a new yocto user wants to figure out *exactly* what he or she must
install manually on a yocto development host.

  there are a pile of web pages that claim to explain this:

http://www.yoctoproject.org/docs/latest/yocto-project-qs/yocto-project-qs.html
http://www.openembedded.org/index.php?title=OEandYourDistro
http://www.openembedded.org/index.php?title=Required_software
http://www.yoctoproject.org/docs/1.4/ref-manual/ref-manual.html#required-packages-for-the-host-development-system

but they're inconsistent, and the bigger issue is this in
bitbake.conf:

  ASSUME_PROVIDED = "\
    bzip2-native \
    chrpath-native \
    git-native \
    grep-native \
    diffstat-native \
    patch-native \
    perl-native-runtime \
    python-native-runtime \
    tar-native \
    virtual/libintl-native \
    "
  # gzip-native should be listed above?

it would *seem* that, for efficiency, the build process should take
far more advantage of already-installed native packages. the above
list is kind of weird in its selective inconsistency -- why is git
there but not subversion? why is bzip2 but (as you can read) not gzip?

  in addition, some of the above links insist that you need to
install (for instance) m4, but it's obvious that m4 is going to be
downloaded and built for you.  the same with quilt, i believe.

  anyway, you get the idea. i think it was tom z(?) who explained once
that downloading and building even some natively-installed tools made
Q/A easier, and that's certainly true. but it would also be useful,
for efficiency, to at least *suggest* to readers what native tools
they might take advantage of, with a minimum supported version of
each.

  thoughts?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

