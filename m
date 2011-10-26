Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66017E006B4
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2011 07:39:49 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p9QEdlDa015785
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 26 Oct 2011 07:39:47 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 26 Oct 2011 07:39:47 -0700
Message-ID: <4EA81BAF.6000809@windriver.com>
Date: Wed, 26 Oct 2011 10:39:43 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1319552233.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1319552233.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/4][KERNEL] more bsp cleanup and new power/intel feature
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
X-List-Received-Date: Wed, 26 Oct 2011 14:39:49 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-10-25 03:17 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This patchset adds a new power/intel feature containing power-related
> config items for intel bsps and initially makes sugarbay and crownbay
> use it.
>
> It also removes the igb feature from common-pc-64, which shouldn't
> be there and was responsible for Yocto bug #1188.
>
> Fixes [YOCTO #1188]
>
> Please pull into linux-yocto-3.0 and linux-yocto-dev.

Looks good. Do you agree that this would be part
of any 1.1 point release as well, or is this purely a
1.2/cleanup activity ? If it's the latter, I need to wait
for the 1.1 sustaining kernel to be created.

Bruce

>
> Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib
>    Branch: tzanussi/bsp-cleanup2-v0
>    Browse: http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/bsp-cleanup2-v0
>
> Tom Zanussi (4):
>    meta: add power feature
>    meta/sugarbay: use power/intel feature
>    meta/crownbay: use power/intel feature
>    meta/common-pc-64: remove igb
>
>   .../kernel-cache/bsp/common-pc-64/common-pc-64.scc |    1 -
>   meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |    1 +
>   meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc    |    1 +
>   meta/cfg/kernel-cache/features/power/intel.cfg     |   28 ++++++++++++++++++++
>   meta/cfg/kernel-cache/features/power/intel.scc     |    1 +
>   5 files changed, 31 insertions(+), 1 deletions(-)
>   create mode 100644 meta/cfg/kernel-cache/features/power/intel.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/power/intel.scc
>


