Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 816864C80039
	for <yocto@yoctoproject.org>; Thu,  9 Dec 2010 14:49:15 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 09 Dec 2010 12:49:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,322,1288594800"; d="scan'208";a="866485251"
Received: from doubt.jf.intel.com (HELO [10.24.4.158]) ([10.24.4.158])
	by fmsmga001.fm.intel.com with ESMTP; 09 Dec 2010 12:49:15 -0800
Message-ID: <4D0140C4.5030603@linux.intel.com>
Date: Thu, 09 Dec 2010 12:49:08 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1291786378.git.bruce.ashfield@windriver.com>
	<64f083b7e51bae434b4ae449edc81795e89f9f1c.1291786378.git.bruce.ashfield@windriver.com>
In-Reply-To: <64f083b7e51bae434b4ae449edc81795e89f9f1c.1291786378.git.bruce.ashfield@windriver.com>
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
X-List-Received-Date: Thu, 09 Dec 2010 20:49:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/08/2010 06:35 AM, Bruce Ashfield wrote:
> In order to extend and create more kernel recipes based on the
> supported yocto kernel common routines need to be placed in
> re-usable blocks.
>
> To accomplish this meta/recipes-kernel/linux/linux-yocto_git.bb
> is broken into three parts:
>   .../recipes-kernel/linux/linux-yocto-stable_git.bb |   41 ++++

Now that the git tree permissions for 2.6.37 are public (not sure how 
that impacted this) I am still seeing SRC_REV related parsing errors of 
linux-yocto-stable_git.bb. Do you have this working Bruce?

$ bitbake linux-yocto-stable
NOTE: Out of date cache found, rebuilding...
NOTE: Handling BitBake files: - (0003/0760) [ 0 %]NOTE: <class 
'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid value while 
evaluating:
${@bb.fetch.get_srcrev(d)}
NOTE: <class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid 
value while evaluating:
${LINUX_VERSION}+git${SRCPV}
NOTE: <class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid 
value while evaluating:
${PN}-${EXTENDPE}${PV}-${PR}
NOTE: <class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid 
value while evaluating:
${TMPDIR}/work/${MULTIMACH_TARGET_SYS}/${PF}
NOTE: <class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid 
value while evaluating:
${WORKDIR}/linux
NOTE: <class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid 
value while evaluating:
	cd ${S}
	if [ -f ${WORKDIR}/defconfig ]; then
	    defconfig=${WORKDIR}/defconfig
	fi

	if [ -n "${BOOTSTRAP}" ]; then
	    kbranch="yocto/${LINUX_KERNEL_TYPE}/${KMACHINE}"
	else
	    kbranch=${KBRANCH}
	fi

	# simply ensures that a branch of the right name has been created
	createme ${ARCH} ${kbranch} ${defconfig}
	if [ $? -ne 0 ]; then
		echo "ERROR. Could not create ${kbranch}"
		exit 1
	fi

	# updates or generates the target description
	if [ -n "${KERNEL_FEATURES}" ]; then
	       addon_features="--features ${KERNEL_FEATURES}"
	fi
	updateme ${addon_features} ${ARCH} ${WORKDIR}
	if [ $? -ne 0 ]; then
		echo "ERROR. Could not update ${kbranch}"
		exit 1
	fi

	# executes and modifies the source tree as required
	patchme ${kbranch}
	if [ $? -ne 0 ]; then
		echo "ERROR. Could not modify ${kbranch}"
		exit 1
	fi

NOTE: Error expanding variable do_patch
ERROR: Please set SRCREV to a valid value while parsing 
/home/dvhart/source/poky.git/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
NOTE: Handling BitBake files: / (0311/0760) [40 %]NOTE: <class 
'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid value while 
evaluating:
${@bb.fetch.get_srcrev(d)}

Thanks,

-- 
Darren Hart
Yocto Linux Kernel

