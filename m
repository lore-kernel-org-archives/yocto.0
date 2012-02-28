Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2450EE0123C
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2012 13:55:46 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S2V1M-0005G4-GE; Tue, 28 Feb 2012 16:55:44 -0500
Date: Tue, 28 Feb 2012 16:55:38 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <4F4D457F.7000306@windriver.com>
Message-ID: <alpine.DEB.2.02.1202281651040.8024@oneiric>
References: <alpine.DEB.2.02.1202281349020.2440@oneiric>
	<4F4D457F.7000306@windriver.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: proper recipe for building for beagle xM? meta-ti?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 28 Feb 2012 21:55:46 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 28 Feb 2012, Bruce Ashfield wrote:

> It is true that the beagleboard is a hardware reference board in the
> yocto consolidated kernel tree and meta-yocto layers. That means
> that it gets the yocto standard QA builds and boot testing.
>
> That being said, if you are looking for the latest + specific
> features then you've been pointed in a good direction .. meta-ti
> will meet your needs.
>
> As for disentangling and reducing questions in this area .. rest
> assured, we are working on it.

  ok, that's perfectly reasonable -- meta-yocto provides a generic,
well-tested product, while the meta-ti layer provides more
leading-edge content, correct?  which is a perfectly respectable
answer.

  but the impression i got from koen is that this wasn't even the
right forum to ask such a question.  so i'm a bit confused -- can i
just use the combination of yocto + meta-ti to build a fairly
up-to-date image for my beagle xM or not?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

