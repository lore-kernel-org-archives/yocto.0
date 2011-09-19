Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BD89E00522
	for <yocto@yoctoproject.org>; Sun, 18 Sep 2011 20:48:48 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p8J3mlNX015378
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 18 Sep 2011 20:48:47 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.159) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Sun, 18 Sep 2011 20:48:46 -0700
Message-ID: <4E76BB9E.3060507@windriver.com>
Date: Sun, 18 Sep 2011 23:48:46 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.22) Gecko/20110902 Thunderbird/3.1.14
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1316402566.git.tom.zanussi@intel.com>
	<9c5fbbb4a372de910cccb6b9065c8e1d6bac6637.1316402566.git.tom.zanussi@intel.com>
In-Reply-To: <9c5fbbb4a372de910cccb6b9065c8e1d6bac6637.1316402566.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1][KERNEL] meta: add blktrace feature
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
X-List-Received-Date: Mon, 19 Sep 2011 03:48:48 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-18 11:34 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> Add a 'blktrace feature' that turns on kernel support for blktrace, a
> block I/O tracing tool.  Added to 'standard' alongside similar tracing
> tool config.

Ack'd. I've merged this to the 3.0 tree, and the -dev tree so it will
automatically appear in future trees.

I'll send a pull request for this on Monday.

Bruce

>
> Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> ---
>   .../kernel-cache/features/blktrace/blktrace.cfg    |    1 +
>   .../kernel-cache/features/blktrace/blktrace.scc    |    1 +
>   meta/cfg/kernel-cache/ktypes/standard/standard.scc |    3 +++
>   3 files changed, 5 insertions(+), 0 deletions(-)
>   create mode 100644 meta/cfg/kernel-cache/features/blktrace/blktrace.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/blktrace/blktrace.scc
>
> diff --git a/meta/cfg/kernel-cache/features/blktrace/blktrace.cfg b/meta/cfg/kernel-cache/features/blktrace/blktrace.cfg
> new file mode 100644
> index 0000000..3e61f2b
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/features/blktrace/blktrace.cfg
> @@ -0,0 +1 @@
> +CONFIG_BLK_DEV_IO_TRACE=y
> diff --git a/meta/cfg/kernel-cache/features/blktrace/blktrace.scc b/meta/cfg/kernel-cache/features/blktrace/blktrace.scc
> new file mode 100644
> index 0000000..945714b
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/features/blktrace/blktrace.scc
> @@ -0,0 +1 @@
> +kconf non-hardware blktrace.cfg
> diff --git a/meta/cfg/kernel-cache/ktypes/standard/standard.scc b/meta/cfg/kernel-cache/ktypes/standard/standard.scc
> index b4e22d0..c8654cc 100644
> --- a/meta/cfg/kernel-cache/ktypes/standard/standard.scc
> +++ b/meta/cfg/kernel-cache/ktypes/standard/standard.scc
> @@ -14,6 +14,9 @@ tag kgdb
>
>   include features/lttng/lttng.scc
>
> +include features/blktrace/blktrace.scc
> +tag blktrace
> +
>   include features/systemtap/systemtap.scc
>   tag systemtap
>


