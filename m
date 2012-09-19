Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D7C4E01346
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2012 21:03:00 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Sep 2012 21:02:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,446,1344236400"; d="scan'208";a="223794094"
Received: from unknown (HELO [10.255.13.193]) ([10.255.13.193])
	by fmsmga001.fm.intel.com with ESMTP; 18 Sep 2012 21:02:57 -0700
Message-ID: <505943F1.4060306@linux.intel.com>
Date: Tue, 18 Sep 2012 21:02:57 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
References: <cover.1346893078.git.nitin.a.kamble@intel.com>
	<1347320069.25993.16.camel@empanada>
	<ADD6A3980E8C39419A432FF422031B4C15726661@ORSMSX106.amr.corp.intel.com>
	<D956029D25CF204F948EA0FB515E1EE21C1058EB@ORSMSX105.amr.corp.intel.com>
	<ADD6A3980E8C39419A432FF422031B4C15726CAF@ORSMSX106.amr.corp.intel.com>
	<D956029D25CF204F948EA0FB515E1EE21C10A3A9@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE21C10A3A9@ORSMSX105.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: [PATCH 0/1] Fix X issue on crownbay
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
X-List-Received-Date: Wed, 19 Sep 2012 04:03:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/18/2012 07:35 PM, Bodke, Kishore K wrote:
>
>
>> -----Original Message-----
>> From: Kamble, Nitin A
>> Sent: Thursday, September 13, 2012 12:58 PM
>> To: Bodke, Kishore K; Zanussi, Tom
>> Cc: Hart, Darren; yocto@yoctoproject.org
>> Subject: RE: [PATCH 0/1] Fix X issue on crownbay
>>
>> Thanks Kishore for reporting it. I am trying to get to bottom of this by today or
>> tomorrow.
>
> Hi Nitin,
>
> I still cannot see the X with the latest poky/master and meta-intel/master for Romley.
> No /usr/bin/Xorg and /usr/bin/X .
>

The patch is pending on stage/master_under_test, it's changes an 
RPROVIDES to an RCONFLICTS.

Sau!

> Thanks
> Kishore.
>
>>
>> Thanks,
>> Nitin
>>
>>
>>> -----Original Message-----
>>> From: Bodke, Kishore K
>>> Sent: Wednesday, September 12, 2012 1:57 PM
>>> To: Kamble, Nitin A; Zanussi, Tom
>>> Cc: Hart, Darren; yocto@yoctoproject.org
>>> Subject: RE: [PATCH 0/1] Fix X issue on crownbay
>>>
>>>
>>>
>>>> -----Original Message-----
>>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>>> bounces@yoctoproject.org] On Behalf Of Kamble, Nitin A
>>>> Sent: Wednesday, September 12, 2012 1:14 PM
>>>> To: Zanussi, Tom
>>>> Cc: Hart, Darren; yocto@yoctoproject.org
>>>> Subject: Re: [yocto] [PATCH 0/1] Fix X issue on crownbay
>>>>
>>>> FYI While testing on the fishriver platform, I also find that there is
>>>> no X log, and looking further found out that xorg executable is not on
>>>> the image. I think the same thing is also happening on crownbay.
>>>
>>> FYI.. I also see the similar issue for Romley.
>>> There is no Xlog and X does not comes up.
>>>
>>> Thanks
>>> Kishore.
>>>
>>>>
>>>> Nitin
>>>>
>>>>
>>>>
>>>>> -----Original Message-----
>>>>> From: Kamble, Nitin A
>>>>> Sent: Wednesday, September 12, 2012 9:18 AM
>>>>> To: Zanussi, Tom
>>>>> Cc: Hart, Darren; yocto@yoctoproject.org
>>>>> Subject: RE: [PATCH 0/1] Fix X issue on crownbay
>>>>>
>>>>> Hi Tom,
>>>>>    Thanks for looking into the matter. I will try to reproduce the
>>>>> issue you are seeing with master. And send another pull request with all
>>> the fixes.
>>>>>
>>>>> Regards,
>>>>> Nitin
>>>>>
>>>>>
>>>>>> -----Original Message-----
>>>>>> From: Zanussi, Tom
>>>>>> Sent: Monday, September 10, 2012 4:34 PM
>>>>>> To: Kamble, Nitin A
>>>>>> Cc: Hart, Darren; yocto@yoctoproject.org
>>>>>> Subject: Re: [PATCH 0/1] Fix X issue on crownbay
>>>>>>
>>>>>> On Wed, 2012-09-05 at 17:59 -0700, nitin.a.kamble@intel.com wrote:
>>>>>>> From: Nitin A Kamble <nitin.a.kamble@intel.com>
>>>>>>>
>>>>>>> The following changes since commit
>>>>>> 66b516f3d3a287eecbf8804b2221bfc27e36db63:
>>>>>>>
>>>>>>>    README: add info explaining meta-tlk layer purpose (2012-09-06
>>>>>>> 10:36:02 -0500)
>>>>>>>
>>>>>>> are available in the git repository at:
>>>>>>>    git://git.yoctoproject.org/meta-intel-contrib nitin/work
>>>>>>>
>>>>>>> http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=ni
>>>>>>> tin
>>>>>>> /w
>>>>>>> ork
>>>>>>>
>>>>>>
>>>>>> I built and tried this, but it still didn't boot into X, and now
>>>>>> there's not even an Xorg.log to look at:
>>>>>>
>>>>>> root@crownbay:/var/log# ls -al
>>>>>> drwxr-xr-x    2 root     root            80 Sep 10 20:15 .
>>>>>> drwxrwxrwt    7 root     root           140 Jan  6  2009 ..
>>>>>> -rw-r--r--    1 root     root         78429 Sep 10 20:17 messages
>>>>>> -rw-rw-r--    1 root     root          4224 Sep 10 20:17 wtmp
>>>>>>
>>>>>> I assume this is a different X problem related to recent changes in
>>> mater.
>>>>>> Can you update the bug report with the commits that you tested with
>>>>>> so I can verify that your patch at least works?
>>>>>>
>>>>>> Thanks,
>>>>>>
>>>>>> Tom
>>>>>>
>>>>>>
>>>>>>
>>>>>>> Nitin A Kamble (1):
>>>>>>>    emgd-driver-bin: Fix package naming issue
>>>>>>>
>>>>>>>   .../xorg-xserver/emgd-driver-bin_1.14.bb           |    8 +++++++-
>>>>>>>   1 files changed, 7 insertions(+), 1 deletions(-)
>>>>>>>
>>>>>>
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

