Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 877F7E00998; Sun, 19 Apr 2015 15:29:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFF22E00994
	for <yocto@yoctoproject.org>; Sun, 19 Apr 2015 15:29:41 -0700 (PDT)
Received: by pabsx10 with SMTP id sx10so187416767pab.3
	for <yocto@yoctoproject.org>; Sun, 19 Apr 2015 15:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=1mqSqOskZgYT6O3THmtMgONUsG/xdpGoavBkx1ixB6U=;
	b=CtmkP7AF4CNSPvtwtkSH31B8i4YmoSIZGV/RZISVb7MxsBHxGPfpDuLJEKhlPB1lyK
	KloRc1XDdgqemarh7QAI5FKqhehdmuPqn05/VSybOQeIKIECtYRpp8GeZTqsKoIGhCqQ
	y5JveqXIigrSDEhwyQt3qsZ1aXFNRl7jFf+qSU0OlPmIhO/hxuru8eD7gRdk1y5zrHMp
	HJs9YkP6sxzhc5ssPeVbtUO2rAwZYigj7gI6H8/aeU06dkvg3s4CiyIK//DVspqgeA0R
	r9DxiV+l8NzFiIe/jHh8RMonlFfVj6w7cG/+HaWB4b3kFH0dkACGUoqGqPAJBAoUwTvk
	4X4g==
X-Received: by 10.68.229.138 with SMTP id sq10mr22684486pbc.136.1429482581520; 
	Sun, 19 Apr 2015 15:29:41 -0700 (PDT)
Received: from ?IPv6:2601:c:a700:3ba7:4161:af9a:9c68:3d17?
	([2601:c:a700:3ba7:4161:af9a:9c68:3d17])
	by mx.google.com with ESMTPSA id
	wj1sm11234596pbc.62.2015.04.19.15.29.39
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 19 Apr 2015 15:29:40 -0700 (PDT)
Message-ID: <55342C50.5080906@gmail.com>
Date: Sun, 19 Apr 2015 15:29:36 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: =?windows-1252?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>
References: <553170E1.2010400@gmail.com> <55317CC1.4060809@linux.intel.com>
In-Reply-To: <55317CC1.4060809@linux.intel.com>
Subject: Re: meta-qemu-bsps
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
X-List-Received-Date: Sun, 19 Apr 2015 22:29:46 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit



On 04/17/2015 02:36 PM, Aníbal Limón wrote:
> Hi Armin,
>
> I tested the ppc64 with poky master and looks great only a couple of issues,

thanks for trying this.

>
> When is compiling the kernel show this warning related to the config,

ok
>
>      WARNING: [kernel config]: specified values did not make it into the
> kernel's final
>
>      Value requested for CONFIG_FB_DDC not in final ".config"
>      Requested value: "CONFIG_FB_DDC=y"
>      Actual value set: "# CONFIG_FB_DDC is not set"
>
>      Value requested for CONFIG_MMU_NOTIFIER not in final ".config"
>      Requested value: "CONFIG_MMU_NOTIFIER=y"
>      Actual value set: ""
>
> When built core-image-minimal and then tries to load qemu with nographic
> it didn't work the graphic mode works ok.

I will have to look into that.

regards,
Armin
>
> QEMU Starting
>   Build Date = Apr 30 2013 14:04:00
>   FW Version = git-8cfdfc43f4c4c8c8
>   Press "s" to enter Open Firmware.
>
> Populating /vdevice methods
> Populating /vdevice/vty@71000000
> Populating /vdevice/nvram@71000001
>
> NVRAM: size=65536, fetch=200E, store=200F
> Populating /vdevice/v-scsi@71000002
> VSCSI: Initializing
> VSCSI: Looking for devices
>    8000000000000000 DISK     : "QEMU     QEMU HARDDISK    1.6."
>    8200000000000000 CD-ROM   : "QEMU     QEMU CD-ROM      1.6."
> Populating /pci@800000020000000
>   Adapters on 0800000020000000
>                       00 0000 (D) : 8086 100e    network [ ethernet ]
>                       00 0800 (D) : 1234 1111    qemu vga
>                       00 1000 (D) : 106b 003f    serial bus [ usb-ohci ]
> No NVRAM common partition, re-initializing...
> Installing QEMU fb
>   Scan USB...
>    USB Keyboard
>    USB Mouse
>    USB Mouse
> No console specified using screen & keyboard
> Detected RAM kernel at 400000 (f5f180 bytes)
>    Welcome to Open Firmware
>
>    Copyright (c) 2004, 2011 IBM Corporation All rights reserved.
>    This program and the accompanying materials are made available
>    under the terms of the BSD License available at
> http://www.opensource.org/licenses/bsd-license.php
>
> Booting from memory...
> Linux ppc64
> #1 SMP PREEMPT F
>
> Cheers,
>      alimon
>
> On 17/04/15 15:45, akuster808 wrote:
>> Hello all,
>>
>> I just put together a layer to warehouse miscellaneous qemu machine
>> support. ppc64 is the there now, working on more. Contributions are
>> welcome.
>>
>> https://github.com/akuster/meta-qemu-bsps
>>
>> enjoy,
>>
>> Armin
>

