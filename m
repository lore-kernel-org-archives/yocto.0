Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24328E00846; Mon,  8 Sep 2014 01:40:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69458E0049D
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 01:40:28 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Sep 2014 01:40:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,485,1406617200"; d="scan'208";a="599558064"
Received: from mriddel-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.53])
	by orsmga002.jf.intel.com with ESMTP; 08 Sep 2014 01:40:27 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Chris Tapp <opensource@keylevel.com>
Date: Mon, 08 Sep 2014 09:40:26 +0100
Message-ID: <1842521.5a185EsvZP@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.10-201.fc20.x86_64; KDE/4.13.3; x86_64; ;
	)
In-Reply-To: <F2F22E20-4E45-4693-95D5-9FC01F81E8D8@keylevel.com>
References: <F2F22E20-4E45-4693-95D5-9FC01F81E8D8@keylevel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How does RRECOMMENDS work?
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
X-List-Received-Date: Mon, 08 Sep 2014 08:40:32 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Chris,

On Monday 08 September 2014 08:55:15 Chris Tapp wrote:
> I've got a recipe to which I've added:
> 
> RRECOMMENDS_${PN} = "<package>"
> 
> The documentation says that "If, during the build, a package from the
> RRECOMMENDS list cannot be found, the build process continues without an
> error".
>
> I tried a build without <package> (i.e. no recipe) and it failed with
> "Nothing provides <package>". Is this the expected behaviour? If so, is
> there a way I can pull in a package if it is build-able and skip it
> otherwise?
> 
> In this case <package> contains some utilities which can be of help, but
> they're not required in any way at runtime.

Scott has just pinged me about this, the manual is slightly misleading. How it 
works is, if you have an item mentioned in RRECOMMENDS, there must be a recipe 
that provides that item via RPROVIDES (or indirectly via PACKAGES or 
PACKAGES_DYNAMIC), otherwise you will receive the error you mentioned. 
However, if the package does not actually end up being produced, that is OK.

RRECOMMENDS is generally for things that you normally would expect to be 
available, but may not be for some reason (e.g. kernel modules that might 
instead be compiled in and thus are not produced as a package).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

