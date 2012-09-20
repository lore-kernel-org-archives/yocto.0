Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 992E3E0141C
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 06:57:02 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 20 Sep 2012 06:57:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,453,1344236400"; d="scan'208";a="224591508"
Received: from unknown (HELO helios.localnet) ([10.252.121.248])
	by fmsmga002.fm.intel.com with ESMTP; 20 Sep 2012 06:57:01 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Liu <treebody@embedstudy.com>
Date: Thu, 20 Sep 2012 14:57 +0100
Message-ID: <1546898.F9k85MPnqC@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-30-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <tencent_6D1428EC1BCDDD3D5AB8C6A0@qq.com>
References: <tencent_6D1428EC1BCDDD3D5AB8C6A0@qq.com>
MIME-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: How to do the specified tasks instead of many default
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
X-List-Received-Date: Thu, 20 Sep 2012 13:57:02 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 20 September 2012 21:50:42 Liu wrote:
>      I know it probably not be right to do in such way.But my project is
> built by buildroot,So I just need to run make to build the image.And now 
> I want to use bitbake to build the project instead of buildroot.Then I
> think of the idea to use recipes to "do_fetch","do_unpack",and 
> "oe_runmake" to build the packages. 

I guess I would recommend if you're going to migrate to building with bitbake 
that you make more of a migration towards standard recipes - I'm not sure 
exactly where you will end up with your current approach but it sounds like 
you won't get much benefit by just calling into the original Buildroot makefiles 
over just continuing to use Buildroot on its own.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

