Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D0014C800BA
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2011 18:38:31 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 08 Jun 2011 16:38:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,340,1304319600"; 
   d="scan'208";a="9554972"
Received: from unknown (HELO [10.255.13.104]) ([10.255.13.104])
	by azsmga001.ch.intel.com with ESMTP; 08 Jun 2011 16:38:30 -0700
Message-ID: <4DF007F1.1060006@linux.intel.com>
Date: Wed, 08 Jun 2011 16:38:25 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: sushisan <sinestado@gmail.com>
References: <1307575032.27437.9.camel@emiliano.local>
In-Reply-To: <1307575032.27437.9.camel@emiliano.local>
Cc: yocto@yoctoproject.org
Subject: Re: recipe priority in multiple metas
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
X-List-Received-Date: Wed, 08 Jun 2011 23:38:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 06/08/2011 04:17 PM, sushisan wrote:
> Hi:
> 
> I have a project that use openssl.
> 
> I practically all recipes used are in yocto project
> but I need someones that are in meta-oe (ie: fuse)
> 
> openssl is in  meta/recipes-connectivity AND in meta-oe/recipes connectivity
> 
> I've putted meta first than meta-oe in my bblayers.conf, but when I try
> to do a bitbake openssl
> bitbake try to compile ever the meta-oe recipe
> 
> How I set priority in search recipes?

We discussed this in IRC and setting the BBFILE_PRIORITY in the
layer.conf of the respective layers seems to have addressed the
immediate issue.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

