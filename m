Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B806E01206
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2012 11:54:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q3QIsGrF029354
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 26 Apr 2012 11:54:16 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 26 Apr 2012 11:54:16 -0700
Message-ID: <4F9999CD.9080508@windriver.com>
Date: Thu, 26 Apr 2012 14:54:05 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1335447006.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1335447006.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1][KERNEL 3.2] fix emenlow i2c_transfer error
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
X-List-Received-Date: Thu, 26 Apr 2012 18:54:17 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-04-26 02:48 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This fixes [YOCTO #310].
>
> Please pull into linux-yocto-3.2.

merging. Will push a batch of kernel updates out later today.

Cheers,

Bruce

>
> Thanks,
>
> Tom
>
> The following changes since commit 3ab8e8d9f0e9c2c44b6dbf8df84c0c2b03c4167c:
>    Tom Zanussi (1):
>          bsp/emenlow: give up drm_global_mutex on contention in drm_lock()
>
> are available in the git repository at:
>
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/emenlow-i2c-transfer-fix
>    http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/emenlow-i2c-transfer-fix
>
> Tom Zanussi (1):
>    bsp/emenlow: initialize lvds backlight only if lvds enabled
>
>   drivers/gpu/drm-psb/intel_lvds.c |   51 ++++++++++++++++++++-----------------
>   1 files changed, 28 insertions(+), 23 deletions(-)
>


