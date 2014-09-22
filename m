Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A2EDE0086B; Mon, 22 Sep 2014 01:15:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD84BE00869
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 01:15:39 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by fmsmga102.fm.intel.com with ESMTP; 22 Sep 2014 01:15:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,570,1406617200"; d="scan'208";a="479122920"
Received: from mpsamara-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.108])
	by azsmga001.ch.intel.com with ESMTP; 22 Sep 2014 01:15:37 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Navani Srivastava <navani.srivastava@gmail.com>
Date: Mon, 22 Sep 2014 09:15:36 +0100
Message-ID: <26633520.FLER5Y4OlA@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.16.2-200.fc20.x86_64; KDE/4.14.1; x86_64; ; )
In-Reply-To: <CA+Z6RkWwt9Xyd4jj7mRQHEBNK4O-wFWpmoN0kKaDDu6=_-ADyA@mail.gmail.com>
References: <CA+Z6RkW1D8pPpGCTu_SwF5Q+d0Um-MuYQM3mtube=u2txu0V6A@mail.gmail.com>
	<CAMKF1srWLwFN9-t70Yz=pLV6v77xapE2Y_=y-SrtY=1Mke-90Q@mail.gmail.com>
	<CA+Z6RkWwt9Xyd4jj7mRQHEBNK4O-wFWpmoN0kKaDDu6=_-ADyA@mail.gmail.com>
MIME-Version: 1.0
Cc: Navani Srivastava <navani.srivastava@lnttechservices.com>,
	yocto@yoctoproject.org
Subject: Re: Integration of custom recipe with SDK
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
X-List-Received-Date: Mon, 22 Sep 2014 08:15:45 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday 21 September 2014 09:26:07 Navani Srivastava wrote:
> We are not using populatesdk ... we need to generate it through
> meta-toolchain-qte only so i am trying with the solution provided by randy..

Can I ask why? I'd like to understand where -c populate_sdk needs further 
improvement.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

