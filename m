Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63EB7E0049F
	for <yocto@yoctoproject.org>; Sat, 15 Dec 2012 03:56:23 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:59054 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TjqLu-00066m-LC
	for yocto@yoctoproject.org; Sat, 15 Dec 2012 06:56:22 -0500
Date: Sat, 15 Dec 2012 06:56:18 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1212150649380.1381@oneiric>
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
Subject: sometimes, the documentation is a bit too verbose and redundant
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
X-List-Received-Date: Sat, 15 Dec 2012 11:56:23 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  a general observation about something i've noticed about the yocto
docs in places.  here's an example from the ADT manual, section
2.1.1.1:

"The following example commands download the Poky tarball, set up the
Source Directory, set up the environment while also creating the
default Build Directory, and run the bitbake command that results in
the tarball
~/yocto-project/build/tmp/deploy/sdk/adt_installer.tar.bz2:

     $ cd ~
     $ mkdir yocto-project
     $ cd yocto-project
     $ wget http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/poky-tbd-8.0.tar.bz2
     $ tar xjf poky-tbd-8.0.tar.bz2
     $ source poky-tbd-8.0/oe-init-build-env
     $ bitbake adt-installer"

  it would seem that if someone is at this point, it's simply
superfluous to be explaining how to create a new build directory and
download a tarball, and untar it, and source the environment script --
that's just a lot of clutter.  the only relevant line there is:

 $ bitbake adt-installer

everything above that can be deleted, and the ADT manual can open with
a simple list of prerequisites a reader is expected to understand,
with a link if they don't.

  thoughts?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

