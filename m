Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8104EE014FD
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 14:38:58 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Sep 2012 14:38:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,376,1344236400"; d="scan'208";a="189355468"
Received: from unknown (HELO [10.255.13.143]) ([10.255.13.143])
	by orsmga001.jf.intel.com with ESMTP; 05 Sep 2012 14:38:57 -0700
Message-ID: <1346881137.3654.4.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Saul Wold <sgw@linux.intel.com>
Date: Wed, 05 Sep 2012 16:38:57 -0500
In-Reply-To: <cover.1346864117.git.sgw@linux.intel.com>
References: <cover.1346864117.git.sgw@linux.intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/3 v3] Meta-tlk update
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
X-List-Received-Date: Wed, 05 Sep 2012 21:38:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-09-05 at 09:56 -0700, Saul Wold wrote:
> The following changes since commit 16a7879b98352b70e8c17181912a26212d716c87:
> 
>   meta-emenlow: rename recipes-gnome bbappends (2012-09-04 10:04:37 -0500)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/poky-contrib sgw/meta-tlk
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/meta-tlk
> 
> Saul Wold (3):
>   linux-yocto: Update linux-yocto for 3.2 and 3.4
>   base-files: add /etc/motd with TLK info
>   psplash: Add TLK info to psplash image
> 

Pulled into meta-intel/master, thanks.

Tom

>  .../base-files/base-files_3.0.14.bbappend          |    3 +++
>  meta-tlk/recipes-core/base-files/files/motd        |    7 +++++++
>  .../recipes-core/psplash/files/psplash-tlk.png     |  Bin 0 -> 42295 bytes
>  meta-tlk/recipes-core/psplash/psplash_git.bbappend |   10 ++++++++++
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 ++
>  .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    6 ++++++
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    6 ++++++
>  7 files changed, 34 insertions(+), 0 deletions(-)
>  create mode 100644 meta-tlk/recipes-core/base-files/base-files_3.0.14.bbappend
>  create mode 100644 meta-tlk/recipes-core/base-files/files/motd
>  create mode 100644 meta-tlk/recipes-core/psplash/files/psplash-tlk.png
>  create mode 100644 meta-tlk/recipes-core/psplash/psplash_git.bbappend
>  create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
>  create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
> 



