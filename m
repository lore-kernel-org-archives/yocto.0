Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F1BCE00749
	for <yocto@yoctoproject.org>; Sun, 16 Jun 2013 04:45:30 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1UoBOj-00072z-2I
	for yocto@yoctoproject.org; Sun, 16 Jun 2013 13:45:29 +0200
Received: from 212.50.246.123 ([212.50.246.123])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sun, 16 Jun 2013 13:45:29 +0200
Received: from jackrubby2010 by 212.50.246.123 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sun, 16 Jun 2013 13:45:29 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Jack <jackrubby2010@gmail.com>
Date: Sun, 16 Jun 2013 11:45:11 +0000 (UTC)
Message-ID: <loom.20130616T115549-619@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 212.50.246.123 (Mozilla/5.0 (X11; Ubuntu; Linux x86_64;
	rv:20.0) Gecko/20100101 Firefox/20.0)
Subject: Modify udev
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
X-List-Received-Date: Sun, 16 Jun 2013 11:45:35 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hi,

In my imageو starting udev take a long time about 6 seconds whereas the time
is so important for me. Therefore, I decide to remove udev from
task-core-boot but I get a problem in mounting SATA drive. So, I add udev to
task-core-boot. In addition to mount SATA drive by udev some other packages
like libusb, pciutils,... will install. I want only to mount SATA drive by
udev. How can I modify udev that it only install hdd drive ?

Thanks.  


