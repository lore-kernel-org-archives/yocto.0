Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 505A0E00C65; Wed, 16 Nov 2016 13:20:10 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00935E00C3E
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2016 13:20:08 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP; 16 Nov 2016 13:20:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,649,1473145200"; d="scan'208";a="1086247744"
Received: from llgoh-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.159.102])
	by fmsmga002.fm.intel.com with ESMTP; 16 Nov 2016 13:20:05 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rich Persaud <persaur@gmail.com>
Date: Thu, 17 Nov 2016 10:20:02 +1300
Message-ID: <1768049.4Tuho7Cjuo@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.10-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <DCCA29C3-5B08-4E33-AFAB-571134EFFAEF@gmail.com>
References: <5818F173.7020204@intel.com>
	<DCCA29C3-5B08-4E33-AFAB-571134EFFAEF@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-announce] [ANNOUNCEMENT] Yocto Project 2.2 (morty 16.0.0) Released
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
X-List-Received-Date: Wed, 16 Nov 2016 21:20:10 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tue, 15 Nov 2016 11:24:28 Rich Persaud wrote:
> > On Nov 1, 2016, at 15:48, Tracy Graydon <tracy.graydon@intel.com> wrote:
> > 
> > Hello,
> > 
> > The latest release of the Yocto Project 2.2 (morty-16.0.0) is now
> > available for download at:
> > 
> > http://downloads.yoctoproject.org/releases/yocto/yocto-2.2/poky-morty-16.0
> > .0.tar.bz2
> > http://mirrors.kernel.org/yocto/yocto/yocto-2.2/poky-morty-16.0.0.tar.bz2
> > 
> > A gpg signed version of these release notes is available at:
> > 
> > http://downloads.yoctoproject.org/releases/yocto/yocto-2.2/RELEASENOTES
> 
> It would be helpful if morty could be added to the stable branch page, with
> clarification on whether jethro is being actively maintained:
> 
>   https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance

Done. We should really make this an official part of our release process, 
sorry about that.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

