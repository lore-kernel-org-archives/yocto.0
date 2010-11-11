Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6B05E4C80815
	for <yocto@yoctoproject.org>; Thu, 11 Nov 2010 09:38:13 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 Nov 2010 07:38:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,183,1288594800"; d="scan'208";a="572564526"
Received: from unknown (HELO [10.255.16.145]) ([10.255.16.145])
	by orsmga002.jf.intel.com with ESMTP; 11 Nov 2010 07:38:10 -0800
From: Joshua Lock <josh@linux.intel.com>
To: =?ISO-8859-1?Q?Jo=E3o?= Henrique Freitas <joaohf@gmail.com>
In-Reply-To: <AANLkTi=7yQCQB4=bKYuW3DTx4-psGZPDKkQeum+qdw3=@mail.gmail.com>
References: <AANLkTi=7yQCQB4=bKYuW3DTx4-psGZPDKkQeum+qdw3=@mail.gmail.com>
Date: Thu, 11 Nov 2010 15:38:09 +0000
Message-ID: <1289489889.2453.1.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.0 (2.32.0-2.fc14) 
Cc: yocto@yoctoproject.org
Subject: Re: BSPs and duplicate files
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
X-List-Received-Date: Thu, 11 Nov 2010 15:38:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2010-11-11 at 13:19 -0200, João Henrique Freitas wrote:
> Hi,
> 
> Two questions:
> 
> With some BSPs, like
> 
> meta
> meta-myhardware
> meta-mydistro
> 
> I need to create a conf/checksums.ini for every BSP or append it to
> meta/conf/checksums.ini ? In other others, checksums.ini is per BSP or
> unique?

I'm not sure about this one, hopefully someone else can help you here.

> 
> In my meta-myhardware I have a kernel too:
> 
> meta-myhardware/recipes-kernel/linux/linux.inc
> meta-myhardware/recipes-kernel/linux/linux_2.6.22.bb
> 
> The file meta-myhardware/recipes-kernel/linux/linux.inc is the some of
> meta/recipes-kernel/linux/linux.inc. Is any way to use a unique file
> instead of duplicate it?
> 

You can include files from the core metadata by using a path relative to
the meta/ directory, such as:

require recipes-kernel/linux/linux.inc

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


