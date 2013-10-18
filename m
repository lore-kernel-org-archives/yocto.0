Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81041E016D7
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 21:48:45 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r9I4mdFr005169
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 17 Oct 2013 21:48:40 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.237) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Thu, 17 Oct 2013 21:48:39 -0700
Message-ID: <5260BDA6.4020807@windriver.com>
Date: Fri, 18 Oct 2013 00:48:38 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: Diego Sueiro <diego.sueiro@gmail.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
	<CA+gsK-o6n24Aqp2dtpOwnmrCBjWE=HDSJvfqyYy2pvJYrHqXmQ@mail.gmail.com>
	<CAAQYJAu+wU0ODvVoTrRBFhVOUVh+CdMg3mimfgGkj-pwJh3A1g@mail.gmail.com>
	<CAMCfZKF_Rp=uds8tnDPSD9k3GO5dEiHSx9WfYjZ0yPkmh_9YPg@mail.gmail.com>
	<CAMCfZKFh8iJH4655mzFveFYfz8ebLXkGftSa-MR5mEcMEFV8Vw@mail.gmail.com>
	<CADkTA4MgxmiOofDLynbOLR=hV-KQ1ic+Eagjm0yetYOtB6FJzw@mail.gmail.com>
	<CAMCfZKF3aHG4wFMRx2XcdroJJ6ga5v6KHF5DbBTWV7jXOGNX-g@mail.gmail.com>
	<525FDD08.90400@windriver.com>
	<CAMCfZKHz82sPsHXjqxbFDJjFNi7ck+BS=_OtyGmb2FYDAxoe1A@mail.gmail.com>
	<525FE3C9.3070003@windriver.com>
	<CAMCfZKGUYAcO5FtOKC9iP_XZjRxJ_Xq12ERN=BL_JHA7FJW51w@mail.gmail.com>
In-Reply-To: <CAMCfZKGUYAcO5FtOKC9iP_XZjRxJ_Xq12ERN=BL_JHA7FJW51w@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: Custom defconfig is not used
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
X-List-Received-Date: Fri, 18 Oct 2013 04:48:46 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-10-17 11:47 AM, Diego Sueiro wrote:
>
> 2013/10/17 Bruce Ashfield <bruce.ashfield@windriver.com
> <mailto:bruce.ashfield@windriver.com>>
>
>     Look at oe-core/meta-skeleton for the custom kernel recipe example.
>     It has the inherit/include combinations that you need to follow.
>
>
>         My concern is: if doing this to just have the config fragment
>         feature,
>         I'll possibly mess up the kernel build.
>
>
>     It shouldn't. It only adds to existing phases, and doesn't make
>     any changes. I've tested it in many combinations and it should
>     work fine.
>
>     If something breaks, I'd like to know, so we can fix it.
>
>
> Bruce,
>
> I didn't change linux-mainline_3.8.bb <http://linux-mainline_3.8.bb>.
> My linux-mainline_3.8.bbappend is:
>
>     FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.8:"
>     inherit kernel
>     require recipes-kernel/linux/linux-yocto.inc
>     COMPATIBLE_MACHINE_beaglebone = "(beaglebone)"
>     SRC_URI += " file://mine.patch \
>                   file://config-addons.cfg \
>                   "
>
> My config-addons.cfg:
>
>     CONFIG_WATCHDOG_NOWAYOUT=y
>     CONFIG_NTFS_FS=y
>     CONFIG_NTFS_RW=y
>
> After a cleansstate the build got stucked on do_patch task.
> Here is the content of log.do_patch:
>
>     DEBUG: Executing shell function do_patch
>     WARNING: no meta data branch found ...
>     Switched to branch 'linux-3.8.y'

I fell behind today .. i had 2300 unread email to start this morning :)
Is there a way that I can get a copy of your recipes and layers ? If
I can do a build myself, I can easily debug and fix this .. otherwise, we'll
go back and forth many times debugging.

Cheers,

Bruce

>
>
> Running with bitbake -v I got the following:
>
>     ...
>     + configme --reconfig --output
>     <...>/build/tmp-angstrom_v2013_06-eglibc/work/beaglebone-angstrom-linux-gnueabi/linux-mainline/3.8.13-r23a/linux-beaglebone-standard-build
>     standard beaglebone
>     [INFO] Configuring target/machine combo: "standard/beaglebone"
>
>     [INFO] Configuring target/machine combo: "standard/beaglebone"
>     [INFO] collecting configs in ./meta/meta-series
>
>     [INFO] collecting configs in ./meta/meta-series
>     cat: meta/cfg/standard/beaglebone/config_frag.txt: No such file or
>     directory
>
>     cat: meta/cfg/standard/beaglebone/config_frag.txt: No such file or
>     directory
>     cat: meta/cfg/standard/beaglebone/config_frag.txt: No such file or
>     directory
>
>     cat: meta/cfg/standard/beaglebone/config_frag.txt: No such file or
>     directory
>     mv: target `3.8.13' is not a directory
>
>     mv: target `3.8.13' is not a directory
>     creation of pre-processed config data failed
>     config of "standard/beaglebone" failed
>
>     creation of pre-processed config data failed
>     config of "standard/beaglebone" failed
>     ERROR: Function failed: do_kernel_configme (see
>     <...>/build/tmp-angstrom_v2013_06-eglibc/work/beaglebone-angstrom-linux-gnueabi/linux-mainline/3.8.13-r23a/temp/log.do_kernel_configme15450.
>     for further information)
>     ERROR: Task 7
>     (<...>/setup-scripts/sources/meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline_3.8.bb
>     <http://linux-mainline_3.8.bb>, do_kernel_configme) failed with exit
>     code '1'
>
>
>
>
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/


