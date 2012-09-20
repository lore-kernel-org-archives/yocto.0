Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A363E002AB
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 02:37:46 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 20 Sep 2012 02:37:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,453,1344236400"; d="scan'208";a="147084774"
Received: from unknown (HELO helios.localnet) ([10.252.121.248])
	by AZSMGA002.ch.intel.com with ESMTP; 20 Sep 2012 02:37:27 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Liu <treebody@embedstudy.com>
Date: Thu, 20 Sep 2012 10:37:26 +0100
Message-ID: <2610235.ldikzBKGIg@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-30-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <tencent_481A33D43CF5A7886EAFDDC1@qq.com>
References: <tencent_481A33D43CF5A7886EAFDDC1@qq.com>
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
X-List-Received-Date: Thu, 20 Sep 2012 09:37:46 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 20 September 2012 15:41:54 Liu wrote:
>      I'm compiling a test package  "helloworld",then I just want to do the
> standard tasks of "do_fetch","do_unpack" until the task "do_compile",and I
> do not want to the next tasks like "do_build","do_package". I think there
> exist the task dependency chain,but can hardly find how to remove the tasks
> I do not want to do.Can anyone tell me something detailed about this
> question ?

If you mean for a single execution, just run "bitbake -c compile helloworld".

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

