Return-Path: <pierluigi.greto@bisdn.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E75AEE00D46; Wed, 17 Apr 2019 12:06:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx.bisdn.de (mx.bisdn.de [185.27.182.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5751E00D42
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2019 12:06:44 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.16.251.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx.bisdn.de (Postfix) with ESMTPSA id 2655BA46AA;
	Wed, 17 Apr 2019 21:06:43 +0200 (CEST)
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
References: <e6fc119b-6216-9dc2-b0d4-8692e081ab29@bisdn.de>
	<CAGAf8Lw0jeS5En90TQfFQzYGAF5x6ZhVzLy4xvXu+GZHoq8-ww@mail.gmail.com>
From: Pierluigi Greto <pierluigi.greto@bisdn.de>
Message-ID: <bb00f911-35d6-d8b2-195c-c95e59fa12fc@bisdn.de>
Date: Wed, 17 Apr 2019 21:06:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAGAf8Lw0jeS5En90TQfFQzYGAF5x6ZhVzLy4xvXu+GZHoq8-ww@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: fitImage: hangs at "Starting kernel ..."
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
X-List-Received-Date: Wed, 17 Apr 2019 19:06:47 -0000
X-Groupsio-MsgNum: 44829
Content-Type: multipart/mixed; boundary="------------2465124AEE442490A72AFC30"
Content-Language: en-US

--------------2465124AEE442490A72AFC30
Content-Type: multipart/alternative;
 boundary="------------8EF9C1BE17CC4A25ECAFB71A"

--------------8EF9C1BE17CC4A25ECAFB71A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Zoran,

thank you for the reply.
[1] In this you can find some information about the device (link 
<https://github.com/opencomputeproject/OpenNetworkLinux/blob/master/packages/platforms/delta/armel/arm-delta-ag6248c/arm-delta-ag6248c-poe/platform-config/r0/src/lib/arm-delta-ag6248c-poe-r0.yml>). 
In this patch the dts (link 
<https://github.com/opencomputeproject/OpenNetworkLinux/blob/663642e817c33d44d5e4dd1f98247addd68c9f5c/packages/base/any/kernels/3.2-lts/configs/arm-iproc-all/patches/platform-delta-ag6248c-device-drivers.patch>). 
The platform is an arm cortexa9.
[2] This is how I install the image

install_uimage() {
echo "Format Nand Flash region\n"
flash_erase /dev/mtd-open 0 0
nandwrite -p /dev/mtd-open fitImage-core-image-base-delta-ag6248c-poe.bin
sync; sync
}

hw_load() {
echo "nand read \$loadaddr open 0x1000000 && run fpboot && bootm"
}

I'll attach the log from when I install the image to when it the kernel 
hangs.

Thank you,
Pierluigi

On 17/04/19 17:26, Zoran Stojsavljevic wrote:
> Hello PierLuigi,
>
> [1] Which arm platform (based upon which arm Open Sorce platform) you are using?
> [2] Please, can we see your added proprietary ash script to U-Boot default env?
>
> Thank you,
> Zoran
> _______
>
> On Wed, Apr 17, 2019 at 5:13 PM Pierluigi Greto
> <pierluigi.greto@bisdn.de> wrote:
>> Hi all,
>>
>> I'm trying to build an image for an arm platform with uboot. After the
>> installation, when the system is starting it hangs at "Starting kernel
>> ...". In the log I can see that the kernel uncompressed image, the
>> ramdisk subimage and  the Flat Device Tree are found. But the kernel
>> doesn't start.
>> Any hints on how to check what it's wrong with the image? For example if
>> the kernel is correctly compiled, the FTD is the right one ecc.
>> The loaded kernel is shown as "uncompressed", there is some way to
>> define the compression type in yocto (I have an image that works and the
>> kernel is shown as "gzip compressed")? Could the compression type be a
>> problem?
>>
>> Any hint is very welcome.
>>
>> Thank you,
>> Pierluigi
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

--------------8EF9C1BE17CC4A25ECAFB71A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi Zoran,</p>
    <p>thank you for the reply. <br>
      [1] In this you can find some information about the device (<a
href="https://github.com/opencomputeproject/OpenNetworkLinux/blob/master/packages/platforms/delta/armel/arm-delta-ag6248c/arm-delta-ag6248c-poe/platform-config/r0/src/lib/arm-delta-ag6248c-poe-r0.yml">link</a>).
      In this patch the dts (<a moz-do-not-send="true"
href="https://github.com/opencomputeproject/OpenNetworkLinux/blob/663642e817c33d44d5e4dd1f98247addd68c9f5c/packages/base/any/kernels/3.2-lts/configs/arm-iproc-all/patches/platform-delta-ag6248c-device-drivers.patch">link</a>).
      The platform is an arm cortexa9.<br>
      [2] This is how I install the image <br>
      <br>
    </p>
    <pre class="code highlight" lang="conf"><span id="LC5" class="line" lang="conf"><span class="n">install_uimage</span>() {</span>
<span id="LC6" class="line" lang="conf">    <span class="n">echo</span> <span class="s2">"Format Nand Flash region\n"</span></span>
<span id="LC7" class="line" lang="conf">    <span class="n">flash_erase</span> /<span class="n">dev</span>/<span class="n">mtd</span>-<span class="n">open</span> <span class="m">0</span> <span class="m">0</span></span>
<span id="LC8" class="line" lang="conf">    <span class="n">nandwrite</span> -<span class="n">p</span> /<span class="n">dev</span>/<span class="n">mtd</span>-<span class="n">open</span> <span class="n">fitImage</span>-<span class="n">core</span>-<span class="n">image</span>-<span class="n">base</span>-<span class="n">delta</span>-<span class="n">ag6248c</span>-<span class="n">poe</span>.<span class="n">bin</span></span>
<span id="LC9" class="line" lang="conf">    <span class="n">sync</span>; <span class="n">sync</span></span>
<span id="LC10" class="line" lang="conf">}</span>
<span id="LC11" class="line" lang="conf"></span>
<span id="LC12" class="line" lang="conf"><span class="n">hw_load</span>() {</span>
<span id="LC13" class="line" lang="conf">    <span class="n">echo</span> <span class="s2">"nand read \$loadaddr open 0x1000000 &amp;&amp; run fpboot &amp;&amp; bootm"</span></span>
<span id="LC14" class="line" lang="conf">}</span>
</pre>
    <p>I'll attach the log from when I install the image to when it the
      kernel hangs.<br>
      <br>
      Thank you,<br>
      Pierluigi<br>
    </p>
    <div class="moz-cite-prefix">On 17/04/19 17:26, Zoran Stojsavljevic
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAGAf8Lw0jeS5En90TQfFQzYGAF5x6ZhVzLy4xvXu+GZHoq8-ww@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">Hello PierLuigi,

[1] Which arm platform (based upon which arm Open Sorce platform) you are using?
[2] Please, can we see your added proprietary ash script to U-Boot default env?

Thank you,
Zoran
_______

On Wed, Apr 17, 2019 at 5:13 PM Pierluigi Greto
<a class="moz-txt-link-rfc2396E" href="mailto:pierluigi.greto@bisdn.de">&lt;pierluigi.greto@bisdn.de&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
Hi all,

I'm trying to build an image for an arm platform with uboot. After the
installation, when the system is starting it hangs at "Starting kernel
...". In the log I can see that the kernel uncompressed image, the
ramdisk subimage and  the Flat Device Tree are found. But the kernel
doesn't start.
Any hints on how to check what it's wrong with the image? For example if
the kernel is correctly compiled, the FTD is the right one ecc.
The loaded kernel is shown as "uncompressed", there is some way to
define the compression type in yocto (I have an image that works and the
kernel is shown as "gzip compressed")? Could the compression type be a
problem?

Any hint is very welcome.

Thank you,
Pierluigi

--
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------8EF9C1BE17CC4A25ECAFB71A--

--------------2465124AEE442490A72AFC30
Content-Type: text/x-log;
 name="startup.log"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="startup.log"

ONIE:/ # onie-nos-install http://172.16.250.50/onie/pierluigi/onie-bisdn-delta-a
g6248c-poe-20190417.bin
discover: installer mode detected.
Stopping: discover... done.
Info: Fetching http://172.16.250.50/onie/pierluigi/onie-bisdn-delta-ag6248c-poe-20190417.bin ...
Connecting to 172.16.250.50 (172.16.250.50:80)
installer            100% |*******************************| 13781k  0:00:00 ETA
ONIE: Executing installer: http://172.16.250.50/onie/pierluigi/onie-bisdn-delta-ag6248c-poe-20190417.bin
Image build date: 2019-04-17
Verifying image checksum ... OK.
Preparing image archive ... OK.
Demo Installer: platform: arm-delta_ag6248c-poe-r0
Format Nand Flash region\n
Erasing 1024 Kibyte @ 4900000 -  1% complete.
Skipping bad block at 0x04a00000

Skipping bad block at 0x04b00000
Erasing 1024 Kibyte @ f9800000 - 100% complete.
Writing at 0x00000000
Writing at 0x00100000
Writing at 0x00200000
Writing at 0x00300000
Writing at 0x00400000
Writing at 0x00500000
Writing at 0x00600000
Writing at 0x00700000
Writing at 0x00800000
Writing at 0x00900000
Writing at 0x00a00000
Writing at 0x00b00000
Writing at 0x00c00000
Writing at 0x00d00000
Updating U-Boot environment variables
ONIE: NOS install successful: http://172.16.250.50/onie/pierluigi/onie-bisdn-delta-ag6248c-poe-20190417.bin
ONIE: Rebooting...
ONIE:/ # discover: installer mode detected.
Stopping: discover...start-stop-daemon: warning: killing process 342: No such process
 done.
Stopping: dropbear ssh daemon... done.
Stopping: telnetd... done.
Stopping: syslogd... done.
Info: Unmounting kernel filesystems
The system is going down NOW!
Sent SIGTERM to all processes
Sent SIGKILL toRestarting system.

U-Boot SPL 2012.10-gcbef171 (Mar 09 2016 - 17:01:14)
DCO:   44 (PASS)
AVS: 0x0
VOUT Init: 0x64 VOUT Set: 0x64 
Device:Helix4 (0xdc14)
SKU:   BCM56340 (0xb340)
DRAM:  DDR3, 750MHz
       Validate DDR shmoo parameters stored in flash ..... OK
       Press Ctrl-C to run DDR shmoo ..... skipped
       Restoring DDR shmoo parameters from flash ..... done
       Running simple memory test ..... OK
       DDR Interface Ready
(ONFI), MT29F32G08ABAAAWP   , blocks per lun: 1000 lun count: 1
NAND:  1024 KiB blocks, 8 KiB pages, 16B OOB, 8-bit
NAND:  chipsize 

U-Boot 2012.10-gcbef171 (Mar 09 2016 - 17:01:14) - ONIE master-201603091701-dirty

DRAM:  1 GiB
WARNING: Caches not enabled
NAND:  (ONFI), MT29F32G08ABAAAWP   , blocks per lun: 1000 lun count: 1
NAND:  1024 KiB blocks, 8 KiB pages, 16B OOB, 8-bit
NAND:  chipsize 4096 MiB
EEPROM:TlvInfo v1 len=104
In:    serial
Out:   serial
Err:   serial
CLOCKS:ARM Core=1000Hz, AXI=500Hz, APB=125Hz, Peripheral=500Hz
Bringing USB2 host out of reset...
EEPROM:TlvInfo v1 len=104
Net:   eth-0
Hit any key to stop autoboot:  0 
Loading Demo arm-delta_ag6248c-poe-r0 image...

NAND read: device 0 offset 0x1000000, size 0x1000000
 16777216 bytes read: OK
## Booting kernel from FIT Image at 70000000 ...
   Using 'conf@delta_ag6248c.dtb' configuration
   Trying 'kernel@1' kernel subimage
     Description:  Linux kernel
     Type:         Kernel Image
     Compression:  uncompressed
     Data Start:   0x70000100
     Data Size:    2943960 Bytes = 2.8 MiB
     Architecture: ARM
     OS:           Linux
     Load Address: 0x61008000
     Entry Point:  0x61008000
     Hash algo:    sha1
     Hash value:   b1a3f81b226b7711aed98fa0fa1a3ae48734ee5f
   Verifying Hash Integrity ... sha1+ OK
## Loading init Ramdisk from FIT Image at 70000000 ...
   Using 'conf@delta_ag6248c.dtb' configuration
   Trying 'ramdisk@1' ramdisk subimage
     Description:  core-image-base
     Type:         RAMDisk Image
     Compression:  gzip compressed
     Data Start:   0x702cf6c8
     Data Size:    11154972 Bytes = 10.6 MiB
     Architecture: ARM
     OS:           Linux
     Load Address: 0x00000000
     Entry Point:  0x00000000
     Hash algo:    sha1
     Hash value:   fd0c0f2dd095d2cd248ed18af3590032ec4f332b
   Verifying Hash Integrity ... sha1+ OK
## Flattened Device Tree from FIT Image at 70000000
   Using 'conf@delta_ag6248c.dtb' configuration
   Trying 'fdt@delta_ag6248c.dtb' FDT blob subimage
     Description:  Flattened Device Tree blob
     Type:         Flat Device Tree
     Compression:  uncompressed
     Data Start:   0x702ceddc
     Data Size:    2098 Bytes = 2 KiB
     Architecture: ARM
     Hash algo:    sha1
     Hash value:   1272aaf9f1b473c73bcbacfdef37a89e7d83bda4
   Verifying Hash Integrity ... sha1+ OK
   Booting using the fdt blob at 0x702ceddc
   Loading Kernel Image ... OK
OK
boot_prep_linux commandline: console=ttyS0,115200 maxcpus=2 mem=1024M root=/dev/ram mtdparts=nand_iproc.0:1m(uboot),2m(shmoo),1m(nenv),12m(onie),3992m
(open),12m(onie2),2m(vpd),6m(sys_eeprom),16m(diags),16m(diags2),32m(diags_fs) ubi.mtd=4 ethaddr=00:18:23:30:EB:4A quiet
   Loading Ramdisk to 7f55c000, end 7ffff61c ... OK
   Loading Device Tree to 63ffc000, end 63fff831 ... OK

Starting kernel ...




--------------2465124AEE442490A72AFC30--
