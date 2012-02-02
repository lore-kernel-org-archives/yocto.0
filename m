Return-Path: <wmills@ti.com>
Received: from comal.ext.ti.com (comal.ext.ti.com [198.47.26.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59882E0059B
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 06:09:43 -0800 (PST)
Received: from dlep26.itg.ti.com ([157.170.170.121])
	by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id q12E9fnl006174;
	Thu, 2 Feb 2012 08:09:41 -0600
Received: from DLEE74.ent.ti.com (localhost [127.0.0.1])
	by dlep26.itg.ti.com (8.13.8/8.13.8) with ESMTP id q12E9fBR005080;
	Thu, 2 Feb 2012 08:09:41 -0600 (CST)
Received: from dlelxv22.itg.ti.com (172.17.1.197) by DLEE74.ent.ti.com
	(157.170.170.8) with Microsoft SMTP Server id 14.1.323.3;
	Thu, 2 Feb 2012 08:09:40 -0600
Received: from gtwmills.gt.design.ti.com (gtwmills.gt.design.ti.com
	[158.218.100.52])	by dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id
	q12E9emd021681;	Thu, 2 Feb 2012 08:09:40 -0600
Message-ID: <4F2A9924.3050001@ti.com>
Date: Thu, 2 Feb 2012 09:09:40 -0500
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1328135056.git.dvhart@linux.intel.com>
	<8c5010ca5786a486f2082d711fdf52b8617973af.1328135056.git.dvhart@linux.intel.com>
In-Reply-To: <8c5010ca5786a486f2082d711fdf52b8617973af.1328135056.git.dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [pull-sys940x 3/4] genmac: Replace RANDOM_MAC in	network/interfaces with a randomly generated MAC
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 02 Feb 2012 14:09:43 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit


On 02/01/2012 05:26 PM, Darren Hart wrote:
> For machines that do not have a MAC in hardware and with drivers that don't
> generate a random one in the kernel, this init script will replace the string
> RANDOM_MAC in the network/interfaces file with one generated with "ranpwd -m".
> Care is taken to ensure multiple interfaces can use RANDOM_MAC and receive
> unique addresses. ranpwd generates MACs with the locally administered bit set
> and the multicast bit disabled.
>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> ---
>   meta-sys940x/recipes-bsp/genmac/files/genmac |   46 ++++++++++++++++++++++++++
>   meta-sys940x/recipes-bsp/genmac/genmac.bb    |   30 +++++++++++++++++
>   2 files changed, 76 insertions(+), 0 deletions(-)
>   create mode 100644 meta-sys940x/recipes-bsp/genmac/files/genmac
>   create mode 100644 meta-sys940x/recipes-bsp/genmac/genmac.bb
>
> diff --git a/meta-sys940x/recipes-bsp/genmac/files/genmac b/meta-sys940x/recipes-bsp/genmac/files/genmac
> new file mode 100644
> index 0000000..6ca069c
> --- /dev/null
> +++ b/meta-sys940x/recipes-bsp/genmac/files/genmac
> @@ -0,0 +1,46 @@
> +#!/bin/sh
> +### BEGIN INIT INFO
> +# Provides:          Random MAC address generator
> +# Required-Start:    $syslog
> +# Required-Stop:     $syslog
> +# Default-Start:     2 3 4 5
> +# Default-Stop:      0 1 6
> +# Short-Description: Set a random MAC for tagged interfaces
> +# Description:       Set a random MAC for interfaces with RANDOM_MAC
> +### END INIT INFO
> +
> +# Author: Darren Hart<dvhart@linux.intel.com>
> +# Based on /etc/init.d/skeleton
> +
> +PATH=/sbin:/usr/sbin:/bin:/usr/bin
> +DESC="Set a random MAC for tagged interfaces"
> +NAME=genmac
> +RANPWD=`which ranpwd`
> +SCRIPTNAME=/etc/init.d/$NAME
> +
> +# Exit if amixer is not installed
> +[ -x "$RANPWD" ] || exit 0
> +
> +do_start() {
> +	# Replace every occurance of RANDOM_MAC with a unique locally
> +	# administered, unicast, randomly generated MAC address.
> +	while grep -q RANDOM_MAC /etc/network/interfaces; do
> +		sed -i "1,/RANDOM_MAC/s/RANDOM_MAC/$($RANPWD -m)/" /etc/network/interfaces
> +	done
> +}

So on a non-volatile r/w filesystem this will assign a new random mac to 
each interface on the first boot and reuse that MAC on each subsquent boot.

On a volatile r/w filesystem this will use a new MAC addr for each 
boot.  I guess thats better than nothing and not much to do on a 
volatile system.

What does this do on a ro filesystem?  No network?  network with 
0:0:0:0:0:0 MAC addr? (horror! but I suspect the kernel won't allow 
that).  Certainly this script failing should not cause the rest of boot 
to fail.


