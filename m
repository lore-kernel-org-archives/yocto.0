Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3814EE00939; Tue, 14 Mar 2017 02:43:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E62A6E0050B
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 02:43:49 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id DB24268A01C; Tue, 14 Mar 2017 09:43:48 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 7903368A019;
	Tue, 14 Mar 2017 09:43:46 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 2A62E6740038;
	Tue, 14 Mar 2017 10:43:46 +0100 (CET)
To: yocto@yoctoproject.org
References: <CALDHXteTtgxuKk_6iO4c8GhGqzTo_DVHS7jAB6tGijnY5ivORA@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <9e812af5-e593-6970-869a-aa6c3d514128@mlbassoc.com>
Date: Tue, 14 Mar 2017 10:43:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CALDHXteTtgxuKk_6iO4c8GhGqzTo_DVHS7jAB6tGijnY5ivORA@mail.gmail.com>
Subject: Re: core-image-minimal-xfce error
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
X-List-Received-Date: Tue, 14 Mar 2017 09:43:53 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-03-14 10:20, ravikiran j wrote:
> Hi everybody,
> I am getting some errors in building of *core-image-minimal-xfce *image.
>
> I am using ubuntu 14.04 build system and Yocto 2.1.
>
> I added the meta-openembedded layer into poky  and configured the bblayers.con ffile as follows.
>
>
>  POKY_BBLAYERS_CONF_VERSION = "2"
>   4
>   5 BBPATH = "${TOPDIR}"
>   6 BBFILES ?= ""
>   7
>   8 BBLAYERS ?= " \
>  *9   /home/mistral/yocto/poky/meta \
>  10   /home/mistral/yocto/poky/meta-poky \
>  11   /home/mistral/yocto/poky/meta-yocto-bsp \
>  12   /home/mistral/yocto/poky/meta-openembedded/meta-oe \
>  13   /home/mistral/yocto/poky/meta-openembedded/meta-gnome \
>  14   /home/mistral/yocto/poky/meta-openembedded/meta-multimedia \
>  15   /home/mistral/yocto/poky/meta-openembedded/meta-python \
>  16   /home/mistral/yocto/poky/meta-openembedded/meta-xfce \
>  17   "
> *
>
> i am getting following error after *bitbake* *core-image-minimal-xfce
>
>
> ERROR: ExpansionError during parsing
> /home/mistral/yocto/poky/meta-openembedded/meta-xfce/recipes-xfce/xfce4-power-manager/xfce4-power-manager_1.6.0.bb
> <http://xfce4-power-manager_1.6.0.bb>: Failure expanding variable PACKAGECONFIG, expression was
> ${@bb.utils.filter('DISTRO_FEATURES', 'systemd', d)} which triggered exception AttributeError: 'module' object has no
> attribute 'filter'
>
> *
> What is the problem and how to solve this problem  ?

It looks like you have a mixture of branches, probably the latest
master from meta-openembedded and krogoth (v2.1) from Poky/Yocto
These need to be in sync or you'll run into problems like this.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

