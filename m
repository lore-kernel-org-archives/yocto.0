Return-Path: <cnxsoft@cnx-software.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 580AAE01384
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 06:18:53 -0800 (PST)
Received: by iagz35 with SMTP id z35so1184724iag.35
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2012 06:18:53 -0800 (PST)
Received: by 10.50.194.170 with SMTP id hx10mr23347438igc.6.1328710732916;
	Wed, 08 Feb 2012 06:18:52 -0800 (PST)
Received: from [192.168.0.103] (118.172.58.119.adsl.dynamic.totbb.net.
	[118.172.58.119])
	by mx.google.com with ESMTPS id wn7sm147752igc.0.2012.02.08.06.18.51
	(version=SSLv3 cipher=OTHER); Wed, 08 Feb 2012 06:18:52 -0800 (PST)
Message-ID: <4F32843F.70500@cnx-software.com>
Date: Wed, 08 Feb 2012 21:18:39 +0700
From: cnxsoft <cnxsoft@cnx-software.com>
User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:7.0) Gecko/20110922 Thunderbird/7.0
MIME-Version: 1.0
To: autif khan <autif.mlist@gmail.com>
References: <4F322ECE.5060004@cnx-software.com>
	<CADzUK1LbB_yr6pfO4nWsSWz4MTEyZDsMBwtn_G4qzdghPCsrhg@mail.gmail.com>
In-Reply-To: <CADzUK1LbB_yr6pfO4nWsSWz4MTEyZDsMBwtn_G4qzdghPCsrhg@mail.gmail.com>
X-Gm-Message-State: ALoCoQl4zOZJ2Syrvno9gh1yEz9O49h55Vr/N1GdhXvHc4zmakTNNZTPDVSZYtW+CqTvh2oUszmt
Cc: yocto@yoctoproject.org
Subject: Re: Yocto in Virtualbox
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
X-List-Received-Date: Wed, 08 Feb 2012 14:18:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/02/2012 21:06, autif khan wrote:
> On Wed, Feb 8, 2012 at 3:14 AM, cnxsoft<cnxsoft@cnx-software.com>  wrote:
>> Hi,
>>
>> I have build x86 qemu image using "bitbake -k core-image-sato" following the
>> instructions given at
>> http://www.yoctoproject.org/docs/1.1/yocto-project-qs/yocto-project-qs.html
>> I'm running Ubuntu 11.10 in VirtualBox 4.1.6.
>>
>> When I run qemu, qemu starts apparently fine, but the qemu window stays
>> black. So I'm suspecting that either it does not work in Virtualbox or I may
>> have tochange some settings in qemu (e.g. -vga vmware).
>>
>> Here's the output:
>>
>> runqemu qemux86
>>
>> Continuing with the following parameters:
>> KERNEL:
>> [/home/jaufranc/edev/edison-6.0-build/tmp/deploy/images/bzImage-qemux86.bin]
>> ROOTFS:
>> [/home/jaufranc/edev/edison-6.0-build/tmp/deploy/images/core-image-minimal-qemux86.ext3]
>> FSTYPE: [ext3]
>> Setting up tap interface under sudo
>> Acquiring lockfile for tap0...
>> Starting distccd...
>> Running qemu...
>> /home/jaufranc/edev/edison-6.0-build/tmp/sysroots/i686-linux/usr/bin/qemu
>> -kernel
>> /home/jaufranc/edev/edison-6.0-build/tmp/deploy/images/bzImage-qemux86.bin
>> -net nic,vlan=0 -net tap,vlan=0,ifname=tap0,script=no,downscript=no -hda
>> /home/jaufranc/edev/edison-6.0-build/tmp/deploy/images/core-image-minimal-qemux86.ext3
>> -show-cursor -usb -usbdevice wacom-tablet -vga vmware -enable-gl -no-reboot
>> -m 128 --append "vga=0 root=/dev/hda rw mem=128M
>> ip=192.168.7.2::192.168.7.1:255.255.255.0 oprofile.timer=1 "
>> Enabling opengl
>>
> So, what is the problem?

Qemu starts apparently fine, but the qemu window stays black.


