Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EE41E00BAA; Fri,  3 May 2019 09:46:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [199.212.143.9 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from somersetfoodbank.org (cpanel4.indieserve.net [199.212.143.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB8A9E00950
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 09:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=hOocGqSC74FLHT2nQGnl/KiPWapZtoZ6qDc2dbMB+tQ=;
	b=vP8nAS0TZEmY7rgwL13dWuV8J
	RI6MDHaIhUKWWwtnvGmyuLWTAdM3b+5K5AIl1T4VdWceMpj65LxDGkpu2GKVxyShpD3Ba8xKCt8db
	zOi3WC6RDzP+IxJnmeTax3EoquoS3f8Mz3LnbWvN3IEY44unUGbNY+FHMypG+Y8YUVv8XgJrCkAFe
	MybL/ms0l0YOstOhlhArI8Aofbypj+lmxmDVV56YJAuhmZMeS0HFdweM4Oda2VBvjBV5fgwUcyTsh
	dcvxiwj/M7S3sjLmKuQHLVZ3Vy0y8cnJoYtl6RDWlhGLfjCgER5V0fSBDMhdyzOES7mtT/J5CzxZg
	4p1Ob7dvQ==;
Received: from [72.142.126.219] (port=40644 helo=localhost.localdomain)
	by cpanel4.indieserve.net with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1hMbJx-0004RK-6r; Fri, 03 May 2019 12:46:04 -0400
Date: Fri, 3 May 2019 12:46:00 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Richard Purdie <richard.purdie@linuxfoundation.org>
In-Reply-To: <6caac371fa9de14a173320c36dc5405f68aae199.camel@linuxfoundation.org>
Message-ID: <alpine.LFD.2.21.1905031244280.2859@localhost.localdomain>
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
X-List-Received-Date: Fri, 03 May 2019 16:46:07 -0000
Content-Type: text/plain; charset=US-ASCII

On Thu, 25 Apr 2019, Richard Purdie wrote:

> On Thu, 2019-04-25 at 08:05 -0400, Robert P. J. Day wrote:

> > /home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/cmake-
> > native/3.12.2-r0/build/Bootstrap.cmk/cmake:
> > /home/rpjday/oe/builds/zedboard/tmp/sysroots-uninative/x86_64-
> > linux/usr/lib/libstdc++.so.6:
> > version `GLIBCXX_3.4.26' not found (required by
> > /home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/cmake-
> > native/3.12.2-r0/build/Bootstrap.cmk/cmake)
> > > ---------------------------------------------
> > > Error when bootstrapping CMake:
> > > Problem while running initial CMake
> > > ---------------------------------------------
>
> This probably means that your system c library is newer than the one
> in uninative and things aren't working because of that. Either try:
>
> http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=5f6156b32c9d17bdb06d67199373433b0e470cc7

  that patch is already in thud branch of poky i'm using ...

> or turning off uninative.

  yes, that seems to have solved things for now:

    INHERIT_remove = "uninative"

moving on to the next head-scratcher ...

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                         http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

