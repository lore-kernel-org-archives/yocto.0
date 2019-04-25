Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A52A7E00AD5; Thu, 25 Apr 2019 06:03:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED, RCVD_IN_DNSWL_NONE,
	SPF_HELO_FAIL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [199.212.143.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 SPF_HELO_FAIL SPF: HELO does not match SPF record (fail)
	*      [SPF failed: Please see http://www.openspf.org/Why?s=helo;
	id=emtekalloys.com; ip=199.212.143.9;
	r=yocto-www.yoctoproject.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from emtekalloys.com (cpanel4.indieserve.net [199.212.143.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9325E00D3E
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2019 06:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=C21iFXAyFWwkruaZhiGuJ2QRifYYsyg/2TLD0Ib79sY=;
	b=hIQPl28ycSNvtmUCZAzLzjFAx
	+T7kiF5LrEZJta1v/7AuWxIVTHEdslKHC1pVAT1FHIzzb84j+z2cqCt4YyvsYYR8SYMBdMoh/3+jq
	B3XDqFEtXwgmc6ewMhj2La1SdJc4U2oVlxHZe3SAiMjsptZbIeOQZ7/LXJycZM50pqgu1CD0KsKm/
	vUbytRaCcz74MbLgVimbPWv7w9Wn1iq86c5dY3MPT6BzehLaDYsJNTCLE1uvALxV//cfrTsgitrW9
	8gnDMqkbkVWL1fsIW6yOaTAHjsPtW/SoivnkygdW/0AvPz6BwCJAujVB6G6kj52+2XdXTv3CuHw4z
	2Ya8Oq9jg==;
Received: from [72.142.126.219] (port=41384 helo=localhost.localdomain)
	by cpanel4.indieserve.net with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1hJe2E-0007Kp-8w; Thu, 25 Apr 2019 09:03:31 -0400
Date: Thu, 25 Apr 2019 09:03:29 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: "Bach, Pascal" <pascal.bach@siemens.com>
In-Reply-To: <355BE46A91031048906B695426A8D8E62EA52CDA@DENBGAT9EL2MSX.ww902.siemens.net>
Message-ID: <alpine.LFD.2.21.1904250858410.5941@localhost.localdomain>
References: <alpine.LFD.2.21.1904250752050.457@localhost.localdomain>
	<355BE46A91031048906B695426A8D8E62EA52CDA@DENBGAT9EL2MSX.ww902.siemens.net>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-0.2
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel4.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel4.indieserve.net: authenticated_id:
	rpjday+crashcourse.ca/only user confirmed/virtual account not
	confirmed
X-Authenticated-Sender: cpanel4.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: ASSUME_PROVIDED, cmake-native and why cmake is subsequently not found?
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
X-List-Received-Date: Thu, 25 Apr 2019 13:03:43 -0000
Content-Type: text/plain; charset=US-ASCII

On Thu, 25 Apr 2019, Bach, Pascal wrote:

> rday wrote:

> >   finally, regarding ASSUME_PROVIDED, given that i'm already
> > living life dangerously with an unsupported distro, is there any
> > harm in just loading up on ASSUME_PROVIDED packages, as long as
> > they work? in many cases, i can see that the version that would be
> > built by YP is close to, if not identical to, my host version. so
> > other than risking breakage down the line as versions change, as
> > long as the host packages work, is there any harm in just taking
> > advantage of them?
>
> Generally it's fine to use ASSUME_PROVIDED if you don't mind the
> dependency between the build host and Yocto.

  as i mentioned, i'm already living life on the edge doing all this
on fedora 30 branched (the unofficial next release), so i'm quite
prepared to trip over versioning issues, and testing all this against
F30 at least warns me about upcoming issues that i might be able to do
bug reports or patches against ahead of time.

  and it's easy to see there's a *ton* of packages i can assume
natively that should be fairly safe; in many cases, the version that
would be built by YP is exactly the same version i already have
natively. in other cases, the difference might be a micro-version off.

  anyway, i probably wouldn't have bothered with this if it weren't
for that cmake issue. but let's see where this goes.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                         http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

