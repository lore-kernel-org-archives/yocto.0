Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB0AC4C80578
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2011 15:27:56 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Jun 2011 13:27:56 -0700
X-ExtLoop1: 1
Received: from unknown (HELO [10.255.12.168]) ([10.255.12.168])
	by orsmga002.jf.intel.com with ESMTP; 01 Jun 2011 13:27:55 -0700
Message-ID: <4DE6A0CB.3080103@linux.intel.com>
Date: Wed, 01 Jun 2011 13:27:55 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1306958045.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306958045.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/6] meta-intel: emgd updrade
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
X-List-Received-Date: Wed, 01 Jun 2011 20:27:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/01/2011 12:55 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> This patchset upgrades emgd to 1.6 Gold.
> 
> The following changes since commit e94dba8309874a82a570db60223d18b2c723c3a5:
>   Darren Hart (1):
>         linux-yocto*: correct FILESEXTRAPATHS assignment in all layers
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/meta-intel.git tzanussi/emgd-1.6-upgrade
>   http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/emgd-1.6-upgrade
> 
> Tom Zanussi (6):
>   meta-crownbay: new recipe for emgd 1.6 driver binaries
>   meta-intel: add xserver-xf86-dri-lite_1.9.3 to common
>   meta-crownbay: add common to BBFILES
>   meta-crownbay: update crownbay.conf
>   meta-crownbay: remove obsolete graphics recipes
>   meta-crownbay: update README with new build instructions.

With the exception of the patch upstream fields and giving Scott R a
chance to review the README, these look good to me. With those addressed:

Acked-by: Darren Hart <dvhart@linux.intel.com>

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

