Return-Path: <Xin.Ouyang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E37B0E003D7
	for <yocto@yoctoproject.org>; Tue, 28 Jan 2014 00:42:54 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s0S8gr1N022014
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 28 Jan 2014 00:42:53 -0800 (PST)
Received: from Pascal-MacBookPro.local (128.224.159.178) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.347.0; Tue, 28 Jan 2014 00:42:52 -0800
Message-ID: <52E76D89.3060609@windriver.com>
Date: Tue, 28 Jan 2014 16:42:49 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: <wenzong.fan@windriver.com>, <yocto@yoctoproject.org>,
	<mark.hatle@windriver.com>
References: <cover.1390895404.git.wenzong.fan@windriver.com>
In-Reply-To: <cover.1390895404.git.wenzong.fan@windriver.com>
X-TagToolbar-Keys: D20140128164249210
Subject: Re: [meta-selinux][PATCH 0/1] refpolicy: Allow ping to get/set capabilities
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 28 Jan 2014 08:42:57 -0000
Content-Type: text/plain; charset="GB2312"
Content-Transfer-Encoding: 8bit

ÓÚ 14-1-28 ÏÂÎç3:54, wenzong.fan@windriver.com Ð´µÀ:
> From: Wenzong Fan <wenzong.fan@windriver.com>
> 
> When ping is installed with capabilities instead of being marked setuid,
> then the ping_t domain needs to be allowed to getcap/setcap.
> 
> This patch was backported from upstream.
> 
> The following changes since commit 271955d346f305b196f069d9dc46db16c43678de:
> 
>    refpolicy: fix real path for swapoff (2014-01-28 15:20:19 +0800)
> 
> are available in the git repository at:
> 
>    git://git.pokylinux.org/poky-contrib wenzong/fix-ping
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/fix-ping
> 
> Wenzong Fan (1):
>    refpolicy: Allow ping to get/set capabilities
> 
>   .../Allow-ping-to-get-set-capabilities.patch       |   32 ++++++++++++++++++++
>   .../refpolicy/refpolicy_2.20130424.inc             |    4 +++
>   2 files changed, 36 insertions(+)
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/Allow-ping-to-get-set-capabilities.patch
> 

Merged, thanks.

-- 
- Pascal

