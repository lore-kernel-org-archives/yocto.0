Return-Path: <sudhangathan@gmail.com>
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 395A1E01437
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 20:11:50 -0700 (PDT)
Received: by mail-pa0-f41.google.com with SMTP id bj3so5103603pad.0
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 20:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=user-agent:in-reply-to:references:mime-version:content-type:subject
	:from:date:to:message-id;
	bh=ejb6nhcqblpMy52TvQB3Dr8vXTTwyZEFJwvM0kJrQGU=;
	b=YED5OhsPYRXbO80U3jkTP+WgGZOTp/hwB5ZErfk8V6gaH8XYq4Gd0d9lQTwRc0eN2F
	XxFBoW8WwjPZtaB9/1eChHnVuNS2mCcH5hLBWCDIZj6itBZ7CeKzk/7jxMjHyJWWzpV3
	TIGlq+2LBneGWQsQHz34S6n2ZPELbGHgAmy4cDz/u29TNmbSjwtqFondhfwq5TAM5tk4
	wa/4YZo9+QLQL4JZ7xeA4RqAKwnLezihUqYOVcOfCcrK+eVYdRhXzTGXXOx8If2KSl2M
	ti33SGi/PilLTnPDibM7UqR1BRSQ3if2+v96Oa4mvqLV2dza82g/J+j7UsjbPNRPQxgW
	K1PQ==
X-Received: by 10.66.5.195 with SMTP id u3mr20861722pau.79.1374289910057;
	Fri, 19 Jul 2013 20:11:50 -0700 (PDT)
Received: from [223.228.17.191] ([223.228.17.191])
	by mx.google.com with ESMTPSA id
	py4sm22546261pbc.14.2013.07.19.20.11.47 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 19 Jul 2013 20:11:49 -0700 (PDT)
User-Agent: Kaiten Mail
In-Reply-To: <CAEO8TxDS2aCjH=AtiVcdPOWsdZ_4NMOd+cHhn-WWX=GYjB4fTA@mail.gmail.com>
References: <CAEO8TxDS2aCjH=AtiVcdPOWsdZ_4NMOd+cHhn-WWX=GYjB4fTA@mail.gmail.com>
MIME-Version: 1.0
From: Sudhangathan BS <sudhangathan@gmail.com>
Date: Sat, 20 Jul 2013 08:41:28 +0530
To: himself_amit@yahoo.co.in, amit kumar <kumaramit124@gmail.com>,
	yocto@yoctoproject.org
Message-ID: <ed77c118-436a-48ad-86d5-56e765188768@email.android.com>
Subject: Re: Arago project image fail to run in QEMU
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
X-List-Received-Date: Sat, 20 Jul 2013 03:11:51 -0000
Content-Type: multipart/alternative;
	boundary="----9D945SJ0JQQH20VAT23QFJ745HPNC5"

------9D945SJ0JQQH20VAT23QFJ745HPNC5
Content-Type: text/plain;
 charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Amit,

You have to build separate images to be run on qemu.. You have to set it in your local.conf file.. i.e. u have to change your build-target.. 

Images built to run on hardware cannot be run on qemu right now.. 

Virtualization is only available upto processor level, and not the complete hardware...!

Which processor is keystone-II using..?

Best,
Sudhangathan B S

amit kumar <kumaramit124@gmail.com> wrote:
>Hi,
>
>I have built the Arago project for keystone-II successfully. The images
>are
>available under the deploy/Images dir.
>
>I have already added my module into the kernel and recompiled the
>kernel
>image.
>
>
>
>Now my doubt is before putting the image on actual hardware I want to
>run
>it on QEMU. Is it possible to run the built images on QEMU?
>
>I tried to run using the following command but getting an error-
>
>
>/**************************************************************/
>
>amit@amit-HP:~/OE/MCSDK/mcsdk/build$ runqemu
>arago-tmp-external-linaro-toolchain/deploy/images/uImage-keystone-evm.bin
>arago-tmp-external-linaro-toolchain/deploy/images/core-image-minimal-keystone-evm-20130718181345.rootfs.ubi
>Error: unknown file arg
>[arago-tmp-external-linaro-toolchain/deploy/images/core-image-minimal-keystone-evm-20130718181345.rootfs.ubi]
>
>Usage: you can run this script with any valid combination
>of the following options (in any order):
>  QEMUARCH - the qemu machine architecture to use
>  KERNEL - the kernel image file to use
>  ROOTFS - the rootfs image file or nfsroot directory to use
>MACHINE - the machine name (optional, autodetected from KERNEL filename
>if unspecified)
>  RAMFS - boot a ramfs-based image
>  Simplified QEMU command-line options can be passed with:
>    nographic - disables video console
>    serial - enables a serial console on /dev/ttyS0
>    kvm - enables KVM when running qemux86/qemux86-64 (VT-capable CPU
>required)
>  qemuparams="xyz" - specify custom parameters to QEMU
>  bootparams="xyz" - specify custom kernel parameters during boot
>
>Examples:
>  runqemu qemuarm
>  runqemu qemux86-64 core-image-sato ext3
>  runqemu path/to/bzImage-qemux86.bin path/to/nfsrootdir/ serial
>  runqemu qemux86 ramfs
>  runqemu qemux86 qemuparams="-m 256"
>  runqemu qemux86 bootparams="psplash=false"
>amit@amit-HP:~/OE/MCSDK/mcsdk/build$
>
>/**********************************************************/
>
>The build step I followed from the arago project build link-
>
>"http://arago-project.org/wiki/index.php/Setting_Up_Build_Environment"
>
>
>Please let me know if I have to do something else to run the image
>under
>QEMU.
>
>-- 
>Thanks & Regards
>Amit Kumar
>
>
>------------------------------------------------------------------------
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

