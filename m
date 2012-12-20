Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75D1EE011ED
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2012 08:29:52 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 1B0DBF8123E; Thu, 20 Dec 2012 09:29:52 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 45C82F8123D;
	Thu, 20 Dec 2012 09:29:50 -0700 (MST)
Message-ID: <50D33CFE.2060108@mlbassoc.com>
Date: Thu, 20 Dec 2012 09:29:50 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <f339ca3f94ec7bb6a749c5973acb1f85bc1ace6c.1355766001.git.tom.zanussi@intel.com>
	<0c46e74f56afa3b2c2922209e8f746ca210c9152.1355766001.git.tom.zanussi@intel.com>
	<50D25E76.1000302@linux.intel.com>
	<1356020632.30533.51.camel@empanada>
In-Reply-To: <1356020632.30533.51.camel@empanada>
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
X-List-Received-Date: Thu, 20 Dec 2012 16:29:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-12-20 09:23, Tom Zanussi wrote:
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

Not true - that would be compiler specific and should not be relied on.
Always best to be explicit (plus it will eliminate a GCC warning!)

>
> Tom
>
>>> +}
>>
>>
>> Looks good otherwise.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

