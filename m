Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70A10E011BC
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 06:53:53 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7BDs2Vm012544
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 11 Aug 2011 06:54:02 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 11 Aug 2011 06:54:02 -0700
Message-ID: <4E43DEF8.5050704@windriver.com>
Date: Thu, 11 Aug 2011 09:54:00 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1313049765.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1313049765.git.dvhart@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1][linux-yocto-3.0:routerstationpro] gpio Kconfig fix
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
X-List-Received-Date: Thu, 11 Aug 2011 13:53:53 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-11 04:22 AM, Darren Hart wrote:
> The following fix addresses a superfluous endif introduced by the patch
> adding the gpio support for the nxp_74hc153. Applies to
> yocto/standard/routerstationpro.
>
> A patch is included in my meta series to update the routerstationpro.scc
> with this patch.
> The following changes since commit 022556dea477e50b3e09140e1f2e328901b3664c:

Looks like a forward port artifact. Good find. Merging
this now.

Cheers,

Bruce

>
>    Merge branch 'yocto/standard/base' into yocto/standard/routerstationpro (2011-08-10 09:59:50 -0400)
>
> are available in the git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/dvhart/yocto/linux-yocto-3.0.git  dvhart/yocto/standard/routerstationpro
>
> Darren Hart (1):
>    routerstationpro: remove superfluous endif in gpio Kconfig
>
>   drivers/gpio/Kconfig |    2 --
>   1 files changed, 0 insertions(+), 2 deletions(-)
>


