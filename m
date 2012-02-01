Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84B3DE004D2
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 14:42:30 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 Feb 2012 14:42:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="113014990"
Received: from unknown (HELO [10.255.14.103]) ([10.255.14.103])
	by fmsmga001.fm.intel.com with ESMTP; 01 Feb 2012 14:42:29 -0800
Message-ID: <4F29BFD5.7010002@linux.intel.com>
Date: Wed, 01 Feb 2012 14:42:29 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
	<8c5010ca5786a486f2082d711fdf52b8617973af.1328135056.git.dvhart@linux.intel.com>
In-Reply-To: <8c5010ca5786a486f2082d711fdf52b8617973af.1328135056.git.dvhart@linux.intel.com>
Subject: Re: [pull-sys940x 3/4] genmac: Replace RANDOM_MAC in network/interfaces with a randomly generated MAC
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
X-List-Received-Date: Wed, 01 Feb 2012 22:42:30 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 01/02/12 14:26, Darren Hart wrote:
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

amixer?

> +[ -x "$RANPWD" ] || exit 0
> +
> +do_start() {
> +	# Replace every occurance of RANDOM_MAC with a unique locally
occurrence?
> +	# administered, unicast, randomly generated MAC address.
> +	while grep -q RANDOM_MAC /etc/network/interfaces; do
> +		sed -i "1,/RANDOM_MAC/s/RANDOM_MAC/$($RANPWD -m)/" /etc/network/interfaces
> +	done

Otherwise looks good, feel free to add my SOB.

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

