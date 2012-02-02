Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5839E00592
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 09:20:05 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 02 Feb 2012 09:20:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="103192307"
Received: from unknown (HELO envy.home) ([10.7.199.59])
	by orsmga001.jf.intel.com with ESMTP; 02 Feb 2012 09:20:04 -0800
Message-ID: <4F2AC5A6.6030002@linux.intel.com>
Date: Thu, 02 Feb 2012 09:19:34 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: William Mills <wmills@ti.com>
References: <cover.1328135056.git.dvhart@linux.intel.com>
	<8c5010ca5786a486f2082d711fdf52b8617973af.1328135056.git.dvhart@linux.intel.com>
	<4F2A9924.3050001@ti.com>
In-Reply-To: <4F2A9924.3050001@ti.com>
X-Enigmail-Version: 1.3.5
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
X-List-Received-Date: Thu, 02 Feb 2012 17:20:05 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Bill,

On 02/02/2012 06:09 AM, William Mills wrote:
> 
> On 02/01/2012 05:26 PM, Darren Hart wrote:
>> For machines that do not have a MAC in hardware and with drivers that don't
>> generate a random one in the kernel, this init script will replace the string
>> RANDOM_MAC in the network/interfaces file with one generated with "ranpwd -m".
>> Care is taken to ensure multiple interfaces can use RANDOM_MAC and receive
>> unique addresses. ranpwd generates MACs with the locally administered bit set
>> and the multicast bit disabled.
>>
>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>> ---
>>   meta-sys940x/recipes-bsp/genmac/files/genmac |   46 ++++++++++++++++++++++++++
>>   meta-sys940x/recipes-bsp/genmac/genmac.bb    |   30 +++++++++++++++++
>>   2 files changed, 76 insertions(+), 0 deletions(-)
>>   create mode 100644 meta-sys940x/recipes-bsp/genmac/files/genmac
>>   create mode 100644 meta-sys940x/recipes-bsp/genmac/genmac.bb
>>
>> diff --git a/meta-sys940x/recipes-bsp/genmac/files/genmac b/meta-sys940x/recipes-bsp/genmac/files/genmac
>> new file mode 100644
>> index 0000000..6ca069c
>> --- /dev/null
>> +++ b/meta-sys940x/recipes-bsp/genmac/files/genmac
>> @@ -0,0 +1,46 @@
>> +#!/bin/sh
>> +### BEGIN INIT INFO
>> +# Provides:          Random MAC address generator
>> +# Required-Start:    $syslog
>> +# Required-Stop:     $syslog
>> +# Default-Start:     2 3 4 5
>> +# Default-Stop:      0 1 6
>> +# Short-Description: Set a random MAC for tagged interfaces
>> +# Description:       Set a random MAC for interfaces with RANDOM_MAC
>> +### END INIT INFO
>> +
>> +# Author: Darren Hart<dvhart@linux.intel.com>
>> +# Based on /etc/init.d/skeleton
>> +
>> +PATH=/sbin:/usr/sbin:/bin:/usr/bin
>> +DESC="Set a random MAC for tagged interfaces"
>> +NAME=genmac
>> +RANPWD=`which ranpwd`
>> +SCRIPTNAME=/etc/init.d/$NAME
>> +
>> +# Exit if amixer is not installed
>> +[ -x "$RANPWD" ] || exit 0
>> +
>> +do_start() {
>> +	# Replace every occurance of RANDOM_MAC with a unique locally
>> +	# administered, unicast, randomly generated MAC address.
>> +	while grep -q RANDOM_MAC /etc/network/interfaces; do
>> +		sed -i "1,/RANDOM_MAC/s/RANDOM_MAC/$($RANPWD -m)/" /etc/network/interfaces
>> +	done
>> +}
> 
> So on a non-volatile r/w filesystem this will assign a new random mac to 
> each interface on the first boot and reuse that MAC on each subsquent boot.

Correct.

> 
> On a volatile r/w filesystem this will use a new MAC addr for each 
> boot.  I guess thats better than nothing and not much to do on a 
> volatile system.

Correct. The alternative would be to try and sort out some kind of hash
based on unique data, maybe dmidecode data - but that's not very
consistent across platforms. I think there is something like this
available for the Beagleboard.


> What does this do on a ro filesystem?  No network?  network with 
> 0:0:0:0:0:0 MAC addr? (horror! but I suspect the kernel won't allow 
> that).  Certainly this script failing should not cause the rest of boot 
> to fail.

On a read only filesystem with genmac installed and RANDOM_MAC in the
interfaces file, genmac will run and NOT update interfaces. This was
written with the pch_gbe driver in mind. If no MAC is in the EEPROM, the
pch_gbe driver leaves the MAC as 00:00:00:00:00:00 and leaves the
interface down. It will fail any up command until the MAC has been set.
So the subsequent networking script will fail to bring up the relevant
interface. ifconfig -a will list the interface as down and with a MAC of
00:00:00:00:00:00.

Other drivers will assign a random MAC within the kernel, making this
all unnecessary, but David Miller refused this patch for this driver
(despite the precedent).

If you want to use a RO image on a platform with a pch_gbe nic and no
EEPROM, you need to hardcode the generated MAC in the interfaces file.

The alternative would be for me to call this pch_gbe_genmac and have it
call ifconfig directly instead of delegating it to the interfaces file.
But then I would still want to use a config file to store the
first-boot-generated MAC so it was the same across boots. Once I have to
generate a config file, I felt it made more sense to just use
interfaces, and then it makes sense to make it generic (not pch_gbe
specific), and that led me to this implementation.

Seem reasonable?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

