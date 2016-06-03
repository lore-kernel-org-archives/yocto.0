Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54BE2E00E0F; Fri,  3 Jun 2016 08:34:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA4E7E00DDF
	for <yocto@yoctoproject.org>; Fri,  3 Jun 2016 08:34:19 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u53FYCLH010596
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 3 Jun 2016 08:34:13 -0700
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Fri, 3 Jun 2016 08:34:12 -0700
To: "Dan O'Donovan" <dan@emutex.com>, Oleksandr Poznyak
	<oleksandr.poznyak@gmail.com>
References: <5751489D.8000403@emutex.com>
	<CAEeWub+31SEF90HY9JC-+7PtGxHZjjz+S1Sm9mS99dDxUFCKCQ@mail.gmail.com>
	<5751911F.8010107@emutex.com> <5751A346.6030601@windriver.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <5751A373.8070100@windriver.com>
Date: Fri, 3 Jun 2016 11:34:11 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <5751A346.6030601@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: rootfs mounted read-only on Live USB (x86-64)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 03 Jun 2016 15:34:33 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-06-03 11:33 AM, Bruce Ashfield wrote:
> On 2016-06-03 10:15 AM, Dan O'Donovan wrote:
>> On 06/03/2016 10:54 AM, Oleksandr Poznyak wrote:
>>> Hi,
>> Hi Oleksandr
>>> Check if "read-only-rootfs" feature is added to any of these variables
>>> either in your local.conf or your image bitbake recipe:
>>>
>>> Something like that:
>>>
>>> IMAGE_FEATURES = "read-only-rootfs"
>>>
>>> EXTRA_IMAGE_FEATURES += "read-only-rootfs"
>> Thanks for your suggestion.  I didn't find "read-only-rootfs" specified
>> in the IMAGE_FEATURES in local.conf or elsewhere.  I suspect it might be
>> a different issue because it only affects the live-boot of the .iso
>> image.  If I install the .hddimage directly to the storage device
>> instead, then it boots fine and the rootfs is read/write.
>>
>> [update]
>> It looks like the problem was indeed the lack of aufs.
>> I added this in conf/local.conf
>>      DISTRO_FEATURES_append = " aufs"
>> and this in the kernel recipe
>>      KERNEL_FEATURES_append += "${@bb.utils.contains('DISTRO_FEATURES',
>> 'aufs', ' features/aufs/aufs-enable.scc', '', d)}"
>> and now the live USB image boots correctly with a read-write filesystem.
>>
>> Considering that the default images built for a generic x86-64 machine
>> include a live-boot image (.iso) which is effectively broken, I assume
>> the aufs feature (or another solution for the live-boot use case) should
>> really be added by default for those builds as well.
>
> aufs is in the linux-yocto-4.1 and 4.4 kernels. It may be that the
> SRCREVs for older branches haven't been updated yet.

ah crap. I see you did find the aufs support, just that it wasn't
enabled by the right images.

Bruce

>
>
> commit ed2314d234ff26ed50342264e432392c8908c66b
> Author: Bruce Ashfield <bruce.ashfield@windriver.com>
> Date:   Wed Jul 8 15:46:25 2015 -0400
>
>      aufs4: core support
>
>      Integrating the core aufs4 support from:
>
>        git://github.com/sfjro/aufs4-standalone.git
>
>      Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
>
>
>
> Bruce
>
>>>
>>> Thanks,
>>> Oleksandr Poznyak!
>>>
>>> On Fri, Jun 3, 2016 at 12:06 PM, Dan O'Donovan <dan@emutex.com
>>> <mailto:dan@emutex.com>> wrote:
>>>
>>>     Hi all
>>>
>>>     Has anyone else noticed that the root file-system appears to be
>>>     mounted read-only when booting a Live USB image from Yocto 2.1.
>>>
>>>     This is on a sato build from the krogoth branch of poky and
>>>     meta-intel, for a generic x86-64 machine (4.4 kernel).
>>>
>>>     I'm transferring the resulting .iso image to a usb stick using
>>>     'dd', and then picking the 'boot' option at startup.
>>>
>>>     As well as a bunch of errors about the read-only filesystem (e.g.
>>>     failing to create files in /var and other locations), the desktop
>>>     UI fails to load.
>>>
>>>     This worked fine with Yocto 2.0.
>>>
>>>     I have a hunch that it might be caused by a lack of aufs support.
>>>     Is it possible that aufs patches were omitted from the x86 kernels
>>>     in Yocto 2.1?
>>>
>>>     Thanks,
>>>     -Dan
>>>
>>>     P.S. It works fine if I just install it directly, or if I use the
>>>     .hddimg, instead of trying to boot the live image from the .iso.
>>>     --
>>>     _______________________________________________
>>>     yocto mailing list
>>>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>>     https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>>
>>
>


