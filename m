Return-Path: <rahul.saxena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E2D2E01211
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2011 11:11:53 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 Sep 2011 11:11:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,314,1312182000"; d="scan'208";a="47669359"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga002.fm.intel.com with ESMTP; 01 Sep 2011 11:11:34 -0700
Received: from orsmsx505.amr.corp.intel.com ([10.22.226.208]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Thu, 1 Sep 2011 11:11:34 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 1 Sep 2011 11:11:32 -0700
Thread-Topic: [yocto] e100 driver does not build
Thread-Index: AcxoRjyW9uilmDt/ScGMFYgAS87tKwAHPvKwABshLDA=
Message-ID: <4FF5AC937153B0459463C1A88EB478F2012E1E590F@orsmsx505.amr.corp.intel.com>
References: <4FF5AC937153B0459463C1A88EB478F2012E1E54F9@orsmsx505.amr.corp.intel.com>
In-Reply-To: <4FF5AC937153B0459463C1A88EB478F2012E1E54F9@orsmsx505.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
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
X-List-Received-Date: Thu, 01 Sep 2011 18:11:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes, the problem was due to missing dependent options..
I had incorrectly assumed that dependent options would get pulled in=20
or perhaps a error would  be generated.
It worked after I added following 3 options stated as dependent options
in a Kernel configuration database that I saw:

CONFIG_ISA
CONFIG_EISA
CONFIG_NET_PCI

I am still iterating to check if all three of the above are really needed o=
r
or if just the CONFIG_NET_PCI option is needed.=20

I had enabled the option using a .cfg file.  Also checking again to see if =
a warning
gets generated when the dependent options are not included.

BTW what does a message such as following in the .config file mean ?

"CONFIG_xxxxx is not set" =20


Thanks
Rahul

-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]=20
Sent: Wednesday, August 31, 2011 6:27 PM
To: Zanussi, Tom
Cc: Saxena, Rahul; yocto@yoctoproject.org
Subject: Re: [yocto] e100 driver does not build

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


