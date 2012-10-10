Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4D9EE00348
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 06:48:08 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q9ADm4Ct007398
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 10 Oct 2012 06:48:04 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Wed, 10 Oct 2012 06:48:04 -0700
Message-ID: <50757C83.1060204@windriver.com>
Date: Wed, 10 Oct 2012 09:47:47 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <443D93B8-DA6A-40DD-854F-7007FE63854C@keylevel.com>
	<63ECFF2A2302B44093D7CE9E9962C49003CD2F97@ORSMSX107.amr.corp.intel.com>
	<E413C1D3-D599-437C-A1ED-8A57DAC3E8D3@keylevel.com>
	<CADkTA4NAnqoBBzHkWNErMr2J=0p1xdSVocSpFCMLkV_8ztrwPg@mail.gmail.com>
	<4ED03A84-C184-4A15-BB50-B83AEE211BB4@keylevel.com>
	<D956029D25CF204F948EA0FB515E1EE2264DBE54@ORSMSX105.amr.corp.intel.com>
	<0E3AEF49-829E-47BC-BEF4-C66A23DA3DC7@keylevel.com>
	<D956029D25CF204F948EA0FB515E1EE2264DBF38@ORSMSX105.amr.corp.intel.com>
	<CB24F010-05C7-459E-98C1-54FAF07D5611@keylevel.com>
In-Reply-To: <CB24F010-05C7-459E-98C1-54FAF07D5611@keylevel.com>
Cc: "yocto@yoctoproject.org
 Project" <yocto@yoctoproject.org>
Subject: Re: Meta Intel / Cedartrail / Denzil - how to get unionfs in the kernel
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
X-List-Received-Date: Wed, 10 Oct 2012 13:48:09 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-10-08 05:03 PM, Chris Tapp wrote:
> On 8 Oct 2012, at 21:30, Bodke, Kishore K wrote:
>
> <  snip ...>
>
> Thanks for the really fast response on this :-)
>
>> For denzil, try with this by creating a new file in meta-cedartrail/recipes-kernel/linux/linux-yocto_3.2.bbappend.
>>
>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>
>> SRC_URI_cedartrail-nopvr = "git://git.yoctoproject.org/linux-yocto-3.2;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
>
> I had to add 'bareclone=1' to this to get it to run.
>
>> COMPATIBLE_MACHINE_cedartrail-nopvr = "cedartrail"
>> KMACHINE_cedartrail-nopvr  = "cedartrail"
>> KBRANCH_cedartrail-nopvr  = "yocto/standard/cedartrail"
>> KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
>>
>> SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c"
>> SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "486f7aec824b4127e91ef53228823e996b3696f0"
>
> I think it's nearly there, but I get a failure when validating the branch:

I'm back to the office now. Is this issue still lurking/active ?

Bruce

>
> NOTE: package linux-yocto-3.2.18+git1+486f7aec824b4127e91ef53228823e996b3696f0_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1: task do_validate_branches: Started
> ERROR: Function failed: do_validate_branches (see /media/SSD-RAID/build-denzil-git-sjs-cedartrail/tmp/work/cedartrail_nopvr-sjs-linux/linux-yocto-3.2.18+git1+486f7aec824b4127e91ef53228823e996b3696f0_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/temp/log.do_validate_branches.25866 for further information)
> ERROR: Logfile of failure stored in: /media/SSD-RAID/build-denzil-git-sjs-cedartrail/tmp/work/cedartrail_nopvr-sjs-linux/linux-yocto-3.2.18+git1+486f7aec824b4127e91ef53228823e996b3696f0_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/temp/log.do_validate_branches.25866
> Log data follows:
> | ERROR: Function failed: do_validate_branches (see /media/SSD-RAID/build-denzil-git-sjs-cedartrail/tmp/work/cedartrail_nopvr-sjs-linux/linux-yocto-3.2.18+git1+486f7aec824b4127e91ef53228823e996b3696f0_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/temp/log.do_validate_branches.25866 for further information)
> NOTE: package linux-yocto-3.2.18+git1+486f7aec824b4127e91ef53228823e996b3696f0_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1: task do_validate_branches: Failed
> ERROR: Task 0 (/media/SSD-RAID/poky-git/meta/recipes-kernel/linux/linux-yocto_3.2.bb, do_validate_branches) failed with exit code '1'
>
>> Add these below lines to meta-cedartrail/conf/machine/cedartrail-nopvr.conf
>>
>> PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>> PREFERRED_VERSION_linux-yocto ?= "3.2%"
>>
>> Add  MACHINE = "cedartrail-nopvr" to your local.conf and build.
>>
>> Ofcourse you should be adding your unionfs related stuff by some means either by menuconfig or by creating .scc file.
>
> Of course, and that's the bit I understand ;-)
>
>> Thanks
>> Kishore.
>>
>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


