Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9429CE0083B
	for <yocto@yoctoproject.org>; Fri, 10 Jan 2014 12:42:45 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s0AKgjPR003513
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 10 Jan 2014 12:42:45 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.232) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.347.0; Fri, 10 Jan 2014 12:42:44 -0800
Message-ID: <52D05B43.1030700@windriver.com>
Date: Fri, 10 Jan 2014 14:42:43 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: <wenzong.fan@windriver.com>, <yocto@yoctoproject.org>,
	<xin.ouyang@windriver.com>
References: <cover.1389235842.git.wenzong.fan@windriver.com>
In-Reply-To: <cover.1389235842.git.wenzong.fan@windriver.com>
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
X-List-Received-Date: Fri, 10 Jan 2014 20:42:45 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

merged to master-next

On 1/8/14, 8:54 PM, wenzong.fan@windriver.com wrote:
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


