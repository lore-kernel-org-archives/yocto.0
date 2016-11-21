Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAF0BE007DA; Mon, 21 Nov 2016 13:15:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10272E0077E
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 13:15:21 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga105.jf.intel.com with ESMTP; 21 Nov 2016 13:15:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,677,1473145200"; d="scan'208";a="194195591"
Received: from tmuliant-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.158.218])
	by fmsmga004.fm.intel.com with ESMTP; 21 Nov 2016 13:15:18 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 22 Nov 2016 10:15:16 +1300
Message-ID: <1671408.G4YB1aAtGn@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.10-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <580836396.347526093.1479748930824.JavaMail.root@spooler3-g27.priv.proxad.net>
References: <580836396.347526093.1479748930824.JavaMail.root@spooler3-g27.priv.proxad.net>
MIME-Version: 1.0
Subject: Re: populate_sdk_ext: Unable to locate package nativesdk-buildtools-perl-dummy
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
X-List-Received-Date: Mon, 21 Nov 2016 21:15:30 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Mon, 21 Nov 2016 18:22:10 Michel D'HOOGE wrote:
> > From: "Paul Eggleton" <paul.eggleton@linux.intel.com>
> > Sent: Friday, 18 November, 2016 2:46:07 AM
> > 
> > I think the issue is this hasn't really been tested with deb
> > packaging. You
> > have hit a genuine bug though - would you mind filing a bug at
> > http://bugzilla.yoctoproject.org?
> 
> I still don't fully understand the problem, so I don't know where to file
> the bug! But I think apt-native and buildtools-tarball are OK.
> 
> Right now I believe this is related to the ARCH value of the dummy debian
> packages. It is "allarch" (in the filename and the Packages corresponding
> summary file) whereas similar packages have the "all" arch.
> I'm trying to understand why there is such a difference...

I suspect it has to do with the arch mapping that goes on in 
meta/classes/package_deb.bbclass; it probably doesn't understand the dummy 
architecture we're giving it. The thing is even if it were to be "corrected" 
to fall back to "all" instead of "allarch" that probably still wouldn't work 
properly because the architecture of the perl packages would be a higher 
priority than "all" and thus the dummy package wouldn't take precedence.

In any case feel free to file a bug under "OE-Core -> Core" in bugzilla, that 
would be a reasonable category for this issue.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

