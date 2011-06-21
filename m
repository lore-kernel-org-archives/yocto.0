Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id AF4F14C804DC
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2011 15:47:56 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5LKls0B027554
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 21 Jun 2011 13:47:54 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 21 Jun 2011 13:47:54 -0700
Message-ID: <4E010379.7000508@windriver.com>
Date: Tue, 21 Jun 2011 16:47:53 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110516 Thunderbird/3.1.10 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Darren Hart <darren@dvhart.com>
References: <cover.1308640367.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1308640367.git.dvhart@linux.intel.com>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: [PATCH RESEND 0/1][linux-yocto] beagleboard: align config with with meta-ti linux-omap
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
X-List-Received-Date: Tue, 21 Jun 2011 20:47:57 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 06/21/11 03:17, Darren Hart wrote:
> From: Darren Hart<dvhart@linux.intel.com>
>
> Update the Beagleboard meta data to align with the meta-ti linux-omap_2.6.37
> recipe defconfig while preserving the policy configuration from linux-yocto.
> Core platform bits were maintained, while things like filesystems and very
> generic drivers were left to whatever linux-yocto had originally.

FYI: I spent the day finishing up the config options mentioned
in another qemu thread, and have sync'd all changes to the
3.0 kernel.

This version if the review seems to have gone over well, and
I've given it 24hours of debounce time.

I'll merge this and do a collective update of the linux-yocto*
kernel trees tomorrow.

Cheers,

Bruce

>
> There is surely still room for tweaking, but this gets us most of the way there.
>
> Fixes [YOCTO #764]
> Fixes [YOCTO #765]
> Fixes [YOCTO #767]
>
> The following changes since commit 46a1be20b01e50d5d0646e5622e9dd06433238c2:
>
> The following changes since commit 8888d948e0ddbc5f37bd3dc23cc1b398ab230e2e:
>
>    meta: add utrace feature for linux-yocto (2011-06-16 15:41:23 -0400)
>
> are available in the git repository at:
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib dvhart/meta/beagleboard
>    http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=dvhart/meta/beagleboard
>
> Darren Hart (1):
>    beagleboard: new config based on meta-texasinstruments
>
>   .../kernel-cache/bsp/beagleboard/beagleboard.cfg   |   97 ++++++++++++++++++--
>   .../kernel-cache/bsp/beagleboard/beagleboard.scc   |    2 +
>   meta/cfg/kernel-cache/bsp/beagleboard/wifi.cfg     |    3 +
>   meta/cfg/kernel-cache/bsp/beagleboard/wl1271.cfg   |    6 +
>   4 files changed, 100 insertions(+), 8 deletions(-)
>   create mode 100644 meta/cfg/kernel-cache/bsp/beagleboard/wifi.cfg
>   create mode 100644 meta/cfg/kernel-cache/bsp/beagleboard/wl1271.cfg
>


