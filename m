Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA2F4E01248
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2012 15:59:03 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 29 Oct 2012 15:59:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,675,1344236400"; d="scan'208";a="162113242"
Received: from unknown (HELO [10.255.14.158]) ([10.255.14.158])
	by AZSMGA002.ch.intel.com with ESMTP; 29 Oct 2012 15:59:02 -0700
Message-ID: <1351551542.9523.34.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: kishore.k.bodke@intel.com
Date: Mon, 29 Oct 2012 17:59:02 -0500
In-Reply-To: <cover.1351532199.git.kishore.k.bodke@intel.com>
References: <cover.1351532199.git.kishore.k.bodke@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/2][meta-intel] Change machine names
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
X-List-Received-Date: Mon, 29 Oct 2012 22:59:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-10-29 at 10:42 -0700, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 
> Hi,
> 
> These patch sets are for changing the machine names
> for the Crystal Forest which will be used to publish 
> on the Yocto Project Website and adding the WEBTITLE
> for the Romley BSP.
> 
> Please pull them into meta-intel/master.
> 

Pulled into meta-intel/master.

Thanks,

Tom

> Thanks
> Kishore.
> 
> The following changes since commit 0ebdf34f9a0f023f62305bddcbc8427d36f740b4:
> 
>   fri2: Add tiny-init bbappend for devtmpfs and console (2012-10-26 20:24:53 -0700)
> 
> are available in the git repository at:
> 
>   git://git.pokylinux.org/meta-intel-contrib Kishore/change_machine
>   http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=Kishore/change_machine
> 
> Kishore Bodke (2):
>   crystalforest: Change the machine names
>   romley: add WEBTITLE & Compliance information
> 
>  meta-crystalforest/README                          |   26 +++++++++-----------
>  ...rest-stargo.conf => crystalforest-gladden.conf} |    4 +--
>  ...rest-shumway.conf => crystalforest-server.conf} |    4 +--
>  .../machconfig                                     |    0
>  .../machconfig                                     |    0
>  .../xorg.conf                                      |    0
>  .../xorg.conf                                      |    0
>  .../linux/linux-yocto-rt_3.4.bbappend              |   21 ++++++++--------
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |   20 +++++++--------
>  meta-romley/README                                 |   11 +++++++--
>  meta-romley/conf/machine/romley.conf               |    5 +++-
>  11 files changed, 49 insertions(+), 42 deletions(-)
>  rename meta-crystalforest/conf/machine/{crystalforest-stargo.conf => crystalforest-gladden.conf} (87%)
>  rename meta-crystalforest/conf/machine/{crystalforest-shumway.conf => crystalforest-server.conf} (94%)
>  rename meta-crystalforest/recipes-bsp/formfactor/formfactor/{crystalforest-shumway => crystalforest-gladden}/machconfig (100%)
>  rename meta-crystalforest/recipes-bsp/formfactor/formfactor/{crystalforest-stargo => crystalforest-server}/machconfig (100%)
>  rename meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/{crystalforest-shumway => crystalforest-gladden}/xorg.conf (100%)
>  rename meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/{crystalforest-stargo => crystalforest-server}/xorg.conf (100%)
> 



