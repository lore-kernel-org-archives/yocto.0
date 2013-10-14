Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89983E016C6
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2013 05:27:24 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Oct 2013 05:27:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,492,1378882800"; d="scan'208";a="418856659"
Received: from unknown (HELO helios.localnet) ([10.252.120.188])
	by orsmga002.jf.intel.com with ESMTP; 14 Oct 2013 05:27:22 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 14 Oct 2013 13:27:21 +0100
Message-ID: <6459470.uGImPsLe3U@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1310140740410.13343@oneiric>
References: <alpine.DEB.2.02.1310140740410.13343@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: meta-yocto-bsp defines linux-yocto_3.2.bbappend, no match in oe-core
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
X-List-Received-Date: Mon, 14 Oct 2013 12:27:24 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Monday 14 October 2013 07:43:47 Robert P. J. Day wrote:
>   prepared to be told i need sleep after working all night but wanting
> to build for beagleboard using meta-yocto-bsp and:
> 
> ERROR: No recipes available for:
> 
> /home/rpjday/oe/dist/layers/meta-yocto/meta-yocto-bsp/recipes-kernel/linux/l
> inux-yocto_3.2.bbappend ERROR: Command execution failed: Exited with 1
> 
> which is apparently correct -- oe-core provides no base
> linux-yocto_3.2 recipe to match that bbappend file.
> 
>   am i just being silly?

Are you sure you're using the right branch of the meta-yocto repository to 
match the branch of OE-Core you are using? (I'm assuming you're using OE-Core, 
because you wouldn't get much out of using meta-yocto separately with poky 
given that poky includes the contents of the meta-yocto repo).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

