Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8142E4C801BF
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 11:29:33 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9JGTUQT001646;
	Tue, 19 Oct 2010 17:29:30 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01346-05; Tue, 19 Oct 2010 17:29:26 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9JGTOB9001639
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 19 Oct 2010 17:29:24 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <1287492926.1720.1342.camel@rex>
References: <4CBCEC3C.5090003@intel.com>  <4CBCEDC4.3020709@intel.com>
	<1287492926.1720.1342.camel@rex>
Date: Tue, 19 Oct 2010 17:29:18 +0100
Message-ID: <1287505758.1720.1673.camel@rex>
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
X-List-Received-Date: Tue, 19 Oct 2010 16:29:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-10-19 at 13:55 +0100, Richard Purdie wrote:
> I've pushed some more invasive changes to the fetcher in the Poky master
> branch. I'd appreciate the teams help in finding out if these work or
> not, with both existing builds and with totally fresh from scratch
> builds.
> 
> If they prove not to have major issues we're likely to merge these into
> the release branch as what is there is going to bite people and look
> rather bad.

There were some issues that Tom and Joshua were seeing which I debugged
and found that we weren't adding in new branches in the fetching code.

I was able to reproduce and then have added a patch to the git fetcher
which ensures these things are cloned correctly and any new branches are
created. I talked with Bruce to confirm my diagnosis and the solution.

This fix makes an awful lot of sense and explains various issues we've
been chasing for a while with the fetcher bugs so I'm very pleased to
have this fix checked in.

Could people continue to test the code and report any problems...

Thanks,

Richard





