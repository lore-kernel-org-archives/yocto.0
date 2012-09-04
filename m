Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B64CDE00344
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 07:11:45 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q84EBied011936
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 4 Sep 2012 07:11:44 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Tue, 4 Sep 2012 07:11:43 -0700
Message-ID: <50460C16.2050608@windriver.com>
Date: Tue, 4 Sep 2012 10:11:34 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "Saxena, Rahul" <rahul.saxena@intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C49003322769@ORSMSX103.amr.corp.intel.com>
	<CADkTA4PjWtbOrxa1Vc6RymjzJRuFBaXKKpj=2q5Y-NW4z11-pQ@mail.gmail.com>
	<63ECFF2A2302B44093D7CE9E9962C49003322C4F@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <63ECFF2A2302B44093D7CE9E9962C49003322C4F@ORSMSX103.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: Error when applying kernel patch from BSP: "Uncommited changes detected. Refresh first" error
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
X-List-Received-Date: Tue, 04 Sep 2012 14:11:45 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-09-04 02:08 AM, Saxena, Rahul wrote:
>
>
> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@gmail.com]
> Sent: Friday, August 31, 2012 6:59 PM
> To: Saxena, Rahul
> Cc: yocto@yoctoproject.org; Hart, Darren
> Subject: Re: [yocto] Error when applying kernel patch from BSP: "Uncommited changes detected. Refresh first" error
>
> On Fri, Aug 31, 2012 at 7:26 PM, Saxena, Rahul<rahul.saxena@intel.com>  wrote:
>>
>>
>> Hi,
>>
>>
>>
>> I am trying to apply a kernel patch from the BSP, but getting a error.
>>
>>
>>
>> DEBUG: Executing shell function do_patch
>>
>> Unstaged changes after reset:
>>
>> M     .gitignore
>>
>> Deleted branch meta-temp (was 580ac9c).
>>
>> warning: could not find (or was already included): cfg/x86_64.scc
>> (/home/rsaxena/YoctoWork2/rangeley3/tmp/work/rangeley-poky-linux/linux
>> -yocto-3.4.4+git3+dab07bdc3a53b21220da3af91c5d2729b027b5a7_2+19f7e43b5
>> 4aef08d58135ed2a897d77b624b320a-r3/linux/meta/cfg/kernel-cache/bsp/com
>> mon-pc-64)
>>
>> [INFO] validating against known patches  (rangeley-standard-meta)
>>
>>    [                                                  ] (|)(1 %)
>>
>>    [#                                                 ] (/)(2 %)
>>
>>    [#                                                 ] (-)(3 %)
>>
>>    [##                                                ] (\)(4 %)
>>
>>    [##                                                ] (|)(5 %)
>>
>>    [###                                               ] (/)(6 %)
>>
>>
>>
>> --
>>
>> [############################################      ] (/)(89 %)
>>
>>    [#############################################     ] (-)(90 %)
>>
>> Uncommited changes detected. Refresh first.
>>
>> [ERROR] unable to complete push
>>
>> pending patches are:
>>
>> links/linux-yocto/msi.patch
>>
>> ERROR. could not update git tree
>>
>> ERROR. Could not modify standard/common-pc-64/rangeley
>>
>> ERROR: Function failed: do_patch (see
>> /home/rsaxena/YoctoWork2/rangeley3/tmp/work/rangeley-poky-linux/linux-
>> yocto-3.4.4+git3+dab07bdc3a53b21220da3af91c5d2729b027b5a7_2+19f7e43b54
>> aef08d58135ed2a897d77b624b320a-r3/temp/log.do_patch.39386
>> for further information)
>>
>>
>>
>> My linux-yocto_3.4.bbappend file has the statements:
>>
>> SRC_URI +="file://patchlist.scc"
>>
>> SRC_URI +="file://my_rangeley.cfg"
>>
>> COMPATIBLE_MACHINE_rangeley = "rangeley"
>>
>>
>>
>> KMACHINE_rangeley  = "rangeley"
>>
>> KBRANCH_rangeley  = "standard/common-pc-64/rangeley"
>>
>> SRCREV_machine_pn-linux-yocto_rangeley ?=
>> "19f7e43b54aef08d58135ed2a897d77b624b320a"
>>
>> SRCREV_meta_pn-linux-yocto_rangeley ?=
>> "dab07bdc3a53b21220da3af91c5d2729b027b5a7"
>>
>>
>>
>> cat  linux-yocto/patchlist.scc
>>
>>
>>
>> patch msi.patch
>>
>>
>>
>> I am using the master branch of poky.
>>
>>
>>
>> What is the meaning of the ERROR messages above ?
> It means that the patch or some other work happened in the linux source directory and hence nothing else can be applied (i.e. git stops you).
>
> Head to your kernel source directory and do a 'git status', that'll give you some info about what has happened.
>
> Bruce
>
> I had done 'git status' before but apparently missed noticing the following.
>
> 'git status' shows the following:
>
> #   (use "git checkout --<file>..." to discard changes in working directory)
> #
> #	modified:   .gitignore
> #
> # Untracked files:
> #   (use "git add<file>..." to include in what will be committed)
> #
> #	meta/
>
>
> I looked at the .gitignore file. 'meta/' is missing from this file, while it exists in the actual kernel source (i.e. my local clone).  The build software seems to have modified .gitignore to remove 'meta/' for some reason.
>
>
> I edited .gitignore manually to add 'meta/' and was able to run the run_do_patch.xx file to successfully apply the patch to
> standard/common-pc-64/Rangeley branch.
>
> Any idea as to why this is occurring and what should be done to prevent build system from modifying .gitignore ?

Hmmm. I can't see how this is happening. The gitignore is already patch,
and when it is updated, it should never conflict with changes in the
BSP branch.

I really need to reproduce the problem to be more helpful. Are the
changes on your BSP branch public ? Do you have any modifications to the
.gitignore in that branch / patches ?

Cheers,

Bruce

>
> Rahul
>
>>
>> Any suggestions would be greatly appreciated.
>>
>>
>>
>> Thanks
>>
>> Rahul
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await thee at its end"
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


