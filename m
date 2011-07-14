Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id C21994C800AB
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 16:32:30 -0500 (CDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1QhTWH-0007in-9U
	for yocto@yoctoproject.org; Thu, 14 Jul 2011 17:32:29 -0400
Date: Thu, 14 Jul 2011 17:32:21 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1107141729570.7692@localhost6.localdomain6>
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
Subject: why does quick start guide refer to non-provided "poky-image-sato"?
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
X-List-Received-Date: Thu, 14 Jul 2011 21:32:31 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  maybe i'm misreading something, but the yocto QS guide provides the
sample command:

  $ bitbake -k poky-image-sato

however, nothing provides that target.  i can see the git log entry:

commit 1947b17478187bb623da74484747e470ce42d206
Author: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date:   Tue May 10 12:50:36 2011 -0500

    documentation/yocto-project-qs/yocto-project-qs.xml: changed build command

    The command used in the example to build an image was using
    'bitbake core-image-sato', which is only available in master and
    not Bernard.  So, I changed the command to be 'bitbake poky-image-sato'
    at Dave Stewart's request.  He located and pointed out the error.

    (From yocto-docs rev: 3fa83550aaec5a3549825814a77fa7a823a2daea)

    Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

but it seems that "core-image-sato" is perfectly valid, at least at
the moment.  clarification?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

