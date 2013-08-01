Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF78AE01572
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2013 01:05:46 -0700 (PDT)
Received: from [147.229.64.182] (p182.fei.wifi.vutbr.cz [147.229.64.182])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 0A6A49570
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2013 09:05:44 +0100 (BST)
Message-ID: <51FA1764.4060408@r-finger.com>
Date: Thu, 01 Aug 2013 09:08:04 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.11) Gecko/20121122 Icedove/10.0.11
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <DFD53149-25C0-410A-A5E3-FD95F38E907B@keylevel.com>
In-Reply-To: <DFD53149-25C0-410A-A5E3-FD95F38E907B@keylevel.com>
Subject: Re: Network booting
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
X-List-Received-Date: Thu, 01 Aug 2013 08:05:48 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 31/07/13 21:30, Chris Tapp wrote:
> Is there an easy way to have a system boot and load the rootfs from a
> network server?
> 
> I'm using an x86 system and can have the kernel and an initrd on it.
> I would use bootp, but a lot of end users either don't have this or
> will not allow it to be used. I think it needs to go something like:
> 
> 1) Kernel loads the initrd and bring the network up (static or
> DHCP); 2) The rootfs image can then be download; 3) Some magic then
> makes this run...
> 
> This would allow easy update of the rootfs and makes it non-volatile
> (which is good for this project).

It's relatively easy to add support for tftp to the yocto live image
scripts; this allows you to either boot from the network, or install
from the network. I have have some raw patches kicking around, that add
support for both tftp and scp, I have been meaning to clean it up and
post an rfc to the list, I'll try to get that done this week.

Tomas

-- 
http://sleepfive.com

