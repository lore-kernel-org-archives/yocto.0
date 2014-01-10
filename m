Return-Path: <Xin.Ouyang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A67B7E00855
	for <yocto@yoctoproject.org>; Thu,  9 Jan 2014 18:00:23 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s0A20MuL008495
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 9 Jan 2014 18:00:22 -0800 (PST)
Received: from Pascal-MacBookPro.local (128.224.159.178) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.347.0; Thu, 9 Jan 2014 18:00:22 -0800
Message-ID: <52CF5434.4030600@windriver.com>
Date: Fri, 10 Jan 2014 10:00:20 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: <wenzong.fan@windriver.com>, <yocto@yoctoproject.org>,
	<mark.hatle@windriver.com>
References: <cover.1389235842.git.wenzong.fan@windriver.com>
In-Reply-To: <cover.1389235842.git.wenzong.fan@windriver.com>
X-TagToolbar-Keys: D20140110100020805
Subject: Re: [meta-selinux][PATCH 0/1] refpolicy: fix real path for udevd
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
X-List-Received-Date: Fri, 10 Jan 2014 02:00:23 -0000
Content-Type: text/plain; charset="GB2312"
Content-Transfer-Encoding: 8bit

ÓÚ 14-1-9 ÉÏÎç10:54, wenzong.fan@windriver.com Ð´µÀ:
> From: Wenzong Fan <wenzong.fan@windriver.com>
> 
> In Yocto the real path for udevd is /lib/udev/udevd, this patch fixes
> the init issues like:
>      
>      udevd[87]: setfilecon /dev/vcsa2 failed: Operation not permitted
>      udevd[89]: setfilecon /dev/fb0 failed: Operation not permitted
> 
> The following changes since commit 2209cb5fc21c1ad5a7471897528ed64170f70219:
> 
>    policy: Create compressed_policy distro feature (2013-12-05 09:03:41 -0500)
> 
> are available in the git repository at:
> 
>    git://git.pokylinux.org/poky-contrib wenzong/fix-udevd-path
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/fix-udevd-path
> 
> Wenzong Fan (1):
>    refpolicy: fix real path for udevd
> 
>   .../refpolicy-2.20130424/poky-fc-udevd.patch       |   27 ++++++++++++++++++++
>   .../refpolicy/refpolicy_2.20130424.inc             |    1 +
>   2 files changed, 28 insertions(+)
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-udevd.patch
> 

Tech ok. Thank you. :)

-- 
- Pascal

