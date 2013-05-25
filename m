Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39963E004CF
	for <yocto@yoctoproject.org>; Sat, 25 May 2013 07:05:07 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1UgF5j-0005Zt-Jz
	for yocto@yoctoproject.org; Sat, 25 May 2013 16:05:03 +0200
Received: from 212.50.246.123 ([212.50.246.123])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 25 May 2013 16:05:03 +0200
Received: from jackrubby2010 by 212.50.246.123 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 25 May 2013 16:05:03 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Jack <jackrubby2010@gmail.com>
Date: Sat, 25 May 2013 13:58:46 +0000 (UTC)
Message-ID: <loom.20130525T145157-762@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 212.50.246.123 (Mozilla/5.0 (X11; Ubuntu; Linux x86_64;
	rv:20.0) Gecko/20100101 Firefox/20.0)
Subject: How can I remove packages from rootfs file ?
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
X-List-Received-Date: Sat, 25 May 2013 14:05:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi,

I maked a fsl-image-minaml rootfs file and customized it with adding
particular packages. For example, I added
IMAGE_INSTALL_append_pn-fsl-image-minimal = " task-core-ssh-openssh
task-core-nfs-server" in local.conf file. The problem is that, the rootfs
file has 6-7 MB capacity but this capacity of file is very high and not
acceptable to me. So how can I remove some packages from rootfs file that I
do not want ? For example, remove packages like ar, arping,  basename,
telnet, beep, .....

Thanks,
Js


