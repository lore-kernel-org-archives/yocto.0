Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5383E004E9
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2011 13:59:40 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p94Kxa0u006977
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 4 Oct 2011 13:59:36 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 4 Oct 2011 13:59:36 -0700
Message-ID: <4E8B73B7.70008@windriver.com>
Date: Tue, 4 Oct 2011 16:59:35 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1317740914.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1317740914.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/4][KERNEL] enable booting from iso
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
X-List-Received-Date: Tue, 04 Oct 2011 20:59:41 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-10-04 11:40 AM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> A few of the 32-bit meta-intel BSPs need the boot-live config turned on
> in order boot from iso images.  This patchset does that for crownbay,
> emenlow, fishriver, and fri2.
>
> Tested on crownbay.

merged and out in the kernel repo. SRCREV update is arriving
shortly to an inbox near you.

Bruce

>
> Please pull into linux-yocto-3.0/meta.
>
> Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib
>    Branch: tzanussi/isoboot-fixes-2
>    Browse: http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/isoboot-fixes-2
>
> Tom Zanussi (4):
>    meta/crownbay: enable booting from iso
>    meta/emenlow: enable booting from iso
>    meta/fishriver: enable booting from iso
>    meta/fri2: enable booting from iso
>
>   meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg   |    3 +++
>   meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc   |    1 +
>   meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg     |    3 +++
>   meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc     |    1 +
>   meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg |    3 +++
>   meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc |    1 +
>   meta/cfg/kernel-cache/bsp/fri2/fri2.cfg           |    3 +++
>   meta/cfg/kernel-cache/bsp/fri2/fri2.scc           |    1 +
>   8 files changed, 16 insertions(+), 0 deletions(-)
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


