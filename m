Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45B04E0076F
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2011 18:26:56 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p811QswP023468
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 31 Aug 2011 18:26:54 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.21.218) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Wed, 31 Aug 2011 18:26:54 -0700
Message-ID: <4E5EDF5C.6030605@windriver.com>
Date: Wed, 31 Aug 2011 21:26:52 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.20) Gecko/20110804 Thunderbird/3.1.12
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <4FF5AC937153B0459463C1A88EB478F2012E16E675@orsmsx505.amr.corp.intel.com>
	<1314832701.29348.32.camel@elmorro>
In-Reply-To: <1314832701.29348.32.camel@elmorro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: e100 driver does not build
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
X-List-Received-Date: Thu, 01 Sep 2011 01:26:56 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-31 7:18 PM, Tom Zanussi wrote:
>
> On Wed, 2011-08-31 at 16:04 -0700, Saxena, Rahul wrote:
>> I am unable to get the e100 driver to build for my BSP.
>>
>> I have configured to build it as a module. I do  not see the e100.ko
>> file being generated nor does
>>
>>   CONFIG_E100 appear in the generated .config file in my build area.
>>
>>
>>
>> However I do see the driver source file e100.c in
>>    tmp/work/bspname-poky-linux/linux-yocto-3.0.3+git1
>> +xxxx ../linux/drivers/net
>>
>>
>>
>> I do not have any problems with other drivers (igb, E1000 etc)  that I
>> have configured in exactly similar way.
>>
>>
>>
>> Any insight on this issue ?
>>
>
> It's probably missing another option it depends on e.g. is
> CONFIG_NET_PCI and CONFIG_MII enabled in your .config?

This is most likely what it is.

Out of curiosity, how did you enable the option ? Via a config fragement
(.cfg file) or via menuconfig .. or something else?

If you tried to set something via a fragment and it doesn't make it to
the final .config, you should see a warning during the kernel build
phase.

Cheers,

Bruce

>
> Tom
>
>>
>>
>> Thanks
>>
>> Rahul
>>
>>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


