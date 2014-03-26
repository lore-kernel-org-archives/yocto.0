Return-Path: <Xin.Ouyang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17A43E00B4C
	for <yocto@yoctoproject.org>; Tue, 25 Mar 2014 22:36:48 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s2Q5alnQ029467
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 25 Mar 2014 22:36:48 -0700 (PDT)
Received: from Pascal-MacBookPro.local (128.224.158.235) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.169.1; Tue, 25 Mar 2014 22:36:47 -0700
Message-ID: <5332676D.5010502@windriver.com>
Date: Wed, 26 Mar 2014 13:36:45 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: <wenzong.fan@windriver.com>, <yocto@yoctoproject.org>,
	<mark.hatle@windriver.com>, <Joe.MacDonald@windriver.com>
References: <cover.1395709062.git.wenzong.fan@windriver.com>
In-Reply-To: <cover.1395709062.git.wenzong.fan@windriver.com>
X-TagToolbar-Keys: D20140326133645476
Subject: Re: [meta-selinux][PATCH 0/4] add targeted/minimum policy and some updates
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
X-List-Received-Date: Wed, 26 Mar 2014 05:36:49 -0000
Content-Type: text/plain; charset="GB2312"
Content-Transfer-Encoding: 8bit

ÓÚ 14-3-25 ÉÏÎç9:07, wenzong.fan@windriver.com Ð´µÀ:
> From: Wenzong Fan <wenzong.fan@windriver.com>
> 
> Changes:
> * backport tmpfs_t patch from upstream;
> * add rules for /var/log symlink on poky;
> * add targeted policy type
> * add minimum targeted policy
> 
> The following changes since commit a6079a43719e79e12a57e609923a0cccdba06916:
> 
>    refpolicy: fix real path for su.shadow (2014-02-13 10:52:07 -0500)
> 
> are available in the git repository at:
> 
>    git://git.pokylinux.org/poky-contrib wenzong/ref-minimum
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/ref-minimum
> 
> Wenzong Fan (4):
>    refpolicy: associate tmpfs_t (shm) to device_t (devtmpfs) file
>      systems
>    refpolicy: add rules for /var/log symlink on poky
>    refpolicy: add targeted policy type
>    refpolicy: add minimum targeted policy
> 
>   ...associate-tmpfs_t-shm-to-device_t-devtmpf.patch |   30 +++
>   ...ky-policy-add-rules-for-syslogd_t-symlink.patch |   30 +++
>   ...rules-for-var-log-symlink-audisp_remote_t.patch |   29 +++
>   .../refpolicy/refpolicy-minimum_2.20130424.bb      |   46 +++++
>   ...olicy-fix-optional-issue-on-sysadm-module.patch |   60 ++++++
>   .../refpolicy-unconfined_u-default-user.patch      |  198 ++++++++++++++++++++
>   .../refpolicy/refpolicy-targeted_2.20130424.bb     |   18 ++
>   .../refpolicy/refpolicy_2.20130424.inc             |    3 +
>   8 files changed, 414 insertions(+)
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/filesystem-associate-tmpfs_t-shm-to-device_t-devtmpf.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-add-rules-for-syslogd_t-symlink.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-minimum_2.20130424.bb
>   create mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-targeted_2.20130424.bb
> 

Ack. :)

-- 
- Pascal

