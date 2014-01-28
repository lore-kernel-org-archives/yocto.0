Return-Path: <Xin.Ouyang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65E46E006F3
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2014 23:21:43 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s0S7Lh3J013588
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2014 23:21:43 -0800 (PST)
Received: from Pascal-MacBookPro.local (128.224.159.178) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.347.0; Mon, 27 Jan 2014 23:21:42 -0800
Message-ID: <52E75A85.9020000@windriver.com>
Date: Tue, 28 Jan 2014 15:21:41 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: <wenzong.fan@windriver.com>, <yocto@yoctoproject.org>,
	<mark.hatle@windriver.com>
References: <cover.1390815368.git.wenzong.fan@windriver.com>
In-Reply-To: <cover.1390815368.git.wenzong.fan@windriver.com>
X-TagToolbar-Keys: D20140128152140983
Subject: Re: [meta-selinux][PATCH 0/2] refpolicy: fix real path for cpio/swapoff
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
X-List-Received-Date: Tue, 28 Jan 2014 07:21:46 -0000
Content-Type: text/plain; charset="GB2312"
Content-Transfer-Encoding: 8bit

ÓÚ 14-1-28 ÉÏÎç9:52, wenzong.fan@windriver.com Ð´µÀ:
> From: Wenzong Fan <wenzong.fan@windriver.com>
> 
> The following changes since commit 8ce3b9d0d20c79e0d6bba325f6eedbd11febc101:
> 
>    refpolicy: fix new symlink for policy.kern (2014-01-26 17:44:56 +0800)
> 
> are available in the git repository at:
> 
>    git://git.pokylinux.org/poky-contrib wenzong/ref-fix
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/ref-fix
> 
> Wenzong Fan (2):
>    refpolicy: fix real path for cpio
>    refpolicy: fix real path for swapoff
> 
>   .../refpolicy-2.20130424/poky-fc-fstools.patch     |   19 ++++++++-------
>   .../refpolicy-2.20130424/poky-fc-rpm.patch         |   25 ++++++++++++++++++++
>   .../refpolicy/refpolicy_2.20130424.inc             |    1 +
>   3 files changed, 36 insertions(+), 9 deletions(-)
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-rpm.patch
> 


Merged. Thanks. :)

- Pascal

-- 
- Pascal

