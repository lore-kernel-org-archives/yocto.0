Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 831EFE0030B
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2012 02:51:39 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S5xQA-00078f-Pt
	for yocto@yoctoproject.org; Fri, 09 Mar 2012 05:51:38 -0500
Date: Fri, 9 Mar 2012 05:51:32 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1203090547080.16743@oneiric>
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
Subject: contradictory explanations of IMAGE_INSTALL in yocto manuals
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
X-List-Received-Date: Fri, 09 Mar 2012 10:51:39 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  (i posted something regarding this on the oe-core list, but i wanted
to post here as well with specific examples from the yocto manuals.)

  from the yocto dev manual, section 4.3.1:

"The other method for creating a custom image is to modify an existing
image. For example, if a developer wants to add strace into the
core-image-sato image, they can use the following recipe:

     require core-image-sato.bb

     IMAGE_INSTALL += "strace"

  however, here's the discussion of IMAGE_INSTALL in the poky ref
manual in the variables glossary:

"Using IMAGE_INSTALL with the += operator from the /conf/local.conf
file or from within an image recipe is not recommended as it can cause
ordering issues."

... and that explanation goes on to recommend using
IMAGE_INSTALL_append instead.  that inconsistency should be cleared
up.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

