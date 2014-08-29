Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69B72E0078E; Fri, 29 Aug 2014 12:24:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 487B8E00524
	for <yocto@yoctoproject.org>; Fri, 29 Aug 2014 12:24:25 -0700 (PDT)
Received: from [192.168.1.10] (c-68-38-40-177.hsd1.nj.comcast.net
	[68.38.40.177])
	by smtp.webfaction.com (Postfix) with ESMTP id 1E5F0228DAE2
	for <yocto@yoctoproject.org>; Fri, 29 Aug 2014 19:24:23 +0000 (UTC)
Message-ID: <5400D366.8050207@mindchasers.com>
Date: Fri, 29 Aug 2014 15:24:22 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [yocto-docs] should I be able to make the docs without warnings?
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
X-List-Received-Date: Fri, 29 Aug 2014 19:24:31 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I'm thinking about chasing down some of the warnings I see when I make 
the docs (pdf) in yocto-docs.

However, it's not clear to me whether the warnings I get are to be 
expected or can be configured out.

I don't see that the auto builder is used to build the docs. Therefore, 
can someone please point me to a known good log or at least let me know 
that I should be able to make the docs without warnings.

Thanks,

Bob


