Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF2DAE014B7
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 08:41:44 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:57351 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UPECW-00076x-11
	for yocto@yoctoproject.org; Mon, 08 Apr 2013 11:41:44 -0400
Date: Mon, 8 Apr 2013 11:41:39 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1304081135020.23038@oneiric>
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
Subject: working my way through the kernel hands-on labs finally
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
X-List-Received-Date: Mon, 08 Apr 2013 15:41:45 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  finally have the time to work my way through the ELC 2013 hands on
kernel labs described here:

https://www.yoctoproject.org/tools-resources/presentations/working-kernel

since i'll almost certainly use some of them in my next yocto course,
so the occasional question for anyone who's already been down this
road.  start with lab 1.

  the doc mentions including the meta-yocto and meta-yocto-bsp layers
-- are those strictly necessary? the layer.conf definition file for
the lab1 layer doesn't list those layers as dependencies. what will
happen if i leave them out? what's the policy on explicitly listing
dependencies on those two layers in a new layer?

  also, just doing a basic fetch for lab1 produces:

ERROR: QA Issue:
/home/rpjday/yocto/k_lab/layers/meta-lab1-qemux86/recipes-kernel/linux/linux_3.0.18.bb:
Variable FILES is set as not being package specific, please fix this.

  is that deliberate? something that will be resolved later in the
lab as part of an exercise? just curious.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

