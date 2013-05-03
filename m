Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C8AAE0027C
	for <yocto@yoctoproject.org>; Thu,  2 May 2013 23:58:12 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 May 2013 23:58:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,601,1363158000"; d="scan'208";a="330804482"
Received: from unknown (HELO helios.localnet) ([10.255.12.207])
	by orsmga002.jf.intel.com with ESMTP; 02 May 2013 23:58:11 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gaurang Shastri <gmshastri@gmail.com>
Date: Fri, 03 May 2013 07:58:10 +0100
Message-ID: <2435942.LYTrJQCOfG@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-19-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CAE_REAsbEPTn_x6bwJgUe2sXci_KEwCJA+E4R9Lx6QFwO4-nDw@mail.gmail.com>
References: <5181AF9F.8040702@gmail.com> <1370035.2iCAacKgHz@helios>
	<CAE_REAsbEPTn_x6bwJgUe2sXci_KEwCJA+E4R9Lx6QFwO4-nDw@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bash specific syntax in bbclass files
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
X-List-Received-Date: Fri, 03 May 2013 06:58:12 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 03 May 2013 12:06:45 Gaurang Shastri wrote:
> I usually do following before starting Yocto on Ubuntu:
> --
> # dpkg-reconfigure dash
> and select "NO" on the prompt
> --
> 
> The above will at least make bash as default shell.

Yes, except as I mentioned recently we shouldn't need to be forcing bash and 
we no longer advise users to do this. I am using Ubuntu with the default dash 
shell to build on here, for example.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

