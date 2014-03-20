Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37458E009C4
	for <yocto@yoctoproject.org>; Thu, 20 Mar 2014 03:24:37 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Mar 2014 03:24:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,693,1389772800"; d="scan'208";a="503704739"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.120.182])
	by orsmga002.jf.intel.com with ESMTP; 20 Mar 2014 03:24:04 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Ashish Dalela <ashish.dalela@gmail.com>
Date: Thu, 20 Mar 2014 10:24:02 +0000
Message-ID: <1589194.XzGIr7LyEE@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.3 (Linux/3.13.6-200.fc20.x86_64; KDE/4.12.3; x86_64; ; )
In-Reply-To: <CABhkJRcX+DCxfqzDdLQ_XotRzT0vrQFrQFq9TmXFmGF1dQQucg@mail.gmail.com>
References: <CABhkJRebWkHYUWXu77n2kg20Ti3P8bYgE2UzfY8UO6T5K_tYew@mail.gmail.com>
	<CADkTA4NdOJHnmcPcJqMx2i5ZmEMUw+QV2QvuPvts9TE=quWTqw@mail.gmail.com>
	<CABhkJRcX+DCxfqzDdLQ_XotRzT0vrQFrQFq9TmXFmGF1dQQucg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto not packaging "m" kernel modules
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
X-List-Received-Date: Thu, 20 Mar 2014 10:24:40 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 20 March 2014 14:51:00 Ashish Dalela wrote:
> How do I add these modules to the packaging? Is it something I need to add
> to local.conf? Right now I have this -
> 
> IMAGE_FEATURES += "package-management"

This just adds runtime package management, which is not related to this.
In order to add additional packages to the image at build time there are
several methods, please see this manual section:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage

Individual kernel modules are packaged in kernel-module-<modulename>
packages, and there is also a kernel-modules package that will pull in all
modules enabled in the kernel configuration.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

