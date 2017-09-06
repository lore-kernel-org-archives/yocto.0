Return-Path: <fzhang@sgl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C8F9E00CAA; Wed,  6 Sep 2017 12:20:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail.sgl.com (mail1.sgl.com [209.87.231.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8075CE00A9B
	for <yocto@yoctoproject.org>; Wed,  6 Sep 2017 12:20:31 -0700 (PDT)
Received: from [10.1.20.15] (unknown [10.1.20.15])
	by webmail.sgl.com (Postfix) with ESMTP id 25F1F1D1F20EA;
	Wed,  6 Sep 2017 15:18:46 -0400 (EDT)
To: Vincent Prince <vincent.prince.fr@gmail.com>,
	yocto@yoctoproject.org
References: <59dff5cc-490c-f100-bdab-3e6dc552a496@sgl.com>
	<CAB2nKc9mst-yWiCWY4pn-o=WztcM2-Mc7jqg_-7gt0ubtXfBtQ@mail.gmail.com>
From: Fan Zhang <fzhang@sgl.com>
Message-ID: <12bb334d-b90b-7dcb-d460-35c2da44a42f@sgl.com>
Date: Wed, 6 Sep 2017 15:20:30 -0400
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CAB2nKc9mst-yWiCWY4pn-o=WztcM2-Mc7jqg_-7gt0ubtXfBtQ@mail.gmail.com>
Subject: Re: Building out of tree module into kernel image
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
X-List-Received-Date: Wed, 06 Sep 2017 19:20:34 -0000
X-Groupsio-MsgNum: 37705
Content-Type: multipart/mixed; boundary="------------D97E1B35BEC54F384E91140B"
Content-Language: en-US

--------------D97E1B35BEC54F384E91140B
Content-Type: multipart/alternative;
 boundary="------------39F68A945E0C0883503E06CB"

--------------39F68A945E0C0883503E06CB
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Vincent

Thanks for the quick reply. The MACHINE_ESSENTIAL_EXTRA_RDEPENDS 
  instruction was put in the local.conf in my build folder.

After renaming axidma.bb to kernel-module-axidma.bb. The image build 
picked up this module. Thanks you so much.

There is this comments in the module sample bb file/
/

    /# The inherit of module.bbclass will automatically name module
    packages with/
    /# "kernel-module-" prefix as required by the oe-core build environment.
    /

leaded me to believe this is done automatically by bitbake. Thanks again.

Best regards,

Fan


/
/
//On 06/09/2017 11:00 AM, Vincent Prince wrote:
> Hi,
>
> Where did you put MACHINE_ESSENTIAL_EXTRA_RDEPENDS  instruction?
> Did you try to rename axidma.bb <http://axidma.bb/> to 
> kernel-module-axidma.bb <http://kernel-module-axidma.bb> ?
>
> Best Regards,
> Vincent
>
> 2017-09-06 16:13 GMT+02:00 Fan Zhang <fzhang@sgl.com 
> <mailto:fzhang@sgl.com>>:
>
>     Hi,
>
>     I've followed the Yocto manual here:
>     http://www.yoctoproject.org/docs/1.6.1/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules
>     <http://www.yoctoproject.org/docs/1.6.1/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules>
>     to include an out of tree module, named axidma. I can build this
>     module alone by
>
>     bitbake axidma
>
>     and get the .ko file in build/tmp/work/my_machine/axidma
>     directory, but when I build my custom image, and include this
>     module by
>
>     MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "kernel-module-axidma"
>
>     I got an error that says "/Computing transaction...error: Can't
>     install packagegroup-core-boot-1.0-r17@microzed_zynq7: no package
>     provides kernel-module-axidma/". All the other variables mentioned
>     in the manual doesn't compile the module either. They just doesn't
>     stop the image from building.
>
>     After googling for a few days, it seems every thread I found
>     stucked at different stage of this problem, some advance further
>     than me, but from my very limited knowledge about bitbake, out of
>     tree modules should be included into the build by module.bbclass,
>     which has do_configuration, do_compile and do _install in that
>     class. So it is quite puzzling why this is not working.
>
>     Any pointer is greatly appreciated. Thanks. Below are the
>     configurations for my module:
>
>         My axidma folder structure is this
>
>             /axidma (a directory under recipes-sgl directory)
>             /
>
>             /    - files (directory)
>             /
>
>             /            - COPYING/
>
>             /            - dma_proxy.c/
>
>             /            - dma_proxy.h/
>
>             /            - Makefile
>             /
>
>             /    - axidma.bb <http://axidma.bb>/
>
>         The bb files in axidma directory is added to BBFILES in
>         layer.conf by
>
>             /BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \//
>             //    ${LAYERDIR}/recipes-*/*/*.bbappend"/
>
>         axidma.bb <http://axidma.bb> file looks like this:
>
>             /SUMMARY = "Example of how to build an external Linux
>             kernel module"
>             LICENSE = "GPLv2"
>             LIC_FILES_CHKSUM =
>             "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"
>
>             inherit module
>             PR = "r0"
>             PV = "0.1"
>             SRC_URI = "file://Makefile \
>             file://dma_proxy.c \
>             file://dma_proxy.h \
>             file://COPYING \
>                       "
>
>             S = "${WORKDIR}"
>
>             # The inherit of module.bbclass will automatically name
>             module packages with
>             # "kernel-module-" prefix as required by the oe-core build
>             environment./
>
>         Makefile looks like this:
>
>             /obj-m := dma_proxy.o//
>             //
>             //SRC := $(shell pwd)//
>             //
>             //all://
>             //    $(MAKE) -C $(KERNEL_SRC) M=$(SRC)//
>             //
>             //modules_install://
>             //    $(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install//
>             //
>             //clean://
>             //    rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c//
>             //    rm -f Module.markers Module.symvers modules.order//
>             //    rm -rf .tmp_versions Modules.symvers/
>
>     Fan Zhang
>
>
>
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
>
>


--------------39F68A945E0C0883503E06CB
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">Hi Vincent<br>
      <br>
      Thanks for the quick reply. The MACHINE_ESSENTIAL_EXTRA_RDEPENDS
       instruction was put in the local.conf in my build folder. <br>
      <br>
      After renaming axidma.bb to kernel-module-axidma.bb. The image
      build picked up this module. Thanks you so much. <br>
      <br>
      There is this comments in the module sample bb file<i><font
          size="-1"><br>
        </font></i>
      <blockquote><i><font size="-1"> # The inherit of module.bbclass
            will automatically name module packages with</font></i><br>
        <i><font size="-1"> # "kernel-module-" prefix as required by the
            oe-core build environment.<br>
          </font></i></blockquote>
      leaded me to believe this is done automatically by bitbake. 
      Thanks again. <br>
      <br>
      Best regards,<br>
      <br>
      Fan<br>
      <br>
      <br>
      <i><font size="-1"><br>
        </font></i><br>
      <i><font size="-1"></font></i>On 06/09/2017 11:00 AM, Vincent
      Prince wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAB2nKc9mst-yWiCWY4pn-o=WztcM2-Mc7jqg_-7gt0ubtXfBtQ@mail.gmail.com">
      <div dir="ltr">Hi, 
        <div><br>
        </div>
        <div>Where did you put MACHINE_ESSENTIAL_EXTRA_<wbr>RDEPENDS
           instruction?<br>
          <div class="gmail_extra">Did you try to rename <a
              href="http://axidma.bb/" target="_blank"
              moz-do-not-send="true">axidma.bb</a> to <a
              href="http://kernel-module-axidma.bb"
              moz-do-not-send="true">kernel-module-axidma.bb</a> ?</div>
          <div class="gmail_extra"><br>
          </div>
          <div class="gmail_extra">Best Regards, </div>
          <div class="gmail_extra">Vincent</div>
          <div class="gmail_extra"><br>
            <div class="gmail_quote">2017-09-06 16:13 GMT+02:00 Fan
              Zhang <span dir="ltr">&lt;<a href="mailto:fzhang@sgl.com"
                  target="_blank" moz-do-not-send="true">fzhang@sgl.com</a>&gt;</span>:<br>
              <blockquote class="gmail_quote" style="margin:0px 0px 0px
                0.8ex;border-left:1px solid
                rgb(204,204,204);padding-left:1ex">
                <div bgcolor="#FFFFFF">
                  <p>Hi,</p>
                  <p>I've followed the Yocto manual here:
                    <a
                      class="gmail-m_3278242207135345267moz-txt-link-freetext"
href="http://www.yoctoproject.org/docs/1.6.1/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules"
                      target="_blank" moz-do-not-send="true">http://www.yoctoproject.org/<wbr>docs/1.6.1/kernel-dev/kernel-<wbr>dev.html#incorporating-out-of-<wbr>tree-modules</a>
                    to include an out of tree module, named axidma. I
                    can build this module alone by</p>
                  <p>bitbake axidma<br>
                  </p>
                  <p>and get the .ko file in build/tmp/work/my_machine/<wbr>axidma
                    directory, but when I build my custom image, and
                    include this module by <br>
                  </p>
                  <p>MACHINE_ESSENTIAL_EXTRA_<wbr>RDEPENDS +=
                    "kernel-module-axidma"</p>
                  <p>I got an error that says "<i>Computing
                      transaction...error: Can't install
                      packagegroup-core-boot-1.0-<wbr>r17@microzed_zynq7:
                      no package provides kernel-module-axidma</i>". All
                    the other variables mentioned in the manual doesn't
                    compile the module either. They just doesn't stop
                    the image from building. <br>
                  </p>
                  <p>After googling for a few days, it seems every
                    thread I found stucked at different stage of this
                    problem, some advance further than me, but from my
                    very limited knowledge about bitbake, out of tree
                    modules should be included into the build by
                    module.bbclass, which has do_configuration,
                    do_compile and do _install in that class. So it is
                    quite puzzling why this is not working. <br>
                  </p>
                  <p>Any pointer is greatly appreciated. Thanks. Below
                    are the configurations for my module:</p>
                  <blockquote>
                    <p>My axidma folder structure is this</p>
                    <blockquote>
                      <p><font size="-1"><i>axidma (a directory under
                            recipes-sgl directory)<br>
                          </i></font></p>
                      <p><font size="-1"><i>    - files (directory) <br>
                          </i></font></p>
                      <p><font size="-1"><i>            - COPYING</i></font></p>
                      <p><font size="-1"><i>            - dma_proxy.c</i></font></p>
                      <p><font size="-1"><i>            - dma_proxy.h</i></font></p>
                      <p><font size="-1"><i>            - Makefile<br>
                          </i></font></p>
                      <p><font size="-1"><i>    - <a
                              href="http://axidma.bb" target="_blank"
                              moz-do-not-send="true">axidma.bb</a></i></font></p>
                    </blockquote>
                    <p>The bb files in axidma directory is added to
                      BBFILES in layer.conf by<br>
                    </p>
                    <blockquote>
                      <p><font size="-1"><i>BBFILES +=
                            "${LAYERDIR}/recipes-*/*/*.bb \</i><i><br>
                          </i><i>    ${LAYERDIR}/recipes-*/*/*.<wbr>bbappend"</i></font><br>
                      </p>
                    </blockquote>
                    <p><a href="http://axidma.bb" target="_blank"
                        moz-do-not-send="true">axidma.bb</a> file looks
                      like this:</p>
                    <blockquote>
                      <p><i><font size="-1">SUMMARY = "Example of how to
                            build an external Linux kernel module"<br>
                            LICENSE = "GPLv2"<br>
                            LIC_FILES_CHKSUM = <a
                              class="gmail-m_3278242207135345267moz-txt-link-rfc2396E"
                              moz-do-not-send="true">"file://COPYING;md5=<wbr>12f884d2ae1ff87c09e5b7ccc2c4ca<wbr>7e"</a><br>
                            <br>
                            inherit module<br>
                            PR = "r0"<br>
                            PV = "0.1"<br>
                            SRC_URI = "<a
                              class="gmail-m_3278242207135345267moz-txt-link-freetext"
                              moz-do-not-send="true">file://Makefile</a>
                            \<br>
                                       <a
                              class="gmail-m_3278242207135345267moz-txt-link-freetext"
                              moz-do-not-send="true">file://dma_proxy.c</a>
                            \<br>
                                       <a
                              class="gmail-m_3278242207135345267moz-txt-link-freetext"
                              moz-do-not-send="true">file://dma_proxy.h</a>
                            \<br>
                                       <a
                              class="gmail-m_3278242207135345267moz-txt-link-freetext"
                              moz-do-not-send="true">file://COPYING</a>
                            \<br>
                                      "<br>
                            <br>
                            S = "${WORKDIR}"<br>
                            <br>
                            # The inherit of module.bbclass will
                            automatically name module packages with<br>
                            # "kernel-module-" prefix as required by the
                            oe-core build environment.</font></i></p>
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
                          </i><i>    $(MAKE) -C $(KERNEL_SRC) M=$(SRC)
                            modules_install</i><i><br>
                          </i><i><br>
                          </i><i>clean:</i><i><br>
                          </i><i>    rm -f *.o *~ core .depend .*.cmd
                            *.ko *.mod.c</i><i><br>
                          </i><i>    rm -f Module.markers Module.symvers
                            modules.order</i><i><br>
                          </i><i>    rm -rf .tmp_versions
                            Modules.symvers</i></font><span
                          class="gmail-HOEnZb"><font color="#888888"><br>
                          </font></span></p>
                      <span class="gmail-HOEnZb"><font color="#888888">
                        </font></span></blockquote>
                    <span class="gmail-HOEnZb"><font color="#888888"> </font></span></blockquote>
                  <span class="gmail-HOEnZb"><font color="#888888">
                      <p>Fan Zhang<br>
                      </p>
                      <p><br>
                      </p>
                    </font></span></div>
                <br>
                --<br>
                ______________________________<wbr>_________________<br>
                yocto mailing list<br>
                <a href="mailto:yocto@yoctoproject.org"
                  moz-do-not-send="true">yocto@yoctoproject.org</a><br>
                <a href="https://lists.yoctoproject.org/listinfo/yocto"
                  rel="noreferrer" target="_blank"
                  moz-do-not-send="true">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><br>
                <br>
              </blockquote>
            </div>
            <br>
          </div>
        </div>
      </div>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------39F68A945E0C0883503E06CB--

--------------D97E1B35BEC54F384E91140B
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


--------------D97E1B35BEC54F384E91140B--
