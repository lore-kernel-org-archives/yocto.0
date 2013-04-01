Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AF4FE013A7
	for <yocto@yoctoproject.org>; Mon,  1 Apr 2013 02:32:26 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 Apr 2013 02:32:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,385,1363158000"; d="scan'208";a="311630426"
Received: from unknown (HELO helios.localnet) ([10.255.13.254])
	by fmsmga001.fm.intel.com with ESMTP; 01 Apr 2013 02:32:25 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Mon, 01 Apr 2013 10:32:24 +0100
Message-ID: <1624497.d7J2isS43f@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-26-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <BAEA0795F10B4BF6BD9BAA17CBC46EB0@PAULD>
References: <74C70EB8A6B644C890B30B2F4B3C9415@PAULD>
	<5153A67F.9070702@windriver.com>
	<BAEA0795F10B4BF6BD9BAA17CBC46EB0@PAULD>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Samba server?
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
X-List-Received-Date: Mon, 01 Apr 2013 09:32:27 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 27 March 2013 20:10:40 Paul D. DeRocco wrote:
> So is there a general way to peruse the collection of recipes? Does one have
> to do "ls -R *.bb" to get the list of recipes, then read the comments
> inside the files to see how to use them?

There are a few useful tools here. Firstly, "bitbake-layers show-recipes" will 
list all recipes available in your current configuration, the versions 
available and which layers they are provided by. You can also specify a search 
keyword on the command line.

Additionally, "bitbake -s" will list all available "targets" (recipes, plus 
any BBCLASSEXTENDed variants, e.g. zlib-native) and the latest and current 
preferred versions.

Lastly, if you want to search all available recipes in community layers, there 
is now an online metadata index available:

  http://layers.openembedded.org/

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

