Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FB4EE00563; Wed, 10 Sep 2014 00:38:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6171AE0049D
	for <yocto@yoctoproject.org>; Wed, 10 Sep 2014 00:38:35 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by fmsmga103.fm.intel.com with ESMTP; 10 Sep 2014 00:30:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,496,1406617200"; d="scan'208";a="476545929"
Received: from tmediriw-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.16])
	by azsmga001.ch.intel.com with ESMTP; 10 Sep 2014 00:38:08 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Philip Balister <philip@balister.org>
Date: Wed, 10 Sep 2014 08:38:07 +0100
Message-ID: <1548923.UYKtK7c5ZH@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.10-201.fc20.x86_64; KDE/4.13.3; x86_64; ;
	)
In-Reply-To: <540F4F0B.7010707@balister.org>
References: <CALb224-2biSJpCoLBojkMgjGKX4a_YUayfUQwByFTDNYqVKeCA@mail.gmail.com>
	<540F4F0B.7010707@balister.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Leo Schwab <lschwab@sensity.com>
Subject: Re: Adding 'build-id' to Build Image
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
X-List-Received-Date: Wed, 10 Sep 2014 07:38:38 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 09 September 2014 15:03:39 Philip Balister wrote:
> On 09/08/2014 07:08 PM, Leo Schwab wrote:
> > We'd like to have the system images we build to contain a build id, or
> > at least a pile of information inside the image itself that lets us
> > identify which build is being run/tested.  Indeed, the information
> > 'bitbake' kicks out just as it starts a build is exactly the sort of
> > thing we'd like sitting in a file in the image somewhere.
> > 
> > I turned on the 'buildhistory' feature in conf/local.conf which, among
> > other things, generates a 'build-id' file.  However, it doesn't place
> > it in the image, but in an entirely separate directory hierarchy.
> > 
> > Surely this sort of thing has been done before.  Is there an existing
> > recipe I can use, or will I have to cobble together a custom recipe
> > out of buildhistory_get_layers() or get_layers_branch_rev()?
> 
> I was asking the same question yesterday. I have a hacky solution for my
> immediate need, but I'd like a long term solution along these lines also.
> 
> Should we add this to bugzilla and see if we can get it done for 1.8? (I
> think I ahve the version number right)

Yes, please add this to the bugzilla. This has also come up before several 
times, we should just do it (and bonus points if someone wants to send a patch 
;).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

