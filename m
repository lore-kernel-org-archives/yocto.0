Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id 217024C8118C
	for <yocto@yoctoproject.org>; Thu, 27 Jan 2011 08:22:31 -0600 (CST)
Received: from durham.keylevel.com ([109.224.134.115]:53889
	helo=[192.168.1.99])
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1PiSk2-0006ft-Dh
	for yocto@yoctoproject.org; Thu, 27 Jan 2011 14:22:30 +0000
Message-Id: <953D6EA3-E3D9-4998-8147-2FF0E325AA56@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v936)
Date: Thu, 27 Jan 2011 14:22:27 +0000
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Subject: USB keyboard not working on PC-Engines host
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 27 Jan 2011 14:22:32 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

I've built poky-image-minimal for a machine that's based on  
qemux86.conf. I've create a modified copy to target x86 hardware and  
made sure usbhost and usbgadget are in the MACHINE_FEATURES.

If I boot on an Intel Atom board then everything is fine. However, if  
I boot on a PC-Engines ALIX 3D3 the usb keyboard doesn't work and I  
can't login.

I have had to disable USB 2 support in the ALIX BIOS to prevent  
"unable to enumerate USB device on port ..." messages, but USB 1.1 is  
still enabled. The OHCI device code is 1d6b:0001 and works ok with an  
EO build that I have.

Can anyone point me to where I should be looking to find out how to  
get this working?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




