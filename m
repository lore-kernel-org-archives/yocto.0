Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB555E004E4
	for <yocto@yoctoproject.org>; Fri, 30 Sep 2011 07:25:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p8UEPQbc013499
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 30 Sep 2011 07:25:26 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 30 Sep 2011 07:25:25 -0700
Message-ID: <4E85D154.100@windriver.com>
Date: Fri, 30 Sep 2011 10:25:24 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110925 Thunderbird/7.0
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1317326894.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1317326894.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/5][KERNEL] some meta-intel bsp cleanup
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
X-List-Received-Date: Fri, 30 Sep 2011 14:25:26 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-29 04:17 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This patchset is another step in some cleanup I'm doing for
> the meta-intel bsps, basically removing unneeded or redundant
> options and abstracting out useful features, in this case a
> new vesafb feature used in this patchset by crownbay, emenlow,
> and jasperforest.
>
> Please pull into linux-yocto-3.0-(next).

All good stuff. I'll stage this to be in 3.0 for post 1.1
updates, and in the -dev kernel for the next kernel version
that is pushed out.

Bruce

>
> Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib
>    Branch: tzanussi/bsp-cleanup-2
>    Browse: http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/bsp-cleanup-2
>
> Thanks,
>
> Tom
>
> Tom Zanussi (5):
>    features/drm-psb: add related config options
>    meta: add vesafb feature
>    crownbay: cleanup bsp config
>    emenlow: cleanup bsp config
>    jasperforest: cleanup bsp config
>
>   meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg    |   34 ++++--------------
>   meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |    5 ++-
>   meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg      |   35 +++++--------------
>   meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc      |    2 +
>   .../kernel-cache/bsp/jasperforest/jasperforest.cfg |    7 +---
>   .../kernel-cache/bsp/jasperforest/jasperforest.scc |    2 +
>   meta/cfg/kernel-cache/features/drm-psb/drm-psb.cfg |   13 +++++++
>   .../kernel-cache/features/framebuffer/vesafb.cfg   |    8 ++++
>   .../kernel-cache/features/framebuffer/vesafb.scc   |    1 +
>   9 files changed, 48 insertions(+), 59 deletions(-)
>   create mode 100644 meta/cfg/kernel-cache/features/framebuffer/vesafb.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/framebuffer/vesafb.scc
>


