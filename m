Return-Path: <prvs=2587fa4da=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32A3EE0053E; Mon,  7 Jul 2014 06:19:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B7C9E0030B
	for <yocto@yoctoproject.org>; Mon,  7 Jul 2014 06:19:17 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AqAEANydulOsEApK/2dsb2JhbABag2Baxi+BNnWERA1aFDROiFoItUeUIhePP4QtBZp1gUmFcJAZgi4
X-IPAS-Result: AqAEANydulOsEApK/2dsb2JhbABag2Baxi+BNnWERA1aFDROiFoItUeUIhePP4QtBZp1gUmFcJAZgi4
Date: Mon, 7 Jul 2014 15:18:55 +0200
From: Richard Leitner <richard.leitner@skidata.com>
To: <yocto@yoctoproject.org>
Message-ID: <20140707151855.1f43b39a@lxbuild.skidata.net>
Organization: SKIDATA AG
MIME-Version: 1.0
X-Originating-IP: [172.16.60.30]
Subject: Fetcher failure for git repository using tag name in SRCREV
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
X-List-Received-Date: Mon, 07 Jul 2014 13:19:26 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

Hi folks,
I've ran into a problem using tag names in SRCREV for git repositories after migrating from 1.4 to 1.6.1 "daisy".

Before (1.4) the following worked fine:
	SRCREV = "v${PV}"
	SRC_URI = "git://github.com/rleitner/psplash.git;protocol=https"

When using 1.6.1 the following error message is produced:
	ERROR: Function failed: Fetcher failure for URL: 'git://github.com/rleitner/psplash.git;protocol=https'. The command git ls-remote https://github.com/rleitner/psplash.git refs/heads/v2014-02-03 refs/tags/v2014-02-03^{} gave empty output unexpectedly

I think the refs/heads argument in the git ls-remote call should contain the branch instead of the tag name.
A "fixed" call would then look like this:
git ls-remote https://github.com/rleitner/psplash.git refs/heads/master refs/tags/v2014-02-03^{}

I also think I've found the error in the source and will send a patch in reply to this message.

regards,
richard

