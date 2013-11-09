Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B325E0178A
	for <yocto@yoctoproject.org>; Sat,  9 Nov 2013 02:09:38 -0800 (PST)
Received: from [173.34.6.101] (port=56419 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Vf5Tx-0008MZ-Js; Sat, 09 Nov 2013 05:09:33 -0500
Date: Sat, 9 Nov 2013 05:09:28 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311090504360.18437@oneiric>
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
Subject: i think the explanation of "Build Directory" in dev manual is wrong
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
X-List-Received-Date: Sat, 09 Nov 2013 10:09:43 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  here:

http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#yocto-project-terms

explanation of "Build Directory", one reads (start quote):

Provide a directory path and specifically name the build directory.
This next example creates a Build Directory named YP-11.0.0 in your
home directory within the directory mybuilds. If mybuilds does not
exist, the directory is created for you:

     $ source poky-tbd-11.0.0/oe-init-build-env $HOME/mybuilds/YP-11.0.0

Provide an existing directory to use as the Build Directory and use
the default build name.

     $ source poky-tbd-11.0.0/oe-init-build-env $HOME/mybuilds/

 === end quote ===

  i don't think either of those is correct, are they? pretty sure that
oe-init-build-env *doesn't* create intermediate directories and, in
that second example, wouldn't that just use ~/mybuilds as the build
directory? i don't foresee a default build name subdirectory being
created there. or am i just confused?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

