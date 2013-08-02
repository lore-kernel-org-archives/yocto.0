Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 038D7E0152B
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2013 01:07:18 -0700 (PDT)
Received: from [147.229.64.182] (p182.fei.wifi.vutbr.cz [147.229.64.182])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 3A0F79570
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2013 09:07:17 +0100 (BST)
Message-ID: <51FB6940.5090402@r-finger.com>
Date: Fri, 02 Aug 2013 09:09:36 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.11) Gecko/20121122 Icedove/10.0.11
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <DFD53149-25C0-410A-A5E3-FD95F38E907B@keylevel.com>
	<51FA1764.4060408@r-finger.com> <51FA6B80.8030207@r-finger.com>
	<5C4C9EC7-1F17-4ED9-BCC7-C88C7514F41B@keylevel.com>
	<51FB5E1B.9010607@r-finger.com>
	<5D039805-3E13-436E-BEC0-66FD9570532F@keylevel.com>
In-Reply-To: <5D039805-3E13-436E-BEC0-66FD9570532F@keylevel.com>
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
X-List-Received-Date: Fri, 02 Aug 2013 08:07:20 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 02/08/13 08:35, Chris Tapp wrote:
>> Depends on the bios, if your machine's bios supports PXE, then you
>> do not need ipxe, just a tftp server set up on the LAN that serves
>> PXELinux.
> 
> My case is a bit more complicated as I also can't have non-secure
> (t)ftp! Are you saying that PXE can work without DHCP/BOOTP?

It probably depends on the BIOS, iirc, standard PXE does not support
anything other than tfpt, but you can probably configure the IP settings
manually, and I think the bios on the machine I was working with
supported https (but I am not 100% sure, and can't check at the moment).
iPXE supports https, of course, so we definitely want iPXE recipe and
documentation.


> It would benefit from some scripting support in the image to
> personalise it as it boots (e.g. setting IP configuration, hostname,
> etc.) - I'm currently looking to do this by passing parameters back
> from the server through the kernel command line.

Yeah, but keep in mind that the stuff only happens 'in the image' when
you have already booted, so you can only script stuff to do with the
rootfs in the image; the kernel and initrd is loaded by the PXE
bootloader so the control here is whatever the PXE bootloader gives you.

Tomas

-- 
http://sleepfive.com

