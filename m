Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C37EE008DC; Fri, 17 Apr 2015 14:35:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93E61E0085D
	for <yocto@yoctoproject.org>; Fri, 17 Apr 2015 14:35:29 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 17 Apr 2015 14:35:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,597,1422950400"; 
	d="scan'208,217";a="482388086"
Received: from alimon-thinkpad-w540.zpn.intel.com (HELO [10.219.4.83])
	([10.219.4.83])
	by FMSMGA003.fm.intel.com with ESMTP; 17 Apr 2015 14:35:29 -0700
Message-ID: <55317CC1.4060809@linux.intel.com>
Date: Fri, 17 Apr 2015 16:36:01 -0500
From: =?windows-1252?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: akuster808 <akuster808@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>
References: <553170E1.2010400@gmail.com>
In-Reply-To: <553170E1.2010400@gmail.com>
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
X-List-Received-Date: Fri, 17 Apr 2015 21:35:34 -0000
Content-Type: multipart/alternative;
	boundary="------------090309050309000100090207"

--------------090309050309000100090207
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Armin,

I tested the ppc64 with poky master and looks great only a couple of issues,

When is compiling the kernel show this warning related to the config,

     WARNING: [kernel config]: specified values did not make it into the 
kernel's final

     Value requested for CONFIG_FB_DDC not in final ".config"
     Requested value: "CONFIG_FB_DDC=y"
     Actual value set: "# CONFIG_FB_DDC is not set"

     Value requested for CONFIG_MMU_NOTIFIER not in final ".config"
     Requested value: "CONFIG_MMU_NOTIFIER=y"
     Actual value set: ""

When built core-image-minimal and then tries to load qemu with nographic 
it didn't work the graphic mode works ok.

QEMU Starting
  Build Date = Apr 30 2013 14:04:00
  FW Version = git-8cfdfc43f4c4c8c8
  Press "s" to enter Open Firmware.

Populating /vdevice methods
Populating /vdevice/vty@71000000
Populating /vdevice/nvram@71000001

NVRAM: size=65536, fetch=200E, store=200F
Populating /vdevice/v-scsi@71000002
VSCSI: Initializing
VSCSI: Looking for devices
   8000000000000000 DISK     : "QEMU     QEMU HARDDISK    1.6."
   8200000000000000 CD-ROM   : "QEMU     QEMU CD-ROM      1.6."
Populating /pci@800000020000000
  Adapters on 0800000020000000
                      00 0000 (D) : 8086 100e    network [ ethernet ]
                      00 0800 (D) : 1234 1111    qemu vga
                      00 1000 (D) : 106b 003f    serial bus [ usb-ohci ]
No NVRAM common partition, re-initializing...
Installing QEMU fb
  Scan USB...
   USB Keyboard
   USB Mouse
   USB Mouse
No console specified using screen & keyboard
Detected RAM kernel at 400000 (f5f180 bytes)
   Welcome to Open Firmware

   Copyright (c) 2004, 2011 IBM Corporation All rights reserved.
   This program and the accompanying materials are made available
   under the terms of the BSD License available at
   http://www.opensource.org/licenses/bsd-license.php

Booting from memory...
Linux ppc64
#1 SMP PREEMPT F

Cheers,
     alimon

On 17/04/15 15:45, akuster808 wrote:
> Hello all,
>
> I just put together a layer to warehouse miscellaneous qemu machine 
> support. ppc64 is the there now, working on more. Contributions are 
> welcome.
>
> https://github.com/akuster/meta-qemu-bsps
>
> enjoy,
>
> Armin


--------------090309050309000100090207
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hi Armin,<br>
    <br>
    I tested the ppc64 with poky master and looks great only a couple of
    issues,<br>
    <br>
    When is compiling the kernel show this warning related to the
    config,<br>
    <br>
    <font face="monospace">    WARNING: [kernel config]: specified
      values did not make it into the kernel's final<br>
      <br>
          Value requested for CONFIG_FB_DDC not in final ".config"<br>
          Requested value: "CONFIG_FB_DDC=y"<br>
          Actual value set: "# CONFIG_FB_DDC is not set"<br>
      <br>
          Value requested for CONFIG_MMU_NOTIFIER not in final ".config"<br>
          Requested value: "CONFIG_MMU_NOTIFIER=y"<br>
          Actual value set: ""<br>
    </font><br>
    When built core-image-minimal and then tries to load qemu with
    nographic it didn't work the graphic mode works ok.<br>
    <br>
    <font face="monospace">QEMU Starting<br>
       Build Date = Apr 30 2013 14:04:00<br>
       FW Version = git-8cfdfc43f4c4c8c8<br>
       Press "s" to enter Open Firmware.<br>
      <br>
      Populating /vdevice methods<br>
      Populating /vdevice/vty@71000000<br>
      Populating /vdevice/nvram@71000001<br>
      <br>
      NVRAM: size=65536, fetch=200E, store=200F<br>
      Populating /vdevice/v-scsi@71000002<br>
      VSCSI: Initializing<br>
      VSCSI: Looking for devices<br>
        8000000000000000 DISK     : "QEMU     QEMU HARDDISK    1.6."<br>
        8200000000000000 CD-ROM   : "QEMU     QEMU CD-ROM      1.6."<br>
      Populating /pci@800000020000000<br>
       Adapters on 0800000020000000<br>
                           00 0000 (D) : 8086 100e    network [ ethernet
      ]<br>
                           00 0800 (D) : 1234 1111    qemu vga<br>
                           00 1000 (D) : 106b 003f    serial bus [
      usb-ohci ]<br>
      No NVRAM common partition, re-initializing...<br>
      Installing QEMU fb<br>
       Scan USB... <br>
        USB Keyboard<br>
        USB Mouse<br>
        USB Mouse<br>
      No console specified using screen &amp; keyboard<br>
      Detected RAM kernel at 400000 (f5f180 bytes)      <br>
        Welcome to Open Firmware<br>
      <br>
        Copyright (c) 2004, 2011 IBM Corporation All rights reserved.<br>
        This program and the accompanying materials are made available<br>
        under the terms of the BSD License available at<br>
        <a class="moz-txt-link-freetext" href="http://www.opensource.org/licenses/bsd-license.php">http://www.opensource.org/licenses/bsd-license.php</a><br>
      <br>
      Booting from memory...<br>
      Linux ppc64<br>
      #1 SMP PREEMPT F</font><br>
    <br>
    Cheers,<br>
        alimon<br>
    <br>
    <div class="moz-cite-prefix">On 17/04/15 15:45, akuster808 wrote:<br>
    </div>
    <blockquote cite="mid:553170E1.2010400@gmail.com" type="cite">Hello
      all,
      <br>
      <br>
      I just put together a layer to warehouse miscellaneous qemu
      machine support. ppc64 is the there now, working on more.
      Contributions are welcome.
      <br>
      <br>
      <a class="moz-txt-link-freetext" href="https://github.com/akuster/meta-qemu-bsps">https://github.com/akuster/meta-qemu-bsps</a>
      <br>
      <br>
      enjoy,
      <br>
      <br>
      Armin
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------090309050309000100090207--
