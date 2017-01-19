Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A99A4E00A96; Thu, 19 Jan 2017 04:50:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B0CDE00B7A
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 04:50:03 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 4469B68A01C; Thu, 19 Jan 2017 12:50:02 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 7E5D468A019;
	Thu, 19 Jan 2017 12:49:57 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 0F0196740160;
	Thu, 19 Jan 2017 13:49:57 +0100 (CET)
To: yocto@yoctoproject.org
References: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
	<CAJTo0Lb_vK5H7xNArruXy_vJSg4Hunut0O615LcaDF-dJM-t5w@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <79b41a93-ab66-cafe-69e4-4bbad827cb26@mlbassoc.com>
Date: Thu, 19 Jan 2017 13:49:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0Lb_vK5H7xNArruXy_vJSg4Hunut0O615LcaDF-dJM-t5w@mail.gmail.com>
Subject: Re: [PATCH 0/7] introduce rockchip offical linux support to meta-rockchip
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
X-List-Received-Date: Thu, 19 Jan 2017 12:50:14 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-01-19 12:30, Burton, Ross wrote:
> (CCing the layer maintainers as listed in the README to ensure this gets noticed)
>

Shouldn't this have [meta-rockchip] (or some such) in the subject? - it's certainly
not OE-core or even Poky AFAICT

>
> On 19 January 2017 at 10:09, Jacob Chen <jacob-chen@iotwrt.com <mailto:jacob-chen@iotwrt.com>> wrote:
>
>     This series of patches add below features, will add more supports in the future(medias, more chips).
>
>     1. rockchip 4.4 kernel
>
>     Rockchip 4.4 kernel is currently the latest version of the rockchip offical kernel, will be an upstream tracking branch.
>     We regularly release the kernel through github. It support all rockchip 64-bit chips and a few 32-bit chips.
>
>     2. rockchip next-dev U-boot
>
>     Rockchip next-dev U-boot is the next generation of rockchip u-boot, will also be an upstream tracking branch.
>     At present, this branch is just a rebased upstream u-boot.
>
>     3. graphics
>
>     We have plans for the acceleration in wayland, x11 in the rockchip platform, but in this series of patches, we only
>     include the mali bianry support.
>
>     4. rockchip-next-image
>
>     Being different from the previous rk-u-boot which use parameter, next-dev u-boot use gpt partition, so it needs to
>     generate a different image.
>
>
>     Jacob Chen (7):
>       recipes-kernel: linux-rockchip: Add new recipe for 4.4
>       machine: Add machine file for the rk3288 linux Boards
>       machine: firefly: use linux-rockchip by default
>       recipes-graphics: Add support for mali-userspace
>       recipes-bsp: add u-boot-rockchip support
>       rk3288.inc: add some variables
>       rockchip-next-image: introduce image for rockchip next-dev u-boot
>
>      classes/rockchip-next-image.bbclass                | 130 +++++++++++++++++++++
>      conf/machine/evb-rk3288.conf                       |  12 ++
>      conf/machine/fennec-rk3288.conf                    |  12 ++
>      conf/machine/firefly-rk3288.conf                   |   4 +
>      conf/machine/include/rk-linux.inc                  |  20 ++++
>      conf/machine/include/rk3288.inc                    |  10 +-
>      conf/machine/tinker-rk3288.conf                    |  13 +++
>      recipes-bsp/u-boot/u-boot-rockchip_next.bb <http://u-boot-rockchip_next.bb>         |  17 +++
>      recipes-graphics/mali-userspace/mali-userspace.inc |  57 +++++++++
>      .../mali-userspace/mali-userspace_t76x.bb <http://mali-userspace_t76x.bb>          |  18 +++
>      recipes-graphics/mesa/mesa_%.bbappend              |   9 ++
>      recipes-kernel/linux/linux-rockchip_4.4.bb <http://linux-rockchip_4.4.bb>         |  20 ++++
>      12 files changed, 321 insertions(+), 1 deletion(-)
>      create mode 100644 classes/rockchip-next-image.bbclass
>      create mode 100644 conf/machine/evb-rk3288.conf
>      create mode 100644 conf/machine/fennec-rk3288.conf
>      create mode 100644 conf/machine/include/rk-linux.inc
>      create mode 100644 conf/machine/tinker-rk3288.conf
>      create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_next.bb <http://u-boot-rockchip_next.bb>
>      create mode 100644 recipes-graphics/mali-userspace/mali-userspace.inc
>      create mode 100644 recipes-graphics/mali-userspace/mali-userspace_t76x.bb <http://mali-userspace_t76x.bb>
>      create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
>      create mode 100644 recipes-kernel/linux/linux-rockchip_4.4.bb <http://linux-rockchip_4.4.bb>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

