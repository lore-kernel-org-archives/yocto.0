Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A078E008A6; Mon,  2 Feb 2015 08:42:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19E49E0091D
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 08:42:49 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 42FDBF811D7; Mon,  2 Feb 2015 09:42:49 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id BE0FCF811D7;
	Mon,  2 Feb 2015 09:42:48 -0700 (MST)
Message-ID: <54CFA908.7010507@mlbassoc.com>
Date: Mon, 02 Feb 2015 09:42:48 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: sstate management
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
X-List-Received-Date: Mon, 02 Feb 2015 16:42:54 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm looking into using sstate more and in particular sharing
it amongst a number of builds.  I have a couple of questions
which I didn't find much info about.

* The sstate-cache for a given build/target seems to grow
   without bounds.  I have one build which I've been reusing
   since last November has grown to 62GB.  A very similar
   build which hasn't see quite so many 'bakes' is only 27GB.

   Is there some maintenance to be done on the sstate-cache?
   I'm thinking I want to set up a shared cache which might
   last for a long time and I would like to only keep the bits
   that are really needed.

* The second operational question I have is if I have a shared
   sstate cache and I make some sort of build, what is the best
   way (if any) to share any newly created objects so that my
   other builds can make use of them?

I've not actually tried to share any caches yet, so these
questions are just based on my rough understanding of the
use of sstate.  Please feel free to correct me if I've got
it [totally] wrong.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

