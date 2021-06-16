Received: from mail.rogue-research.com (mail.rogue-research.com [207.115.102.146])
 by mx.groups.io with SMTP id smtpd.web12.8604.1623855481993392567
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Jun 2021 07:58:02 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: rogue-research.com, ip: 207.115.102.146, mailfrom: simon@rogue-research.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.rogue-research.com (Postfix) with ESMTP id 6DEB79B98C29
	for <yocto@lists.yoctoproject.org>; Wed, 16 Jun 2021 10:58:00 -0400 (EDT)
X-Virus-Scanned: amavisd-new at rogue-research.com
Received: from mail.rogue-research.com ([127.0.0.1])
	by localhost (kingu.rogue-research.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fT-JfSOpXbnL for <yocto@lists.yoctoproject.org>;
	Wed, 16 Jun 2021 10:57:57 -0400 (EDT)
Received: from webmail.rogue-research.com (sedna.rogue-research.com [10.29.19.74])
	by mail.rogue-research.com (Postfix) with ESMTPSA id AA04C9B98C15
	for <yocto@lists.yoctoproject.org>; Wed, 16 Jun 2021 10:57:57 -0400 (EDT)
MIME-Version: 1.0
Date: Wed, 16 Jun 2021 10:57:57 -0400
From: "simon" <simon@rogue-research.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-intel]: support for NUC11
In-Reply-To: <16874B1938B81CC8.31512@lists.yoctoproject.org>
References: <16874B1938B81CC8.31512@lists.yoctoproject.org>
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <0088e07248160343a9b7a01dd29d278d@rogue-research.com>
X-Sender: simon@rogue-research.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

I'm having trouble figuring out how to fix my issues with the new intel 
NUC gen 11 (NUC11TNBi5).

At the moment I'm testing with the following meta-layer
poky (hardknott)
meta-openembedded (hardknott)
meta-intel (master)
meta-qt5 (hardknott)

I'm currently using EGLFS to display our Qt-QML GUI

My first issue is with the our GUI, it is launching as expected but we 
barely have 1 fps

- There's a warning about not finding the IRIS driver:
MESA_LOADER: failed to open iris: /usr/lib/dri/iris_dri.so: cannot open 
shared object file: No such file or directory
failed to load driver: iris

But from what I was able to understand, I was expecting it would be 
available with mesa 21.0.3 since I've seen some commit about fixing 
issue with it in the change logs.

I've tried to force the driver to both i965 and i915 but I either got a 
warning that this GEN cannot use it or still got the same fps.
Am I right to assume that it goes to a default driver that uses the CPU 
instead of the GPU?

My second issue is with the nvme slot, it does not detect the partition 
on the SSD, but it does when I use a NVME to USB adaptor

- There's a few warning about ACPI bios error AE_NOT_FOUND too, and 
again with my little knowledge I thought this would have been fixed with 
the most recent update in master with the new microcode since the Core 
gen 11 was added as new device.
But again, I'm not entirely sure that I'm doing the right thing to 
update the microcode. I've installed manually the microcode.cpio in 
/etc/firmware/intel-ucode/

The ouput of "dmesg | grep microcode":
microcode: sig=0x806c1, pf=0x80, revision=0x72
microcode: Microcode Update Driver: v2.2.

I don't know if I'm too early to be using the latest NUC11, any 
information about when it should be supported would be very appreciated.

I'm willing to help but my knowledge is pretty limited so I might need 
assistance.

thanks a lot

Simon
