Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8DC744C800B4
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2011 00:01:27 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6D51QPd010190
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 12 Jul 2011 22:01:26 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.78) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Tue, 12 Jul 2011 22:01:26 -0700
Message-ID: <4E1D26A4.50401@windriver.com>
Date: Wed, 13 Jul 2011 01:01:24 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.18) Gecko/20110616 Thunderbird/3.1.11
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1310314386.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1310314386.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/3][KERNEL] linux-yocto-dev meta updates
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
X-List-Received-Date: Wed, 13 Jul 2011 05:01:27 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-07-10 12:25 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This patchset adds a new eg20t feature to linux-yocto-dev, and
> makes crownbay use it.
>
> It also adds the initial BSP infrastructure for a new BSP, Fish
> River Island II, which also uses the new feature.
>
> Please pull the following branches into linux-yocto-dev:
>
> Pull URL: git://git.yoctoproject.org/linux-yocto-2.6.37-contrib
>    Branch: tzanussi/linux-3.0/yocto/standard/fri2
>    Browse: http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/linux-3.0/yocto/standard/fri2
>
> Pull URL: git://git.yoctoproject.org/linux-yocto-2.6.37-contrib
>    Branch: tzanussi/linux-3.0/meta/fri2
>    Browse: http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/linux-3.0/meta/fri2

Everything has been merged to the dev kernel (along with
an update to 3.0-rc7), and the new BSP branch created. Take
it for a spin and lets see how it does.

Cheers,

Bruce

>
> Tom Zanussi (3):
>    meta: add eg20t feature
>    meta/crownbay: remove eg20t.cfg and use new eg20t feature instead
>    meta/fri2: create initial BSP infrastructure
>
>   meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc  |    2 +-
>   meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc |    7 ++
>   meta/cfg/kernel-cache/bsp/fri2/fri2.cfg          |   69 ++++++++++++++++++++++
>   meta/cfg/kernel-cache/bsp/fri2/fri2.scc          |   12 ++++
>   meta/cfg/kernel-cache/features/eg20t/eg20t.cfg   |   39 ++++++++++++
>   meta/cfg/kernel-cache/features/eg20t/eg20t.scc   |    1 +
>   6 files changed, 129 insertions(+), 1 deletions(-)
>   create mode 100644 meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
>   create mode 100644 meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
>   create mode 100644 meta/cfg/kernel-cache/bsp/fri2/fri2.scc
>   create mode 100644 meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/eg20t/eg20t.scc
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


