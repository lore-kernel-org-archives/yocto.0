Return-Path: <547884940@qq.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F11B5E00480; Fri,  3 Feb 2017 07:49:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [184.105.206.26 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Fri, 03 Feb 2017 07:49:48 PST
Received: from smtpbg303.qq.com (smtpbg303.qq.com [184.105.206.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57324E0030B
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 07:49:48 -0800 (PST)
X-QQ-mid: esmtp31t1486136913t4s7dj9j3
Received: from [192.168.10.237] (unknown [222.76.54.158])
	by esmtp4.qq.com (ESMTP) with 
	id ; Fri, 03 Feb 2017 23:48:33 +0800 (CST)
X-QQ-SSF: B000000000000000FG101F00000000X
X-QQ-FEAT: y/Yfw/TLgL7I0BJHuvbqqp2OreCmbaJJjwcAyXm4NLvC3rhpjA9MON4qujdce
	RdtT7VSf08B/nOVbbh7wbe3ZKQK9gTWjsHcpwPozcCtYChk8cLO6jG/iMKqCuGqA3NHPNwL
	TO1WnKYQs+ZRDGUeYJHQpsQT6xHwQv+54CKLvKBzJonki+KZPn12b7gylypNEhMazdXGpAv
	KNCzfmbTC2wkjHdgiur9gw+4XhMbdVTZq8JOjLgBd+fmTPdawHgyoHCEGFzSaiIWMjl3a/r
	1UfawbriAFPks5pwT2YVyQ0EvYjZ2i1gdylQ==
X-QQ-GoodBg: 0
To: Romain Perier <romain.perier@gmail.com>, Jacob Chen <jacob-chen@iotwrt.com>
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
	<1484834687-15746-3-git-send-email-jacob-chen@iotwrt.com>
	<CABgxDo+5x6-ByOUikkG45S6Yo5NO+=L4S3GRX7firgpMqQQiAA@mail.gmail.com>
From: jacob-chen@iotwrt.com
Message-ID: <344e28b6-13f7-2162-0ce7-9d57b33af46a@qq.com>
Date: Fri, 3 Feb 2017 23:48:33 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CABgxDo+5x6-ByOUikkG45S6Yo5NO+=L4S3GRX7firgpMqQQiAA@mail.gmail.com>
X-QQ-SENDSIZE: 520
X-QQ-FName: 38405EA44362403BA3BCFC91C0C6B809
X-QQ-LocalIP: 10.130.87.224
Cc: yocto@yoctoproject.org, Jacob Chen <jacob-chen@rock-chips.com>,
	eddie.cai@rock-chips.com
Subject: Re: [meta-rockchip][PATCH 2/7] machine: Add machine file for the rk3288 linux Boards
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
X-List-Received-Date: Fri, 03 Feb 2017 15:49:53 -0000
Content-Type: multipart/alternative;
	boundary="------------E487B8AC1CC0FDB6E1B9BF6B"

--------------E487B8AC1CC0FDB6E1B9BF6B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi all,

Thanks for reviewing, I will looking at comments and suggestions after 
the other work finished.

: )



在 2017年01月27日 22:37, Romain Perier 写道:
> Hey,
>
> Could you:
> - Make one patch per new machine file and not one patch for all new 
> added machine
> - Add a clear @DESCRIPTION for each board, see an example here: 
> https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/tree/conf/machine/firefly-rk3288.conf
> - Write a clear and an understandable commit message for your new patches
>
> @Trevor: What do you think about this rk-linux.inc ? I don't like 
> this, either its name and what it contains.
>
> That's it for now.
> Thanks for your patches
>
>
> 2017-01-19 15:04 GMT+01:00 Jacob Chen <jacob-chen@iotwrt.com 
> <mailto:jacob-chen@iotwrt.com>>:
>
>     Evb-rk3288 is the offical evaluate board, add it to help myself
>     develop.
>
>     Fennec-rk3288 and Tinker-rk3288 is rk3288 based SBCs.
>         .
>     Tinker Boards:
>     http://www.cnx-software.com/2017/01/05/asus-tinker-board-is-a-raspberry-pi-3-alternative-based-on-rockchip-rk3288-processor/
>     <http://www.cnx-software.com/2017/01/05/asus-tinker-board-is-a-raspberry-pi-3-alternative-based-on-rockchip-rk3288-processor/>
>
>     Signed-off-by: Jacob Chen <jacob-chen@rock-chips.com
>     <mailto:jacob-chen@rock-chips.com>>
>     ---
>      conf/machine/evb-rk3288.conf      | 12 ++++++++++++
>      conf/machine/fennec-rk3288.conf   | 12 ++++++++++++
>      conf/machine/include/rk-linux.inc | 20 ++++++++++++++++++++
>      conf/machine/tinker-rk3288.conf   | 13 +++++++++++++
>      4 files changed, 57 insertions(+)
>      create mode 100644 conf/machine/evb-rk3288.conf
>      create mode 100644 conf/machine/fennec-rk3288.conf
>      create mode 100644 conf/machine/include/rk-linux.inc
>      create mode 100644 conf/machine/tinker-rk3288.conf
>
>     diff --git a/conf/machine/evb-rk3288.conf
>     b/conf/machine/evb-rk3288.conf
>     new file mode 100644
>     index 0000000..88a5f78
>     --- /dev/null
>     +++ b/conf/machine/evb-rk3288.conf
>     @@ -0,0 +1,12 @@
>     +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
>     +# Released under the MIT license (see COPYING.MIT for the terms)
>     +
>     +#@TYPE: Machine
>     +#@NAME: EVB 3288
>     +
>     +include conf/machine/include/rk3288.inc
>     +include conf/machine/include/rk-linux.inc
>     +
>     +KERNEL_DEVICETREE = "rk3288-evb-act8846.dtb"
>     +
>     +UBOOT_MACHINE = "evb-rk3288_defconfig"
>     diff --git a/conf/machine/fennec-rk3288.conf
>     b/conf/machine/fennec-rk3288.conf
>     new file mode 100644
>     index 0000000..a85045f
>     --- /dev/null
>     +++ b/conf/machine/fennec-rk3288.conf
>     @@ -0,0 +1,12 @@
>     +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
>     +# Released under the MIT license (see COPYING.MIT for the terms)
>     +
>     +#@TYPE: Machine
>     +#@NAME: FENNEC RK3288
>     +
>     +include conf/machine/include/rk3288.inc
>     +include conf/machine/include/rk-linux.inc
>     +
>     +KERNEL_DEVICETREE = "rk3288-fennec.dtb"
>     +
>     +UBOOT_MACHINE = "fennec-rk3288_defconfig"
>     diff --git a/conf/machine/include/rk-linux.inc
>     b/conf/machine/include/rk-linux.inc
>     new file mode 100644
>     index 0000000..6abaa0d
>     --- /dev/null
>     +++ b/conf/machine/include/rk-linux.inc
>     @@ -0,0 +1,20 @@
>     +# Rockchip BSP default settings
>     +
>     +PREFERRED_PROVIDER_virtual/egl = "mali-userspace"
>     +PREFERRED_PROVIDER_virtual/libgles1 = "mali-userspace"
>     +PREFERRED_PROVIDER_virtual/libgles2 = "mali-userspace"
>     +PREFERRED_PROVIDER_virtual/libopencl = "mali-userspace"
>     +
>     +# Workaround: libmali.so provided by rk having no SONAME field in it
>     +# so add it to fix rdepends problems
>     +ASSUME_SHLIBS += "libEGL.so:mali-userspace"
>     +ASSUME_SHLIBS += "libGLESv1_CM.so:mali-userspace"
>     +ASSUME_SHLIBS += "libGLESv2.so:mali-userspace"
>     +ASSUME_SHLIBS += "libOpenCL.so:mali-userspace"
>     +ASSUME_SHLIBS += "libgbm.so:mali-userspace"
>     +ASSUME_SHLIBS += "libwayland-egl.so:mali-userspace"
>     +
>     +PREFERRED_PROVIDER_virtual/kernel = "linux-rockchip"
>     +PREFERRED_PROVIDER_virtual/bootloader = "u-boot-rockchip"
>     +
>     +IMAGE_CLASSES += "rockchip-next-image"
>     diff --git a/conf/machine/tinker-rk3288.conf
>     b/conf/machine/tinker-rk3288.conf
>     new file mode 100644
>     index 0000000..0464133
>     --- /dev/null
>     +++ b/conf/machine/tinker-rk3288.conf
>     @@ -0,0 +1,13 @@
>     +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
>     +# Released under the MIT license (see COPYING.MIT for the terms)
>     +
>     +#@TYPE: Machine
>     +#@NAME: Tinker RK3288
>     +#@DESCRIPTION: ASUS Tinker Board is a Raspberry Pi 3 Alternative
>     based on Rockchip RK3288 Processor.
>     +
>     +include conf/machine/include/rk3288.inc
>     +include conf/machine/include/rk-linux.inc
>     +
>     +KERNEL_DEVICETREE = "rk3288-miniarm.dtb"
>     +
>     +UBOOT_MACHINE = "miniarm-rk3288_defconfig"
>     --
>     2.7.4
>
>


--------------E487B8AC1CC0FDB6E1B9BF6B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Hi all,</p>
    <p>
      <meta http-equiv="content-type" content="text/html; charset=utf-8">
      Thanks for reviewing, I will looking at comments and suggestions
      after the other work finished. <br>
    </p>
    <p>: )</p>
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">在 2017年01月27日 22:37, Romain Perier 写道:<br>
    </div>
    <blockquote
cite="mid:CABgxDo+5x6-ByOUikkG45S6Yo5NO+=L4S3GRX7firgpMqQQiAA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div>
            <div>
              <div>
                <div>
                  <div>Hey,<br>
                    <br>
                  </div>
                  Could you:<br>
                </div>
                - Make one patch per new machine file and not one patch
                for all new added machine<br>
              </div>
              - Add a clear @DESCRIPTION for each board, see an example
              here: <a moz-do-not-send="true"
href="https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/tree/conf/machine/firefly-rk3288.conf">https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/tree/conf/machine/firefly-rk3288.conf</a><br>
            </div>
            - Write a clear and an understandable commit message for
            your new patches<br>
            <br>
          </div>
          <div>@Trevor: What do you think about this rk-linux.inc ? I
            don't like this, either its name and what it contains.<br>
          </div>
          <div><br>
          </div>
          That's it for now.<br>
        </div>
        Thanks for your patches<br>
        <div>
          <div><br>
          </div>
        </div>
      </div>
      <div class="gmail_extra"><br>
        <div class="gmail_quote">2017-01-19 15:04 GMT+01:00 Jacob Chen <span
            dir="ltr">&lt;<a moz-do-not-send="true"
              href="mailto:jacob-chen@iotwrt.com" target="_blank">jacob-chen@iotwrt.com</a>&gt;</span>:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <div class="HOEnZb">
              <div class="h5">Evb-rk3288 is the offical evaluate board,
                add it to help myself develop.<br>
                <br>
                Fennec-rk3288 and Tinker-rk3288 is rk3288 based SBCs.<br>
                    .<br>
                Tinker Boards:<br>
                <a moz-do-not-send="true"
href="http://www.cnx-software.com/2017/01/05/asus-tinker-board-is-a-raspberry-pi-3-alternative-based-on-rockchip-rk3288-processor/"
                  rel="noreferrer" target="_blank">http://www.cnx-software.com/<wbr>2017/01/05/asus-tinker-board-<wbr>is-a-raspberry-pi-3-<wbr>alternative-based-on-rockchip-<wbr>rk3288-processor/</a><br>
                <br>
                Signed-off-by: Jacob Chen &lt;<a moz-do-not-send="true"
                  href="mailto:jacob-chen@rock-chips.com">jacob-chen@rock-chips.com</a>&gt;<br>
                ---<br>
                 conf/machine/evb-rk3288.conf      | 12 ++++++++++++<br>
                 conf/machine/fennec-rk3288.<wbr>conf   | 12
                ++++++++++++<br>
                 conf/machine/include/rk-linux.<wbr>inc | 20
                ++++++++++++++++++++<br>
                 conf/machine/tinker-rk3288.<wbr>conf   | 13
                +++++++++++++<br>
                 4 files changed, 57 insertions(+)<br>
                 create mode 100644 conf/machine/evb-rk3288.conf<br>
                 create mode 100644 conf/machine/fennec-rk3288.<wbr>conf<br>
                 create mode 100644 conf/machine/include/rk-linux.<wbr>inc<br>
                 create mode 100644 conf/machine/tinker-rk3288.<wbr>conf<br>
                <br>
                diff --git a/conf/machine/evb-rk3288.conf
                b/conf/machine/evb-rk3288.conf<br>
                new file mode 100644<br>
                index 0000000..88a5f78<br>
                --- /dev/null<br>
                +++ b/conf/machine/evb-rk3288.conf<br>
                @@ -0,0 +1,12 @@<br>
                +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co.,
                Ltd<br>
                +# Released under the MIT license (see COPYING.MIT for
                the terms)<br>
                +<br>
                +#@TYPE: Machine<br>
                +#@NAME: EVB 3288<br>
                +<br>
                +include conf/machine/include/rk3288.<wbr>inc<br>
                +include conf/machine/include/rk-linux.<wbr>inc<br>
                +<br>
                +KERNEL_DEVICETREE = "rk3288-evb-act8846.dtb"<br>
                +<br>
                +UBOOT_MACHINE = "evb-rk3288_defconfig"<br>
                diff --git a/conf/machine/fennec-rk3288.<wbr>conf
                b/conf/machine/fennec-rk3288.<wbr>conf<br>
                new file mode 100644<br>
                index 0000000..a85045f<br>
                --- /dev/null<br>
                +++ b/conf/machine/fennec-rk3288.<wbr>conf<br>
                @@ -0,0 +1,12 @@<br>
                +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co.,
                Ltd<br>
                +# Released under the MIT license (see COPYING.MIT for
                the terms)<br>
                +<br>
                +#@TYPE: Machine<br>
                +#@NAME: FENNEC RK3288<br>
                +<br>
                +include conf/machine/include/rk3288.<wbr>inc<br>
                +include conf/machine/include/rk-linux.<wbr>inc<br>
                +<br>
                +KERNEL_DEVICETREE = "rk3288-fennec.dtb"<br>
                +<br>
                +UBOOT_MACHINE = "fennec-rk3288_defconfig"<br>
                diff --git a/conf/machine/include/rk-<wbr>linux.inc
                b/conf/machine/include/rk-<wbr>linux.inc<br>
                new file mode 100644<br>
                index 0000000..6abaa0d<br>
                --- /dev/null<br>
                +++ b/conf/machine/include/rk-<wbr>linux.inc<br>
                @@ -0,0 +1,20 @@<br>
                +# Rockchip BSP default settings<br>
                +<br>
                +PREFERRED_PROVIDER_virtual/<wbr>egl = "mali-userspace"<br>
                +PREFERRED_PROVIDER_virtual/<wbr>libgles1 =
                "mali-userspace"<br>
                +PREFERRED_PROVIDER_virtual/<wbr>libgles2 =
                "mali-userspace"<br>
                +PREFERRED_PROVIDER_virtual/<wbr>libopencl =
                "mali-userspace"<br>
                +<br>
                +# Workaround: libmali.so provided by rk having no
                SONAME field in it<br>
                +# so add it to fix rdepends problems<br>
                +ASSUME_SHLIBS += "libEGL.so:mali-userspace"<br>
                +ASSUME_SHLIBS += "libGLESv1_CM.so:mali-<wbr>userspace"<br>
                +ASSUME_SHLIBS += "libGLESv2.so:mali-userspace"<br>
                +ASSUME_SHLIBS += "libOpenCL.so:mali-userspace"<br>
                +ASSUME_SHLIBS += "libgbm.so:mali-userspace"<br>
                +ASSUME_SHLIBS += "libwayland-egl.so:mali-<wbr>userspace"<br>
                +<br>
                +PREFERRED_PROVIDER_virtual/<wbr>kernel =
                "linux-rockchip"<br>
                +PREFERRED_PROVIDER_virtual/<wbr>bootloader =
                "u-boot-rockchip"<br>
                +<br>
                +IMAGE_CLASSES += "rockchip-next-image"<br>
                diff --git a/conf/machine/tinker-rk3288.<wbr>conf
                b/conf/machine/tinker-rk3288.<wbr>conf<br>
                new file mode 100644<br>
                index 0000000..0464133<br>
                --- /dev/null<br>
                +++ b/conf/machine/tinker-rk3288.<wbr>conf<br>
                @@ -0,0 +1,13 @@<br>
                +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co.,
                Ltd<br>
                +# Released under the MIT license (see COPYING.MIT for
                the terms)<br>
                +<br>
                +#@TYPE: Machine<br>
                +#@NAME: Tinker RK3288<br>
                +#@DESCRIPTION: ASUS Tinker Board is a Raspberry Pi 3
                Alternative based on Rockchip RK3288 Processor.<br>
                +<br>
                +include conf/machine/include/rk3288.<wbr>inc<br>
                +include conf/machine/include/rk-linux.<wbr>inc<br>
                +<br>
                +KERNEL_DEVICETREE = "rk3288-miniarm.dtb"<br>
                +<br>
                +UBOOT_MACHINE = "miniarm-rk3288_defconfig"<br>
                --<br>
                2.7.4<br>
                <br>
              </div>
            </div>
          </blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------E487B8AC1CC0FDB6E1B9BF6B--
