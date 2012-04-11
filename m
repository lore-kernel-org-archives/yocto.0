Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB984E013A6
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 06:25:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q3BDP0XP011214
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 11 Apr 2012 06:25:00 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 11 Apr 2012 06:25:00 -0700
Message-ID: <4F858624.8080708@windriver.com>
Date: Wed, 11 Apr 2012 09:24:52 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: <kishore.k.bodke@intel.com>
References: <cover.1334103101.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1334103101.git.kishore.k.bodke@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] [KERNEL] Add igb driver to Romley Machine
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
X-List-Received-Date: Wed, 11 Apr 2012 13:25:01 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-04-10 08:15 PM, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke<kishore.k.bodke@intel.com>
>
> Romley machine has builtin 82580 Giga bit Ethernet
> Controller. Adding the relavent igb nic driver.

Looks fine for the tree, no risk to other BSPs. Correct me
if you'd rather this wait until after the 1.2 release.

I'll have this pushed out later today.

Cheers,

Bruce

>
> Please pull into linux-yocto-3.2/meta
>
> Thanks
> Kishore.
>
> The following changes since commit 59f350ec3794e19fa806c1b73749d851f8ebf364:
>
>    meta: Add common-pc-tiny.scc (2012-03-31 23:43:34 -0400)
>
> are available in the git repository at:
>    git://git.pokylinux.org/linux-yocto-2.6.37-contrib kishore/romley/meta
>    http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=kishore/romley/meta
>
> Kishore Bodke (1):
>    meta: Add igb.scc to Romley
>
>   meta/cfg/kernel-cache/bsp/romley/romley.scc |    3 +--
>   1 files changed, 1 insertions(+), 2 deletions(-)
>


