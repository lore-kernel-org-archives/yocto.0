Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 883A9E013EB
	for <yocto@yoctoproject.org>; Wed, 19 Dec 2012 10:08:04 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Dec 2012 10:08:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,318,1355126400"; d="scan'208";a="236534563"
Received: from unknown (HELO helios.localnet) ([10.252.122.248])
	by orsmga001.jf.intel.com with ESMTP; 19 Dec 2012 10:08:03 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Raul Rosetto Munoz <munoz0raul@gmail.com>
Date: Wed, 19 Dec 2012 18:08:02 +0000
Message-ID: <3911329.LVxahrYG8d@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.5.0-19-generic; KDE/4.9.3; i686; ; )
In-Reply-To: <CANmVirgqh54ir776cAQtHPX7RA9nawas4tztjCkLyJnaermsdA@mail.gmail.com>
References: <CANmViriCGoKznqztTxC9TDP_+ZKizB_hUzbHLJ66NQ21H+re_g@mail.gmail.com>
	<CANmVirhdCb55A8h=rQOU-2EanWwmXUyF8nV5n7P+ay2mAxnyfQ@mail.gmail.com>
	<CANmVirgqh54ir776cAQtHPX7RA9nawas4tztjCkLyJnaermsdA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to use JRE (Java Runtime) in Yocto Projects
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
X-List-Received-Date: Wed, 19 Dec 2012 18:08:04 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 19 December 2012 15:31:42 Raul Rosetto Munoz wrote:
> raul@phi04:/home/prjs/poky$ git branch
> * local/origin/denzil

There doesn't seem to be a denzil branch for meta-java and it's likely the 
error you're receiving is because the master branch of meta-java is 
incompatible with the denzil release. I would suggest updating to the danny 
release, or alternatively you'll need to modify meta-java to be compatible 
with denzil (i.e. you'll have to match indenting in python functions such as 
populate_packages_prepend).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

