Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6977E006D9
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 13:19:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q4TKJn8v027151
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 29 May 2012 13:19:49 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.20.148) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Tue, 29 May 2012 13:19:48 -0700
Message-ID: <4FC52F63.9070904@windriver.com>
Date: Tue, 29 May 2012 16:19:47 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1337984389.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1337984389.git.dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/6][linux-yocto-3.2] fri2: update BSP configuration
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
X-List-Received-Date: Tue, 29 May 2012 20:19:51 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-25 6:20 PM, Darren Hart wrote:
> The following changes since commit 49f931bc294d5b6be60502bbd448cff5aa766235:
>
>    meta/fishriver: remove redundant features and options (2012-05-14 17:10:36 -0500)
>
> are available in the git repository at:
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib dvhart/meta/fri2
>    http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=dvhart/meta/fri2
>
> Darren Hart (6):
>    fri2: Configuration update (usb, wifi, i2c)
>    iwlwifi: Add a feature for iwlwifi
>    iwlagn: Correct a comment typo
>    fri2 update: drop NETDEVICE, e1xxx, usb-mass-storage, add iwlwifi
>      feature
>    fri2: add usb-mass-storage to standard and preempt-rt
>    fri2: update base config

I've pushed these to the 3.2 kernel tree now. They are on top of the 
3.2.18 stable update.

I've also staged them in the upcoming 3.4 kernel.

I'll update SRCREVs in master myself later, but you can use them 
immediately.

Bruce

>
>   meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc |    1 +
>   meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc   |    1 +
>   meta/cfg/kernel-cache/bsp/fri2/fri2.cfg            |   21 +++++++++----------
>   meta/cfg/kernel-cache/bsp/fri2/fri2.scc            |    7 ++---
>   meta/cfg/kernel-cache/features/iwlagn/iwlagn.scc   |    2 +-
>   meta/cfg/kernel-cache/features/iwlwifi/iwlwifi.cfg |    6 +++++
>   meta/cfg/kernel-cache/features/iwlwifi/iwlwifi.scc |    6 +++++
>   7 files changed, 28 insertions(+), 16 deletions(-)
>   create mode 100644 meta/cfg/kernel-cache/features/iwlwifi/iwlwifi.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/iwlwifi/iwlwifi.scc
>


