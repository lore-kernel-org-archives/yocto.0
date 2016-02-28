Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA8ADE00C4F; Sat, 27 Feb 2016 17:53:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E8C9E00BBF
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 17:53:24 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=[10.79.148.125])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1aZqXL-0003Fg-M3; Sun, 28 Feb 2016 01:52:44 +0000
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Philip Tricca <flihp@twobit.us>
Message-ID: <56D2531C.6040204@twobit.us>
Date: Sat, 27 Feb 2016 17:53:32 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.6.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux] updates
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
X-List-Received-Date: Sun, 28 Feb 2016 01:53:28 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello all,

I've made a pass back over the meta-selinux backlog and pulled in the
commits necessary to get master building again. Many thanks to those who
posted patches. The next thing I'll be focusing on is a second pass over
the backlog to pull in the remaining bits. Thanks for all of your patience.

I'm also realizing that we don't have a release branch for Jethro. Since
we've tracked releases in the past I figure this should be something we
consider taking on too. I don't imagine it will be a large task but I'll
be hacking up a prototype to confirm / disprove this theory. The
unfortunate bit is that I've pushed the patches necessary to get master
building which likely means that a Jethro branch will require reverting
commits to get older package versions or will need to be based on an
older commit with some likely cherry-picking of things from master.

Thoughts?

Thanks,
Philip

