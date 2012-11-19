Return-Path: <laurentiu.palcu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15FDEE01275
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2012 05:19:22 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Nov 2012 05:18:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,279,1352102400"; d="scan'208";a="244305397"
Received: from lpalcu-linux (HELO [10.237.105.165]) ([10.237.105.165])
	by orsmga002.jf.intel.com with ESMTP; 19 Nov 2012 05:19:20 -0800
Message-ID: <50AA31D8.5020700@intel.com>
Date: Mon, 19 Nov 2012 15:19:20 +0200
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120912 Thunderbird/15.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <20121119123504.22FAF20032F@gemini.denx.de>
	<50AA2EE4.1000207@communistcode.co.uk>
In-Reply-To: <50AA2EE4.1000207@communistcode.co.uk>
Subject: Re: Alternative SDK installation directory working?
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
X-List-Received-Date: Mon, 19 Nov 2012 13:19:22 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Send the reply to the list too. My answer below.

On 11/19/2012 03:06 PM, Jack Mitchell wrote:
> On 19/11/12 12:35, Wolfgang Denk wrote:
>> Hello,
>>
>> I wonder if the installation of the SDK into an alternative directory
>> is actually working?
>>
>> Trying the latest snapshot
>> http://autobuilder.yoctoproject.org/pub/nightly/CURRENT/toolchain/x86_64/poky-eglibc-x86_64-arm-toolchain-gmae-1.3+snapshot-20121119.sh
>> I get this:
>>
>> Installation:
>>
>> -> sh ./poky-eglibc-x86_64-arm-toolchain-gmae-1.3+snapshot-20121119.sh
>> Enter target directory for SDK (default: /opt/poky/1.3+snapshot): /opt/poky-test
>> You are about to install the SDK to "/opt/poky-test". Proceed[Y/n]?Y
>> Extracting SDK...done
>> Setting it up...done
>> SDK has been successfully set up and is ready to be used.
>>
>>
>> Test:
>>
>> -> cat /tmp/x.c
>> int main (void)
>> {
>>          return 0;
>> }
>> -> source /opt/poky-test/environment-setup-armv5te-poky-linux-gnueabi
>> -> ${TARGET_PREFIX}gcc -v -o /tmp/x /tmp/x.c

Just do: $CC -o /tmp/x /tmp/x.c

It should work.

echo $CC
arm-poky-linux-gnueabi-gcc -march=armv5te -marm -mthumb-interwork
-mtune=arm926ej-s --sysroot=/tests/sdk/sysroots/armv5te-poky-linux-gnueabi

Thanks,
Laurentiu

> 
> I think you need a --sysroot in there. e.g. --sysroot=/opt/poky-test/sysroots/arch-blah-blah-blah
> 
>> What am I missing here?
>>
>> Best regards,
>>
>> Wolfgang Denk
>>
> 
> Regards,
> 

