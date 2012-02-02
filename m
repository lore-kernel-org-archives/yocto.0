Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF85CE013A2
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 10:28:08 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 02 Feb 2012 10:28:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="103222564"
Received: from unknown (HELO envy.home) ([10.7.199.59])
	by orsmga001.jf.intel.com with ESMTP; 02 Feb 2012 10:28:08 -0800
Message-ID: <4F2AD599.7010208@linux.intel.com>
Date: Thu, 02 Feb 2012 10:27:37 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
	<8c5010ca5786a486f2082d711fdf52b8617973af.1328135056.git.dvhart@linux.intel.com>
	<4F29BFD5.7010002@linux.intel.com>
In-Reply-To: <4F29BFD5.7010002@linux.intel.com>
X-Enigmail-Version: 1.3.5
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 02 Feb 2012 18:28:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 02/01/2012 02:42 PM, Joshua Lock wrote:
> 
> 
> On 01/02/12 14:26, Darren Hart wrote:
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
> 
> amixer?
> 
>> +[ -x "$RANPWD" ] || exit 0
>> +
>> +do_start() {
>> +	# Replace every occurance of RANDOM_MAC with a unique locally
> occurrence?
>> +	# administered, unicast, randomly generated MAC address.
>> +	while grep -q RANDOM_MAC /etc/network/interfaces; do
>> +		sed -i "1,/RANDOM_MAC/s/RANDOM_MAC/$($RANPWD -m)/" /etc/network/interfaces
>> +	done
> 
> Otherwise looks good, feel free to add my SOB.
> 

Both fixed, SOB added. Thanks for the review!

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

