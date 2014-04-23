Return-Path: <dv@pseudoterminal.org>
Received: from ptmx.org (ptmx.org [178.63.28.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5803E006EC
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 03:35:25 -0700 (PDT)
Received: from [10.1.14.248] (unknown [91.114.0.140])
	by ptmx.org (Postfix) with ESMTPSA id 9DC0C29E5B;
	Wed, 23 Apr 2014 12:35:22 +0200 (CEST)
Message-ID: <53579769.2090305@pseudoterminal.org>
Date: Wed, 23 Apr 2014 12:35:21 +0200
From: Carlos Rafael Giani <dv@pseudoterminal.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Dipesh Karmakar <Dipesh.Karmakar@hcl.com>
References: <97272D6808818244BD88BD72F19D658B03CAD664@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
	<53577B99.2090904@pseudoterminal.org>
	<97272D6808818244BD88BD72F19D658B03CAD719@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
In-Reply-To: <97272D6808818244BD88BD72F19D658B03CAD719@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Meenakumari Shedole <meenakumari.s@hcl.com>
Subject: Re: Rgardring GSTreamer1.0 integration on Yocto Dora
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
X-List-Received-Date: Wed, 23 Apr 2014 10:35:27 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Right, its 1.2.2. But 1.2.3 is just a bugfix release. Simply replacing 
the version number and the md5&sha256 sums should be enough. New plugins 
and features will be introduced in the 1.4 release.

Actually, 1.2.4 just came out. I will update the versions to 1.2.4 in a 
few days. Sooner is not possible, unfortunately.


Carlos


On 2014-04-23 12:29, Dipesh Karmakar wrote:
> Hi Carlos,
>
> Thanks for your reply.
>
> Actually we have built Gst-1.2.3 and all its plugins in Ubuntu 12.10 with libdrm-2.4.53, libva-1.3.0, gst-libav-1.2.3, libva-intel-driver-1.3.0, gstreamer-vaapi-0.5.8 to test x264 vaapi with foreign window (as suggested by the vaapi maintainer).
> Its working quite nice so far, so we are thinking to add gt-1.2.3 to dora.
>
> As you have suggested,
>
>>> why not just use the dora branch of the meta-gstreamer1.0 layer?
> I believe dora branch of the meta-gstreamer1.0 has 1.2.2. Will it work with vaapi ?
>
> Because we have a working GST-1.2.3, so we do not want to take risk.
>
> I will definitely try your suggestion and in parallel we need to know how we can add GST-1.2.3 locally to Dora.
>
> Thanks,
> Dipesh
>
> -----Original Message-----
> From: Carlos Rafael Giani [mailto:dv@pseudoterminal.org]
> Sent: Wednesday, April 23, 2014 2:07 PM
> To: Dipesh Karmakar; yocto@yoctoproject.org
> Subject: Re: [yocto] Rgardring GSTreamer1.0 integration on Yocto Dora
>
> Hi Dipesh,
>
> why not just use the dora branch of the meta-gstreamer1.0 layer?
>
> Carlos
>
> On 2014-04-23 10:06, Dipesh Karmakar wrote:
>> Hi All,
>>
>> Can we integrate GST-1.2.3 to Dora? Is there any document available? We need it badly.
>>
>> Thanks,
>> Dipesh
>>
>> -----Original Message-----
>> From: Dipesh Karmakar
>> Sent: Tuesday, April 22, 2014 12:41 PM
>> To: 'Carlos Rafael Giani'
>> Cc: yocto@yoctoproject.org; Meenakumari Shedole
>> Subject: [yocto] Rgardring GSTreamer1.0 integration on Yocto Dora
>>
>> Hi Carlos,
>>
>> Do you have any plan to integrate Gstreamer-1.2.3 to Dora? I believe current Dora10.0.1 has GST-1.0.9.
>>
>> Thanks,
>> Dipesh
>>
>> -----Original Message-----
>> From: Carlos Rafael Giani [mailto:dv@pseudoterminal.org]
>> Sent: Sunday, February 02, 2014 9:14 PM
>> To: Khaja Hussain Shaik
>> Cc: Nicolas Dechesne; yocto@yoctoproject.org; Dipesh Karmakar; Paul
>> Eggleton; Kishore Divvela -ERS, HCL Tech
>> Subject: Re: [yocto] Rgardring GSTreamer1.0 integration on Yocto dylan
>>
>> On 2014-01-28 13:49, Khaja Hussain Shaik wrote:
>>> Hi Carlos,
>>>
>>> Did you get a chance to look into the porting of gst1.0 to Dylan?
>>>
>>> Regards
>>> Khaja
>>>
>> I have now upgraded the recipes in meta-gstreamer1.0 to version 1.2.2.
>> It is a backport from the current OE-core recipes. Furthermore, I added the Orc OE-core recipes to this layer. This way, gstreamer is built with Orc support by default, even for danny and dylan.
>>
>> cheers,
>> Carlos
>>
>>
>> ::DISCLAIMER::
>> ----------------------------------------------------------------------
>> ----------------------------------------------------------------------
>> --------
>>
>> The contents of this e-mail and any attachment(s) are confidential and intended for the named recipient(s) only.
>> E-mail transmission is not guaranteed to be secure or error-free as
>> information could be intercepted, corrupted, lost, destroyed, arrive
>> late or incomplete, or may contain viruses in transmission. The e mail and its contents (with or without referred errors) shall therefore not attach any liability on the originator or HCL or its affiliates.
>> Views or opinions, if any, presented in this email are solely those of
>> the author and may not necessarily reflect the views or opinions of
>> HCL or its affiliates. Any form of reproduction, dissemination,
>> copying, disclosure, modification, distribution and / or publication of this message without the prior written consent of authorized representative of HCL is strictly prohibited. If you have received this email in error please delete it and notify the sender immediately.
>> Before opening any email and/or attachments, please check them for viruses and other defects.
>>
>> ----------------------------------------------------------------------
>> ----------------------------------------------------------------------
>> --------


