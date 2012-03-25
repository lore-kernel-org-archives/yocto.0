Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AF42E013A8
	for <yocto@yoctoproject.org>; Sun, 25 Mar 2012 10:23:31 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SBrAA-0001ZF-4s
	for yocto@yoctoproject.org; Sun, 25 Mar 2012 13:23:30 -0400
Date: Sun, 25 Mar 2012 13:23:21 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1203251319170.24022@oneiric>
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
Subject: does a meta-intel (sub)layer require adding the meta-intel layer to bblayers.conf?
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
X-List-Received-Date: Sun, 25 Mar 2012 17:23:31 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  again, a discrepancy between the docs and the source files.  i
checked out the entire meta-intel layer, and below that the file
meta-crownbay/README clearly states:

"Having done that, and assuming you extracted the BSP tarball contents
at the top-level of your yocto build tree, you can build a crownbay
image by adding the location of the meta-crownbay layer to
bblayers.conf, along with the meta-intel layer itself (to access
common metadata shared between BSPs) e.g.:

  yocto/meta-intel \
  yocto/meta-intel/meta-crownbay \"

  however, the ref manual, Section 4.1, "BSP Layers", suggests only:

     BBLAYERS = " \
        /usr/local/src/yocto/meta \
        /usr/local/src/yocto/meta-yocto \
        /usr/local/src/yocto/meta-<bsp_name> \
        "

note no mention of including "meta-intel" layer.  clarification?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

