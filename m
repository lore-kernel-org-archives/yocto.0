Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E889E00D26; Mon, 29 Feb 2016 06:07:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23CEFE00CBC
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 06:06:58 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u1TE6jAZ009360
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 29 Feb 2016 06:06:45 -0800 (PST)
Received: from soho-mhatle-m.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 29 Feb 2016 06:06:44 -0800
To: Philip Tricca <flihp@twobit.us>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <56D274C6.90607@twobit.us> <56D27649.4040306@twobit.us>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <56D45073.3050800@windriver.com>
Date: Mon, 29 Feb 2016 08:06:43 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <56D27649.4040306@twobit.us>
Subject: Re: [meta-selinux] git recipes
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
X-List-Received-Date: Mon, 29 Feb 2016 14:07:01 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

On 2/27/16 10:23 PM, Philip Tricca wrote:
> Adding a sensible subject.

Sorry couldn't reply when I saw this when you first sent it.  Corporate email
server went down for those of us who DON'T use outlook.. argh..

Anyway..

What I'm generally used to in the Yocto Project work is that the 'git' version
picks a specific git snapshot and makes it a quick operation for someone to
arbitrarily change that snapshot by adjusting the SRCREV.

We don't use the AUTOREV parameter, because that causes the system to have to do
a git pull in order to evaluate the available versions and determine the SRCREV
to use.  So it's all down to a parsing and performance issue.

What I've done on some of my own projects is have an AUTOREV version (locally),
then when it triggers a recipe breakage, I think update the SRCREV and fix it in
the remote tree..  so I get the autorev, the world gets a version of the package
that keeps working.  (I also update the SRCREV other times as well.. but the
autorev breakage is one of the key triggers.)

Joe might have some suggestions as well, I'm not against AUTOREV per say, but I
am worried about any performance issues during the parse.

--Mark

> On 02/27/2016 08:17 PM, Philip Tricca wrote:
>> While going through the backlog I ran across the 'git' versions of the
>> user space. I noticed that a recent contribution was adding a patch to
>> the git recipe and I figured that this patch would already be upstream
>> and so wouldn't be necessary. Not so. The 'git' versions have SRCREV
>> hard wired (SRCREV) to a commit id but it's way back from the end of
>> 2013. They're also disabled via DEFAULT_PREFERENCE = "-1"
>>
>> These 'git' versions seem super useful for testing bleeding edge stuff
>> so IMHO keeping them around would be the right thing to do. Not sure how
>> I feel about them tracking an ancient commit though. Since they're never
>> built by default it seems reasonable to track the master branch.
>>
>> What's our philosophy w/r to recipes that pull from git? Is there some
>> history behind this SRCREV?
>>
>> Thanks,
>> Philip
>>
> 


