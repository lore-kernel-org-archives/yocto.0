Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBF7EE0044A
	for <yocto@yoctoproject.org>; Thu, 10 May 2012 11:08:27 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 May 2012 11:08:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="164560948"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 10 May 2012 11:08:27 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 10 May 2012 11:08:27 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.232]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.228]) with mapi id
	14.01.0355.002; Thu, 10 May 2012 11:08:26 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: KERNEL build failure for Master
Thread-Index: Ac0uI4uCE6w8e6uIQ7WlYwJv9qIp/QAS0TQAAA3RTCD//5lWAP//N/Og
Date: Thu, 10 May 2012 18:08:26 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20ACAC958@ORSMSX105.amr.corp.intel.com>
References: <D956029D25CF204F948EA0FB515E1EE20ACA749B@ORSMSX105.amr.corp.intel.com>
	<4FAAF15E.3090007@windriver.com>
	<D956029D25CF204F948EA0FB515E1EE20ACA969A@ORSMSX105.amr.corp.intel.com>
	<4FAAF7FA.8060205@windriver.com>
In-Reply-To: <4FAAF7FA.8060205@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: KERNEL build failure for Master
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
X-List-Received-Date: Thu, 10 May 2012 18:08:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>Sent: Wednesday, May 09, 2012 4:04 PM
>To: Bodke, Kishore K
>Cc: yocto@yoctoproject.org
>Subject: Re: KERNEL build failure for Master
>
>On 12-05-09 7:01 PM, Bodke, Kishore K wrote:
>> Is this error also proxy setup issue?
>
>Nope. I sent a fix for it today, and Richard merged it to master
>a few hours ago. An update should fix your issue.

I have updated. But I still see the error.
If it is a proxy setup issue, I should not be able to build any BSPs.
But I am able to build ROMLEY successfully.
It is only failing for Cedartrail.

WARNING: Failed to fetch URL git://git.yoctoproject.org/linux-yocto-3.0;pro=
tocol=3Dgit;bareclone=3D1;branch=3Dyocto/standard/base,meta,yocto/pvr;name=
=3Dmachine,meta,pvr
NOTE: package kmod-native-8-r0.0: task do_patch: Started
ERROR: Fetcher failure: Fetch command export HOME=3D"/home/kishore"; export=
 https_proxy=3D"https://proxy.sc.intel.com:911/"; export ftp_proxy=3D"http:=
//proxy.sc.intel.com:911/"; export http_proxy=3D"http://proxy.sc.intel.com:=
911/"; export GIT_CONFIG=3D"/usr/local/src/may10/build/tmp/sysroots/x86_64-=
linux/etc/gitconfig"; export GIT_PROXY_COMMAND=3D"/usr/local/bin/git-proxy"=
; export PATH=3D"/usr/local/src/may10/build/tmp/sysroots/x86_64-linux/usr/b=
in/core2-poky-linux:/usr/local/src/may10/build/tmp/sysroots/cedartrail/usr/=
bin/crossscripts:/usr/local/src/may10/build/tmp/sysroots/x86_64-linux/usr/s=
bin:/usr/local/src/may10/build/tmp/sysroots/x86_64-linux/usr/bin:/usr/local=
/src/may10/build/tmp/sysroots/x86_64-linux/sbin:/usr/local/src/may10/build/=
tmp/sysroots/x86_64-linux//bin:/usr/local/src/may10/scripts:/usr/local/src/=
may10/bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:=
/bin:/usr/games:/usr/local/src/may10/scripts"; tar -xzf /usr/local/src/may1=
0/build/downloads/git2_git.yoctoproject.org.linux-yocto-3.0.tar.gz could no=
t be run:
None
ERROR: Function failed: Fetcher failure for URL: 'git://git.yoctoproject.or=
g/linux-yocto-3.0;protocol=3Dgit;bareclone=3D1;branch=3Dyocto/standard/base=
,meta,yocto/pvr;name=3Dmachine,meta,pvr'. Unable to fetch URL from any sour=
ce.
ERROR: Logfile of failure stored in: /usr/local/src/may10/build/tmp/work/ce=
dartrail-poky-linux/linux-yocto-3.0.24+git1+a4ac64fe873f08ef718e2849b889147=
25dc99c1c_1+81fd8c307997aff37916828dc8b4ef72f5d35a94-r4/temp/log.do_fetch.2=
6424
NOTE: package linux-yocto-3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99=
c1c_1+81fd8c307997aff37916828dc8b4ef72f5d35a94-r4: task do_fetch: Failed
ERROR: Task 6 (/usr/local/src/may10/meta/recipes-kernel/linux/linux-yocto_3=
.0.bb, do_fetch) failed with exit code '1'

