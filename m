Return-Path: <jacob2.chen@rock-chips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01D0DE009F3; Thu,  9 Feb 2017 20:32:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [211.150.99.135 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from regular1.263xmail.com (regular1.263xmail.com [211.150.99.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0657E009CF
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 20:32:18 -0800 (PST)
Received: from jacob2.chen?rock-chips.com (unknown [192.168.165.252])
	by regular1.263xmail.com (Postfix) with ESMTP id 40FC71E00C;
	Fri, 10 Feb 2017 12:32:14 +0800 (CST)
X-263anti-spam: KSV:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ABS-CHECKED: 4
Received: from smtp.263.net (sg-smtp01.263.net [54.255.195.220])
	by smtp.263.net (Postfix) with ESMTP id 6CCEE3DD;
	Fri, 10 Feb 2017 12:32:12 +0800 (CST)
Received: from [172.20.10.10] (localhost.localdomain [127.0.0.1])
	by smtp.263.net (Postfix) with ESMTP id B659EDF202;
	Fri, 10 Feb 2017 12:32:10 +0800 (CST)
X-RL-SENDER: jacob2.chen@rock-chips.com
X-FST-TO: eddie.cai@rock-chips.com
X-SENDER-IP: 202.68.200.158
X-LOGIN-NAME: jacob2.chen@rock-chips.com
X-UNIQUE-TAG: <f0b5cd88a29649d04c7f0ac9bc470012>
X-ATTACHMENT-NUM: 0
X-SENDER: jacob2.chen@rock-chips.com
X-DNS-TYPE: 0
Received: from [172.20.10.10] (unknown [202.68.200.158])
	by smtp.263.net (Postfix) whith ESMTP id 13772AD5EHQ;
	Fri, 10 Feb 2017 12:32:13 +0800 (CST)
To: Romain Perier <romain.perier@gmail.com>, Jacob Chen <jacob-chen@iotwrt.com>
References: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
	<1484820572-11891-6-git-send-email-jacob-chen@iotwrt.com>
	<CABgxDoJzMo931=QcCr4xTV4aae+gFTSvUNPnX9f6DnLL_r1fqQ@mail.gmail.com>
From: Jacob Chen <jacob2.chen@rock-chips.com>
Message-ID: <021abe93-01b9-cbd2-51d8-a537d377ec29@rock-chips.com>
Date: Fri, 10 Feb 2017 12:32:03 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CABgxDoJzMo931=QcCr4xTV4aae+gFTSvUNPnX9f6DnLL_r1fqQ@mail.gmail.com>
Cc: yocto@yoctoproject.org, eddie.cai@rock-chips.com
Subject: Re: [PATCH 5/7] recipes-bsp: add u-boot-rockchip support
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
X-List-Received-Date: Fri, 10 Feb 2017 04:32:22 -0000
Content-Type: multipart/alternative;
	boundary="------------1A3854B52CAE5C552F855A88"

--------------1A3854B52CAE5C552F855A88
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,


Romain Perier wrote on 2017年01月27日 22:48:
> Hi all,
>
>
> 2017-01-19 11:09 GMT+01:00 Jacob Chen <jacob-chen@iotwrt.com 
> <mailto:jacob-chen@iotwrt.com>>:
>
>     Rockchip next-dev U-boot is the next generation of rockchip
>     u-boot, will also be an upstream tracking branch.
>     At present, this branch is just a rebased upstream u-boot.
>
>     Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com
>     <mailto:jacob-chen@iotwrt.com>>
>     ---
>      recipes-bsp/u-boot/u-boot-rockchip_next.bb
>     <http://u-boot-rockchip_next.bb> | 17 +++++++++++++++++
>      1 file changed, 17 insertions(+)
>      create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_next.bb
>     <http://u-boot-rockchip_next.bb>
>
>     diff --git a/recipes-bsp/u-boot/u-boot-rockchip_next.bb
>     <http://u-boot-rockchip_next.bb>
>     b/recipes-bsp/u-boot/u-boot-rockchip_next.bb
>     <http://u-boot-rockchip_next.bb>
>     new file mode 100644
>     index 0000000..30d16b0
>     --- /dev/null
>     +++ b/recipes-bsp/u-boot/u-boot-rockchip_next.bb
>     <http://u-boot-rockchip_next.bb>
>     @@ -0,0 +1,17 @@
>     +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
>     +# Released under the MIT license (see COPYING.MIT for the terms)
>     +
>     +require recipes-bsp/u-boot/u-boot.inc
>     +
>     +DESCRIPTION = "Rockchip next-dev U-Boot"
>     +LICENSE = "GPLv2+"
>     +LIC_FILES_CHKSUM =
>     "file://Licenses/README;md5=a2c678cfd4a4d97135585cad908541c6"
>     +COMPATIBLE_MACHINE = "(rk3288)"
>
>
>
> So... in this case why not simply use u-boot mainline ? Most of 
> rk3288-based boards are very well supported with 
> http://git.denx.de/?p=u-boot/u-boot-rockchip.git ..
> Do you need something specific that it is not supported yet by u-boot 
> mainline ?
>

In fact, no difference now, I will change SRC_URI  to denx git.

We are still exploring how to deal with the relationship between our lts 
branch and mainline branch.
U-boot community can respond quickly, So unlike kernel, now we don't 
have something specific in this branch.


> My philosophy is simple:  When the SoC and the board is correctly 
> supported by a project on upstream, we use the mainline version of 
> this project (ex: the linux kernel, u-boot, etc). When that's not the 
> case, we can write a specific recipe for a vendor version. This is the 
> case for example for the kernel vendor "linux-rockchip" 
> (https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/tree/recipes-kernel/linux/linux-rockchip_3.0.bb?id=0f7f53c00e7787d5e4843752721a1690169f4ffd), 
> that's basically the kernel vendor 3.0.36 for the radxa rock here 
> because that's the kernel which supports the most features and I/O 
> (compared to the mainline kernel for this SoC or this board).
>

I agree, just I think media and graphics is  very important features, 
especially for Rockchip SOC.
I'd perfer to use version of project that have media and graphics support.

>
> Thanks,
> Romain
>


--------------1A3854B52CAE5C552F855A88
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Hi,<br>
    </p>
    <br>
    <div class="moz-cite-prefix">Romain Perier wrote on 2017年01月27日
      22:48:<br>
    </div>
    <blockquote
cite="mid:CABgxDoJzMo931=QcCr4xTV4aae+gFTSvUNPnX9f6DnLL_r1fqQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi all,<br>
        <br>
        <div>
          <div class="gmail_extra"><br>
            <div class="gmail_quote">2017-01-19 11:09 GMT+01:00 Jacob
              Chen <span dir="ltr">&lt;<a moz-do-not-send="true"
                  href="mailto:jacob-chen@iotwrt.com" target="_blank">jacob-chen@iotwrt.com</a>&gt;</span>:<br>
              <blockquote class="gmail_quote" style="margin:0px 0px 0px
                0.8ex;border-left:1px solid
                rgb(204,204,204);padding-left:1ex">Rockchip next-dev
                U-boot is the next generation of rockchip u-boot, will
                also be an upstream tracking branch.<br>
                At present, this branch is just a rebased upstream
                u-boot.<br>
                <br>
                Signed-off-by: Jacob Chen &lt;<a moz-do-not-send="true"
                  href="mailto:jacob-chen@iotwrt.com">jacob-chen@iotwrt.com</a>&gt;<br>
                ---<br>
                 recipes-bsp/u-boot/<a moz-do-not-send="true"
                  href="http://u-boot-rockchip_next.bb" rel="noreferrer"
                  target="_blank">u-boot-<wbr>rockchip_next.bb</a> | 17
                +++++++++++++++++<br>
                 1 file changed, 17 insertions(+)<br>
                 create mode 100644 recipes-bsp/u-boot/<a
                  moz-do-not-send="true"
                  href="http://u-boot-rockchip_next.bb" rel="noreferrer"
                  target="_blank">u-boot-<wbr>rockchip_next.bb</a><br>
                <br>
                diff --git a/recipes-bsp/u-boot/<a
                  moz-do-not-send="true"
                  href="http://u-boot-rockchip_next.bb" rel="noreferrer"
                  target="_blank">u-boot-<wbr>rockchip_next.bb</a>
                b/recipes-bsp/u-boot/<a moz-do-not-send="true"
                  href="http://u-boot-rockchip_next.bb" rel="noreferrer"
                  target="_blank">u-boot-<wbr>rockchip_next.bb</a><br>
                new file mode 100644<br>
                index 0000000..30d16b0<br>
                --- /dev/null<br>
                +++ b/recipes-bsp/u-boot/<a moz-do-not-send="true"
                  href="http://u-boot-rockchip_next.bb" rel="noreferrer"
                  target="_blank">u-boot-<wbr>rockchip_next.bb</a><br>
                @@ -0,0 +1,17 @@<br>
                +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co.,
                Ltd<br>
                +# Released under the MIT license (see COPYING.MIT for
                the terms)<br>
                +<br>
                +require recipes-bsp/u-boot/u-boot.inc<br>
                +<br>
                +DESCRIPTION = "Rockchip next-dev U-Boot"<br>
                +LICENSE = "GPLv2+"<br>
                +LIC_FILES_CHKSUM = "<a class="moz-txt-link-freetext" href="file://Licenses/README;md5=">file://Licenses/README;md5=</a><wbr>a2c678cfd4a4d97135585cad908541<wbr>c6"<br>
                +COMPATIBLE_MACHINE = "(rk3288)"<br>
              </blockquote>
              <div><br>
                <br>
              </div>
              <div>So... in this case why not simply use u-boot mainline
                ? Most of rk3288-based boards are very well supported
                with <a moz-do-not-send="true"
                  href="http://git.denx.de/?p=u-boot/u-boot-rockchip.git">http://git.denx.de/?p=u-boot/u-boot-rockchip.git</a>
                ..<br>
              </div>
              <div>Do you need something specific that it is not
                supported yet by u-boot mainline ?<br>
                <br>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    In fact, no difference now, I will change SRC_URI  to denx git.<br>
    <br>
    We are still exploring how to deal with the relationship between our
    lts branch and mainline branch.<br>
    U-boot 
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    community can respond quickly, So unlike kernel, now we don't have
    something specific in this branch.<br>
    <br>
    <br>
    <blockquote
cite="mid:CABgxDoJzMo931=QcCr4xTV4aae+gFTSvUNPnX9f6DnLL_r1fqQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div class="gmail_extra">
            <div class="gmail_quote">
              <div>My philosophy is simple:  When the SoC and the board
                is correctly supported by a project on upstream, we use
                the mainline version of this project (ex: the linux
                kernel, u-boot, etc). When that's not the case, we can
                write a specific recipe for a vendor version. This is
                the case for example for the kernel vendor
                "linux-rockchip" (<a moz-do-not-send="true"
href="https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/tree/recipes-kernel/linux/linux-rockchip_3.0.bb?id=0f7f53c00e7787d5e4843752721a1690169f4ffd">https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/tree/recipes-kernel/linux/linux-rockchip_3.0.bb?id=0f7f53c00e7787d5e4843752721a1690169f4ffd</a>),
                that's basically the kernel vendor 3.0.36 for the radxa
                rock here because that's the kernel which supports the
                most features and I/O (compared to the mainline kernel
                for this SoC or this board).<br>
                <br>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    I agree, just I think media and graphics is  very important
    features, especially for Rockchip SOC. <br>
    I'd perfer to use version of project that have media and graphics
    support.<br>
    <br>
    <blockquote
cite="mid:CABgxDoJzMo931=QcCr4xTV4aae+gFTSvUNPnX9f6DnLL_r1fqQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div class="gmail_extra">
            <div class="gmail_quote">
              <div><br>
              </div>
              <div>Thanks,<br>
              </div>
              <div>Romain<br>
              </div>
              <div> </div>
            </div>
            <br>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------1A3854B52CAE5C552F855A88--
