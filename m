Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 22CF74C80FD4
	for <yocto@yoctoproject.org>; Thu,  9 Dec 2010 19:33:32 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBA1XVvr023150;
	Thu, 9 Dec 2010 17:33:31 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 9 Dec 2010 17:33:30 -0800
Received: from bruce-ashfields-macbook.local ([128.224.143.11]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 9 Dec 2010 17:33:30 -0800
Message-ID: <4D018368.9060603@windriver.com>
Date: Thu, 09 Dec 2010 20:33:28 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101203 Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1291786378.git.bruce.ashfield@windriver.com>
	<64f083b7e51bae434b4ae449edc81795e89f9f1c.1291786378.git.bruce.ashfield@windriver.com>
	<4D0140C4.5030603@linux.intel.com>
In-Reply-To: <4D0140C4.5030603@linux.intel.com>
X-OriginalArrivalTime: 10 Dec 2010 01:33:30.0792 (UTC)
	FILETIME=[40692A80:01CB980A]
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/3] yocto-kernel: factor common routes, update to 2.6.37 and branch renaming
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
X-List-Received-Date: Fri, 10 Dec 2010 01:33:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-12-09 3:49 PM, Darren Hart wrote:
> On 12/08/2010 06:35 AM, Bruce Ashfield wrote:
>> In order to extend and create more kernel recipes based on the
>> supported yocto kernel common routines need to be placed in
>> re-usable blocks.
>>
>> To accomplish this meta/recipes-kernel/linux/linux-yocto_git.bb
>> is broken into three parts:
>> .../recipes-kernel/linux/linux-yocto-stable_git.bb | 41 ++++
>
> Now that the git tree permissions for 2.6.37 are public (not sure how
> that impacted this) I am still seeing SRC_REV related parsing errors of
> linux-yocto-stable_git.bb. Do you have this working Bruce?

FYI: I've solved this 'for real' now, and I've fixed the SRCREV
issue that I found at the end of my day. I wasn't thinking straight
when I set this up, and I simply neglected to provide valid
SRCREVs for the -stable variant of the kernel. That has allowed
me to remove the SRCREVs from the specific recipes and centralize
the support.

The hack I sent earlier is no longer needed and everything now
looks good. v2 of the series for merge will be out shortly.

Bruce

>
> $ bitbake linux-yocto-stable
> NOTE: Out of date cache found, rebuilding...
> NOTE: Handling BitBake files: - (0003/0760) [ 0 %]NOTE: <class
> 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid value while
> evaluating:
> ${@bb.fetch.get_srcrev(d)}
> NOTE: <class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid
> value while evaluating:
> ${LINUX_VERSION}+git${SRCPV}
> NOTE: <class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid
> value while evaluating:
> ${PN}-${EXTENDPE}${PV}-${PR}
> NOTE: <class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid
> value while evaluating:
> ${TMPDIR}/work/${MULTIMACH_TARGET_SYS}/${PF}
> NOTE: <class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid
> value while evaluating:
> ${WORKDIR}/linux
> NOTE: <class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid
> value while evaluating:
> cd ${S}
> if [ -f ${WORKDIR}/defconfig ]; then
> defconfig=${WORKDIR}/defconfig
> fi
>
> if [ -n "${BOOTSTRAP}" ]; then
> kbranch="yocto/${LINUX_KERNEL_TYPE}/${KMACHINE}"
> else
> kbranch=${KBRANCH}
> fi
>
> # simply ensures that a branch of the right name has been created
> createme ${ARCH} ${kbranch} ${defconfig}
> if [ $? -ne 0 ]; then
> echo "ERROR. Could not create ${kbranch}"
> exit 1
> fi
>
> # updates or generates the target description
> if [ -n "${KERNEL_FEATURES}" ]; then
> addon_features="--features ${KERNEL_FEATURES}"
> fi
> updateme ${addon_features} ${ARCH} ${WORKDIR}
> if [ $? -ne 0 ]; then
> echo "ERROR. Could not update ${kbranch}"
> exit 1
> fi
>
> # executes and modifies the source tree as required
> patchme ${kbranch}
> if [ $? -ne 0 ]; then
> echo "ERROR. Could not modify ${kbranch}"
> exit 1
> fi
>
> NOTE: Error expanding variable do_patch
> ERROR: Please set SRCREV to a valid value while parsing
> /home/dvhart/source/poky.git/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
>
> NOTE: Handling BitBake files: / (0311/0760) [40 %]NOTE: <class
> 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid value while
> evaluating:
> ${@bb.fetch.get_srcrev(d)}
>
> Thanks,
>


