Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6BD764C800B3
	for <yocto@yoctoproject.org>; Fri,  6 May 2011 14:25:55 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 06 May 2011 12:25:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,327,1301900400"; d="scan'208";a="919003935"
Received: from unknown (HELO [10.255.12.87]) ([10.255.12.87])
	by fmsmga001.fm.intel.com with ESMTP; 06 May 2011 12:25:54 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1304685476.git.paul.eggleton@linux.intel.com>
References: <cover.1304685476.git.paul.eggleton@linux.intel.com>
Date: Fri, 06 May 2011 14:25:47 -0500
Message-ID: <1304709947.2592.2.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] Add emenlow pieces removed from oe-core
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
X-List-Received-Date: Fri, 06 May 2011 19:25:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-05-06 at 05:45 -0700, Paul Eggleton wrote:
> From: Paul Eggleton <paul.eggleton@linux.intel.com>
> 
> This adds back the emenlow-specific pieces recently removed from oe-core.
> 
> Thanks,
>     Paul Eggleton <paul.eggleton@linux.intel.com>

Acked-by: Tom Zanussi <tom.zanussi@intel.com>

Pulled into meta-intel/master.

Thanks, Paul!

> ---
> 
> 
> Paul Eggleton (1):
>   Add emenlow pieces removed from oe-core
> 
>  .../recipes-core/tasks/task-core-tools.bbappend    |    2 ++
>  .../tasks/task-poky-sdk-gmae.bbappend              |    1 +
>  .../task-poky-standalone-gmae-sdk-target.bbappend  |    1 +
>  .../clutter/clutter-1.4_1.4.2.bbappend             |    4 ++++
>  .../clutter/clutter-1.6_1.6.14.bbappend            |    4 ++++
>  .../recipes-graphics/clutter/clutter_git.bbappend  |    4 ++++
>  .../recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend     |    2 ++
>  .../recipes-qt/qt4/qt4-x11-free_4.7.2.bbappend     |    2 ++
>  8 files changed, 20 insertions(+), 0 deletions(-)
>  create mode 100644 meta-emenlow/recipes-core/tasks/task-core-tools.bbappend
>  create mode 100644 meta-emenlow/recipes-gnome/tasks/task-poky-sdk-gmae.bbappend
>  create mode 100644 meta-emenlow/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bbappend
>  create mode 100644 meta-emenlow/recipes-graphics/clutter/clutter-1.4_1.4.2.bbappend
>  create mode 100644 meta-emenlow/recipes-graphics/clutter/clutter-1.6_1.6.14.bbappend
>  create mode 100644 meta-emenlow/recipes-graphics/clutter/clutter_git.bbappend
>  create mode 100644 meta-emenlow/recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend
>  create mode 100644 meta-emenlow/recipes-qt/qt4/qt4-x11-free_4.7.2.bbappend
> 



