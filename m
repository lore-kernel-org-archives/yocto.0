Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 494E7E01396
	for <yocto@yoctoproject.org>; Mon, 14 May 2012 08:22:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q4EFMXNp008175
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 14 May 2012 08:22:33 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 14 May 2012 08:22:32 -0700
Message-ID: <4FB12336.1000602@windriver.com>
Date: Mon, 14 May 2012 11:22:30 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1336851382.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336851382.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [PATCH 00/22][KERNEL][RFC] policy cleanup patches, v2
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
X-List-Received-Date: Mon, 14 May 2012 15:22:34 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-12 03:42 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This set of patches factors out the policy vs hardware-related config
> of the common-pc and common-pc-64 along with some meta-intel BSPs.
>
> There are also a couple usb cleanups as well.
>
> This is still an RFC patchset because it's completely untested at this
> point so shouldn't be pulled in yet.
>
> v2: updated to reflect Darren's comments.  This new patchset also
> adds the usb-mass-storage feature to common-pc and common-pc-64,
> and at the same time factors out the common SCSI pieces into a new
> set of scsi features.  It also removes options and feature use made
> redundant by the above changes.

I gave this a scan and it looks good to me. I've wanted to break out
scsi changes in the past, so the split looks like a good starting
point to me. Not knowing every option in the subsystem off by heart,
I like to explicitly include something that says "I need a scsi disk
or cdrom" .. so I like the clarify.

The USB cleanups look good with me.

Once we get this tested and in tree, I'll experiment with changing
some of the hardware/non-hardware designations to required/optional
naming and see what the audit subsystem has to say about it. But that's
orthogonal to this factoring and cleanup.

Cheers,

Bruce

>
> Tom
>
> The following changes since commit 1dfd60fa1250259eed38ae5b2840eb37e3758a1b:
>    Tom Zanussi (1):
>          meta/fishriver: move smp options from recipe-space
>
> are available in the git repository at:
>
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/policy-cleanup
>    http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/policy-cleanup
>
> Tom Zanussi (22):
>    meta: add ROOT_HUB_TT config option to the usb/ehci-hcd feature
>    meta/common-pc: use usb features
>    meta/common-pc-64: use usb features
>    meta/common-pc: factor out policy-related options
>    meta/common-pc-64: factor out policy-related options
>    meta/crownbay: factor out policy-related options
>    meta/emenlow: factor out policy-related options
>    meta/fishriver: factor out policy-related options
>    meta/jasperforest: factor out policy-related options
>    meta/sugarbay: factor out policy-related options
>    meta: add scsi feature
>    meta: add scsi disk feature
>    meta: factor out SCSI options from the usb-mass-storage feature
>    meta/common-pc: use usb-mass-storage feature
>    meta: add scsi cdrom feature
>    meta/common-pc-64: use usb-mass-storage feature
>    meta/common-pc-64: factor out SCSI CDROM option
>    meta/jasperforest: remove redundant features and options
>    meta/sugarbay: remove redundant features and options
>    meta/crownbay: remove redundant features and options
>    meta/emenlow: remove redundant features and options
>    meta/fishriver: remove redundant features and options
>
>   .../bsp/common-pc-64/common-pc-64-preempt-rt.scc   |    7 +++++++
>   .../bsp/common-pc-64/common-pc-64-standard.scc     |    7 +++++++
>   .../kernel-cache/bsp/common-pc-64/common-pc-64.cfg |    8 --------
>   .../kernel-cache/bsp/common-pc-64/common-pc-64.scc |   10 ++++------
>   .../bsp/common-pc/common-pc-preempt-rt.scc         |    8 ++++++++
>   .../bsp/common-pc/common-pc-standard.scc           |    7 +++++++
>   .../kernel-cache/bsp/common-pc/common-pc-tiny.scc  |    5 +----
>   meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg  |    8 --------
>   meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc  |    7 +++----
>   .../bsp/crownbay/crownbay-preempt-rt.scc           |    8 ++++++++
>   .../bsp/crownbay/crownbay-standard.scc             |    7 +++++++
>   meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg    |    1 -
>   meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |    8 --------
>   .../bsp/emenlow/emenlow-preempt-rt.scc             |    8 ++++++++
>   .../kernel-cache/bsp/emenlow/emenlow-standard.scc  |    8 ++++++++
>   meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg      |    1 -
>   meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc      |    8 --------
>   .../bsp/fishriver/fishriver-preempt-rt.scc         |    8 ++++++++
>   .../bsp/fishriver/fishriver-standard.scc           |    8 ++++++++
>   meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg  |    1 -
>   meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc  |    8 --------
>   .../bsp/jasperforest/jasperforest-preempt-rt.scc   |    4 ++++
>   .../bsp/jasperforest/jasperforest-standard.scc     |    3 +++
>   .../kernel-cache/bsp/jasperforest/jasperforest.cfg |    1 -
>   .../kernel-cache/bsp/jasperforest/jasperforest.scc |    8 --------
>   .../bsp/sugarbay/sugarbay-preempt-rt.scc           |    4 ++++
>   .../bsp/sugarbay/sugarbay-standard.scc             |    3 +++
>   meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg    |    1 -
>   meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc    |    8 --------
>   meta/cfg/kernel-cache/cfg/usb-mass-storage.cfg     |    2 --
>   meta/cfg/kernel-cache/cfg/usb-mass-storage.scc     |    2 ++
>   meta/cfg/kernel-cache/features/scsi/cdrom.cfg      |    1 +
>   meta/cfg/kernel-cache/features/scsi/cdrom.scc      |    6 ++++++
>   meta/cfg/kernel-cache/features/scsi/disk.cfg       |    1 +
>   meta/cfg/kernel-cache/features/scsi/disk.scc       |    6 ++++++
>   meta/cfg/kernel-cache/features/scsi/scsi.cfg       |    1 +
>   meta/cfg/kernel-cache/features/scsi/scsi.scc       |    4 ++++
>   meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg    |    1 +
>   38 files changed, 120 insertions(+), 77 deletions(-)
>   create mode 100644 meta/cfg/kernel-cache/features/scsi/cdrom.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/scsi/cdrom.scc
>   create mode 100644 meta/cfg/kernel-cache/features/scsi/disk.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/scsi/disk.scc
>   create mode 100644 meta/cfg/kernel-cache/features/scsi/scsi.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/scsi/scsi.scc
>


