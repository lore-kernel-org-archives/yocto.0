Return-Path: <rahul.saxena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8F93E01491
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 09:25:46 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 04 Sep 2012 09:25:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,367,1344236400"; d="scan'208";a="196598370"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga002.jf.intel.com with ESMTP; 04 Sep 2012 09:25:46 -0700
Received: from orsmsx101.amr.corp.intel.com (10.22.225.128) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 4 Sep 2012 09:25:46 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.246]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.152]) with mapi id
	14.01.0355.002; Tue, 4 Sep 2012 09:25:45 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: [yocto] Error when applying kernel patch from BSP: "Uncommited
	changes detected. Refresh first" error
Thread-Index: AQHNh+VnIreYKamo9UOovH6eOThlsZd5pTJQgAEOvAD//60fUA==
Date: Tue, 4 Sep 2012 16:25:44 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C49003322DB5@ORSMSX103.amr.corp.intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C49003322769@ORSMSX103.amr.corp.intel.com>
	<CADkTA4PjWtbOrxa1Vc6RymjzJRuFBaXKKpj=2q5Y-NW4z11-pQ@mail.gmail.com>
	<63ECFF2A2302B44093D7CE9E9962C49003322C4F@ORSMSX103.amr.corp.intel.com>
	<50460C16.2050608@windriver.com>
In-Reply-To: <50460C16.2050608@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
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
X-List-Received-Date: Tue, 04 Sep 2012 16:25:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]=20
Sent: Tuesday, September 04, 2012 7:12 AM
To: Saxena, Rahul
Cc: Bruce Ashfield; yocto@yoctoproject.org; Hart, Darren
Subject: Re: [yocto] Error when applying kernel patch from BSP: "Uncommited=
 changes detected. Refresh first" error

On 12-09-04 02:08 AM, Saxena, Rahul wrote:
>
>
> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@gmail.com]
> Sent: Friday, August 31, 2012 6:59 PM
> To: Saxena, Rahul
> Cc: yocto@yoctoproject.org; Hart, Darren
> Subject: Re: [yocto] Error when applying kernel patch from BSP:=20
> "Uncommited changes detected. Refresh first" error
>
> On Fri, Aug 31, 2012 at 7:26 PM, Saxena, Rahul<rahul.saxena@intel.com>  w=
rote:
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
>> warning: could not find (or was already included): cfg/x86_64.scc=20
>> (/home/rsaxena/YoctoWork2/rangeley3/tmp/work/rangeley-poky-linux/linu
>> x
>> -yocto-3.4.4+git3+dab07bdc3a53b21220da3af91c5d2729b027b5a7_2+19f7e43b
>> 5=20
>> 4aef08d58135ed2a897d77b624b320a-r3/linux/meta/cfg/kernel-cache/bsp/co
>> m
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
>> /home/rsaxena/YoctoWork2/rangeley3/tmp/work/rangeley-poky-linux/linux
>> -
>> yocto-3.4.4+git3+dab07bdc3a53b21220da3af91c5d2729b027b5a7_2+19f7e43b5
>> 4
>> aef08d58135ed2a897d77b624b320a-r3/temp/log.do_patch.39386
>> for further information)
>>
>>
>>
>> My linux-yocto_3.4.bbappend file has the statements:
>>
>> SRC_URI +=3D"file://patchlist.scc"
>>
>> SRC_URI +=3D"file://my_rangeley.cfg"
>>
>> COMPATIBLE_MACHINE_rangeley =3D "rangeley"
>>
>>
>>
>> KMACHINE_rangeley  =3D "rangeley"
>>
>> KBRANCH_rangeley  =3D "standard/common-pc-64/rangeley"
>>
>> SRCREV_machine_pn-linux-yocto_rangeley ?=3D=20
>> "19f7e43b54aef08d58135ed2a897d77b624b320a"
>>
>> SRCREV_meta_pn-linux-yocto_rangeley ?=3D=20
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
> It means that the patch or some other work happened in the linux source d=
irectory and hence nothing else can be applied (i.e. git stops you).
>
> Head to your kernel source directory and do a 'git status', that'll give =
you some info about what has happened.
>
> Bruce
>
> I had done 'git status' before but apparently missed noticing the followi=
ng.
>
> 'git status' shows the following:
>
> #   (use "git checkout --<file>..." to discard changes in working directo=
ry)
> #
> #	modified:   .gitignore
> #
> # Untracked files:
> #   (use "git add<file>..." to include in what will be committed)
> #
> #	meta/
>
>
> I looked at the .gitignore file. 'meta/' is missing from this file, while=
 it exists in the actual kernel source (i.e. my local clone).  The build so=
ftware seems to have modified .gitignore to remove 'meta/' for some reason.
>
>
> I edited .gitignore manually to add 'meta/' and was able to run the=20
> run_do_patch.xx file to successfully apply the patch to standard/common-p=
c-64/Rangeley branch.
>
> Any idea as to why this is occurring and what should be done to prevent b=
uild system from modifying .gitignore ?

Hmmm. I can't see how this is happening. The gitignore is already patch, an=
d when it is updated, it should never conflict with changes in the BSP bran=
ch.

I really need to reproduce the problem to be more helpful. Are the changes =
on your BSP branch public ? Do you have any modifications to the .gitignore=
 in that branch / patches ?

Cheers,

Bruce

OK, I can see now what happened.=20

The .gitignore file in meta branch of linux-yocto-3.4 has 'meta/'.   I had =
removed this meta/ in my local clone to
allow me to commit my changes some weeks ago (and forgot about it) and dint=
 bother to add it 'meta/' back
as I figured (apparently wrongly) that it wont matter.

Anyhow, is it a mistake that a 'meta/' exists in gitignore file in meta bra=
nch of linux-yocto-3.4  repo ?
Why would one want to ignore changes in meta dir itself for the meta branch=
 ?

It does not exist in .gitignore file of meta branch of linux-yocto-3.0 repo=
 as I would expect.

Rahul

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
> "Thou shalt not follow the NULL pointer, for chaos and madness await thee=
 at its end"
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


