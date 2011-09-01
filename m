Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B75AE01211
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2011 11:20:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p81IKPbl016935
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 1 Sep 2011 11:20:25 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.21.218) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 1 Sep 2011 11:20:25 -0700
Message-ID: <4E5FCCE7.4000906@windriver.com>
Date: Thu, 1 Sep 2011 14:20:23 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.21) Gecko/20110830 Thunderbird/3.1.13
MIME-Version: 1.0
To: "Saxena, Rahul" <rahul.saxena@intel.com>
References: <4FF5AC937153B0459463C1A88EB478F2012E1E54F9@orsmsx505.amr.corp.intel.com>
	<4FF5AC937153B0459463C1A88EB478F2012E1E590F@orsmsx505.amr.corp.intel.com>
In-Reply-To: <4FF5AC937153B0459463C1A88EB478F2012E1E590F@orsmsx505.amr.corp.intel.com>
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
X-List-Received-Date: Thu, 01 Sep 2011 18:20:26 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-01 2:11 PM, Saxena, Rahul wrote:
> Yes, the problem was due to missing dependent options..
> I had incorrectly assumed that dependent options would get pulled in
> or perhaps a error would  be generated.

A warning can (and will) be generated for options that are
set by a BSP and don't end up in a final .config, but that's only
if you've placed them in a .cfg file and fed them through the
config auditing steps of the linux-yocto build (this is automatic).

dependencies won't be set automatically, it's the opposite,
you must ensure they are set or a particular Kconfig value must
select them.

> It worked after I added following 3 options stated as dependent options
> in a Kernel configuration database that I saw:
>
> CONFIG_ISA
> CONFIG_EISA
> CONFIG_NET_PCI
>
> I am still iterating to check if all three of the above are really needed or
> or if just the CONFIG_NET_PCI option is needed.
>
> I had enabled the option using a .cfg file.  Also checking again to see if a warning
> gets generated when the dependent options are not included.
>
> BTW what does a message such as following in the .config file mean ?
>
> "CONFIG_xxxxx is not set"

It should be:

# CONFIG_foo is not set

And that is should be read as "config foo is disabled"

Bruce

>
>
> Thanks
> Rahul
>
> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Wednesday, August 31, 2011 6:27 PM
> To: Zanussi, Tom
> Cc: Saxena, Rahul; yocto@yoctoproject.org
> Subject: Re: [yocto] e100 driver does not build
>
> On 11-08-31 7:18 PM, Tom Zanussi wrote:
>>
>> On Wed, 2011-08-31 at 16:04 -0700, Saxena, Rahul wrote:
>>> I am unable to get the e100 driver to build for my BSP.
>>>
>>> I have configured to build it as a module. I do  not see the e100.ko
>>> file being generated nor does
>>>
>>>    CONFIG_E100 appear in the generated .config file in my build area.
>>>
>>>
>>>
>>> However I do see the driver source file e100.c in
>>>     tmp/work/bspname-poky-linux/linux-yocto-3.0.3+git1
>>> +xxxx ../linux/drivers/net
>>>
>>>
>>>
>>> I do not have any problems with other drivers (igb, E1000 etc)  that I
>>> have configured in exactly similar way.
>>>
>>>
>>>
>>> Any insight on this issue ?
>>>
>>
>> It's probably missing another option it depends on e.g. is
>> CONFIG_NET_PCI and CONFIG_MII enabled in your .config?
>
> This is most likely what it is.
>
> Out of curiosity, how did you enable the option ? Via a config fragement
> (.cfg file) or via menuconfig .. or something else?
>
> If you tried to set something via a fragment and it doesn't make it to
> the final .config, you should see a warning during the kernel build
> phase.
>
> Cheers,
>
> Bruce
>
>>
>> Tom
>>
>>>
>>>
>>> Thanks
>>>
>>> Rahul
>>>
>>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


