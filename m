Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DFCBE006D9
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 13:19:21 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q4TKJKW6001036
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 29 May 2012 13:19:20 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.20.148) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Tue, 29 May 2012 13:19:19 -0700
Message-ID: <4FC52F47.2030501@windriver.com>
Date: Tue, 29 May 2012 16:19:19 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1337981191.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337981191.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/2][KERNEL] new chiefriver BSP metadata
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
X-List-Received-Date: Tue, 29 May 2012 20:19:21 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-25 5:48 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This patchset implements the initial kernel side of the chiefriver
> BSP.
>
> It also adds a 'temporary' feature needed for turning on rc6 support
> from recipe-space.  The code contained in the rc6 feature is already
> upstream and this feature will be dropped in the next yocto kernel,
> but is needed for now in 3.2 - this is the most flexible way to add
> it while giving ourselves an easy way to drop it if it causes
> problems.
>
> Please pull into linux-yocto 3.2, and also create a new
> standard/default/common-pc-64/chiefriver branch for it.

branch created, and meta changes are merged. I've pushed these to the
3.2 kernel tree now.

I've also staged them in the upcoming 3.4 kernel.

I'll update SRCREVs in master myself later, but you can use them 
immediately.

Bruce

>
> Thanks,
>
> Tom
>
> The following changes since commit 49f931bc294d5b6be60502bbd448cff5aa766235:
>    Tom Zanussi (1):
>          meta/fishriver: remove redundant features and options
>
> are available in the git repository at:
>
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/chiefriver.v2
>    http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/chiefriver.v2
>
> Tom Zanussi (2):
>    chiefriver: create initial BSP infrastructure
>    meta: add tmp/rc6 feature
>
>   .../bsp/chiefriver/chiefriver-preempt-rt.scc       |   12 +++
>   .../bsp/chiefriver/chiefriver-standard.scc         |   11 +++
>   .../cfg/kernel-cache/bsp/chiefriver/chiefriver.cfg |   35 +++++++++
>   .../cfg/kernel-cache/bsp/chiefriver/chiefriver.scc |    7 ++
>   .../features/tmp/rc6/rc6-kernel-params.patch       |   81 ++++++++++++++++++++
>   meta/cfg/kernel-cache/features/tmp/rc6/rc6.scc     |    5 +
>   .../tmp/rc6/snb-disable-rc6p-fix-precedence.patch  |   26 ++++++
>   .../features/tmp/rc6/snb-disable-rc6p.patch        |   39 ++++++++++
>   .../features/tmp/rc6/snb-enable-rc6.patch          |   54 +++++++++++++
>   9 files changed, 270 insertions(+), 0 deletions(-)
>   create mode 100644 meta/cfg/kernel-cache/bsp/chiefriver/chiefriver-preempt-rt.scc
>   create mode 100644 meta/cfg/kernel-cache/bsp/chiefriver/chiefriver-standard.scc
>   create mode 100644 meta/cfg/kernel-cache/bsp/chiefriver/chiefriver.cfg
>   create mode 100644 meta/cfg/kernel-cache/bsp/chiefriver/chiefriver.scc
>   create mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/rc6-kernel-params.patch
>   create mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/rc6.scc
>   create mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/snb-disable-rc6p-fix-precedence.patch
>   create mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/snb-disable-rc6p.patch
>   create mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/snb-enable-rc6.patch
>


