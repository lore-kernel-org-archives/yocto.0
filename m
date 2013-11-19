Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDFCDE004FF
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 01:59:44 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Vii5r-0007V8-7n
	for yocto@yoctoproject.org; Tue, 19 Nov 2013 10:59:39 +0100
Received: from 78.157.37.205 ([78.157.37.205])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 10:59:39 +0100
Received: from lemonjack05 by 78.157.37.205 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 10:59:39 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Jack Lemon <lemonjack05@gmail.com>
Date: Tue, 19 Nov 2013 09:59:18 +0000 (UTC)
Message-ID: <loom.20131119T105032-516@post.gmane.org>
References: <loom.20131116T135512-692@post.gmane.org>
	<528B27C0.5060901@denx.de>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 78.157.37.205 (Mozilla/5.0 (Windows NT 5.1;
	rv:25.0) Gecko/20100101 Firefox/25.0)
Subject: Re: How to modify u-boot in Root File System rootfs.ext2.gz.u-boot ?
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
X-List-Received-Date: Tue, 19 Nov 2013 09:59:45 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Stefano Babic <sbabic@...> writes:


> Is it not enough to add SERIAL_CONSOLE = "115200 ttyS0" (or which serial
> you use as console) to your machine conf ?
> 
> Best regards,
> Stefano Babic
> 

Thank you Stefano for your reply.
Does it not any need to edit u-boot source code? just adding SERIAL_CONSOLE
= "115200 ttyS0" to local.conf?



