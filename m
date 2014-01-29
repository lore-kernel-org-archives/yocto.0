Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A76DE00510
	for <yocto@yoctoproject.org>; Wed, 29 Jan 2014 00:50:07 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1W8QqS-0000Tw-1n
	for yocto@yoctoproject.org; Wed, 29 Jan 2014 09:50:04 +0100
Received: from 192.55.79.165 ([192.55.79.165])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 29 Jan 2014 09:50:04 +0100
Received: from rams334 by 192.55.79.165 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 29 Jan 2014 09:50:04 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: munish sharma  <rams334@gmail.com>
Date: Wed, 29 Jan 2014 08:47:19 +0000 (UTC)
Message-ID: <loom.20140129T094201-549@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 192.55.79.165 (Mozilla/5.0 (Windows NT 6.1;
	WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.102
	Safari/537.36)
Subject: not able to access serial device.
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
X-List-Received-Date: Wed, 29 Jan 2014 08:50:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi, 
I am using yocto full-image on Intel Galileo board,when i an connecting a 
device on usb host dmesg log is showing 
"[90627.000441] usb 1-1: new full-speed USB device number 15 using ohci_hcd"
and i am not able to do serial communication with this device.
But when i am connecting the same device on Ubuntu. I am able to access this 
device as /dev/ttyACM0.



thanks 
Munish 


