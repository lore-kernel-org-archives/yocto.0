Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E06AE013BA
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2012 07:47:56 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3IElrfq002577;
	Wed, 18 Apr 2012 15:47:53 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02088-03; Wed, 18 Apr 2012 15:47:49 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3IEliEu002570
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 18 Apr 2012 15:47:45 +0100
Message-ID: <1334760467.24091.100.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto <yocto@yoctoproject.org>, openembedded-core
	<openembedded-core@lists.openembedded.org>
Date: Wed, 18 Apr 2012 15:47:47 +0100
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: Yocto Project 1.2 Release Status
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
X-List-Received-Date: Wed, 18 Apr 2012 14:47:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I thought I'd update everyone with the current 1.2 status.

I'm going to branch master for release at this point. We've fixed a lot
of issues, I'm hoping the -rc4 build will be a good one. There are signs
there are some more minor issues around and bugs do keep getting opened.
These are still being investigated so we'll continue to let that happen.
Once we have a QA report for -rc4, we'll be in a better position to make
a call on how things are looking.

If people don't have 1.2 issues to work on, I'd like people to start
looking at the bugs marked as 1.2.1. The reasoning here is simple, if we
do have to go to a -rc5 and the fixes are good enough, they might make
it into 1.2 (but no promises). We need to fix these issues in master and
for any 1.2.1 release anyway. I'd prefer people not to start working on
new features at this point but concentrate on improving the quality of
the release and fixing bugs.

Cheers,

Richard




