Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1510AE00596
	for <yocto@yoctoproject.org>; Sun,  6 May 2012 20:48:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q473meOO001987
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 6 May 2012 20:48:40 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.145) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Sun, 6 May 2012 20:48:40 -0700
Message-ID: <4FA74616.3060604@windriver.com>
Date: Sun, 6 May 2012 23:48:38 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1336321542.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336321542.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [PATCH 0/7][KERNEL] add usb and mei features
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
X-List-Received-Date: Mon, 07 May 2012 03:48:42 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-06 12:53 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This adds a few new features, one each for usb/[xeou]hci-hcd and
> another for amt/mei, and refactors existing config options into a new
> usb/base, which are then used in crownbay.
>
> v2: after suggestions from Bruce and Darren of a preference for a more
> flattened feature tree structure, moved all the features into a single
> usb/ feature dir.  I did however retain the common 'base' feature
> because inlining that in each feature would mean that the same common
> set would be repeated in multiple config fragments if more than one usb
> feature was included in a BSP.
>
> v3: include base.scc into each *hcd fragment again.
>
> Please pull into linux-yocto-3.2.


Looks good. I reset my old merge and this is now in place. I'll push
the trees in the morning.

Cheers,

Bruce

>
> Thanks,
>
> Tom
>
> The following changes since commit b14a08f5c7b469a5077c10942f4e1aec171faa9d:
>    Yang Shi (1):
>          meta: Clean up BSPs kernel config
>
> are available in the git repository at:
>
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/xhcd-mei-features
>    http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/xhcd-mei-features
>
> Tom Zanussi (7):
>    meta: add usb/base feature
>    meta: add usb/xhci-hcd feature
>    meta: add usb/ehci-hcd feature
>    meta: add usb/ohci-hcd feature
>    meta: add usb/uhci-hcd feature
>    meta/crownbay: use usb features
>    meta: add mei feature
>
>   meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg |    6 ------
>   meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc |    4 ++++
>   meta/cfg/kernel-cache/features/amt/mei/mei.cfg  |    3 +++
>   meta/cfg/kernel-cache/features/amt/mei/mei.scc  |    4 ++++
>   meta/cfg/kernel-cache/features/usb/base.cfg     |    3 +++
>   meta/cfg/kernel-cache/features/usb/base.scc     |    4 ++++
>   meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg |    1 +
>   meta/cfg/kernel-cache/features/usb/ehci-hcd.scc |    6 ++++++
>   meta/cfg/kernel-cache/features/usb/ohci-hcd.cfg |    1 +
>   meta/cfg/kernel-cache/features/usb/ohci-hcd.scc |    6 ++++++
>   meta/cfg/kernel-cache/features/usb/uhci-hcd.cfg |    1 +
>   meta/cfg/kernel-cache/features/usb/uhci-hcd.scc |    6 ++++++
>   meta/cfg/kernel-cache/features/usb/xhci-hcd.cfg |    1 +
>   meta/cfg/kernel-cache/features/usb/xhci-hcd.scc |    6 ++++++
>   14 files changed, 46 insertions(+), 6 deletions(-)
>   create mode 100644 meta/cfg/kernel-cache/features/amt/mei/mei.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/amt/mei/mei.scc
>   create mode 100644 meta/cfg/kernel-cache/features/usb/base.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/usb/base.scc
>   create mode 100644 meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/usb/ehci-hcd.scc
>   create mode 100644 meta/cfg/kernel-cache/features/usb/ohci-hcd.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/usb/ohci-hcd.scc
>   create mode 100644 meta/cfg/kernel-cache/features/usb/uhci-hcd.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/usb/uhci-hcd.scc
>   create mode 100644 meta/cfg/kernel-cache/features/usb/xhci-hcd.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/usb/xhci-hcd.scc
>


