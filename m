Return-Path: <Xin.Ouyang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E7F6E0083F
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2014 02:18:54 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s0KAIrKt024180
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2014 02:18:54 -0800 (PST)
Received: from Pascal-MacBookPro.local (128.224.159.178) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.347.0; Mon, 20 Jan 2014 02:18:53 -0800
Message-ID: <52DCF80B.5050404@windriver.com>
Date: Mon, 20 Jan 2014 18:18:51 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: <wenzong.fan@windriver.com>, <yocto@yoctoproject.org>,
	<mark.hatle@windriver.com>
References: <cover.1390206438.git.wenzong.fan@windriver.com>
In-Reply-To: <cover.1390206438.git.wenzong.fan@windriver.com>
X-TagToolbar-Keys: D20140120181851685
Subject: Re: [PATCH 0/2] remove PREFERRED_VERSION and update libselinux to 2.2.2
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
X-List-Received-Date: Mon, 20 Jan 2014 10:18:57 -0000
Content-Type: text/plain; charset="GB2312"
Content-Transfer-Encoding: 8bit

ÓÚ 14-1-20 ÏÂÎç5:27, wenzong.fan@windriver.com Ð´µÀ:
> From: Wenzong Fan <wenzong.fan@windriver.com>
> 
> * Remove PREFERRED_VERSION configs for selinux, they should be maintained
> in distro config files.
> 
> * Update libselinux to latest version 2.2.2 which released on on 2013-12-30.
> 
> The following changes since commit 3fee4a09cc26816862dacfb2081dc7e0fa7ca47e:
> 
>    psmisc: inherit enable-selinux and backport to fix build issue (2014-01-13 17:50:00 +0800)
> 
> are available in the git repository at:
> 
>    git://git.pokylinux.org/poky-contrib wenzong/selinux-update
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/selinux-update
> 
> Wenzong Fan (2):
>    selinux: remove PREFERRED_VERSION configs
>    libselinux: migrate SRC_URI to 2.2.2
> 
>   .../{libselinux_2.2.bb => libselinux_2.2.2.bb}     |    4 ++--
>   recipes-security/selinux/selinux_20131030.inc      |    7 -------
>   2 files changed, 2 insertions(+), 9 deletions(-)
>   rename recipes-security/selinux/{libselinux_2.2.bb => libselinux_2.2.2.bb} (74%)
> 

Merged to meta-selinux:master.

Thanks. :)

-- 
- Pascal

