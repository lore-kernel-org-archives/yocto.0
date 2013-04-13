Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FBB9E006C5
	for <yocto@yoctoproject.org>; Sat, 13 Apr 2013 08:20:19 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:51570 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UR2FW-0002iU-Bw
	for yocto@yoctoproject.org; Sat, 13 Apr 2013 11:20:18 -0400
Date: Sat, 13 Apr 2013 11:20:15 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1304131112290.9253@oneiric>
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
Subject: couple questions about kernel dev manual, section 2
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
X-List-Received-Date: Sat, 13 Apr 2013 15:20:19 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


 some oddities in section 2.2.1 of the current kernel dev manual.
first, there's:

"The append file should initially contain the following text:

     FILESEXTRAPATHS := "${THISDIR}/${PN}"

  i was under the impression that the standard line would be:

     FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

would it not? to make sure you can support potential layers on top of
layers, no?  if you absolutely *know* that won't happen, then, sure,
that will work, but i think the wording above is unnecessarily
restrictive.

  also, right underneath that, one reads:

"If you add any new files that modify the kernel recipe, you need to
place them in your layer in the following area:

     <your-layer>/recipes-kernel/linux/linux-yocto/"

IIRC, you *can* put them there but you don't *need* to. in fact, tom
zanussi's kernel labs place extra files simply under a "files/"
subdirectory (after setting FILESEXTRAPATHS to pick up that
directory). so, again, some wording that is unnecessarily strong and
somewhat misleading.

  thoughts?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


