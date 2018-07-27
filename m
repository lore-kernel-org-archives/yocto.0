Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17644E00CE7; Thu, 26 Jul 2018 18:54:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 263F4E00CDF
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 18:54:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w6R1s8ZT008384
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 26 Jul 2018 18:54:09 -0700
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Thu, 26 Jul 2018 18:54:07 -0700
To: Steve Pavao <stevep@korgrd.com>, <yocto@yoctoproject.org>
References: <4B83820E-84AB-43C5-9458-18EF4BCB3EFD@korgrd.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <e1e4423a-640f-4fcc-b5fe-2c9695fc7b0f@windriver.com>
Date: Fri, 27 Jul 2018 09:57:58 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <4B83820E-84AB-43C5-9458-18EF4BCB3EFD@korgrd.com>
X-Originating-IP: [128.224.162.218]
Subject: Re: custom linux kernel recipe fails
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
X-List-Received-Date: Fri, 27 Jul 2018 01:54:12 -0000
Content-Type: multipart/alternative;
	boundary="------------9FD22762E51B815523AB9EB5"

--------------9FD22762E51B815523AB9EB5
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 07/27/2018 12:56 AM, Steve Pavao wrote:
> Hello -
>
> I’m trying to build using a custom 64-bit kernel at head of sumo, but I get an error.  It seems that SRCPV cannot be resolved.    Please send any ideas you may have about how I may adapt my recipe to get it to work.
>
> Normally, I use the default meta-raspberrypi kernel, but for this build, I am using PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-custom” in my local.conf
>
> My simple kernel recipe is in linux-yocto-custom.bb.  (It is based on the example recipe).
>
> inherit kernel
> require recipes-kernel/linux/linux-yocto.inc
>
> PV = "${LINUX_VERSION}+git${SRCPV}"
> PR = "r0"
>
> LINUX_VERSION ?= "4.14.4"
> LINUX_VERSION_EXTENSION_append = "-xenomai-ipipe-arm64"
>
> SRC_URI = "http://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=http;branch=master;nocheckout=1"
> SRCREV = "133bbf97672ff6e72fc21784b8ae44b194b76626"

Try:

SRC_URI ="http://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=http;branch=master;nocheckout=1;name=machine"
SRCREV_machine = "133bbf97672ff6e72fc21784b8ae44b194b76626"

Best Regards,
Chen Qi

> SRC_URI[md5sum] = "a5cb3babd85a94fda2905cc3db5e7825"
>
> COMPATIBLE_MACHINE = "raspberrypi3-64"
>
> the error:
>
> WARNING: /data/development/lfs/yocto/poky/meta-korg-spark/recipes-kernel/linux/linux-yocto-custom.bb: Exception during build_dependencies for PKG_kernel-base
> WARNING: /data/development/lfs/yocto/poky/meta-korg-spark/recipes-kernel/linux/linux-yocto-custom.bb: Error during finalise of /data/development/lfs/yocto/poky/meta-korg-spark/recipes-kernel/linux/linux-yocto-custom.bb
> ERROR: ExpansionError during parsing /data/development/lfs/yocto/poky/meta-korg-spark/recipes-kernel/linux/linux-yocto-custom.bb
> Traceback (most recent call last):
> bb.data_smart.ExpansionError: Failure expanding variable PKG_kernel-base, expression was kernel-${@legitimize_package_name('${@get_kernelversion_headers('/data/development/lfs/yocto/build/spark/raspberrypi3-64/tmp/work/raspberrypi3_64-poky-linux/linux-yocto-custom/4.14.4+git${SRCPV}-r0/linux-raspberrypi3_64-standard-build')}')} which triggered exception SyntaxError: invalid syntax (PKG_kernel-base, line 1)
>


--------------9FD22762E51B815523AB9EB5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/27/2018 12:56 AM, Steve Pavao
      wrote:<br>
    </div>
    <blockquote
      cite="mid:4B83820E-84AB-43C5-9458-18EF4BCB3EFD@korgrd.com"
      type="cite">
      <pre wrap="">Hello -

I’m trying to build using a custom 64-bit kernel at head of sumo, but I get an error.  It seems that SRCPV cannot be resolved.    Please send any ideas you may have about how I may adapt my recipe to get it to work.

Normally, I use the default meta-raspberrypi kernel, but for this build, I am using PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-custom” in my local.conf

My simple kernel recipe is in linux-yocto-custom.bb.  (It is based on the example recipe).

inherit kernel
require recipes-kernel/linux/linux-yocto.inc

PV = "${LINUX_VERSION}+git${SRCPV}"
PR = "r0"

LINUX_VERSION ?= "4.14.4"
LINUX_VERSION_EXTENSION_append = "-xenomai-ipipe-arm64"

SRC_URI = <a class="moz-txt-link-rfc2396E" href="http://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=http;branch=master;nocheckout=1">"http://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=http;branch=master;nocheckout=1"</a>
SRCREV = "133bbf97672ff6e72fc21784b8ae44b194b76626"</pre>
    </blockquote>
    <br>
    Try:<br>
    <pre wrap="">SRC_URI = <a class="moz-txt-link-rfc2396E" href="http://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=http;branch=master;nocheckout=1">"http://gitlab.denx.de/Xenomai/ipipe-arm64;protocol=http;branch=master;nocheckout=1;name=machine"</a>
SRCREV_machine = "133bbf97672ff6e72fc21784b8ae44b194b76626"</pre>
    Best Regards,<br>
    Chen Qi<br>
    <br>
    <blockquote
      cite="mid:4B83820E-84AB-43C5-9458-18EF4BCB3EFD@korgrd.com"
      type="cite">
      <pre wrap="">
SRC_URI[md5sum] = "a5cb3babd85a94fda2905cc3db5e7825"

COMPATIBLE_MACHINE = "raspberrypi3-64"

the error:

WARNING: /data/development/lfs/yocto/poky/meta-korg-spark/recipes-kernel/linux/linux-yocto-custom.bb: Exception during build_dependencies for PKG_kernel-base
WARNING: /data/development/lfs/yocto/poky/meta-korg-spark/recipes-kernel/linux/linux-yocto-custom.bb: Error during finalise of /data/development/lfs/yocto/poky/meta-korg-spark/recipes-kernel/linux/linux-yocto-custom.bb
ERROR: ExpansionError during parsing /data/development/lfs/yocto/poky/meta-korg-spark/recipes-kernel/linux/linux-yocto-custom.bb
Traceback (most recent call last):
bb.data_smart.ExpansionError: Failure expanding variable PKG_kernel-base, expression was kernel-${@legitimize_package_name('${@get_kernelversion_headers('/data/development/lfs/yocto/build/spark/raspberrypi3-64/tmp/work/raspberrypi3_64-poky-linux/linux-yocto-custom/4.14.4+git${SRCPV}-r0/linux-raspberrypi3_64-standard-build')}')} which triggered exception SyntaxError: invalid syntax (PKG_kernel-base, line 1)

</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------9FD22762E51B815523AB9EB5--
