Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1FC9E00728
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 21:55:35 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pB85tXrc027052
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 7 Dec 2011 21:55:34 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.22.35) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Wed, 7 Dec 2011 21:55:33 -0800
Message-ID: <4EE05154.4000906@windriver.com>
Date: Thu, 8 Dec 2011 00:55:32 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.24) Gecko/20111103 Thunderbird/3.1.16
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1323296855.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1323296855.git.dvhart@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1][linux-yocto-3.0] EFI config fragments
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
X-List-Received-Date: Thu, 08 Dec 2011 05:55:36 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-12-07 5:50 PM, Darren Hart wrote:
> The following changes since commit 67ce7623909cef63927fd145026aaf371cf4abf1:
>
>    meta: bumping kver to v3.0.10 (2011-11-23 00:33:19 -0500)

Merged. Will push it out in the morning.

Bruce

>
> are available in the git repository at:
>    git://git.infradead.org/users/dvhart/linux-yocto-3.0.git dvhart/meta/efi
>    http://git.infradead.org/users/dvhart/linux-yocto-3.0.git/shortlog/refs/heads/dvhart/meta/efi
>
> Darren Hart (1):
>    Add EFI scc and cfg files
>
>   meta/cfg/kernel-cache/cfg/efi-ext.cfg |   14 ++++++++++++++
>   meta/cfg/kernel-cache/cfg/efi-ext.scc |    2 ++
>   meta/cfg/kernel-cache/cfg/efi.cfg     |    8 ++++++++
>   meta/cfg/kernel-cache/cfg/efi.scc     |    1 +
>   4 files changed, 25 insertions(+), 0 deletions(-)
>   create mode 100644 meta/cfg/kernel-cache/cfg/efi-ext.cfg
>   create mode 100644 meta/cfg/kernel-cache/cfg/efi-ext.scc
>   create mode 100644 meta/cfg/kernel-cache/cfg/efi.cfg
>   create mode 100644 meta/cfg/kernel-cache/cfg/efi.scc
>


