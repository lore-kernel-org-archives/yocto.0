Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BA2CE006C3
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 13:40:47 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 12 Feb 2013 13:40:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,652,1355126400"; d="scan'208";a="201622398"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by AZSMGA002.ch.intel.com with ESMTP; 12 Feb 2013 13:40:46 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.438.0; Tue, 12 Feb 2013 13:40:46 -0800
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.65]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.6]) with mapi id
	14.01.0355.002; Tue, 12 Feb 2013 13:40:45 -0800
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Chris Tapp <opensource@keylevel.com>, "Zanussi, Tom"
	<tom.zanussi@intel.com>
Thread-Topic: [yocto] [PATCH 0/1][linux-yocto] Remove Cedartrail Machine
Thread-Index: AQHOBlH7q+oeLxeJRUKYS7pTZbEoaZhxynkAgAO/dICAACnRgIAAAkOAgACQqACAAOkCAIAAG0gA//965DA=
Date: Tue, 12 Feb 2013 21:40:44 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE255CB73D1@ORSMSX105.amr.corp.intel.com>
References: <cover.1360365190.git.kishore.k.bodke@intel.com>
	<719480A2-D38E-4B74-B815-352C17223899@keylevel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A6A717A89@ORSMSX101.amr.corp.intel.com>
	<E89AA40D-0FA6-4BC2-99D2-9548F06BDA5D@keylevel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A6A718D1C@ORSMSX101.amr.corp.intel.com>
	<000001ce08e6$9b51c250$d1f546f0$@annabooks.com>
	<1360699012.1516.26.camel@empanada>
	<A873331A-C3F4-4E94-893D-A7C72FC0BFA7@keylevel.com>
In-Reply-To: <A873331A-C3F4-4E94-893D-A7C72FC0BFA7@keylevel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: 'Yocto Discussion Mailing List' <yocto@yoctoproject.org>,
	'Darren Hart' <dvhart@linux.intel.com>
