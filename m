Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00893E0138D
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2012 20:56:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q313u5kV010369
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 31 Mar 2012 20:56:05 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Sat, 31 Mar 2012 20:56:06 -0700
Message-ID: <4F77D1CF.2080800@windriver.com>
Date: Sat, 31 Mar 2012 23:55:59 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1333204567.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1333204567.git.dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/3][linux-yocto-3.2][meta] tiny: Refactor tiny ktype config
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
X-List-Received-Date: Sun, 01 Apr 2012 03:56:08 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-03-31 10:44 AM, Darren Hart wrote:
> Prepare for the linux-yocto-tiny_3.2 recipe by consolidating the tiny config
> and factoring out what should be common functinionality.
>
> Once included, I'll send the linux-yocto-tiny_3.2 patch against oe-core with
> the proper SRCREV_meta. The other linux-yocto recipes don't need an updated
> meta SRCREV necessarily.

I went ahead an bumped all the SRCREVs, best to keep them consistent, so
configurations can be shared.

Merged, pushed, and a pull request sent out.

Cheers,

Bruce

>
> The following changes since commit 867fc7a19f2ea74253d1f20c3d61b7829635175b:
>
>    common-pc: Add PCNET32 to the config (2012-03-26 09:49:06 -0400)
>
> are available in the git repository at:
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib dvhart/meta/tiny
>    http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=dvhart/meta/tiny
>
> Darren Hart (3):
>    meta: common-pc add dependencies to cfg
>    tiny: Minimize the tiny config
>    meta: Add common-pc-tiny.scc
>
>   .../kernel-cache/bsp/common-pc/common-pc-tiny.scc  |   12 +
>   meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg  |   13 +-
>   .../tiny/serial.cfg =>  cfg/serial-8250.cfg}        |    0
>   meta/cfg/kernel-cache/ktypes/tiny/debug.cfg        |    5 -
>   meta/cfg/kernel-cache/ktypes/tiny/devtmpfs.cfg     |    6 -
>   meta/cfg/kernel-cache/ktypes/tiny/ext2.cfg         |    1 -
>   meta/cfg/kernel-cache/ktypes/tiny/ext3.cfg         |    2 -
>   meta/cfg/kernel-cache/ktypes/tiny/fb.cfg           |   16 -
>   meta/cfg/kernel-cache/ktypes/tiny/lzma.cfg         |    3 -
>   meta/cfg/kernel-cache/ktypes/tiny/net.cfg          |   26 -
>   meta/cfg/kernel-cache/ktypes/tiny/rtc-pc.cfg       |   13 -
>   meta/cfg/kernel-cache/ktypes/tiny/smp.cfg          |    7 -
>   meta/cfg/kernel-cache/ktypes/tiny/sysfs.cfg        |    2 -
>   meta/cfg/kernel-cache/ktypes/tiny/tiny.cfg         |  613 +-------------------
>   meta/cfg/kernel-cache/ktypes/tiny/tiny.scc         |   17 +-
>   meta/cfg/kernel-cache/ktypes/tiny/vt.cfg           |    5 -
>   .../ktypes/tiny/{core.cfg =>  yocto.cfg}            |   23 +-
>   17 files changed, 63 insertions(+), 701 deletions(-)
>   create mode 100644 meta/cfg/kernel-cache/bsp/common-pc/common-pc-tiny.scc
>   rename meta/cfg/kernel-cache/{ktypes/tiny/serial.cfg =>  cfg/serial-8250.cfg} (100%)
>   delete mode 100644 meta/cfg/kernel-cache/ktypes/tiny/debug.cfg
>   delete mode 100644 meta/cfg/kernel-cache/ktypes/tiny/devtmpfs.cfg
>   delete mode 100644 meta/cfg/kernel-cache/ktypes/tiny/ext2.cfg
>   delete mode 100644 meta/cfg/kernel-cache/ktypes/tiny/ext3.cfg
>   delete mode 100644 meta/cfg/kernel-cache/ktypes/tiny/fb.cfg
>   delete mode 100644 meta/cfg/kernel-cache/ktypes/tiny/lzma.cfg
>   delete mode 100644 meta/cfg/kernel-cache/ktypes/tiny/net.cfg
>   delete mode 100644 meta/cfg/kernel-cache/ktypes/tiny/rtc-pc.cfg
>   delete mode 100644 meta/cfg/kernel-cache/ktypes/tiny/smp.cfg
>   delete mode 100644 meta/cfg/kernel-cache/ktypes/tiny/sysfs.cfg
>   delete mode 100644 meta/cfg/kernel-cache/ktypes/tiny/vt.cfg
>   rename meta/cfg/kernel-cache/ktypes/tiny/{core.cfg =>  yocto.cfg} (49%)
>


