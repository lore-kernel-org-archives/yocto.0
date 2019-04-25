Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 642ECE00CD6; Thu, 25 Apr 2019 06:06:21 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1534E00C14
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2019 06:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=bHZnTcUL1qTQuoTQ5Uyrn3GC+gz243+IH6M16v/ybB0=;
	b=qLnemkX5nhIiwhkBAqRgysN21
	NVb3O7D0mcZAw7/qoprqez08D+DvM7z9wOyCIzlgMooTddoEOFAxdP7eCRpzNl8o4KJujJ0+ridwO
	/uRGhdFys5mRQ3l8PxN0WDliMX1jLEoTYtHn6FUD4dcg+RcS0/gyaeo5t4attKOjqwwBobueERcxH
	hmhmshdvXWwag+ODybKxiAB4dlXBls0ksetTW6in/TFXny0Iol8QCcfT++izMIrWlhfNbyLRHttS8
	RQPyeyiO5KFIewScpsh8MhfhN+0KbSld2GtbY2UQhwlSpLNt/WpZIob/F8R10yuG9ADBmUgJ1cs/w
	wCS/0AAIg==;
Received: from [72.142.126.219] (port=41406 helo=localhost.localdomain)
	by cpanel4.indieserve.net with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1hJe4w-0008Br-Au; Thu, 25 Apr 2019 09:06:19 -0400
Date: Thu, 25 Apr 2019 09:06:17 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Richard Purdie <richard.purdie@linuxfoundation.org>
In-Reply-To: <bd9c72684e1c6f13df84c02144b738f908332afd.camel@linuxfoundation.org>
Message-ID: <alpine.LFD.2.21.1904250905030.2351@localhost.localdomain>
References: <alpine.LFD.2.21.1904250752050.457@localhost.localdomain>
	<355BE46A91031048906B695426A8D8E62EA52CDA@DENBGAT9EL2MSX.ww902.siemens.net>
	<alpine.LFD.2.21.1904250826460.20238@localhost.localdomain>
	<bd9c72684e1c6f13df84c02144b738f908332afd.camel@linuxfoundation.org>
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
X-List-Received-Date: Thu, 25 Apr 2019 13:06:21 -0000
Content-Type: text/plain; charset=US-ASCII

On Thu, 25 Apr 2019, Richard Purdie wrote:

   ... big snip of warning me about what i'm trying to do ...

> This is a bad idea and you're on a path to madness ;-)

  i already knew that ... i did admit i've been out of YP for a while
and have a lot of catching up to do. i suspect my next few days will
be full of reading.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                         http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

