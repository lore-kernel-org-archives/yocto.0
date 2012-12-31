Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70209E011CC
	for <yocto@yoctoproject.org>; Mon, 31 Dec 2012 04:00:16 -0800 (PST)
Received: from cpebcc81008dd2c-cmbcc81008dd29.cpe.net.cable.rogers.com
	([99.253.156.71]:44407 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Tpe2R-0008E7-C7
	for yocto@yoctoproject.org; Mon, 31 Dec 2012 07:00:15 -0500
Date: Mon, 31 Dec 2012 07:00:08 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1212310649410.4755@oneiric>
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
Subject: a wiki page on packagegroups -- now correct, I think :-)
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
X-List-Received-Date: Mon, 31 Dec 2012 12:00:16 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  total redesign of a page i lashed together in about 45 minutes to
explain packagegroups since i feel it got short shrift in the yocto
dev manual:

http://www.crashcourse.ca/wiki/index.php/OE_package_groups

  note: my wiki pages are typically terse and consist mostly of
ripping code out of OE or elsewhere since i find this handy for
explaining concepts to students -- i actually bring up a wiki page and
start scrolling through it, explaining the code bit by bit, but i
don't add a lot of editorializing since *that's* what takes forever to
write.  but it's real easy to just copy and paste and build an
informative wiki page in minutes that i can spend an hour explaining.
:-)

  and one question while i'm here -- i notice the definition of a
number of package groups in core-image.bbclass:

... snip ...
PACKAGE_GROUP_x11 = "packagegroup-core-x11"
PACKAGE_GROUP_x11-base = "packagegroup-core-x11-base"
PACKAGE_GROUP_x11-sato = "packagegroup-core-x11-sato"
PACKAGE_GROUP_tools-debug = "packagegroup-core-tools-debug"
... snip ...

is that simply an equivalent way to include a package group into your
(core-image-based) build?  to use IMAGE_FEATURES?  as opposed to
simply referring to the packagegroup recipe file directly?  thanks.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

