Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 227344C804D4
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2011 16:04:10 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3RL3xlF005516;
	Wed, 27 Apr 2011 22:03:59 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 04834-03; Wed, 27 Apr 2011 22:03:55 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3RL3pO9005501
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 27 Apr 2011 22:03:54 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
In-Reply-To: <4DB8506B.9000709@intel.com>
References: <4DB786E3.4080800@linux.intel.com>
	<B23A229A-15A2-491F-BFE9-4C9BB5F681FB@dominion.thruhere.net>
	<4DB82C1A.2030008@linux.intel.com>  <4DB8506B.9000709@intel.com>
Date: Wed, 27 Apr 2011 22:03:19 +0100
Message-ID: <1303938199.21461.21.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: Personal git repositories
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
X-List-Received-Date: Wed, 27 Apr 2011 21:04:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-04-27 at 10:20 -0700, Elizabeth Flanagan wrote:
> A few notes, since I talked with Darren about this earlier.
> 
> As one of the people in charge of maintaining the git repo, I would like to avoid having, as Darren suggested, a whole 
> bunch of -contrib repos. However, maybe I'm missing something here, as I think basic git solves this issue:
> 
> Use Case: Tomz has a branch of meta-intel that he has pushed to poky-contrib.git:tomz/foo. dvhart wants to look at it 
> from his local repo:
> 
> git remote add poky-contrib ssh://git@git.pokylinux.org/poky-contrib.git
> git fetch poky-contrib tomz/foo:foo
> git checkout foo
> 
> The fetch allows a sparse checkout of *just* tomz's branch. No need to download all 75M of poky-contrib which is what 
> you would do with "git remote update". Git remote update is the wrong way to do this and I'd like to avoid having to 
> swap infrastructure around when it seems to me that this is just one of those "git being a pain to learn"

Just to add to this discussion, with gitolite, it should be easy to
setup a yocto-contrib repo where each user "owns" the branches under
<keyname>/*. This means as ssh keys are added, they'd automatically get
their own "scratch" area. As Beth points out above, its perfectly
possible to checkout branches and manipulate them as long as you know
the commands. 

This isn't a set of repos per user but when you think about this, how
often do we really need that? Yes, some people like Bruce have usecases
but I'm not sure they're typical and in those small number of cases I'm
sure we can come up with some generic testing/dev repos to assist too.
As soon as something grows to the point where the branch is problematic,
it deserves its own repo and it should be properly namespaced, not user
specific anyway.

Cheers,

Richard


