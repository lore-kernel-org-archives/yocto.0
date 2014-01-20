Return-Path: <Xin.Ouyang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EDFFE0083F
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2014 02:29:11 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s0KAT9bK025527
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2014 02:29:09 -0800 (PST)
Received: from Pascal-MacBookPro.local (128.224.159.178) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.347.0; Mon, 20 Jan 2014 02:29:09 -0800
Message-ID: <52DCFA73.8070608@windriver.com>
Date: Mon, 20 Jan 2014 18:29:07 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: <wenzong.fan@windriver.com>, <yocto@yoctoproject.org>,
	<mark.hatle@windriver.com>
References: <cover.1390212504.git.wenzong.fan@windriver.com>
In-Reply-To: <cover.1390212504.git.wenzong.fan@windriver.com>
X-TagToolbar-Keys: D20140120182907146
Subject: Re: [meta-selinux][PATCH 0/2] libsemanage-native: remove audit-native dependency
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
X-List-Received-Date: Mon, 20 Jan 2014 10:29:17 -0000
Content-Type: text/plain; charset="GB2312"
Content-Transfer-Encoding: 8bit

ÓÚ 14-1-20 ÏÂÎç6:15, wenzong.fan@windriver.com Ð´µÀ:
> From: Wenzong Fan <wenzong.fan@windriver.com>
> 
> * native tools don't need audit support;
> * audit 2.3.2 or laters require kernel headers >= 2.6.30, this causes
>    audit-native can't be built on some older distributions.
> 
> The following changes since commit 3fee4a09cc26816862dacfb2081dc7e0fa7ca47e:
> 
>    psmisc: inherit enable-selinux and backport to fix build issue (2014-01-13 17:50:00 +0800)
> 
> are available in the git repository at:
> 
>    git://git.pokylinux.org/poky-contrib wenzong/disable-audit
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/disable-audit
> 
> Wenzong Fan (2):
>    Revert "libsemanage: add audit dependency"
>    libsemanage-native: remove audit-native dependency
> 
>   recipes-security/audit/audit_2.3.2.bb              |    8 +-
>   recipes-security/selinux/libsemanage.inc           |    5 +-
>   ...ibsemanage-allow-to-disable-audit-support.patch |  126 ++++++++++++++++++++
>   recipes-security/selinux/libsemanage_2.2.bb        |    1 +
>   recipes-security/selinux/libsemanage_git.bb        |    1 +
>   5 files changed, 133 insertions(+), 8 deletions(-)
>   create mode 100644 recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
> 

Merged to meta-selinux:master.

Thanks. :)

-- 
- Pascal

