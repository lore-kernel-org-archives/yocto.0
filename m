Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D2A5E0044D
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 21:04:05 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q2E443ok024645
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 13 Mar 2012 21:04:03 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.21.131) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Tue, 13 Mar 2012 21:04:03 -0700
Message-ID: <4F6018B2.3070307@windriver.com>
Date: Wed, 14 Mar 2012 00:04:02 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: <kishore.k.bodke@intel.com>
References: <cover.1331661801.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1331661801.git.kishore.k.bodke@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [KERNEL][PATCH 0/1] meta: Create scc file for pvr merge
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
X-List-Received-Date: Wed, 14 Mar 2012 04:04:05 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-03-13 2:12 PM, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke<kishore.k.bodke@intel.com>
>
> Hi,
>
> This patch is to create a new scc file for merging the yocto/pvr branch for the targets
> with the appropriate hardware support.

Just so I'm clear, there are no current users of this in the tree, but
we want to stage this for future work, or work that isn't ready yet ?

I'll merge this into the 3.0 kernel and await your confirmation.

Cheers,

Bruce

>
> Adding it into the existing cedartrail.scc, the non-pvr build was not booting. So we had to separate it out.
>
> Thanks
> Kishore.
>
>
> The following changes since commit e559129b4a6f39f68b75141096b2d516cf7a7f35:
>
>    fri2: Add SMP and EFI support (2012-03-02 16:02:35 -0500)
>
> are available in the git repository at:
>    git://git.pokylinux.org/linux-yocto-2.6.37-contrib kishore/meta-cedartrail/pvr-merge
>    http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=kishore/meta-cedartrail/pvr-merge
>
> Kishore Bodke (1):
>    meta: Create scc file for pvr merge
>
>   .../bsp/cedartrail/cedartrail-pvr-merge.scc        |    1 +
>   1 files changed, 1 insertions(+), 0 deletions(-)
>   create mode 100644 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-pvr-merge.scc
>


