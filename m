Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66395E003E3
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2012 20:32:15 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q1Q4WCB9003965
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 25 Feb 2012 20:32:13 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.20.219) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Sat, 25 Feb 2012 20:32:12 -0800
Message-ID: <4F49B5CB.2090702@windriver.com>
Date: Sat, 25 Feb 2012 23:32:11 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: <kishore.k.bodke@intel.com>
References: <cover.1330129499.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1330129499.git.kishore.k.bodke@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [KERNEL] [PATCH 0/1] Add PVR feature for Cedartrail
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
X-List-Received-Date: Sun, 26 Feb 2012 04:32:15 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-02-24 7:35 PM, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke<kishore.k.bodke@intel.com>
>
> Hi,
>
> This is a new feature added to enable PVR for the Cedartrail BSP in the kernel.
>
> Please pull into meta/cfg/kernel-cache/cfg for both linux-yocto-3.0 and linux-yocto-3.2 .

Looks good. Merging this in, and creating the content branch. I'll have
this in my next consolidated pull.

Bruce

>
> Thanks
> Kishore.
>
> The following changes since commit b78a519841bd8b477cad599af8d38df6760445c1:
>
>    fri2: use emgd-1.10 (2012-02-05 00:55:05 -0500)
>
> are available in the git repository at:
>    git://git.pokylinux.org/linux-yocto-2.6.37-contrib kishore/meta-cedartrail/pvr-feature
>    http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=kishore/meta-cedartrail/pvr-feature
>
> Kishore Bodke (1):
>    enable pvr features.     Cedartrail has pvr kernel features and
>      patches.
>
>   meta/cfg/kernel-cache/cfg/drm-cdvpvr.cfg |    9 +++++++++
>   meta/cfg/kernel-cache/cfg/drm-cdvpvr.scc |    2 ++
>   2 files changed, 11 insertions(+), 0 deletions(-)
>   create mode 100644 meta/cfg/kernel-cache/cfg/drm-cdvpvr.cfg
>   create mode 100644 meta/cfg/kernel-cache/cfg/drm-cdvpvr.scc
>


