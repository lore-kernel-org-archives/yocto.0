Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6BABD4C804DC
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2011 15:50:23 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5LKoLDw028088
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 21 Jun 2011 13:50:21 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 21 Jun 2011 13:50:21 -0700
Message-ID: <4E01040C.4000406@windriver.com>
Date: Tue, 21 Jun 2011 16:50:20 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110516 Thunderbird/3.1.10 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1308639171.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1308639171.git.dvhart@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH v2 0/3] beagleboard: machine conf, xorg, audio mixer
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
X-List-Received-Date: Tue, 21 Jun 2011 20:50:23 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 06/21/11 03:19, Darren Hart wrote:
> Refresh the meta-yocto components of the beagleboard BSP in support of the
> recently sent linux-yocto updates for the kernel. The audio mixer patch is a
> stop-gap that should be eventually replaced with a more generic implementation,
> such as alsa-state - but it ensures the beagleboard boots with sane mixer
> defaults. Also, switch to the xf86-lite xserver from kdrive. This keeps the
> Yocto Project BSP more inline with the meta-texasinstruments BSP, and eliminates
> some trouble with keyboard handling present with the kdrive server.

Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>

I'll get the kernel parts in tomorrow.

Bruce

>
>
> The following changes since commit 2163461ec94528ecf046a04edc5db3d2dd3a6b8b:
>
>    systemtap: remove non-core COMPATIBLE_MACHINES (2011-06-16 22:14:06 +0100)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib dvhart/beagle
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/beagle
>
> Darren Hart (3):
>    beagleboard: cleanup machine config commentary
>    beagleboard: add basic audio mixer defaults
>    beagleboard: switch to xserver-xf86-lite
>
>   meta-yocto/conf/machine/beagleboard.conf           |   21 ++++++----
>   .../beagleboard-audio/beagleboard-audio.bb         |   30 +++++++++++++
>   .../beagleboard-audio/beagleboard-audio            |   44 ++++++++++++++++++++
>   .../xserver-xf86-config/beagleboard/xorg.conf      |   34 +++++++++++++++
>   4 files changed, 121 insertions(+), 8 deletions(-)
>   create mode 100644 meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio.bb
>   create mode 100644 meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio/beagleboard-audio
>   create mode 100644 meta-yocto/recipes-graphics/xorg-xserver/xserver-xf86-config/beagleboard/xorg.conf
>


