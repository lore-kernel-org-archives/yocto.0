Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B1C7E00596
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 15:46:22 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q43MkLWB028824
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 3 May 2012 15:46:21 -0700 (PDT)
Received: from [147.11.117.16] (147.11.117.16) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 3 May 2012 15:46:20 -0700
Message-ID: <4FA30ABA.5020809@windriver.com>
Date: Thu, 3 May 2012 18:46:18 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1335908926.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1335908926.git.dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/7][linux-yocto-3.2] fri2 and sys940x meta updates
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
X-List-Received-Date: Thu, 03 May 2012 22:46:22 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-01 06:13 PM, Darren Hart wrote:
> Please apply to linux-yocto-3.2 meta branch.
>
> The following changes since commit b14a08f5c7b469a5077c10942f4e1aec171faa9d:
>
>    meta: Clean up BSPs kernel config (2012-04-17 16:04:15 -0400)
>
> are available in the git repository at:
>    git://git.infradead.org/users/dvhart/linux-yocto-3.2.git dvhart/meta/dev
>    http://git.infradead.org/users/dvhart/linux-yocto-3.2.git/shortlog/refs/heads/dvhart/meta/dev

queued. I'll push these when I get a better 'net connection.

Bruce

>
> Darren Hart (7):
>    fri2: Use emgd-1.10 feature and branch
>    fri2: Cleanup fri2-$KTYPE.scc files re efi-ext.scc
>    sys940x: Move emgd-1.10 data to the standard scc file
>    sys940x: Add efi-ext to standard and preempt-rt configs
>    sys940x: Add common standard and preempt-rt features
>    sys940x: Use PHYSICAL_START of 0x200000 to boot
>    sys940x: Cleanup sys940x.scc
>
>   meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc |    2 +-
>   meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc   |    6 +++---
>   .../bsp/sys940x/sys940x-preempt-rt.scc             |    8 ++++++++
>   .../kernel-cache/bsp/sys940x/sys940x-standard.scc  |   12 ++++++++++++
>   meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg      |    4 ++++
>   meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc      |   10 ++--------
>   6 files changed, 30 insertions(+), 12 deletions(-)
>


