Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7A2594C80FE0
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 00:31:49 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6F5VmrY009598
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 14 Jul 2011 22:31:48 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.38) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 14 Jul 2011 22:31:48 -0700
Message-ID: <4E1FD0C2.6000704@windriver.com>
Date: Fri, 15 Jul 2011 01:31:46 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.18) Gecko/20110616 Thunderbird/3.1.11
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
X-List-Received-Date: Fri, 15 Jul 2011 05:31:49 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-07-15 12:56 AM, Kumar Gala wrote:
> The MPC8315E has a e300c3 core in it with 'classic' or normal PPC
> floating point.
>
> 'SPE' floating point is what exists on the e500v2 core.

Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>

Been meaning to change this for a while, the good news, is that
the setting doesn't make any difference at the moment :)

Cheers,

Bruce

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


