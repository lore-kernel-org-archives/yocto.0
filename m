Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1239AE002AB
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 03:25:32 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 20 Sep 2012 03:25:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,453,1344236400"; d="scan'208";a="147096227"
Received: from unknown (HELO helios.localnet) ([10.252.121.248])
	by AZSMGA002.ch.intel.com with ESMTP; 20 Sep 2012 03:25:30 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Liu <treebody@embedstudy.com>
Date: Thu, 20 Sep 2012 11:25:29 +0100
Message-ID: <8173152.vnRYO1d4LU@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-30-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <tencent_5829A72418D0015B153A11E6@qq.com>
References: <tencent_5829A72418D0015B153A11E6@qq.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to do the specified tasks instead of many default ones
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
X-List-Received-Date: Thu, 20 Sep 2012 10:25:32 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 20 September 2012 17:59:56 Liu wrote:
> That's not what i mean.I want to remove the tasks like
> "do_build","do_package" from the default tasks list,and reserve the tasks
> (do_fetch,do_unpack,do_compile) I need. I know there exist some dependency
> between tasks and then generate a default list of tasks  for all
> packages.And now I just want to use the several tasks for my packages. Can
> you tell me detally about how to remove the tasks "do_build" ,and the tasks
> after "do_build" ?

What do you mean by tasks after do_build? There should not be any, at least 
not for the same target.

There are several ways of disabling tasks - the first that comes to mind is to 
mark the task as noexec, for example:

do_package[noexec] = "1"

My question would be though, what are you trying to achieve by doing this?

Cheers,
Paul

PS: please reply on the mailing list, thanks.

-- 

Paul Eggleton
Intel Open Source Technology Centre

