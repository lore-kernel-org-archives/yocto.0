Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBC27E013B0
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2011 13:06:53 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pA8L6nIg006412
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 8 Nov 2011 13:06:49 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 8 Nov 2011 13:06:49 -0800
Message-ID: <4EB999E3.7020600@windriver.com>
Date: Tue, 8 Nov 2011 16:06:43 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: <kishore.k.bodke@intel.com>
References: <cover.1320777520.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1320777520.git.kishore.k.bodke@intel.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [PATCH 0/1] [KERNEL] Add rt support to meta branch for romley.
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
X-List-Received-Date: Tue, 08 Nov 2011 21:06:54 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-11-08 02:22 PM, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke<kishore.k.bodke@intel.com>
>
> Hi All,
>
> This is the patch to support rt in the kernel meta branch for romley.
>
> Please pull into linux-yocto-3.0/meta and linux-yocto-dev/meta.

pull into my local repos, I'll have an update for this later today
or early tomorrow.

Bruce

>
>
> Thanks
> Kishore.
>
> The following changes since commit 4095bb597a7bcd647856aa35b5fb8637ed7ff975:
>
>    meta/common-pc-64: remove igb (2011-11-02 16:23:13 -0400)
>
> are available in the git repository at:
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib kishore/meta-romley
>    http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=kishore/meta-romley
>
> Kishore Bodke (1):
>    meta/romley: Add rt support
>    Add rt support to the meta branch for romley.
>
>   .../kernel-cache/bsp/romley/romley-preempt-rt.scc  |    8 ++++++++
>   1 files changed, 8 insertions(+), 0 deletions(-)
>   create mode 100644 meta/cfg/kernel-cache/bsp/romley/romley-preempt-rt.scc
>