Thanks
Kishore.

>
>Bruce
>
>>
>> ERROR: Function failed: do_patch (see
>/usr/local/src/may_9/build/tmp/work/cedartrail-poky-linux/linux-yocto-
>3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37
>916828dc8b4ef72f5d35a94-r4/temp/log.do_patch.7982 for further
>information)
>> ERROR: Logfile of failure stored in:
>/usr/local/src/may_9/build/tmp/work/cedartrail-poky-linux/linux-yocto-
>3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37
>916828dc8b4ef72f5d35a94-r4/temp/log.do_patch.7982
>> Log data follows:
>> | ERROR: Function failed: do_patch (see
>/usr/local/src/may_9/build/tmp/work/cedartrail-poky-linux/linux-yocto-
>3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37
>916828dc8b4ef72f5d35a94-r4/temp/log.do_patch.7982 for further
>information)
>> | WARNING: addon feature "features/netfilter" was not found
>> | WARNING: addon feature "features/taskstats" was not found
>> | WARNING: addon feature "cfg/smp" was not found
>> | WARNING: addon feature "cfg/drm-cdvpvr" was not found
>> | WARNING: addon feature "bsp/cedartrail/cedartrail-pvr-merge" was not
>found
>> | WARNING: addon feature "cfg/efi-ext" was not found
>> | WARNING: addon feature "features/power/intel" was not found
>> | ERROR: required features were not found. aborting
>> | ERROR. Could not update yocto/standard/base
>> NOTE: package linux-yocto-
>3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37
>916828dc8b4ef72f5d35a94-r4: task do_patch: Failed
>>
>> Thanks
>> Kishore.
>>
>>> -----Original Message-----
>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>> Sent: Wednesday, May 09, 2012 3:36 PM
>>> To: Bodke, Kishore K
>>> Cc: yocto@yoctoproject.org
>>> Subject: Re: KERNEL build failure for Master
>>>
>>> On 12-05-09 4:37 PM, Bodke, Kishore K wrote:
>>>> Hi,
>>>>
>>>> Linux-yocto build is failing for Cedartrail for the Master and
>denzil
>>>> branch.
>>>>
>>>> Is it failing for any other BSPs?
>>>
>>> Everything is fine here, this looks to be something specific with
>your
>>> proxy setup injecting bad commands into the subshell.
>>>
>>> Bruce
>>>
>>>>
>>>> Below is the error.
>>>>
>>>> ERROR: Function failed: Fetcher failure: Fetch command export
>>>> HOME=3D"/home/kishore"; export
>>>> https_proxy=3D"https://proxy.sc.intel.com:911/"; export
>>>> ftp_proxy=3D"http://proxy.sc.intel.com:911/"; export
>>>> http_proxy=3D"http://proxy.sc.intel.com:911/"; export
>>>> GIT_CONFIG=3D"/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>>> linux/etc/gitconfig";
>>>> export GIT_PROXY_COMMAND=3D"/usr/local/bin/git-proxy"; export
>>>> PATH=3D"/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>>> linux/usr/bin/core2-poky-
>>>
>linux:/usr/local/src/may_9/build/tmp/sysroots/cedartrail/usr/bin/crosssc
>>> ripts:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>>> linux/usr/sbin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>>> linux/usr/bin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>>> linux/sbin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>>>
>linux//bin:/usr/local/src/may_9/scripts:/usr/local/src/may_9/bitbake/bin
>>>
>/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/game
>>> s:/usr/local/src/may_9/scripts";
>>>> git clone -s -n --mirror
>>>>
>/usr/local/src/may_9/build/downloads/git2/git.yoctoproject.org.linux-
>>> yocto-3.0/
>>>> /usr/local/src/may_9/build/tmp/work/cedartrail-poky-linux/linux-
>yocto-
>>>
>3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37
>>> 916828dc8b4ef72f5d35a94-r4/git/
>>>> could not be run:
>>>>
>>>> None
>>>>
>>>> ERROR: Logfile of failure stored in:
>>>> /usr/local/src/may_9/build/tmp/work/cedartrail-poky-linux/linux-
>yocto-
>>>
>3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37
>>> 916828dc8b4ef72f5d35a94-r4/temp/log.do_unpack.4250
>>>>
>>>> Log data follows:
>>>>
>>>> | DEBUG: Running export HOME=3D"/home/kishore"; export
>>>> https_proxy=3D"https://proxy.sc.intel.com:911/"; export
>>>> ftp_proxy=3D"http://proxy.sc.intel.com:911/"; export
>>>> http_proxy=3D"http://proxy.sc.intel.com:911/"; export
>>>> GIT_CONFIG=3D"/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>>> linux/etc/gitconfig";
>>>> export GIT_PROXY_COMMAND=3D"/usr/local/bin/git-proxy"; export
>>>> PATH=3D"/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>>> linux/usr/bin/core2-poky-
>>>
>linux:/usr/local/src/may_9/build/tmp/sysroots/cedartrail/usr/bin/crosssc
>>> ripts:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>>> linux/usr/sbin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>>> linux/usr/bin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>>> linux/sbin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>>>
>linux//bin:/usr/local/src/may_9/scripts:/usr/local/src/may_9/bitbake/bin
>>>
>/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/game
>>> s:/usr/local/src/may_9/scripts";
>>>> git clone -s -n --mirror
>>>>
>/usr/local/src/may_9/build/downloads/git2/git.yoctoproject.org.linux-
>>> yocto-3.0/
>>>> /usr/local/src/may_9/build/tmp/work/cedartrail-poky-linux/linux-
>yocto-
>>>
>3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37
>>> 916828dc8b4ef72f5d35a94-r4/git/
>>>>
>>>> | ERROR: Function failed: Fetcher failure: Fetch command export
>>>> HOME=3D"/home/kishore"; export
>>>> https_proxy=3D"https://proxy.sc.intel.com:911/"; export
>>>> ftp_proxy=3D"http://proxy.sc.intel.com:911/"; export
>>>> http_proxy=3D"http://proxy.sc.intel.com:911/"; export
>>>> GIT_CONFIG=3D"/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>>> linux/etc/gitconfig";
>>>> export GIT_PROXY_COMMAND=3D"/usr/local/bin/git-proxy"; export
>>>> PATH=3D"/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>>> linux/usr/bin/core2-poky-
>>>
>linux:/usr/local/src/may_9/build/tmp/sysroots/cedartrail/usr/bin/crosssc
>>> ripts:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>>> linux/usr/sbin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>>> linux/usr/bin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>>> linux/sbin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>>>
>linux//bin:/usr/local/src/may_9/scripts:/usr/local/src/may_9/bitbake/bin
>>>
>/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/game
>>> s:/usr/local/src/may_9/scripts";
>>>> git clone -s -n --mirror
>>>>
>/usr/local/src/may_9/build/downloads/git2/git.yoctoproject.org.linux-
>>> yocto-3.0/
>>>> /usr/local/src/may_9/build/tmp/work/cedartrail-poky-linux/linux-
>yocto-
>>>
>3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37
>>> 916828dc8b4ef72f5d35a94-r4/git/
>>>> could not be run:
>>>>
>>>> | None
>>>>
>>>> NOTE: package
>>>> linux-yocto-
>>>
>3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37
>>> 916828dc8b4ef72f5d35a94-r4:
>>>> task do_unpack: Failed
>>>>
>>>> ERROR: Task 858
>>>> (/usr/local/src/may_9/meta/recipes-kernel/linux/linux-yocto_3.0.bb,
>>>> do_unpack) failed with exit code '1'
>>>>
>>>> Thanks
>>>>
>>>> Kishore.
>>>>
>>


