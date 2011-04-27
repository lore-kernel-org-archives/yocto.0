Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 30CBC4C80332
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2011 02:56:07 -0500 (CDT)
Received: by wwd20 with SMTP id 20so1450067wwd.11
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2011 00:56:06 -0700 (PDT)
Received: by 10.216.62.74 with SMTP id x52mr850969wec.45.1303890965829;
	Wed, 27 Apr 2011 00:56:05 -0700 (PDT)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id c54sm212551wer.6.2011.04.27.00.56.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 27 Apr 2011 00:56:04 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4DB786E3.4080800@linux.intel.com>
Date: Wed, 27 Apr 2011 09:56:03 +0200
Message-Id: <B23A229A-15A2-491F-BFE9-4C9BB5F681FB@dominion.thruhere.net>
References: <4DB786E3.4080800@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1084)
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 27 Apr 2011 07:56:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


Op 27 apr 2011, om 05:00 heeft Darren Hart het volgende geschreven:

> git.yoctoproject.org hosts a number of different repositories, some of
> which host limited user contributions (such as poky-contrib). These
> repositories are setup and administered by a yoctoproject.org system admin.
> 
> As our developer base grows, the need for user creatable git trees also
> grows. Eventually, *-contrib isn't going to scale, and neither will the
> system admin. There are plenty of available places individuals can
> create publicly accessible trees (github, kernel.org, or any number of
> similar sites). However, I think it would be beneficial for at least
> very active developers to be able to create and destroy trees on a whim,
> without having to involve the system admin with each event.
> 
> kernel.org provides a git web interface for user created trees. I'd like
> to see something similar available at yoctoproject.org in order to
> establish single place to go looking for "yocto developer trees". Users
> would have to justify their request for a user account and agree to a
> terms of use. This has served the Linux kernel community very well. I
> think it could do the same for us.
> 
> Note: I am not offering to setup such a service or even say that it's
> possible with the current resources. I just wanted to throw the idea out
> there and see if others have found a similar gap in the development
> environment and if this idea would address that gap.


Have you though about setting up a gitorious instance on git.yocto? 

Regards,

Koen