Subject: Re: [PATCH 0/1][linux-yocto] Remove Cedartrail Machine
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
X-List-Received-Date: Tue, 12 Feb 2013 21:40:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Chris Tapp
>Sent: Tuesday, February 12, 2013 1:35 PM
>To: Zanussi, Tom
>Cc: 'Yocto Discussion Mailing List'; 'Darren Hart'
>Subject: Re: [yocto] [PATCH 0/1][linux-yocto] Remove Cedartrail Machine
>
>
>On 12 Feb 2013, at 19:56, Tom Zanussi wrote:
>
>> On Mon, 2013-02-11 at 22:02 -0800, Sean Liming wrote:
>>>
>>>> -----Original Message-----
>>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>>> bounces@yoctoproject.org] On Behalf Of Liu, Song
>>>> Sent: Monday, February 11, 2013 1:25 PM
>>>> To: Chris Tapp
>>>> Cc: Darren Hart; Yocto Discussion Mailing List
>>>> Subject: Re: [yocto] [PATCH 0/1][linux-yocto] Remove Cedartrail Machin=
e
>>>>
>>>> Thanks for the reply, Chris! Feel free to let us know if you have any
>>>> questions. Hope your project will go well.
>>>>
>>>> Song
>>>>
>>>> -----Original Message-----
>>>> From: Chris Tapp [mailto:opensource@keylevel.com]
>>>> Sent: Monday, February 11, 2013 1:17 PM
>>>> To: Liu, Song
>>>> Cc: Bodke, Kishore K; Bruce Ashfield; Darren Hart; Saxena, Rahul; Zanu=
ssi,
>>>> Tom; Yocto Discussion Mailing List
>>>> Subject: Re: [yocto] [PATCH 0/1][linux-yocto] Remove Cedartrail Machin=
e
>>>>
>>>> Hi Song / Kishore,
>>>>
>>>> On 11 Feb 2013, at 18:47, Liu, Song wrote:
>>>>
>>>>> Hi Chris,
>>>>>
>>>>> Intel is still supporting critical fixes for the Cedar Trail BSP on
>>> Yocto Project
>>>> 1.3 release. If you need additional support for your project, I can
>>> connect you
>>>> with some Intel sales/support people who can help. At the same time,
>would
>>>> you be able to share more information about your project with me? It w=
ill
>>>> help when I ask them for additional support.
>>>>
>>>> Thanks, that's good news.
>>>>
>>>> The only slight down side from my perspective is we won't get the
>benefits
>>>> from 1.4 (and future) improvements. However, it will give me an excuse
>to
>>>> move the hardware on as new platforms become available ;-)
>>>>
>>>>
>>>>> Song
>>>>>
>>>>> -----Original Message-----
>>>>> From: Chris Tapp [mailto:opensource@keylevel.com]
>>>>> Sent: Saturday, February 09, 2013 1:33 AM
>>>>> To: Bodke, Kishore K
>>>>> Cc: bruce.ashfield@windriver.com; dvhart@linux.intel.com; Saxena,
>>>>> Rahul; Liu, Song; Zanussi, Tom; linux-yocto@yoctoproject.org;
>>>>> yocto@yoctoproject.org
>>>>> Subject: Re: [yocto] [PATCH 0/1][linux-yocto] Remove Cedartrail
>>>>> Machine
>>>>>
>>>>>
>>>>> On 8 Feb 2013, at 23:18, kishore.k.bodke@intel.com wrote:
>>>>>
>>>>>> From: Kishore Bodke <kishore.k.bodke@intel.com>
>>>>>>
>>>>>>
>>>>>> Hi,
>>>>>>
>>>>>> This patch set is to remove the Cedartail Machine from
>>>>>> Linux-yocto-3.4 Kernel.
>>>>>> Cedartrail BSP will not be supported for Yocto 1.4 Release.
>>>>>
>>>>> Hi Kishore,
>>>>>
>>>>> Are there any plans to bring support back in? We recently committed a
>>>> project to using this BSP for the Intel DN2800MT...
>>>>>
>>>>>> Also Please remove the standard/cedartrail branch.
>>>>>>
>>>>>> Please pull into linux-yocto-3.4/meta branch.
>>>>>>
>>>>>> Thanks
>>>>>> Kishore.
>>>>>>
>>>>>> The following changes since commit
>>>> f697e099bc76d5df3a307a5bc0cc25021dd6dfe0:
>>>>>>
>>>>>> meta: bump to v3.4.28, rt-40 (2013-02-04 00:14:21 -0500)
>>>>>>
>>>>>> are available in the git repository at:
>>>>>>
>>>>>> git://git.pokylinux.org/linux-yocto-contrib kishore/cedartrail_remov=
e
>>>>>> http://git.pokylinux.org/cgit.cgi/linux-yocto-contrib/log/?h=3Dkisho=
re/
>>>>>> c
>>>>>> edartrail_remove
>>>>>>
>>>>>> Kishore Bodke (1):
>>>>>> meta: Remove Cedartrail Machine
>>>>>>
>>>>>> .../bsp/cedartrail/cedartrail-preempt-rt.scc       |   13 ------
>>>>>> .../bsp/cedartrail/cedartrail-standard.scc         |    8 ----
>>>>>> .../cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg |   46
>>> --------------------
>>>>>> .../cfg/kernel-cache/bsp/cedartrail/cedartrail.scc |   15 -------
>>>>>> 4 files changed, 82 deletions(-)
>>>>>> delete mode 100755
>>>>>> meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-preempt-rt.scc
>>>>>> delete mode 100755
>>>>>> meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standard.scc
>>>>>> delete mode 100755
>>>>>> meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
>>>>>> delete mode 100644
>>>>>> meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.scc
>>>>>>
>>>>>> --
>>>>>> 1.7.9.5
>>>>>>
>>>>>> _______________________________________________
>>>>>> yocto mailing list
>>>>>> yocto@yoctoproject.org
>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>
>>>>> Chris Tapp
>>>>>
>>>>> opensource@keylevel.com
>>>>> www.keylevel.com
>>>>>
>>>>>
>>>>>
>>>>
>>>> Chris Tapp
>>>>
>>>> opensource@keylevel.com
>>>> www.keylevel.com
>>>>
>>>>
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>> I haven't looked at the changes. Out of curiosity, is it possible to ad=
d a
>>> BSP back in for a new Yocto Project version? What would be the challeng=
e?
>>>
>>
>> It probably wouldn't take much to bring it back - basically the pvr
>> graphics driver, which I assume is one of the most important features of
>> this BSP for users, is stuck at kernel version 3.0.  If everything else
>> stayed the same, forward-porting the GPL'ed kernel portion of the driver
>> would be all that would be needed to get it working again.  We've done
>> that routinely for other drivers such as EMGD, so I don't think that
>> would be too big a deal.
>
>Would that mean only non-accelerated graphics? I remember someone on
>this list a while back saying they had seen it ported to (I think) 3.2 und=
er a
>main-stream distro.
>
>> The bigger problem is who would support it going forward.  I could do
>> the initial work to fix it up (if I had the hardware, which I don't - I
>> may get a cedartrail netbook in March, so that ) (or we could take
>> patches) but I wouldn't have the time to support it after that.
>>
>> If someone stepped up to support it, though, that would make a
>> difference in keeping it around in 1.4 and beyond, I think.
>
>What would that involve? Is it fairly stand-alone, or would in-depth
>knowledge of the kernel 'magic' be required?

Too early to tell anything on valleyview.

>
>> Tom
>>
>>> Regards,
>>>
>>> Sean Liming
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>
>Chris Tapp
>
>opensource@keylevel.com
>www.keylevel.com
>
>
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

