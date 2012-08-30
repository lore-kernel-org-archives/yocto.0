Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65D2AE0044A
	for <yocto@yoctoproject.org>; Thu, 30 Aug 2012 10:22:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q7UHMoDT024844
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 30 Aug 2012 10:22:50 -0700 (PDT)
Received: from [147.11.117.131] (147.11.117.131) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Thu, 30 Aug 2012 10:22:50 -0700
Message-ID: <503FA169.7020805@windriver.com>
Date: Thu, 30 Aug 2012 13:22:49 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: "Saxena, Rahul" <rahul.saxena@intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C4900332062C@ORSMSX103.amr.corp.intel.com>
	<503C3896.5080509@windriver.com> <503D1D55.1010205@intel.com>
	<CADkTA4MxAKcbtnEpCDKB==G2hxjRqt5F32kCqtg6HPo1QBcfUA@mail.gmail.com>
	<D956029D25CF204F948EA0FB515E1EE20AD632AA@ORSMSX105.amr.corp.intel.com>
	<63ECFF2A2302B44093D7CE9E9962C4900332201E@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <63ECFF2A2302B44093D7CE9E9962C4900332201E@ORSMSX103.amr.corp.intel.com>
Cc: "Hart, Darren" <darren.hart@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Poky 1.3_M3 branch does not work with linux-yocto 3.0 kernel ?
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
X-List-Received-Date: Thu, 30 Aug 2012 17:22:54 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-08-30 01:06 AM, Saxena, Rahul wrote:
>
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Bodke, Kishore K
> Sent: Wednesday, August 29, 2012 11:08 AM
> To: Bruce Ashfield; Hart, Darren
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Poky 1.3_M3 branch does not work with linux-yocto 3.0 kernel ?
>
>
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Bruce Ashfield
>> Sent: Wednesday, August 29, 2012 10:47 AM
>> To: Hart, Darren
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] Poky 1.3_M3 branch does not work with linux-yocto
>> 3.0 kernel ?
>>
>> On Tue, Aug 28, 2012 at 3:34 PM, Darren Hart<darren.hart@intel.com>  wrote:
>>> On 08/27/2012 08:18 PM, Bruce Ashfield wrote:
>>>> On 12-08-27 8:14 PM, Saxena, Rahul wrote:
>>>>> Hi,
>>>>>
>>>>> I am building a BSP (meta-cedartrail) using 1.3 M3 branch of Poky.
>>>>>
>>>>> When I try to boot a image such as core-image-sato, I get kernel
>>>>> panic and errors such as:
>>>>>
>>>>> VFS: Cannot open root device "ram0" or unkown-block(0,0)
>>>>>
>>>>> Please append a correct "root=" boot option; here are the available
>>>>>
>>>>> partitions:
>>>>>
>>>>> VFS: unable to mount root fs on unknown block(0,0)
>>>>>
>>>>> User configuration error - no valid rootfilesystem found
>>>>>
>>>>> I do see that the root file system exists in
>>>>> cedartrail-poky-linux/core-image-sato-1.0-r0/rootfs dir..
>>>>>
>>>>> I did not see this problem when I uses a earlier commit of the Poky
>>>>> master branch.
>>>>>
>>>>> It seems like something broke with 1.3 M3 branch that prevents a
>>>>> proper build with 3.0 kernel. I do need to build my BSP with 3.0 kernel.
>>>>>
>>>>> (I was also told by Laurentiu Serban that 1.3 M3 Full Pass testing
>>>>> does not include testing with the 3.0 kernel)
>>>>>
>>>>> Any suggestions would be most welcome. I do need to build my BSP
>>>>> with the 3.0 kernel.
>>>>
>>>> Hmm. It should work, I booted one not that long ago. Can you force
>>>> qemux86 to prefer the 3.0 kernel and see if that boots ? That would
>>>> at least start to isolate the potential problem areas.
>>>
>>> However, won't 3.0 be removed for the 1.3 release? Keeping with 3.4
>>> and
>> 3.2?
>>
>> For 1.3 the 3 kernel sliding window plan was 3.4, 3.2 and 3.0 with
>> 2.6.37 being voted off the island. Or did you mean 1.4 ? Regardless,
>> anything using 3.0 needs to be updated since it's time is running
>> short! :)
>>
>
> Cedartrail BSP has PVR Graphics drivers which works only with 3.0 Kernel.
>
> Thanks
> Kishore.
>
>
> I am mainly interested in ensuring 3.0 Kernel works with the next Yocto release (i.e. Yocto 1.3)
> since the CedarTrail BSP will work only with 3.0 Kernel due to a graphics driver dependency.
>

And that's all definitely fine. If we are having boot problems with the
board on the kernel that it tags, then opening a defect so we can look into
it is fine, since it is a supported kernel.

Bruce

> We will not port the Cedartrail BSP beyond Yocto 1.3.
>
> Thanks
> Rahul
>
>> Cheers,
>>
>> Bruce
>>
>>>
>>> --
>>> Darren
>>>
>>>>
>>>> Bruce
>>>>
>>>>>
>>>>> Thanks
>>>>>
>>>>> Rahul
>>>>>
>>>>
>>>
>>>
>>> --
>>> Darren Hart
>>> Intel Open Source Technology Center
>>> Yocto Project - Linux Kernel
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>> --
>> "Thou shalt not follow the NULL pointer, for chaos and madness await
>> thee at its end"
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


