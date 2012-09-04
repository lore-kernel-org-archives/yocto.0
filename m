Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59446E014B3
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 10:48:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q84HmetX000783
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 4 Sep 2012 10:48:41 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Tue, 4 Sep 2012 10:48:40 -0700
Message-ID: <50463EEF.5030504@windriver.com>
Date: Tue, 4 Sep 2012 13:48:31 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "Saxena, Rahul" <rahul.saxena@intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C49003322769@ORSMSX103.amr.corp.intel.com>
	<CADkTA4PjWtbOrxa1Vc6RymjzJRuFBaXKKpj=2q5Y-NW4z11-pQ@mail.gmail.com>
	<63ECFF2A2302B44093D7CE9E9962C49003322C4F@ORSMSX103.amr.corp.intel.com>
	<50460C16.2050608@windriver.com>
	<63ECFF2A2302B44093D7CE9E9962C49003322DB5@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <63ECFF2A2302B44093D7CE9E9962C49003322DB5@ORSMSX103.amr.corp.intel.com>
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
X-List-Received-Date: Tue, 04 Sep 2012 17:48:42 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-09-04 12:25 PM, Saxena, Rahul wrote:
>
>
> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Tuesday, September 04, 2012 7:12 AM
> To: Saxena, Rahul
> Cc: Bruce Ashfield; yocto@yoctoproject.org; Hart, Darren
> Subject: Re: [yocto] Error when applying kernel patch from BSP: "Uncommited changes detected. Refresh first" error
>
> On 12-09-04 02:08 AM, Saxena, Rahul wrote:
>>
>>
>> -----Original Message-----
>> From: Bruce Ashfield [mailto:bruce.ashfield@gmail.com]
>> Sent: Friday, August 31, 2012 6:59 PM
>> To: Saxena, Rahul
>> Cc: yocto@yoctoproject.org; Hart, Darren
>> Subject: Re: [yocto] Error when applying kernel patch from BSP:
>> "Uncommited changes detected. Refresh first" error
>>
>> On Fri, Aug 31, 2012 at 7:26 PM, Saxena, Rahul<rahul.saxena@intel.com>   wrote:
>>>
>>>
>>> Hi,
>>>
>>>
>>>
>>> I am trying to apply a kernel patch from the BSP, but getting a error.
>>>
>>>
>>>
>>> DEBUG: Executing shell function do_patch
>>>
>>> Unstaged changes after reset:
>>>
>>> M     .gitignore
>>>
>>> Deleted branch meta-temp (was 580ac9c).
>>>
>>> warning: could not find (or was already included): cfg/x86_64.scc
>>> (/home/rsaxena/YoctoWork2/rangeley3/tmp/work/rangeley-poky-linux/linu
>>> x
>>> -yocto-3.4.4+git3+dab07bdc3a53b21220da3af91c5d2729b027b5a7_2+19f7e43b
>>> 5
>>> 4aef08d58135ed2a897d77b624b320a-r3/linux/meta/cfg/kernel-cache/bsp/co
>>> m
>>> mon-pc-64)
>>>
>>> [INFO] validating against known patches  (rangeley-standard-meta)
>>>
>>>     [                                                  ] (|)(1 %)
>>>
>>>     [#                                                 ] (/)(2 %)
>>>
>>>     [#                                                 ] (-)(3 %)
>>>
>>>     [##                                                ] (\)(4 %)
>>>
>>>     [##                                                ] (|)(5 %)
>>>
>>>     [###                                               ] (/)(6 %)
>>>
>>>
>>>
>>> --
>>>
>>> [############################################      ] (/)(89 %)
>>>
>>>     [#############################################     ] (-)(90 %)
>>>
>>> Uncommited changes detected. Refresh first.
>>>
>>> [ERROR] unable to complete push
>>>
>>> pending patches are:
>>>
>>> links/linux-yocto/msi.patch
>>>
>>> ERROR. could not update git tree
>>>
>>> ERROR. Could not modify standard/common-pc-64/rangeley
>>>
>>> ERROR: Function failed: do_patch (see
>>> /home/rsaxena/YoctoWork2/rangeley3/tmp/work/rangeley-poky-linux/linux
>>> -
>>> yocto-3.4.4+git3+dab07bdc3a53b21220da3af91c5d2729b027b5a7_2+19f7e43b5
>>> 4
>>> aef08d58135ed2a897d77b624b320a-r3/temp/log.do_patch.39386
>>> for further information)
>>>
>>>
>>>
>>> My linux-yocto_3.4.bbappend file has the statements:
>>>
>>> SRC_URI +="file://patchlist.scc"
>>>
>>> SRC_URI +="file://my_rangeley.cfg"
>>>
>>> COMPATIBLE_MACHINE_rangeley = "rangeley"
>>>
>>>
>>>
>>> KMACHINE_rangeley  = "rangeley"
>>>
>>> KBRANCH_rangeley  = "standard/common-pc-64/rangeley"
>>>
>>> SRCREV_machine_pn-linux-yocto_rangeley ?=
>>> "19f7e43b54aef08d58135ed2a897d77b624b320a"
>>>
>>> SRCREV_meta_pn-linux-yocto_rangeley ?=
>>> "dab07bdc3a53b21220da3af91c5d2729b027b5a7"
>>>
>>>
>>>
>>> cat  linux-yocto/patchlist.scc
>>>
>>>
>>>
>>> patch msi.patch
>>>
>>>
>>>
>>> I am using the master branch of poky.
>>>
>>>
>>>
>>> What is the meaning of the ERROR messages above ?
>> It means that the patch or some other work happened in the linux source directory and hence nothing else can be applied (i.e. git stops you).
>>
>> Head to your kernel source directory and do a 'git status', that'll give you some info about what has happened.
>>
>> Bruce
>>
>> I had done 'git status' before but apparently missed noticing the following.
>>
>> 'git status' shows the following:
>>
>> #   (use "git checkout --<file>..." to discard changes in working directory)
>> #
>> #	modified:   .gitignore
>> #
>> # Untracked files:
>> #   (use "git add<file>..." to include in what will be committed)
>> #
>> #	meta/
>>
>>
>> I looked at the .gitignore file. 'meta/' is missing from this file, while it exists in the actual kernel source (i.e. my local clone).  The build software seems to have modified .gitignore to remove 'meta/' for some reason.
>>
>>
>> I edited .gitignore manually to add 'meta/' and was able to run the
>> run_do_patch.xx file to successfully apply the patch to standard/common-pc-64/Rangeley branch.
>>
>> Any idea as to why this is occurring and what should be done to prevent build system from modifying .gitignore ?
>
> Hmmm. I can't see how this is happening. The gitignore is already patch, and when it is updated, it should never conflict with changes in the BSP branch.
>
> I really need to reproduce the problem to be more helpful. Are the changes on your BSP branch public ? Do you have any modifications to the .gitignore in that branch / patches ?
>
> Cheers,
>
> Bruce
>
> OK, I can see now what happened.
>
> The .gitignore file in meta branch of linux-yocto-3.4 has 'meta/'.   I had removed this meta/ in my local clone to
> allow me to commit my changes some weeks ago (and forgot about it) and dint bother to add it 'meta/' back
> as I figured (apparently wrongly) that it wont matter.
>
> Anyhow, is it a mistake that a 'meta/' exists in gitignore file in meta branch of linux-yocto-3.4  repo ?
> Why would one want to ignore changes in meta dir itself for the meta branch ?

That I can explain. The difference is that in 3.0 vs 3.4 the meta
branch is now an orphan. Which simply means that in 3.0 the meta
branch had a common root with the kernel source tree. In 3.4, we've
clarified things, and the meta branch no longer has a common root
with the kernel source.

The orphan branch means that we do not have to update every branch in
the tree when any BSP has a configuration change. But to make the
configuration changes available to a single board (or many boards if
you build with a single tree + many configs) the simplest way to make
the config visible to the build branch is to make the meta directory
untracked. Once it is untracked, you'll always see it in your git
status checks during development. That is simply noise, since we know
that directory is untracked, and we don't want it in the status.

If you want to change meta files and push them to another kernel, you
do that on the meta branch. In that branch, all files are tracked like
you expect.

Cheers,

Bruce

>
> It does not exist in .gitignore file of meta branch of linux-yocto-3.0 repo as I would expect.
>
> Rahul
>
>>
>> Rahul
>>
>>>
>>> Any suggestions would be greatly appreciated.
>>>
>>>
>>>
>>> Thanks
>>>
>>> Rahul
>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>>
>>
>> --
>> "Thou shalt not follow the NULL pointer, for chaos and madness await thee at its end"
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>


