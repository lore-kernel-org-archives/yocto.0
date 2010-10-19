Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 31D414C80121
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 07:55:42 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9JCtdEb031103;
	Tue, 19 Oct 2010 13:55:39 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 30655-07; Tue, 19 Oct 2010 13:55:35 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9JCtV4s031097
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 19 Oct 2010 13:55:31 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <4CBCEDC4.3020709@intel.com>
References: <4CBCEC3C.5090003@intel.com>  <4CBCEDC4.3020709@intel.com>
Date: Tue, 19 Oct 2010 13:55:26 +0100
Message-ID: <1287492926.1720.1342.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: New issue with git fetcher?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Oct 2010 12:55:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-10-18 at 18:00 -0700, Scott Garman wrote:
> On 10/18/2010 05:54 PM, Scott Garman wrote:
> > Hi Richard,
> >
> > This afternoon I performed a build from scratch using master, which
> > included your git fetcher change to use mirror tarballs
> > (1077021f7010388e889d85630b13c4c7901d7718).

Thanks for testing and reporting this quickly, its appreciated.

> As a follow-up, when I revert this commit, -c clean and then -c fetch 
> succeeds for linux-wrs.

but fails for libzypp :/.

I started debugging the fetcher code and the whole thing basically fell
apart as I was finding all kinds of issues, some of which we're just not
hitting by pure luck. I had hoped that code would last us into the 1.0
development window when I've some significant fetcher changes in mind.
Short summary is that its not going to do that.

I've pushed some more invasive changes to the fetcher in the Poky master
branch. I'd appreciate the teams help in finding out if these work or
not, with both existing builds and with totally fresh from scratch
builds.

If they prove not to have major issues we're likely to merge these into
the release branch as what is there is going to bite people and look
rather bad.

Cheers,

Richard



