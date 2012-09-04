Return-Path: <rahul.saxena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93ABCE0146C
	for <yocto@yoctoproject.org>; Mon,  3 Sep 2012 23:08:07 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 03 Sep 2012 23:08:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,365,1344236400"; d="scan'208";a="217447783"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 03 Sep 2012 23:08:03 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 3 Sep 2012 23:08:02 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.246]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.52]) with mapi id
	14.01.0355.002; Mon, 3 Sep 2012 23:08:01 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Thread-Topic: [yocto] Error when applying kernel patch from BSP: "Uncommited
	changes detected. Refresh first" error
Thread-Index: AQHNh+VnIreYKamo9UOovH6eOThlsZd5pTJQ
Date: Tue, 4 Sep 2012 06:08:01 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C49003322C4F@ORSMSX103.amr.corp.intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C49003322769@ORSMSX103.amr.corp.intel.com>
	<CADkTA4PjWtbOrxa1Vc6RymjzJRuFBaXKKpj=2q5Y-NW4z11-pQ@mail.gmail.com>
In-Reply-To: <CADkTA4PjWtbOrxa1Vc6RymjzJRuFBaXKKpj=2q5Y-NW4z11-pQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
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
X-List-Received-Date: Tue, 04 Sep 2012 06:08:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@gmail.com]=20
Sent: Friday, August 31, 2012 6:59 PM
To: Saxena, Rahul
Cc: yocto@yoctoproject.org; Hart, Darren
Subject: Re: [yocto] Error when applying kernel patch from BSP: "Uncommited=
 changes detected. Refresh first" error

On Fri, Aug 31, 2012 at 7:26 PM, Saxena, Rahul <rahul.saxena@intel.com> wro=
te:
>
>
> Hi,
>
>
>
> I am trying to apply a kernel patch from the BSP, but getting a error.
>
>
>
> DEBUG: Executing shell function do_patch
>
> Unstaged changes after reset:
>
> M     .gitignore
>
> Deleted branch meta-temp (was 580ac9c).
>
> warning: could not find (or was already included): cfg/x86_64.scc
> (/home/rsaxena/YoctoWork2/rangeley3/tmp/work/rangeley-poky-linux/linux
> -yocto-3.4.4+git3+dab07bdc3a53b21220da3af91c5d2729b027b5a7_2+19f7e43b5
> 4aef08d58135ed2a897d77b624b320a-r3/linux/meta/cfg/kernel-cache/bsp/com
> mon-pc-64)
>
> [INFO] validating against known patches  (rangeley-standard-meta)
>
>   [                                                  ] (|)(1 %)
>
>   [#                                                 ] (/)(2 %)
>
>   [#                                                 ] (-)(3 %)
>
>   [##                                                ] (\)(4 %)
>
>   [##                                                ] (|)(5 %)
>
>   [###                                               ] (/)(6 %)
>
>
>
> --
>
> [############################################      ] (/)(89 %)
>
>   [#############################################     ] (-)(90 %)
>
> Uncommited changes detected. Refresh first.
>
> [ERROR] unable to complete push
>
> pending patches are:
>
> links/linux-yocto/msi.patch
>
> ERROR. could not update git tree
>
> ERROR. Could not modify standard/common-pc-64/rangeley
>
> ERROR: Function failed: do_patch (see
> /home/rsaxena/YoctoWork2/rangeley3/tmp/work/rangeley-poky-linux/linux-
> yocto-3.4.4+git3+dab07bdc3a53b21220da3af91c5d2729b027b5a7_2+19f7e43b54
> aef08d58135ed2a897d77b624b320a-r3/temp/log.do_patch.39386
> for further information)
>
>
>
> My linux-yocto_3.4.bbappend file has the statements:
>
> SRC_URI +=3D"file://patchlist.scc"
>
> SRC_URI +=3D"file://my_rangeley.cfg"
>
> COMPATIBLE_MACHINE_rangeley =3D "rangeley"
>
>
>
> KMACHINE_rangeley  =3D "rangeley"
>
> KBRANCH_rangeley  =3D "standard/common-pc-64/rangeley"
>
> SRCREV_machine_pn-linux-yocto_rangeley ?=3D=20
> "19f7e43b54aef08d58135ed2a897d77b624b320a"
>
> SRCREV_meta_pn-linux-yocto_rangeley ?=3D=20
> "dab07bdc3a53b21220da3af91c5d2729b027b5a7"
>
>
>
> cat  linux-yocto/patchlist.scc
>
>
>
> patch msi.patch
>
>
>
> I am using the master branch of poky.
>
>
>
> What is the meaning of the ERROR messages above ?
It means that the patch or some other work happened in the linux source dir=
ectory and hence nothing else can be applied (i.e. git stops you).

Head to your kernel source directory and do a 'git status', that'll give yo=
u some info about what has happened.

Bruce

I had done 'git status' before but apparently missed noticing the following=
.

'git status' shows the following:

#   (use "git checkout -- <file>..." to discard changes in working director=
y)
#
#	modified:   .gitignore
#
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#	meta/


I looked at the .gitignore file. 'meta/' is missing from this file, while i=
t exists in the actual kernel source (i.e. my local clone).  The build soft=
ware seems to have modified .gitignore to remove 'meta/' for some reason.


I edited .gitignore manually to add 'meta/' and was able to run the run_do_=
patch.xx file to successfully apply the patch to
standard/common-pc-64/Rangeley branch.

Any idea as to why this is occurring and what should be done to prevent bui=
ld system from modifying .gitignore ?

Rahul=20

>
> Any suggestions would be greatly appreciated.
>
>
>
> Thanks
>
> Rahul
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--
"Thou shalt not follow the NULL pointer, for chaos and madness await thee a=
t its end"