-- 
Sent from Kaiten Mail. Please excuse my brevity.

------9D945SJ0JQQH20VAT23QFJ745HPNC5
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head></head><body><p dir=ltr>Hi Amit,</p>
<p dir=ltr>You have to build separate images to be run on qemu.. You have to set it in your local.conf file.. i.e. u have to change your build-target.. </p>
<p dir=ltr>Images built to run on hardware cannot be run on qemu right now.. </p>
<p dir=ltr>Virtualization is only available upto processor level, and not the complete hardware...!</p>
<p dir=ltr>Which processor is keystone-II using..?</p>
<p dir=ltr>Best,<br>
Sudhangathan B S</p>
<br><br><div class="gmail_quote">amit kumar &lt;kumaramit124@gmail.com&gt; wrote:<blockquote class="gmail_quote" style="margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<div dir="ltr"><div><br clear="all" /></div>Hi,<br /><br /><p class=""><span style="font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;">I have built the Arago project for keystone-II successfully. The images are available under the deploy/Images dir.</span></p>

<p class=""><span style="font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;">I have already added my module into the kernel and recompiled the kernel image.</span></p>
<p class=""><span style="font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;"> </span></p>
<p class=""><span style="font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;">Now
 my doubt is before putting the image on actual hardware I want to run 
it on QEMU. Is it possible to run the built images on QEMU?</span></p>
<p class=""><span style="font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;">I tried to run using the following command but getting an error-</span></p><p class=""><span style="font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;"><br />
</span></p>
<p class=""><span style="font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;">/**************************************************************/ <br /></span></p><p class=""><span style="font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;">amit@amit-HP:~/OE/MCSDK/mcsdk/build$ runqemu arago-tmp-external-linaro-toolchain/deploy/images/uImage-keystone-evm.bin arago-tmp-external-linaro-toolchain/deploy/images/core-image-minimal-keystone-evm-20130718181345.rootfs.ubi<br />
Error: unknown file arg [arago-tmp-external-linaro-toolchain/deploy/images/core-image-minimal-keystone-evm-20130718181345.rootfs.ubi]<br /><br />Usage: you can run this script with any valid combination<br />of the following options (in any order):<br />
  QEMUARCH - the qemu machine architecture to use<br />  KERNEL - the kernel image file to use<br />  ROOTFS - the rootfs image file or nfsroot directory to use<br />  MACHINE - the machine name (optional, autodetected from KERNEL filename if unspecified)<br />
  RAMFS - boot a ramfs-based image<br />  Simplified QEMU command-line options can be passed with:<br />    nographic - disables video console<br />    serial - enables a serial console on /dev/ttyS0<br />    kvm - enables KVM when running qemux86/qemux86-64 (VT-capable CPU required)<br />
  qemuparams=&quot;xyz&quot; - specify custom parameters to QEMU<br />  bootparams=&quot;xyz&quot; - specify custom kernel parameters during boot<br /><br />Examples:<br />  runqemu qemuarm<br />  runqemu qemux86-64 core-image-sato ext3<br />
  runqemu path/to/bzImage-qemux86.bin path/to/nfsrootdir/ serial<br />  runqemu qemux86 ramfs<br />  runqemu qemux86 qemuparams=&quot;-m 256&quot;<br />  runqemu qemux86 bootparams=&quot;psplash=false&quot;<br />amit@amit-HP:~/OE/MCSDK/mcsdk/build$ <br />

</span></p>
<p class=""><span style="font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;">/**********************************************************/</span></p>
<p class=""><span style="font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;">The build step I followed from the arago project build link- <br /></span></p><p class=""><span style="font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;">&quot;<a href="http://arago-project.org/wiki/index.php/Setting_Up_Build_Environment">http://arago-project.org/wiki/index.php/Setting_Up_Build_Environment</a>&quot;</span></p>
<p class=""><span style="font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;"></span></p>
<p class=""><span style="font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;"> </span></p>
<span style="font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;">Please let me know if I have to do something else to run the image under QEMU.</span><br /><br /><div>-- <br />Thanks &amp; Regards<br />Amit Kumar 
</div></div>
<p style="margin-top: 2.5em; margin-bottom: 1em; border-bottom: 1px solid #000"></p><pre class="k9mail"><hr /><br />yocto mailing list<br />yocto@yoctoproject.org<br /><a href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><br /></pre></blockquote></div><br>
-- <br>
Sent from Kaiten Mail. Please excuse my brevity.</body></html>

------9D945SJ0JQQH20VAT23QFJ745HPNC5--
