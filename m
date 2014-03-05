Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85FEEE00A39
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 02:49:06 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Mar 2014 02:44:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,592,1389772800"; d="scan'208";a="466970669"
Received: from maurorob-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.80])
	by orsmga001.jf.intel.com with ESMTP; 05 Mar 2014 02:49:04 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rick Bianchi <bianchirickkutta@gmail.com>
Date: Wed, 05 Mar 2014 10:49:04 +0000
Message-ID: <9753596.1CqtLBKVIB@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.3 (Linux/3.13.5-200.fc20.x86_64; KDE/4.12.3; x86_64; ; )
In-Reply-To: <CAA7h+ErKdDhkax_PVzDJ2gh4c9oZZJcsP+G1akHFdJbXe-i7cw@mail.gmail.com>
References: <1393941002.38518.YahooMailNeo@web163105.mail.bf1.yahoo.com>
	<CANyK_8dF8U-jiVjuZ5xk5DBF_iqQuyKupahz4F1X+hKv4D_Avw@mail.gmail.com>
	<CAA7h+ErKdDhkax_PVzDJ2gh4c9oZZJcsP+G1akHFdJbXe-i7cw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Add Packages to Recipie
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
X-List-Received-Date: Wed, 05 Mar 2014 10:49:09 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 04 March 2014 10:13:42 Rick Bianchi wrote:
> My question is in the vain as Joel's, I need to add the program usbip (I
> have already added the kernel modules) to the build, but I cannot find any
> recipes for it. I have search in the package manager (smart) and it is not
> there either "error: 'usbip' matches no packages". Is there a way for me to
> add it during the build process?

No recipe for usbip seems to exist [1] so you'll need to create a recipe for
it yourself unless someone else in the community has one hiding somewhere. In
the latest version of the manual we have a step-by-step guide to creating a
new recipe; it should be almost completely applicable to current and older
versions of the build system as well:

http://www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.html#new-recipe-writing-a-new-recipe

Cheers,
Paul

[1] http://layers.openembedded.org/layerindex/branch/master/recipes/?q=usbip

-- 

Paul Eggleton
Intel Open Source Technology Centre

