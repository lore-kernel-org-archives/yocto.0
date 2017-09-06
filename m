Return-Path: <fzhang@sgl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6325AE00CAA; Wed,  6 Sep 2017 07:39:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1521 seconds by postgrey-1.32 at yocto-www;
	Wed, 06 Sep 2017 07:39:13 PDT
Received: from webmail.sgl.com (mail1.sgl.com [209.87.231.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB7BDE00A9C
	for <yocto@yoctoproject.org>; Wed,  6 Sep 2017 07:39:13 -0700 (PDT)
Received: from [10.1.20.15] (unknown [10.1.20.15])
	by webmail.sgl.com (Postfix) with ESMTP id 736FF1D1ECD4A
	for <yocto@yoctoproject.org>; Wed,  6 Sep 2017 10:12:08 -0400 (EDT)
To: yocto@yoctoproject.org
From: Fan Zhang <fzhang@sgl.com>
Message-ID: <59dff5cc-490c-f100-bdab-3e6dc552a496@sgl.com>
Date: Wed, 6 Sep 2017 10:13:52 -0400
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
Subject: Building out of tree module into kernel image
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
X-List-Received-Date: Wed, 06 Sep 2017 14:39:15 -0000
X-Groupsio-MsgNum: 37700
Content-Type: multipart/mixed; boundary="------------9B76B94CDFD2E95143C901AF"
Content-Language: en-US

--------------9B76B94CDFD2E95143C901AF
Content-Type: multipart/alternative;
 boundary="------------33D3F687C1565394CF2C938C"

--------------33D3F687C1565394CF2C938C
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

I've followed the Yocto manual here: 
http://www.yoctoproject.org/docs/1.6.1/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules 
to include an out of tree module, named axidma. I can build this module 
alone by

bitbake axidma

and get the .ko file in build/tmp/work/my_machine/axidma directory, but 
when I build my custom image, and include this module by

MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "kernel-module-axidma"

I got an error that says "/Computing transaction...error: Can't install 
packagegroup-core-boot-1.0-r17@microzed_zynq7: no package provides 
kernel-module-axidma/". All the other variables mentioned in the manual 
doesn't compile the module either. They just doesn't stop the image from 
building.

After googling for a few days, it seems every thread I found stucked at 
different stage of this problem, some advance further than me, but from 
my very limited knowledge about bitbake, out of tree modules should be 
included into the build by module.bbclass, which has do_configuration, 
do_compile and do _install in that class. So it is quite puzzling why 
this is not working.

Any pointer is greatly appreciated. Thanks. Below are the configurations 
for my module:

    My axidma folder structure is this

        /axidma (a directory under recipes-sgl directory)
        /

        /    - files (directory)
        /

        /            - COPYING/

        /            - dma_proxy.c/

        /            - dma_proxy.h/

        /            - Makefile
        /

        /    - axidma.bb/

    The bb files in axidma directory is added to BBFILES in layer.conf by

        /BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \//
        //    ${LAYERDIR}/recipes-*/*/*.bbappend"/

    axidma.bb file looks like this:

        /SUMMARY = "Example of how to build an external Linux kernel module"
        LICENSE = "GPLv2"
        LIC_FILES_CHKSUM =
        "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"

        inherit module
        PR = "r0"
        PV = "0.1"
        SRC_URI = "file://Makefile \
                    file://dma_proxy.c \
                    file://dma_proxy.h \
                    file://COPYING \
                   "

        S = "${WORKDIR}"

        # The inherit of module.bbclass will automatically name module
        packages with
        # "kernel-module-" prefix as required by the oe-core build
        environment./

    Makefile looks like this:

        /obj-m := dma_proxy.o//
        //
        //SRC := $(shell pwd)//
        //
        //all://
        //    $(MAKE) -C $(KERNEL_SRC) M=$(SRC)//
        //
        //modules_install://
        //    $(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install//
        //
        //clean://
        //    rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c//
        //    rm -f Module.markers Module.symvers modules.order//
        //    rm -rf .tmp_versions Modules.symvers/

Fan Zhang



--------------33D3F687C1565394CF2C938C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi,</p>
    <p>I've followed the Yocto manual here:
<a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/1.6.1/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules">http://www.yoctoproject.org/docs/1.6.1/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules</a>
      to include an out of tree module, named axidma. I can build this
      module alone by</p>
    <p>bitbake axidma<br>
    </p>
    <p>and get the .ko file in build/tmp/work/my_machine/axidma
      directory, but when I build my custom image, and include this
      module by <br>
    </p>
    <p>MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "kernel-module-axidma"</p>
    <p>I got an error that says "<i>Computing transaction...error: Can't
        install packagegroup-core-boot-1.0-r17@microzed_zynq7: no
        package provides kernel-module-axidma</i>". All the other
      variables mentioned in the manual doesn't compile the module
      either. They just doesn't stop the image from building. <br>
    </p>
    <p>After googling for a few days, it seems every thread I found
      stucked at different stage of this problem, some advance further
      than me, but from my very limited knowledge about bitbake, out of
      tree modules should be included into the build by module.bbclass,
      which has do_configuration, do_compile and do _install in that
      class. So it is quite puzzling why this is not working. <br>
    </p>
    <p>Any pointer is greatly appreciated. Thanks. Below are the
      configurations for my module:</p>
    <blockquote>
      <p>My axidma folder structure is this</p>
      <blockquote>
        <p><font size="-1"><i>axidma (a directory under recipes-sgl
              directory)<br>
            </i></font></p>
        <p><font size="-1"><i>    - files (directory) <br>
            </i></font></p>
        <p><font size="-1"><i>            - COPYING</i></font></p>
        <p><font size="-1"><i>            - dma_proxy.c</i></font></p>
        <p><font size="-1"><i>            - dma_proxy.h</i></font></p>
        <p><font size="-1"><i>            - Makefile<br>
            </i></font></p>
        <p><font size="-1"><i>    - axidma.bb</i></font></p>
      </blockquote>
      <p>The bb files in axidma directory is added to BBFILES in
        layer.conf by<br>
      </p>
      <blockquote>
        <p><font size="-1"><i>BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \</i><i><br>
            </i><i>    ${LAYERDIR}/recipes-*/*/*.bbappend"</i></font><br>
        </p>
      </blockquote>
      <p>axidma.bb file looks like this:</p>
      <blockquote>
        <p><i><font size="-1">SUMMARY = "Example of how to build an
              external Linux kernel module"<br>
              LICENSE = "GPLv2"<br>
              LIC_FILES_CHKSUM =
              <a class="moz-txt-link-rfc2396E" href="file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e">"file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"</a><br>
              <br>
              inherit module<br>
              PR = "r0"<br>
              PV = "0.1"<br>
              SRC_URI = "<a class="moz-txt-link-freetext" href="file://Makefile">file://Makefile</a> \<br>
                         <a class="moz-txt-link-freetext" href="file://dma_proxy.c">file://dma_proxy.c</a> \<br>
                         <a class="moz-txt-link-freetext" href="file://dma_proxy.h">file://dma_proxy.h</a> \<br>
                         <a class="moz-txt-link-freetext" href="file://COPYING">file://COPYING</a> \<br>
                        "<br>
              <br>
              S = "${WORKDIR}"<br>
              <br>
              # The inherit of module.bbclass will automatically name
              module packages with<br>
              # "kernel-module-" prefix as required by the oe-core build
              environment.</font></i></p>
      </blockquote>
      <p>Makefile looks like this: <br>
      </p>
      <blockquote>
        <p><font size="-1"><i>obj-m := dma_proxy.o</i><i><br>
            </i><i><br>
            </i><i>SRC := $(shell pwd)</i><i><br>
            </i><i><br>
            </i><i>all:</i><i><br>
            </i><i>    $(MAKE) -C $(KERNEL_SRC) M=$(SRC)</i><i><br>
            </i><i><br>
            </i><i>modules_install:</i><i><br>
            </i><i>    $(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install</i><i><br>
            </i><i><br>
            </i><i>clean:</i><i><br>
            </i><i>    rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c</i><i><br>
            </i><i>    rm -f Module.markers Module.symvers modules.order</i><i><br>
            </i><i>    rm -rf .tmp_versions Modules.symvers</i></font><br>
        </p>
      </blockquote>
    </blockquote>
    <p>Fan Zhang<br>
    </p>
    <p><br>
    </p>
  </body>
</html>

--------------33D3F687C1565394CF2C938C--

--------------9B76B94CDFD2E95143C901AF
Content-Type: text/x-vcard; charset=utf-8;
 name="fzhang.vcf"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="fzhang.vcf"

begin:vcard
fn:Fan Zhang
n:Zhang;Fan
org:Sander Geophysics Ltd. 
email;internet:fzhang@sgl.com
title:Electronics Design Engineer
tel;work:(613)521-9626
version:2.1
end:vcard


--------------9B76B94CDFD2E95143C901AF--
