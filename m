Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 176284C804E4
	for <yocto@yoctoproject.org>; Fri,  3 Jun 2011 00:02:12 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5352AC8005928
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 2 Jun 2011 22:02:11 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.21.7) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 2 Jun 2011 22:02:10 -0700
Message-ID: <4DE86ACF.3070701@windriver.com>
Date: Fri, 3 Jun 2011 01:02:07 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1306964823.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306964823.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/2][KERNEL] meta-intel: fishriver updates
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
X-List-Received-Date: Fri, 03 Jun 2011 05:02:12 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-06-01 6:05 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This patchset adds an ericsson 3g feature and also creates a separate
> bsp for fishriver, which had previously been hijacking crownbay.
>
> Please pull into linux-yocto-2.6.37.

Merged, and also propp'd to the -dev kernel.

Changes will be pushed out in the morning, I have a few
other pending merges to take care of at the same time.

Cheers,

Bruce

>
> Pull URL: git://git.yoctoproject.org/linux-yocto-2.6.37-contrib
>    Branch: tzanussi/yocto/standard/fishriver
>    Browse: http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/yocto/standard/fishriver
>
> Tom Zanussi (2):
>    meta: add ericsson-3g f5521gw feature
>    meta/fishriver: create initial BSP infrastructure
>
>   meta/cfg/kernel-cache/bsp/fishriver/eg20t.cfg      |   39 +++++++++++
>   .../bsp/fishriver/fishriver-standard.scc           |    7 ++
>   meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg  |   69 ++++++++++++++++++++
>   meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc  |   15 ++++
>   .../kernel-cache/features/ericsson-3g/f5521gw.cfg  |    3 +
>   .../kernel-cache/features/ericsson-3g/f5521gw.scc  |    3 +
>   6 files changed, 136 insertions(+), 0 deletions(-)
>   create mode 100644 meta/cfg/kernel-cache/bsp/fishriver/eg20t.cfg
>   create mode 100644 meta/cfg/kernel-cache/bsp/fishriver/fishriver-standard.scc
>   create mode 100644 meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg
>   create mode 100644 meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
>   create mode 100644 meta/cfg/kernel-cache/features/ericsson-3g/f5521gw.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/ericsson-3g/f5521gw.scc
>


