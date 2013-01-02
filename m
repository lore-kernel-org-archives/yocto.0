Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5925FE011AC
	for <yocto@yoctoproject.org>; Wed,  2 Jan 2013 09:19:27 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Jan 2013 09:18:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,397,1355126400"; d="scan'208";a="266314879"
Received: from unknown (HELO envy.home) ([10.255.14.43])
	by orsmga002.jf.intel.com with ESMTP; 02 Jan 2013 09:19:26 -0800
Message-ID: <50E46C1E.2080109@linux.intel.com>
Date: Wed, 02 Jan 2013 09:19:26 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <f339ca3f94ec7bb6a749c5973acb1f85bc1ace6c.1355766001.git.tom.zanussi@intel.com>
	<0c46e74f56afa3b2c2922209e8f746ca210c9152.1355766001.git.tom.zanussi@intel.com>
	<50D25E76.1000302@linux.intel.com>
	<1356020632.30533.51.camel@empanada>
In-Reply-To: <1356020632.30533.51.camel@empanada>
X-Enigmail-Version: 1.4.6
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 4/5] yocto-layer: add 'layer' template data
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
X-List-Received-Date: Wed, 02 Jan 2013 17:19:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12/20/2012 08:23 AM, Tom Zanussi wrote:
> On Wed, 2012-12-19 at 16:40 -0800, Darren Hart wrote:
>>
>> On 12/17/2012 09:51 AM, tom.zanussi@intel.com wrote:
>>> From: Tom Zanussi <tom.zanussi@intel.com>
>>>
>>> Add a 'layer' target containing all the data that will be used to
>>> generate a generic yocto layer.
>>>
>>> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
>>> ---
>>
>> Great stuff Tom, only one nit below:
>>
>>> new file mode 100644
>>> index 0000000..90ce90e
>>> --- /dev/null
>>> +++ "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/helloworld.c"	
>>> @@ -0,0 +1,6 @@
>>> +#include <stdio.h>
>>> +
>>> +int main(int argc, char **argv)
>>> +{
>>> +    printf("Hello World!\n");
>>
>> If you specify a return type of int, you should be returning one:
>>
>> 	return 0;
>>
>> :-)
>>
> 
> Hmm, I don't think that's actually necessary for main() - if you don't
> specify a return value for main(), it should already implicitly return 0
> IIRC...

Possibly, but explicit is better IMO. I've been yelled at in certain
forums for using the implicit return.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

