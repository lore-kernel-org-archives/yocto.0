Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19635E00C1B; Wed,  9 Mar 2016 18:27:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99A4BE00BF5
	for <yocto@yoctoproject.org>; Wed,  9 Mar 2016 18:27:44 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 09 Mar 2016 18:27:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,313,1455004800"; d="scan'208";a="920618076"
Received: from mlim-mobl4.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.143.14])
	by fmsmga001.fm.intel.com with ESMTP; 09 Mar 2016 18:27:41 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Mark Brown <mkbrown32@hotmail.com>
Date: Thu, 10 Mar 2016 15:27:39 +1300
Message-ID: <1602071.YmYkmr06gY@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.3-300.fc23.x86_64; KDE/4.14.17; x86_64; ;
	)
In-Reply-To: <BAY181-W583CA3631BD8968591D5FEAEB40@phx.gbl>
References: <BAY181-W50B0A075391862300C0057AEB10@phx.gbl>
	<3096733.Nm5QEVLyy2@peggleto-mobl.ger.corp.intel.com>
	<BAY181-W583CA3631BD8968591D5FEAEB40@phx.gbl>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failed to fetch URL git://gitorious.org/raw2rgbpnm/raw2rgbpnm.git
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
X-List-Received-Date: Thu, 10 Mar 2016 02:27:48 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

> > From: paul.eggleton@linux.intel.com
> > To: mkbrown32@hotmail.com
> > CC: yocto@yoctoproject.org; ross.burton@intel.com
> > Subject: Re: [yocto] Failed to fetch URL
> > git://gitorious.org/raw2rgbpnm/raw2rgbpnm.git Date: Thu, 10 Mar 2016
> > 14:39:01 +1300
> > 
> > On Wed, 09 Mar 2016 14:56:55 Mark Brown wrote:
> > > The certificate file is there and appears to contain a series of several
> > > encrypted certificates. And there are numerous other .crt and .pem files
> > > in there, mostly links to files. Does this build need to be run as admin
> > > or sudo   to enable this mirror capability ?
> > 
> > Definitely not. You should never run builds as root; in this case it
> > wouldn't help you anyway.
>
> Is it possible that the network pathway through Windows/Virtualbox to Ubuntu
> is interfering with the certification ssl process ?

I would be surprised, it's much more likely that there's some misconfiguration 
within the VM or a bad interaction with our fetcher.

You've specified protocol=http but I see the gitorious archive site is 
redirecting to https. Does it make any difference at all if you say 
protocol=https instead? I'm clutching at straws, but it's worth a try at 
least.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

