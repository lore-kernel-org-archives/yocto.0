Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id EB0E84C800B4
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2011 15:18:54 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Jul 2011 13:18:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,522,1304319600"; d="scan'208";a="26883108"
Received: from unknown (HELO [10.255.14.40]) ([10.255.14.40])
	by orsmga001.jf.intel.com with ESMTP; 12 Jul 2011 13:18:54 -0700
Message-ID: <4E1CAC2D.7040609@linux.intel.com>
Date: Tue, 12 Jul 2011 13:18:53 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Jingdong Lu <jingdong.lu@windriver.com>
References: <cover.1310094637.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1310094637.git.jingdong.lu@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1]meta/routerstationpro: remove some conflicted configurations
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
X-List-Received-Date: Tue, 12 Jul 2011 20:18:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/11/2011 05:22 PM, Jingdong Lu wrote:
> From: Jingdong Lu<jingdong.lu@windriver.com>
>
> Some kernel options were redefined by routerstationpro.cfg and
> it will cause some bugs. So remove some configurations which have
> been defined in base.cfg or standard.cfg from routerstationpro.cfg.
>
> Fix bug [YOCTO #1161]
> Fix bug [YOCTO #773]
>
The Bug fix info needs to go into the commit message, not as part of the 
email header as it will get lost here.

Thanks
	Sau!

> Jingdong Lu (1):
>    meta/routerstationpro: remove some conflicted configurations
>
>   .../bsp/routerstationpro/routerstationpro.cfg      |   45 --------------------
>   1 files changed, 0 insertions(+), 45 deletions(-)
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

