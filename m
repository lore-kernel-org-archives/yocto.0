Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9EEBE006E9
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2012 15:58:16 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 09 Jan 2012 15:58:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="54871497"
Received: from unknown (HELO [10.255.13.234]) ([10.255.13.234])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Jan 2012 15:58:15 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: kishore.k.bodke@intel.com
In-Reply-To: <cover.1326150136.git.kishore.k.bodke@intel.com>
References: <cover.1326150136.git.kishore.k.bodke@intel.com>
Date: Mon, 09 Jan 2012 17:58:11 -0600
Message-ID: <1326153491.2413.7.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] Add meta-cedartrail to meta-intel/master
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
X-List-Received-Date: Mon, 09 Jan 2012 23:58:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-01-09 at 15:08 -0800, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 
> Hi,
> 
> This patch set is to update the meta-cedartrail BSP from edison branch to master branch.
> Please pull into meta-intel/master.
> 

Pulled into meta-intel/master.

Thanks Kishore,

Tom

> Thanks
> Kishore.
> 
> The following changes since commit 7c3db7010479970f3f92501349827c517de3c36a:
> 
>   meta-intel: change EMGD xserver libva dependency to libva-x11 (2011-12-22 09:22:37 -0600)
> 
> are available in the git repository at:
>   git://git.pokylinux.org/meta-intel-contrib kishore/cedartrail
>   http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/cedartrail
> 
> Kishore Bodke (1):
>   meta-cedartrail: Create new layer for cedartrail System.
> 
>  MAINTAINERS                                        |    3 +
>  meta-cedartrail/COPYING.MIT                        |   17 +++
>  meta-cedartrail/README                             |  111 ++++++++++++++++++++
>  meta-cedartrail/README.sources                     |   17 +++
>  meta-cedartrail/conf/layer.conf                    |   10 ++
>  meta-cedartrail/conf/machine/cedartrail.conf       |   15 +++
>  .../formfactor/formfactor/cedartrail/machconfig    |    3 +
>  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
>  .../recipes-core/tasks/task-core-tools.bbappend    |    2 +
>  .../xserver-xf86-config/cedartrail/xorg.conf       |   26 +++++
>  .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
>  .../linux/linux-yocto-rt_3.0.bbappend              |    8 ++
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++
>  13 files changed, 226 insertions(+), 0 deletions(-)
>  create mode 100755 meta-cedartrail/COPYING.MIT
>  create mode 100755 meta-cedartrail/README
>  create mode 100755 meta-cedartrail/README.sources
>  create mode 100644 meta-cedartrail/binary/.gitignore
>  create mode 100644 meta-cedartrail/conf/layer.conf
>  create mode 100644 meta-cedartrail/conf/machine/cedartrail.conf
>  create mode 100644 meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail/machconfig
>  create mode 100644 meta-cedartrail/recipes-bsp/formfactor/formfactor_0.0.bbappend
>  create mode 100644 meta-cedartrail/recipes-core/tasks/task-core-tools.bbappend
>  create mode 100644 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
>  create mode 100644 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>  create mode 100644 meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
>  create mode 100644 meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
> 



