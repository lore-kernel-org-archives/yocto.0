Return-Path: <ramana.gollamudi@huawei.com>
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [119.145.14.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A105DE011AF
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 08:58:28 -0800 (PST)
Received: from 172.24.2.119 (EHLO szxeml214-edg.china.huawei.com)
	([172.24.2.119])
	by szxrg02-dlp.huawei.com (MOS 4.3.4-GA FastPath queued)
	with ESMTP id ATH45124; Wed, 28 Nov 2012 00:58:07 +0800 (CST)
Received: from SZXEML463-HUB.china.huawei.com (10.82.67.206) by
	szxeml214-edg.china.huawei.com (172.24.2.29) with Microsoft SMTP Server
	(TLS) id 14.1.323.3; Wed, 28 Nov 2012 00:58:06 +0800
Received: from SZXEML534-MBX.china.huawei.com ([169.254.2.2]) by
	szxeml463-hub.china.huawei.com ([10.82.67.206]) with mapi id
	14.01.0323.003; Wed, 28 Nov 2012 00:57:55 +0800
From: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: [yocto] Need for offline binary configuration
Thread-Index: AQHNxzDKyeCK5q4Ul0GcItQcbcDHSpfyUU0AgAIk01D//7JrAIAJyRp5
Date: Tue, 27 Nov 2012 16:57:54 +0000
Message-ID: <36ED13F3654AE54CA763E6821D93A5711049B67C@szxeml534-mbx.china.huawei.com>
References: <36ED13F3654AE54CA763E6821D93A5711048C834@szxeml534-mbx.china.huawei.com>
	<50ABA048.7080707@windriver.com>
	<36ED13F3654AE54CA763E6821D93A5711048CA0D@szxeml534-mbx.china.huawei.com>,
	<50AD2B96.60504@windriver.com>
In-Reply-To: <50AD2B96.60504@windriver.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.216.200.251]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"'dvhart@linux.intel.com'" <dvhart@linux.intel.com>,
	Sanil kumar <sanil.kumar@huawei.com>
Subject: Re: Need for offline binary configuration
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
X-List-Received-Date: Tue, 27 Nov 2012 16:58:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Looking for comments. Thanks
________________________________________
From: Bruce Ashfield [bruce.ashfield@windriver.com]
Sent: Thursday, November 22, 2012 12:59 AM
To: Venkata ramana gollamudi
Cc: yocto@yoctoproject.org; Sanil kumar; Hatle, Mark; 'dvhart@linux.intel.c=
om'
Subject: Re: [yocto] Need for offline binary configuration

On 12-11-21 11:29 AM, Venkata ramana gollamudi wrote:
> Reply inline
>
>> -----Original Message-----
>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>> Sent: Tuesday, November 20, 2012 8:53 PM
>> To: Venkata ramana gollamudi
>> Cc: yocto@yoctoproject.org; Sanil kumar; Hatle, Mark
>> Subject: Re: [yocto] Need for offline binary configuration
>>
>> On 12-11-20 10:09 AM, Venkata ramana gollamudi wrote:
>>> Poky allows to build custom Linux for you, but we have cases where
>> the post build customization is required, like user-addition, network
>> configuration, service control. Even selecting the required packages
>> can be a post build activity.
>>>
>>> The current model requires the image to be rebuilt to support these
>> configuration.
>>> Offline Configuration tool (OCT), which allows a binary image
>> customization before making a final target image. This case will be
>> more evident in larger companies, where platform teams, product teams ,
>> application teams are distributed and Linux build from source will be
>> owned and lab tested by a single team, like platform team. Other teams
>> just configure to use it for product variants from same platform build.
>>>
>>> Detailed use cases can be found in enhancement bug:3252
>>>
>>> OCT should work on the binary pool of compiled packages generated
>> from poky.
>>>
>>> The basic operations that can be supported includes
>>> a) Select/deselect required packages from pool of binary packages
>> into final target image.
>>> b) Provision to select external binary packages like ADT compiled
>> applications as input and add them to final target image.
>>> c) Binary level Offline configuration can includes
>>>         Configure the users/passwords
>>>         Configure the network
>>>         Configure the host name
>>>         Select the services to be started by default
>>>         Security related configuration
>>>         Generate initrd in ramfs/ext3/... format
>>>         etc..
>>>
>>> Considering the methods to support these in our current yocto model,
>> following changes can be done.
>>> 1) HOB can be the tool which can be extended to support these
>>>       Poky can generate a binary package pool as one if its output and
>> Hob can work on this package pool to select packages, configure and
>> generate image.
>>> So HOB can support opening HOB in Binary(or OCT) mode i.e., without
>> build options but only with binary package selection. Configuration GUI
>> needs to be added to HOB.
>>> Note:HOB+OCT is together or separate, needs a bit more thought and
>> overall organization as they will be intended for different users.
>>
>> Is there some overlap between this point and the other ongoing
>> discussions
>> about image construction, deployment and package management ?
>>
>> i.e. this thread:
>>
>>     [OE-core] RFC: OE-Core image creation and deployment
>>
>> http://lists.linuxtogo.org/pipermail/openembedded-core/2012-
>> July/026938.html
>>
>> These may already be coordinated, but I do see some common threads and
>> it would be nice to make sure everything will work together and that we
>> aren't duplicating effort!
>>
>> Cheers,
>>
>> Bruce
>>
>
> Bruce, Thanks for the information. After your reply, I have gone through =
the discussions and agree that binary pool is in similar lines. Great to se=
e that the realization happening in yocto1.4.
> Understood that package-feed can be used to generate the target image.
>
> Is there any RFC/mail/wiki available explaining how the configuration(lik=
e fstype) during image generation will be realized?

Not that I know of. It is still under design last I heard, but MarkH is the
person to provide the details. He's out of the office at the moment, but
I'm sure that when he is back he can provide plenty of information.

>
> I am looking for post build configuration tool, which allows the product =
team users also to configure users, network, services etc .

Agreed. I see this as something to start with, since it doesn't overlap
with the other efforts (that I know of), and when I first read your
email I thought it was the main focus. When you continued into image
creation and package selection, that's when I noted the overlap.

> Image type, file system and Partition configuration can be one of them.
> I expect the product team users who configures image and generates target=
 image, will have a little or no knowledge of bitbake, also needs easy inst=
allation and less dependencies.
>
> Can look in this context, how HOB will fit into this scenario or needs a =
new tool.

Keeping the number of tools low is a good thing, so hopefully it can fit
within the existing options.

>
>>
>>> 2) Binary package pool can be a minimal/partial sstate-cache, as
>> complete sstate-cache is quite big and not required for product teams
>> as they are not expected to build but just need to select and
>> configure.
>>>       I think it is sufficient to keep the minimal binaries from
>> sstate-cache which are required to execute image.bbclass, do_rootfs
>> task to generate image.
>
> Point 2, No longer applicable as package-feed is a binary pool.
>
>>> 3) Along with specific configuration UI implementation, a generic
>> configuration model similar to kernel kconfig and menuconfig can be
>> considered, in cases where more detailed offline configurations is
>> required like detailed security configuration.
>
> Point 3, still can be thought about.

There have been other menuconfig efforts in the past (that I've heard
about, but not had direct involvement), so doing some research in this
area would be appropriate as well.

cheers,

Bruce

>
>>>
>>> Regards,
>>> Ramana
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>


