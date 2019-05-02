Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01A4DE00D2A; Thu,  2 May 2019 08:51:02 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5DB0E008F2
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 08:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=7aBwuWr90WdaFpF8VQoxqFyePfaYsRdZMcGL8BzfMrM=;
	b=OmU6l5lSM4JnVtOIB7ujwsSy4
	Rp0ezc/mFi9YCoTIQZnVgqUKvFoVpmp/+tgfd+9B5q2cnQkMdaUwiAYmRkFPssz8xqAMUxGEAtXdf
	R0pp/6CxIYDbMvcQ9+CSvaDlg6Qp5l3TYaiA0DXCJ9ciZU9QYrN/y6WD2Fvtex+FiVA1tdYSbPva9
	Kf74ORqzOqq4zYYJTujNFn7csF+vXGoJTdZTESEaeG8X+0mlLsZu5urLtPL0R+SNohEIoiAsweFS6
	q3wpBVZLXdIC7wTLruVkm6OpfVJDJwhVAONeYU6uqOviHo8gJBg4u/8CoG4SB+vSMkJL9WIeH5TCG
	6LEOyFwkg==;
Received: from [72.142.126.219] (port=47904 helo=localhost.localdomain)
	by cpanel4.indieserve.net with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1hMDz8-00008f-Ic; Thu, 02 May 2019 11:50:59 -0400
Date: Thu, 2 May 2019 11:50:57 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Richard Purdie <richard.purdie@linuxfoundation.org>
In-Reply-To: <6caac371fa9de14a173320c36dc5405f68aae199.camel@linuxfoundation.org>
Message-ID: <alpine.LFD.2.21.1905021145480.13108@localhost.localdomain>
References: <alpine.LFD.2.21.1904250752050.457@localhost.localdomain>
	<6caac371fa9de14a173320c36dc5405f68aae199.camel@linuxfoundation.org>
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
X-List-Received-Date: Thu, 02 May 2019 15:51:02 -0000
Content-Type: text/plain; charset=US-ASCII

On Thu, 25 Apr 2019, Richard Purdie wrote:

> On Thu, 2019-04-25 at 08:05 -0400, Robert P. J. Day wrote:

... snip ...

> >   ASSUME_PROVIDED += "cmake-native"
>
> This is a bad idea as we patch cmake iirc.

... snip ...
>
> You would also have to do:
>
> HOSTTOOLS += "cmake"
>
> to allow cmake to be visible from the host system. Its a host
> contamination protection mechanisn that has been there since pyro.

  just to summarize, if one wanted to (perhaps injudiciously) take
advantage of host tools, that requires:

1) ASSUME_PROVIDED to specify the native package that no longer needs
   to be built, and

2) HOSTTOOLS to identify the binary (or binaries) that can be picked
   up from the host

  i can see an obvious example here:

https://patchwork.openembedded.org/patch/140375/

but if this is the case, then it seems that the YP reference manual
should be clarified to explain the association between these
variables. for example, the current ref manual reads:

  ASSUME_PROVIDED

  Lists recipe names (PN values) BitBake does not attempt to build.
  Instead, BitBake assumes these recipes have already been built.

  In OpenEmbedded-Core, ASSUME_PROVIDED mostly specifies native
  tools that should not be built. An example is git-native, which when
  specified, allows for the Git binary from the host to be used rather
  than building git-native.

reading that, a reader would not realize the necessity(?) of setting
HOSTTOOLS, yes?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                         http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

