Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 59E214C800A1
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2011 11:13:22 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 22 Jul 2011 09:13:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,248,1309762800"; d="scan'208";a="33481760"
Received: from unknown (HELO [10.255.14.61]) ([10.255.14.61])
	by fmsmga001.fm.intel.com with ESMTP; 22 Jul 2011 09:13:16 -0700
Message-ID: <4E29A19C.2020707@linux.intel.com>
Date: Fri, 22 Jul 2011 09:13:16 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Kumar Gala <galak@kernel.crashing.org>
References: <1310705816-31653-1-git-send-email-galak@kernel.crashing.org>
In-Reply-To: <1310705816-31653-1-git-send-email-galak@kernel.crashing.org>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] mpc8315e-rdb: Set TARGET_FPU correct
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
X-List-Received-Date: Fri, 22 Jul 2011 16:13:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/14/2011 09:56 PM, Kumar Gala wrote:
> The MPC8315E has a e300c3 core in it with 'classic' or normal PPC
> floating point.
>
> 'SPE' floating point is what exists on the e500v2 core.
>
> Signed-off-by: Kumar Gala<galak@kernel.crashing.org>
> ---
>   meta-yocto/conf/machine/mpc8315e-rdb.conf |    2 +-
>   1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/meta-yocto/conf/machine/mpc8315e-rdb.conf b/meta-yocto/conf/machine/mpc8315e-rdb.conf
> index 095d113..3f946a0 100644
> --- a/meta-yocto/conf/machine/mpc8315e-rdb.conf
> +++ b/meta-yocto/conf/machine/mpc8315e-rdb.conf
> @@ -2,7 +2,7 @@
>   #@DESCRIPTION: Machine configuration for running
>
>   TARGET_ARCH = "powerpc"
> -TARGET_FPU = "spe"
> +TARGET_FPU = "hard"
>
>   require conf/machine/include/tune-ppc603e.inc
>

Pulled into Yocto/Master

Thanks
	Sau!

