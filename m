Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2062E016A3
	for <yocto@yoctoproject.org>; Tue,  8 Oct 2013 15:16:31 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 08 Oct 2013 15:13:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1059,1371106800"; d="scan'208";a="416335187"
Received: from dvhart-mobl4.jf.intel.com (HELO [10.7.196.54]) ([10.7.196.54])
	by orsmga002.jf.intel.com with ESMTP; 08 Oct 2013 15:16:21 -0700
Message-ID: <1381270579.26156.36.camel@dvhart-mobl4.amr.corp.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Carlo Caione <carlo.caione@gmail.com>
Date: Tue, 08 Oct 2013 15:16:19 -0700
In-Reply-To: <CAOQ7t2bMdc5Wqeb0_b7M+wBCgVv6LtrEHpLfN5YS5Kgk-y=_mw@mail.gmail.com>
References: <CAOQ7t2bMdc5Wqeb0_b7M+wBCgVv6LtrEHpLfN5YS5Kgk-y=_mw@mail.gmail.com>
Organization: Intel
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@intel.com>
Subject: Re: do_kernel_configme error with poky-tiny distro
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
X-List-Received-Date: Tue, 08 Oct 2013 22:16:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2013-09-13 at 17:32 +0200, Carlo Caione wrote:
> Hi,
> when I try to compile a poky-tiny distro this is what I get:
> 

Hi Carlos, thanks for reporting the failure.

> ERROR: Function failed: do_kernel_configme (see
> /home/carlo/work/RSR/yocto/build/tmp/work/qemux86-poky-linux/linux-yocto-tiny/3.8.11+gitAUTOINC+8482dcdf68f9f7501118f4c01fdcb8f851882997_dd089cb5ba37ea14e8f90a884bf2a5be64ed817d-r4.1/temp/log.do_kernel_configme.13385
> for further information)
> ERROR: Logfile of failure stored in:
> /home/carlo/work/RSR/yocto/build/tmp/work/qemux86-poky-linux/linux-yocto-tiny/3.8.11+gitAUTOINC+8482dcdf68f9f7501118f4c01fdcb8f851882997_dd089cb5ba37ea14e8f90a884bf2a5be64ed817d-r4.1/temp/log.do_kernel_configme.13385
> Log data follows:
> | DEBUG: Executing shell function do_kernel_configme
> | [INFO] doing kernel configme
> | [INFO] Configuring target/machine combo: "tiny/qemux86"
> | [INFO] collecting configs in ./meta/meta-series
> | mv: cannot stat
> `/home/carlo/work/RSR/yocto/build/tmp/work/qemux86-poky-linux/linux-yocto-tiny/3.8.11+gitAUTOINC+8482dcdf68f9f7501118f4c01fdcb8f851882997_dd089cb5ba37ea14e8f90a884bf2a5be64ed817d-r4.1/linux-qemux86-tiny-build/.tmp.config*':
> No such file or directory
> | creation of pre-processed config data failed
> | config of "tiny/qemux86" failed
> | ERROR: Function failed: do_kernel_configme (see
> /home/carlo/work/RSR/yocto/build/tmp/work/qemux86-poky-linux/linux-yocto-tiny/3.8.11+gitAUTOINC+8482dcdf68f9f7501118f4c01fdcb8f851882997_dd089cb5ba37ea14e8f90a884bf2a5be64ed817d-r4.1/temp/log.do_kernel_configme.13385
> for further information)
> ERROR: Task 678
> (/home/carlo/work/RSR/yocto/meta/recipes-kernel/linux/linux-yocto-tiny_3.8.bb,
> do_kernel_configme) failed with exit code '1'
> 
> Any hint? it seems like the config file for the BSP is missing.

So:

Yocto Release 1.4?
MACHINE=qemux86
DISTRO="poky-tiny"
target linux-yocto-tiny

?

I just built this successfully from the dylan branch using the same git
hashes you have listed above for the meta and machine branches.

Can you provide any additional information about your build environment?
Maybe share your local.conf and bblayers.conf.

Hate to ask, but did you run out of disk space?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



