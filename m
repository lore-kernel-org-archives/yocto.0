Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AC69E0054F
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2011 11:59:41 -0700 (PDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RLIPh-0003Gv-Sy
	for yocto@yoctoproject.org; Tue, 01 Nov 2011 13:46:17 -0400
Date: Tue, 1 Nov 2011 13:46:00 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1111011341350.9089@localhost6.localdomain6>
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
Subject: many "pkgconfig is needed" errors when building core-image-sato-dev for beagle
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
X-List-Received-Date: Tue, 01 Nov 2011 18:59:42 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  i'm sure there's a simple solution for this but i'm building
core-image-sato-dev for the beagleboard on my 64-bit ubuntu system
and the build eventually fails with *numerous* errors of the form:

Processing ...something...-dev:
   error: Failed dependencies:
   pkgconfig is needed ...
   pkgconfig is needed ...
   ... etc etc ...

there are *pages* of that type of output for multiple tasks (the build
of core-image-sato worked fine).

  i suspect the solution is something along the lines of this patch by
tom zanussi:

http://comments.gmane.org/gmane.linux.embedded.yocto.general/2716

but i'm not sure where to make the change.  suggestions?

rday


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

