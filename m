Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 622C9E00E41; Thu, 19 Jul 2018 05:36:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.158.149 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtpcmd05149.aruba.it (smtpweb149.aruba.it [62.149.158.149])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44E2BE00E41
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 05:36:20 -0700 (PDT)
Received: from [10.0.3.122] ([78.6.3.122])
	by smtpcmd05.ad.aruba.it with bizsmtp
	id CccJ1y00D2dwwGE01ccKRS; Thu, 19 Jul 2018 14:36:19 +0200
From: Mauro Ziliani <mauro@faresoftware.it>
To: Yocto Project <yocto@yoctoproject.org>
Message-ID: <ee33909d-862b-cbd6-0e72-79dbf568b781@faresoftware.it>
Date: Thu, 19 Jul 2018 14:36:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1532003779; bh=ITq0Vt32OOMFeBM6caYrO6WQaBJI8InO2moZFGkzpfo=;
	h=From:Subject:To:Date:MIME-Version:Content-Type;
	b=UqwZywp8BpuKjQ5h/Simvcwge+soDYdsatxQFSEmnQvJkQG6BZAKYzsfMrHWwPmVj
	d+JjbSkPepsunmOTrWwRxUN81crR/S4N2NOqe+FeGv3mRz9Fo/xAokPLK/LnqdvGOY
	aylo9eb+vFN4qL1KVHisE/P8tBpduENilzCxu1QX9jsCQiI0cdEDh1D71vAp9Q695j
	rAw8Cp6n/qwKfRcfBScAIBQgzvGxidaAneHXWUTjiUnPcl6nmS9iHEPjwt2Dw2k2F8
	UmhBeR2GS2/2K85HkTedAMbQ+9pMyDWCJZeZVcDjIZLcw/RELFGn27txsfZIXA2+FE
	3kFlTde72E/9A==
Subject: Setting recipe version inside an image recipe
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
X-List-Received-Date: Thu, 19 Jul 2018 12:36:23 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all

I'm working with Krogoth.

I'd like to do this.

- I have my application added to yocto tree by its own recipe myapp_git.bb

This recipe get the source code from a local git repository setting  
SRCREV for the last stable application source code.

SRCREV is fixed in myapp_git.bb


- I have the recipe for the final production image for the embedded  
system  myos.bb, which declare

IMAGE_INSTALL_append = " myapp "

The myos.bb compiles myapp with the version declare in myapp_git.bb recipe


I'd like to do that

- prepare a base recipe myos-base.inc  where I define all I need the 
produce the final image with

IMAGE_INSTALL_append = " myapp "

- prepare myos.bb recipe where I can fix the version of myapp.bb to a 
prpduction version

- prepare myos-test.bb recipre where I can fix the HEAD branch of git 
from I can download the  latest source code for test.


I try this

- inside myapp_git.bb I put SRCREV="${MYAPP_SRCREV}"

- inside myos.bb I set MYAPP_SRCREV="prodution-version-X" to download 
the tag/branch production-version-X

- inside myos-test.bb I set MYAPP_SRCREV="${AUTOREV}" to download the 
latest git commit



Any idea?


MZ


