Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19E58E015FF
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2013 23:21:22 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1VNGZ5-0007W6-Vr
	for yocto@yoctoproject.org; Sat, 21 Sep 2013 08:21:12 +0200
Received: from 212.50.246.122 ([212.50.246.122])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 21 Sep 2013 08:21:11 +0200
Received: from jackrubby2010 by 212.50.246.122 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 21 Sep 2013 08:21:11 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Jack <jackrubby2010@gmail.com>
Date: Sat, 21 Sep 2013 06:20:50 +0000 (UTC)
Message-ID: <loom.20130921T074759-77@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 212.50.246.122 (Mozilla/5.0 (X11; Ubuntu; Linux x86_64;
	rv:21.0) Gecko/20100101 Firefox/21.0)
Subject: Adding kernel module to minimal image
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
X-List-Received-Date: Sat, 21 Sep 2013 06:21:24 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hello,

How can I add kernel module to fsl-image-minimal?
I want to add hello-mod module in
/yocto/meta-skeleton/recipes-kerne/hello-mod path 
to my fsl-image-minimal.
Then I read the Kernel Development Manual document and add
MACHINE_EXTRA_RRECOMMENDS += "kernel-module-hello-mod" 
to local.conf file.
After building the image, hello-mod dosen't exist in fsl-image-minimal in
/yocto/build_p1022ds_release/tmp/work
/p1022ds-fsl-linux-gnuspe/fsl-image-minimal-1.0-r0
path.
 
What can I do to add hello-mod module to my fsl-image-minimal?


