Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED401E00D11; Tue,  1 Mar 2016 20:20:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72B2FE00D08
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 20:20:06 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=[10.79.148.125])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1aayFt-0005o3-GP; Wed, 02 Mar 2016 04:19:22 +0000
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Philip Tricca <flihp@twobit.us>
Message-ID: <56D669FE.8080203@twobit.us>
Date: Tue, 1 Mar 2016 20:20:14 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.6.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux] Jethro branch
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
X-List-Received-Date: Wed, 02 Mar 2016 04:20:09 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hey all,

meta-selinux has been tracking release branches for a while but we're
missing a Jethro. I've had a Jethro branch on my github fork for a bit.
It's pointing at 4c75d9cbc from master with no additional changes. Both
images build, boot, login and pass the basic smoke test. Seems like this
may be useful to others so I'll put it up in the yocto repo as well.

If anyone tests or uses it and runs into any problems with it please let
the list know.

Philip

