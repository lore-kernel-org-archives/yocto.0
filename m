Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99F6EE00596
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 15:29:37 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q43MTawE000483
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 3 May 2012 15:29:36 -0700 (PDT)
Received: from [128.224.23.120] (128.224.23.120) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 3 May 2012 15:29:36 -0700
Message-ID: <4FA306CC.3060308@windriver.com>
Date: Thu, 3 May 2012 18:29:32 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1335908646.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1335908646.git.dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1][linux-yocto-3.2] pch_gbe: Do not abort probe on bad MAC
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
X-List-Received-Date: Thu, 03 May 2012 22:29:37 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-01 06:14 PM, Darren Hart wrote:
> This somehow missed the 3.0 to 3.2 update. It is required for networking
> on the sys940x BSP. Please apply to standard/base and derived branches.

The somehow .. is that I thought this made 3.2, and it didn't. This is 
merged
here, and when I get back to a decent internet connection. It'll appear
on the servers.

Bruce

>
> The following changes since commit 900717638fab9d2b25be35f3612ccfd95ceb31d1:
>
>    Merge branch 'yocto/standard/base' into standard/base (2012-03-16 10:43:42 -0400)
>
> are available in the git repository at:
>
>    git://git.infradead.org/users/dvhart/linux-yocto-3.2.git dvhart/standard/pch_gbe
>    http://git.infradead.org/users/dvhart/linux-yocto-3.2.git/shortlog/refs/heads/dvhart/standard/pch_gbe
>
> Darren Hart (1):
>    pch_gbe: Do not abort probe on bad MAC
>
>   .../net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c   |   17 ++++++++++++++---
>   1 files changed, 14 insertions(+), 3 deletions(-)
>


