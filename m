Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD69CE00A7D; Wed, 12 Aug 2015 02:17:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE744E00A26
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 02:17:41 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 431FE27E329;
	Wed, 12 Aug 2015 09:17:40 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id tlJWOhHyyXpn; Wed, 12 Aug 2015 09:17:39 +0000 (UTC)
Received: from [192.168.0.2] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net
	[86.17.157.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 28E6427E30B;
	Wed, 12 Aug 2015 09:17:37 +0000 (UTC)
To: Yocto <yocto@yoctoproject.org>, Andrei Gherzan <andrei@gherzan.ro>,
	=?UTF-8?Q?Petter_Mab=c3=a4cker?= <petter@technux.se>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
X-Enigmail-Draft-Status: N1110
Message-ID: <55CB0F2C.3020403@dynamicdevices.co.uk>
Date: Wed, 12 Aug 2015 10:17:32 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
Subject: [meta-raspberrypi] RFC on choice of tool for patch review
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
X-List-Received-Date: Wed, 12 Aug 2015 09:17:43 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit


We've been having a discussion on a way forward to manage patches and
code review and would like to open this up for discussion to agree a way
forward.

Options appear to be github, gerrit, or bitbucket although there may be
others. This is in addition to continuing to send patches to the mailing
list.

Quote from Andrei,

"We dropped gerrit because at that time google dropped the support for
loging in with their accounts and gerrit didn't support OAUTH. The only
options left were involving me maintaining users / groups / permissions
etc - which obviously didn't have the time for. So, at that time, we
decided to use mailing list as the only way of patches review.

Now, I work with github, bitbucket and gerrit and I definitely, as Alex
said, feel the need of reviewing patches using a tool like these. But I
want to state the fact that, even if we decide using them, we will still
need to send patches to mailing list too - so we can keep the awareness
of this project. In terms of preference, I don't really have one. The
easiest would be github/bitbucket but I can invest some time in
installing gerrit back (as they now have the required support for google
accounts logins). So, I consider this is a community decision and, if a
have to vote, I would go for github."

Quote from Petter,

"About using github and similar, I'm a huge fan of gerrit [...] Gerrit
is really nice for reviewing and working closely together with similar
changesets that are ongoing.."

...

For my five euro-cents, I have used Gerrit a little and GitHub more. I
found Gerrit hard to get to grips with, but have been impressed with
GitHub.

So my own preference would be to use github as the UI and
fork/pull-req/commenting support all seems very accessible and intuitive.

Can others comment?

Thanks,

Alex

