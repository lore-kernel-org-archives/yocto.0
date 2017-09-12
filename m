Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE669E00B53; Tue, 12 Sep 2017 00:59:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 400 seconds by postgrey-1.32 at yocto-www;
	Tue, 12 Sep 2017 00:59:12 PDT
Received: from cloudserver096301.home.net.pl (cloudserver096301.home.net.pl
	[79.96.179.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93A16E008D2
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 00:59:12 -0700 (PDT)
Received: from 81-95-197-197.metrolink.pl (81.95.197.197) (HELO
	[192.168.0.103])
	by serwer1539010.home.pl (79.96.179.35) with SMTP (IdeaSmtpServer 0.82)
	id 9689f19c5c8e0779; Tue, 12 Sep 2017 09:52:31 +0200
To: "Eswaran Vinothkumar (BEG/PJ-IOT-EL)" <Vinothkumar.Eswaran@de.bosch.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <24bdab5d1f0f47568bd492abacb4afc9@de.bosch.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Message-ID: <e69dcc26-8423-6f5c-fd21-8d65ef7f1d23@3mdeb.com>
Date: Tue, 12 Sep 2017 09:53:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <24bdab5d1f0f47568bd492abacb4afc9@de.bosch.com>
Subject: Re: SD card image fails for IMX7
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
X-List-Received-Date: Tue, 12 Sep 2017 07:59:14 -0000
Content-Type: multipart/alternative;
	boundary="------------23DC1160B3031DACA1C27F96"
Content-Language: en-US

--------------23DC1160B3031DACA1C27F96
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit



On 12.09.2017 09:30, Eswaran Vinothkumar (BEG/PJ-IOT-EL) wrote:
>
> Hello,
>
Hi,
>
> I am using Yocto based build system for my project. The Yocto version 
> used in pyro.( BB_VERSION  = "1.34.0").
>
> I am trying to build an SD card image by setting the,
>
> IMAGE_FSTYPES = "sdcard" and also set the SDCARD_GENERATION_COMMAND = 
> "generate_imx_sdcard" .
>
I don't know what's the current state of sdcard generation bbclass. 
However, I can assure you that it is not the most comofrtable
way of disk image generation. I would encourage you to switch to wic 
tool already instead (especially if you are using pyro revision).
An example wks file for i.MX SoC family can be found at: 
http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-arm/tree/scripts/lib/image/canned-wks/imx-uboot-spl.wks

To enable it, you would need to add following lines to machine 
configuration file:

WKS_FILES = "imx-uboot-spl.wks"
IMAGE_DEPENDS_wic_append = " virtual/bootloader"
IMAGE_FSTYPES = "wic"

> After trying to build the image , I am seeing the following error 
> messages,
>
> | NOTE: libpthread-stubs-native exists in sysroot, skipping
>
> | DEBUG: Python function extend_recipe_sysroot finished
>
> | DEBUG: Executing shell function do_image_sdcard
>
> | 0+0 records in
>
> | 0+0 records out
>
> | 0 bytes copied, 0.000164164 s, 0.0 kB/s
>
> | Model:  (file)
>
> | Disk 
> /home/evk1206/Projects/test/build/tmp/work/cl_som_imx7-fsl-linux-gnueabi/iot-eval-image/1.0-r0/deploy-iot-eval-image-image-complete/iot-eval-image-cl-som-imx7-20170912065601.rootfs.sdcard: 
> 1057MB
>
> | Sector size (logical/physical): 512B/512B
>
> | Partition Table: msdos
>
> | Disk Flags:
>
> |
>
> | Number  Start   End     Size Type     File system  Flags
>
> |  1      4194kB  12.6MB  8389kB primary               lba
>
> |  2      12.6MB  1053MB  1040MB primary
>
> |
>
> | 846+0 records in
>
> | 846+0 records out
>
> | 433152 bytes (433 kB, 423 KiB) copied, 0.00094238 s, 460 MB/s
>
> | mkfs.fat: warning - lowercase labels might not work properly with 
> DOS or Windows
>
> | mkfs.fat 4.1 (2017-01-24)
>
> | WARNING: exit code 1 from a shell command.
>
> | ERROR: Function failed: do_image_sdcard (log file is located at 
> /home/evk1206/Projects/test/build/tmp/work/cl_som_imx7-fsl-linux-gnueabi/iot-eval-image/1.0-r0/temp/log.do_image_sdcard.28053)
>
> ERROR: Task 
> (/home/evk1206/Projects/test/sources/meta-alen/recipes-core/images/iot-eval-image.bb:do_image_sdcard) 
> failed with exit code '1'
>
> NOTE: Tasks Summary: Attempted 3415 tasks of which 3407 didn't need to 
> be rerun and 1 failed.
>
> Summary: 1 task failed:
>
> /home/evk1206/Projects/test/sources/meta-alen/recipes-core/images/iot-eval-image.bb:do_image_sdcard
>
> Summary: There was 1 WARNING message shown.
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> May I know how to fix this issue.
>
> Mit freundlichen Grüßen / Best regards
>
> *Vinothkumar Eswaran
> BEG-PT/PJ-EL*
>
>
>

-- 
Maciej Pijanowski
Embedded Systems Engineer
http://3mdeb.com | @3mdeb_com


--------------23DC1160B3031DACA1C27F96
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 12.09.2017 09:30, Eswaran
      Vinothkumar (BEG/PJ-IOT-EL) wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:24bdab5d1f0f47568bd492abacb4afc9@de.bosch.com">
      <meta http-equiv="Context-Type" content="text/html;
        charset=iso-8859-1">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <div class="WordSection1">
        <p class="MsoNormal"><span>Hello,</span></p>
      </div>
    </blockquote>
    Hi,<br>
    <blockquote type="cite"
      cite="mid:24bdab5d1f0f47568bd492abacb4afc9@de.bosch.com">
      <div class="WordSection1">
        <p class="MsoNormal"><span> </span></p>
        <p class="MsoNormal"><span>I am using Yocto based build system
            for my project. The Yocto version used in pyro.(</span>
          <span>BB_VERSION  = "1.34.0").</span></p>
        <p class="MsoNormal"><span> </span></p>
        <p class="MsoNormal"><span>I am trying to build an SD card image
            by setting the,
          </span></p>
        <p class="MsoNormal"><span> </span></p>
        <p class="MsoNormal"><span>IMAGE_FSTYPES = "sdcard" and also set
            the SDCARD_GENERATION_COMMAND = "generate_imx_sdcard" .</span></p>
      </div>
    </blockquote>
    I don't know what's the current state of sdcard generation bbclass.
    However, I can assure you that it is not the most comofrtable<br>
    way of disk image generation. I would encourage you to switch to wic
    tool already instead (especially if you are using pyro revision).<br>
    An example wks file for i.MX SoC family can be found at:
<a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-arm/tree/scripts/lib/image/canned-wks/imx-uboot-spl.wks">http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-arm/tree/scripts/lib/image/canned-wks/imx-uboot-spl.wks</a><br>
    <br>
    To enable it, you would need to add following lines to machine
    configuration file:<br>
    <br>
    WKS_FILES = "imx-uboot-spl.wks"<br>
    IMAGE_DEPENDS_wic_append = " virtual/bootloader"<br>
    IMAGE_FSTYPES = "wic"<br>
    <br>
    <blockquote type="cite"
      cite="mid:24bdab5d1f0f47568bd492abacb4afc9@de.bosch.com">
      <div class="WordSection1">
        <p class="MsoNormal"><span>
          </span></p>
        <p class="MsoNormal"><span> </span></p>
        <p class="MsoNormal"><span>After trying to build the image , I
            am seeing the following error messages,</span></p>
        <p class="MsoNormal"><span> </span></p>
        <p class="MsoNormal"><span>| NOTE: libpthread-stubs-native
            exists in sysroot, skipping</span></p>
        <p class="MsoNormal"><span>| DEBUG: Python function
            extend_recipe_sysroot finished</span></p>
        <p class="MsoNormal"><span>| DEBUG: Executing shell function
            do_image_sdcard</span></p>
        <p class="MsoNormal"><span>| 0+0 records in</span></p>
        <p class="MsoNormal"><span>| 0+0 records out</span></p>
        <p class="MsoNormal"><span>| 0 bytes copied, 0.000164164 s, 0.0
            kB/s</span></p>
        <p class="MsoNormal"><span>| Model:  (file)</span></p>
        <p class="MsoNormal"><span>| Disk
/home/evk1206/Projects/test/build/tmp/work/cl_som_imx7-fsl-linux-gnueabi/iot-eval-image/1.0-r0/deploy-iot-eval-image-image-complete/iot-eval-image-cl-som-imx7-20170912065601.rootfs.sdcard:
            1057MB</span></p>
        <p class="MsoNormal"><span>| Sector size (logical/physical):
            512B/512B</span></p>
        <p class="MsoNormal"><span>| Partition Table: msdos</span></p>
        <p class="MsoNormal"><span>| Disk Flags:</span></p>
        <p class="MsoNormal"><span>|
          </span></p>
        <p class="MsoNormal"><span>| Number  Start   End     Size   
            Type     File system  Flags</span></p>
        <p class="MsoNormal"><span>|  1      4194kB  12.6MB  8389kB 
            primary               lba</span></p>
        <p class="MsoNormal"><span>|  2      12.6MB  1053MB  1040MB 
            primary</span></p>
        <p class="MsoNormal"><span>|
          </span></p>
        <p class="MsoNormal"><span>| 846+0 records in</span></p>
        <p class="MsoNormal"><span>| 846+0 records out</span></p>
        <p class="MsoNormal"><span>| 433152 bytes (433 kB, 423 KiB)
            copied, 0.00094238 s, 460 MB/s</span></p>
        <p class="MsoNormal"><span>| mkfs.fat: warning - lowercase
            labels might not work properly with DOS or Windows</span></p>
        <p class="MsoNormal"><span>| mkfs.fat 4.1 (2017-01-24)</span></p>
        <p class="MsoNormal"><span>| WARNING: exit code 1 from a shell
            command.</span></p>
        <p class="MsoNormal"><span>| ERROR: Function failed:
            do_image_sdcard (log file is located at
/home/evk1206/Projects/test/build/tmp/work/cl_som_imx7-fsl-linux-gnueabi/iot-eval-image/1.0-r0/temp/log.do_image_sdcard.28053)</span></p>
        <p class="MsoNormal"><span>ERROR: Task
(/home/evk1206/Projects/test/sources/meta-alen/recipes-core/images/iot-eval-image.bb:do_image_sdcard)
            failed with exit code '1'</span></p>
        <p class="MsoNormal"><span>NOTE: Tasks Summary: Attempted 3415
            tasks of which 3407 didn't need to be rerun and 1 failed.</span></p>
        <p class="MsoNormal"><span> </span></p>
        <p class="MsoNormal"><span>Summary: 1 task failed:</span></p>
        <p class="MsoNormal"><span> 
/home/evk1206/Projects/test/sources/meta-alen/recipes-core/images/iot-eval-image.bb:do_image_sdcard</span></p>
        <p class="MsoNormal"><span>Summary: There was 1 WARNING message
            shown.</span></p>
        <p class="MsoNormal"><span>Summary: There was 1 ERROR message
            shown, returning a non-zero exit code.</span></p>
        <p class="MsoNormal"><span> </span></p>
        <p class="MsoNormal"><span>May I know how to fix this issue.</span></p>
        <p class="MsoNormal"><span> </span></p>
        <p class="MsoNormal"><span lang="DE">Mit freundlichen Grüßen /
            Best regards
            <br>
            <br>
            <b>Vinothkumar Eswaran<br>
              BEG-PT/PJ-EL</b><br>
            <br>
          </span><span lang="DE"></span></p>
        <p class="MsoNormal"><span lang="DE"> </span></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Maciej Pijanowski
Embedded Systems Engineer
<a class="moz-txt-link-freetext" href="http://3mdeb.com">http://3mdeb.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------23DC1160B3031DACA1C27F96--
