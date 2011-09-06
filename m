Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B33E8E0071A
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2011 13:30:36 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p86KUabJ015609
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 6 Sep 2011 13:30:36 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 6 Sep 2011 13:30:36 -0700
Message-ID: <4E6682E5.5070907@windriver.com>
Date: Tue, 6 Sep 2011 16:30:29 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: <nitin.a.kamble@intel.com>
References: <cover.1315338837.git.nitin.a.kamble@intel.com>
	<b33495af418b4fe8b8a2c6ba1ff8a67e84dd0a29.1315338837.git.nitin.a.kamble@intel.com>
In-Reply-To: <b33495af418b4fe8b8a2c6ba1ff8a67e84dd0a29.1315338837.git.nitin.a.kamble@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] btrfs: Add a new kernel feature to enable the	btrfs support
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
X-List-Received-Date: Tue, 06 Sep 2011 20:30:37 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-06 03:56 PM, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble<nitin.a.kamble@intel.com>

Looks good. If we are merging this as config only, I've been
putting them in meta/cfg/kernel-cache/cfg/

So I relocated this configuration to that directory. I'll have
it pushed out in the next day or so (I'm getting on a plane
shortly).

Bruce

>
> Signed-off-by: Nitin A Kamble<nitin.a.kamble@intel.com>
> ---
>   meta/cfg/kernel-cache/features/btrfs/btrfs.cfg |    1 +
>   meta/cfg/kernel-cache/features/btrfs/btrfs.scc |    1 +
>   2 files changed, 2 insertions(+), 0 deletions(-)
>   create mode 100644 meta/cfg/kernel-cache/features/btrfs/btrfs.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/btrfs/btrfs.scc
>
> diff --git a/meta/cfg/kernel-cache/features/btrfs/btrfs.cfg b/meta/cfg/kernel-cache/features/btrfs/btrfs.cfg
> new file mode 100644
> index 0000000..605c183
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/features/btrfs/btrfs.cfg
> @@ -0,0 +1 @@
> +CONFIG_BTRFS_FS=y
> diff --git a/meta/cfg/kernel-cache/features/btrfs/btrfs.scc b/meta/cfg/kernel-cache/features/btrfs/btrfs.scc
> new file mode 100644
> index 0000000..cf18a2e
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/features/btrfs/btrfs.scc
> @@ -0,0 +1 @@
> +kconf non-hardware btrfs.cfg


