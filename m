Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E23784C80052
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2011 13:32:23 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Jun 2011 11:32:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,359,1304319600"; d="scan'208";a="13990300"
Received: from doubt.jf.intel.com (HELO [10.7.199.61]) ([10.7.199.61])
	by orsmga001.jf.intel.com with ESMTP; 13 Jun 2011 11:32:23 -0700
Message-ID: <4DF657B6.4030609@linux.intel.com>
Date: Mon, 13 Jun 2011 11:32:22 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1307938815.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1307938815.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/2] meta-intel: add bbappends for systemtap
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
X-List-Received-Date: Mon, 13 Jun 2011 18:32:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 06/13/2011 07:32 AM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Removing any old references to systemtap from meta means we need to add
> it here.  It also adds systemtap support for the other, previously
> uncovered meta-intel bsps.

Wouldn't it make more sense to add systemtap to and image recipe, either
a new recipe or a bbappend? Also, it seems to me that RRECOMMENDS would
make more sense than RDEPENDS - as it isn't required for boot.

--
Darren

> 
> The following changes since commit 01d1a545477cbc1b2a1da5b66edb52fd9e783206:
>   Tom Zanussi (1):
>         meta-intel: update kernel SRCREVs
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/meta-intel.git tzanussi/systemtap-update
>   http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/systemtap-update
> 
> Tom Zanussi (2):
>   meta-emenlow: add systemtap bbappend
>   meta-intel: add systemtap bbappends
> 
>  .../recipes-core/tasks/task-core-tools.bbappend    |    3 +++
>  .../systemtap/systemtap_git.bbappend               |    1 +
>  .../systemtap/systemtap_git.bbappend               |    1 +
>  .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
>  .../systemtap/systemtap_git.bbappend               |    1 +
>  .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
>  .../systemtap/systemtap_git.bbappend               |    1 +
>  .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
>  .../systemtap/systemtap_git.bbappend               |    1 +
>  .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
>  .../systemtap/systemtap_git.bbappend               |    1 +
>  11 files changed, 17 insertions(+), 0 deletions(-)
>  create mode 100644 meta-crownbay/recipes-core/tasks/task-core-tools.bbappend
>  create mode 100644 meta-crownbay/recipes-kernel/systemtap/systemtap_git.bbappend
>  create mode 100644 meta-emenlow/recipes-kernel/systemtap/systemtap_git.bbappend
>  create mode 100644 meta-fishriver/recipes-core/tasks/task-core-tools.bbappend
>  create mode 100644 meta-fishriver/recipes-kernel/systemtap/systemtap_git.bbappend
>  create mode 100644 meta-jasperforest/recipes-core/tasks/task-core-tools.bbappend
>  create mode 100644 meta-jasperforest/recipes-kernel/systemtap/systemtap_git.bbappend
>  create mode 100644 meta-n450/recipes-core/tasks/task-core-tools.bbappend
>  create mode 100644 meta-n450/recipes-kernel/systemtap/systemtap_git.bbappend
>  create mode 100644 meta-sugarbay/recipes-core/tasks/task-core-tools.bbappend
>  create mode 100644 meta-sugarbay/recipes-kernel/systemtap/systemtap_git.bbappend
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

