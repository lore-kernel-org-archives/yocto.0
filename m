Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 473684C800B4
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2011 00:11:30 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6D5BT8q011451
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 12 Jul 2011 22:11:29 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.78) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Tue, 12 Jul 2011 22:11:28 -0700
Message-ID: <4E1D28FE.5020903@windriver.com>
Date: Wed, 13 Jul 2011 01:11:26 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.18) Gecko/20110616 Thunderbird/3.1.11
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1310512705.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1310512705.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/2][KERNEL] Add and use iwlagn and mac80211 features
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
X-List-Received-Date: Wed, 13 Jul 2011 05:11:30 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-07-12 7:25 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This patchset adds a couple new features, iwlagn and mac80211 for the
> fri2 BSP.
>
> Please pull into linux-yocto-dev.
>
> Pull URL: git://git.yoctoproject.org/linux-yocto-2.6.37-contrib
>    Branch: tzanussi/linux-3.0/meta/iwlagn
>    Browse: http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/linux-3.0/meta/iwlagn

And these are pushed out as well.

Bruce

>
> Tom Zanussi (2):
>    meta: add mac80211 and iwlagn features
>    meta-fri2: use iwlagn feature
>
>   meta/cfg/kernel-cache/bsp/fri2/fri2.scc            |    1 +
>   meta/cfg/kernel-cache/features/iwlagn/iwlagn.cfg   |    4 ++++
>   meta/cfg/kernel-cache/features/iwlagn/iwlagn.scc   |    3 +++
>   .../kernel-cache/features/mac80211/mac80211.cfg    |    5 +++++
>   .../kernel-cache/features/mac80211/mac80211.scc    |    1 +
>   5 files changed, 14 insertions(+), 0 deletions(-)
>   create mode 100644 meta/cfg/kernel-cache/features/iwlagn/iwlagn.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/iwlagn/iwlagn.scc
>   create mode 100644 meta/cfg/kernel-cache/features/mac80211/mac80211.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/mac80211/mac80211.scc
>


