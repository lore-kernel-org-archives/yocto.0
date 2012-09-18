Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A368E002AC;
	Tue, 18 Sep 2012 05:22:03 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q8ICM1tK020545
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 18 Sep 2012 05:22:01 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Tue, 18 Sep 2012 05:22:01 -0700
Message-ID: <5058675D.9020707@windriver.com>
Date: Tue, 18 Sep 2012 08:21:49 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Mihai Lindner <mihaix.lindner@linux.intel.com>
References: <cover.1347946602.git.mihaix.lindner@linux.intel.com>
In-Reply-To: <cover.1347946602.git.mihaix.lindner@linux.intel.com>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>,
	Development list for the linux-yocto repositories
	<linux-yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] [linux-yocto-3.0] boot-live.cfg: enable BLK_DEV_INITRD in kernel
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
X-List-Received-Date: Tue, 18 Sep 2012 12:22:03 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-09-18 01:59 AM, Mihai Lindner wrote:
> Please pull into linux-yocto-3.0, meta.
>

Adding linux-yocto, Darren and Tom.

This looks fine to me, and we should consider it for all the repositories,
not just 3.0.

Tom/Darren. Any side effects you can think of for this change ?

Bruce

> Added BLK_DEV_INITRD in boot-live.cfg for linux-yocto-3.0, meta branch.
> Cedartrail (at least) cannot boot live from ISO image due to
> BLK_DEV_INITRD missing:
> "VFS: Cannot open root device "ram0" or unkown-block(0,0)"
> Should fix #3050
>
> [YOCTO #3050]
>
> Signed-off-by: Mihai Lindner<mihaix.lindner@linux.intel.com>
> ---
>
> The following changes since commit bf5ee4945ee6d748e6abe16356f2357f76b5e2f0:
>
>    meta: rename virto.scc to virtio.scc (2012-08-18 22:09:35 -0400)
>
> are available in the git repository at:
>    git://git.yoctoproject.org/poky-contrib mihai/linux-yocto-3.0/meta
>
> Mihai Lindner (1):
>        boot-live.cfg: enable BLK_DEV_INITRD in kernel
>
>   meta/cfg/kernel-cache/cfg/boot-live.cfg |    2 ++
>   1 files changed, 2 insertions(+), 0 deletions(-)
>
> Mihai Lindner (1):
>    boot-live.cfg: enable BLK_DEV_INITRD in kernel
>
>   meta/cfg/kernel-cache/cfg/boot-live.cfg |    2 ++
>   1 files changed, 2 insertions(+), 0 deletions(-)
>


