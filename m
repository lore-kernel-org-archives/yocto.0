Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3B25E01572
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2013 01:45:23 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 07 Jun 2013 01:45:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,820,1363158000"; d="scan'208";a="349583681"
Received: from unknown (HELO helios.localnet) ([10.252.121.224])
	by fmsmga002.fm.intel.com with ESMTP; 07 Jun 2013 01:45:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Mike Dean <mdean@emacinc.com>
Date: Fri, 07 Jun 2013 09:45:14 +0100
Message-ID: <1423046.5zGHAVJZfP@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-23-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <CAPMJ7HqEvt4UWPC=648nQ=RwJDqrv0qmcfmEkaVggX4wCCZs3w@mail.gmail.com>
References: <CAPMJ7HqEvt4UWPC=648nQ=RwJDqrv0qmcfmEkaVggX4wCCZs3w@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Distributing Compilation of Yocto
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
X-List-Received-Date: Fri, 07 Jun 2013 08:45:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Mike,

On Thursday 06 June 2013 18:39:38 Mike Dean wrote:
> Can I distribute the compilation with Yocto?  I found posts about using
> icecc to do so, and tried to set it up, but I haven't been able to get it
> to work correctly.  I have two machines which each have two Xeon quadcore
> processors dedicated to building Yocto, but I can only use one if I can't
> get this setup.  I would really appreciate any help and/or pointers anyone
> can give on this.

If you haven't already seen this, you might find it interesting:

http://www.openembedded.org/wiki/Using_IceCC

I've not tried it myself but I know a couple of people have used it 
successfully recently.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

