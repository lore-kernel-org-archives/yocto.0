Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0A02E01217
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 03:34:50 -0800 (PST)
Received: from [192.168.0.56] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 9873A27D90
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 11:04:58 +0000 (GMT)
Message-ID: <4F2FBAB6.5050806@communistcode.co.uk>
Date: Mon, 06 Feb 2012 11:34:14 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Booting Beagle over NFS
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
X-List-Received-Date: Mon, 06 Feb 2012 11:34:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello everyone,

I am attempting to boot my BeagleBoard over NFS. Now I have followed 
some instructions and used my onw knowledge to derive the boot 
parameters as shown here:

> setenv bootargs 'console=ttySO2,115200n8 noinitrd rw 
> ip=10.0.11.2::255.255.255.0 root=/dev/nfs 
> nfsroot=10.0.11.1:/home/jack/yocto/poky-edison/beagleEdison/beagleRootFS,nolock,rsize=1024,wsize=1024,rootdelay=2'
> setenv bootcmd 'mmcinit;fatload mmc 0 80300000 uImage;bootm 80300000'

I am then making an image file as show here: 
http://www.yoctoproject.org/download/bsp/texas-instruments-arm-cortex-a8-development-board-beagleboard-0

> mkimage -A arm -O linux -T script -C none -a 0 -e 0 -n "Core Minimal" 
> -d ./serial-boot.cmd ./boot.scr

I then proceed to boot my beagle and it just uses the old settings where 
it reads the root from the mmc. I have also tried copying the boot 
commands to the boot partition with the name uEnv.txt, still to no avail.

Does anyone have any clues why it is not picking up my new boot 
configuration?

It would also be useful to turn of quiet booting on the Beagle, does 
anyone know how this is done, I cannot see any initialisation of the 
kernel over serial.

Best Regards,
Jack.


