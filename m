Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AA0BE01472
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 02:04:46 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1UGQZU-0001gk-AU
	for yocto@yoctoproject.org; Fri, 15 Mar 2013 10:05:04 +0100
Received: from host-80-81-19-29.customer.m-online.net ([80.81.19.29])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 10:05:04 +0100
Received: from v.vogelhuber by host-80-81-19-29.customer.m-online.net with
	local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 10:05:04 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Volker Vogelhuber <v.vogelhuber@digitalendoscopy.de>
Date: Fri, 15 Mar 2013 09:02:23 +0000 (UTC)
Message-ID: <loom.20130315T095848-21@post.gmane.org>
References: <513F58FA.3080808@digitalendoscopy.de>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 80.81.19.29 (Mozilla/5.0 (X11;
	Linux x86_64) AppleWebKit/537.4 (KHTML, like Gecko)
	Chrome/22.0.1229.94 Safari/537.4)
Subject: Re: building yocto image from git always switches branch
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
X-List-Received-Date: Fri, 15 Mar 2013 09:04:46 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Volker Vogelhuber <v.vogelhuber@...> writes:

> When I change to the build directory and start building the image using 
> bitbake, there seems to be a git call somewhere in the recipes that 
> switches the branch of the poky git checkout back to master. Of course 
> that results in a total misbehaviour of the build process, as the 
> underlaying recipes changes during the build.
It turned out, my own kernel recipe included 
recipes-kernel/linux/linux-yocto.inc 
which seems to require that the kernel is checked out from a git
repository. After removing this include and only inherit from 
kernel.bbclass it worked as expected.



