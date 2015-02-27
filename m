Return-Path: <clemens.lang@bmw-carit.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 641E6E008DC; Fri, 27 Feb 2015 04:03:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [62.245.222.98 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94CA7E0077E
	for <yocto@yoctoproject.org>; Fri, 27 Feb 2015 04:03:01 -0800 (PST)
Received: from exchange2010.bmw-carit.intra ([192.168.100.28]:42676
	helo=mail.bmw-carit.de)
	by mail.bmw-carit.de with esmtps (TLSv1:AES128-SHA:128)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <Clemens.Lang@bmw-carit.de>)
	id 1YRJd3-0005Hx-13; Fri, 27 Feb 2015 13:02:49 +0100
Received: from localhost (10.242.6.42) by Exchange2010.bmw-carit.intra
	(192.168.100.28) with Microsoft SMTP Server (TLS) id 14.1.218.12;
	Fri, 27 Feb 2015 13:02:48 +0100
Date: Fri, 27 Feb 2015 13:02:48 +0100
From: Clemens Lang <clemens.lang@bmw-carit.de>
To: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
Message-ID: <20150227120248.GB13973@ulm-bmuc496424.bmw-carit.de>
References: <20150223142243.GB11425@ulm-bmuc496424.bmw-carit.de>
	<20150226144237.GP11425@ulm-bmuc496424.bmw-carit.de>
	<54EF9B73.3050905@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <54EF9B73.3050905@linux.intel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Originating-IP: [10.242.6.42]
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] bitbake: fetch2: Revalidate checksums, YOCTO #5571
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
X-List-Received-Date: Fri, 27 Feb 2015 12:03:06 -0000
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Alejandro,

On Thu, Feb 26, 2015 at 04:17:23PM -0600, Alejandro Hernandez wrote:
> This is the problem I see, I am not sure we want to import extra libraries
> here, as you state the use of pickle might be ok since it avoids the
> overhead of calculating the checksums each time, but I don't know if it is
> actually worth it, since checksums are calculated fairly quick anyway, this
> is my personal opinion, you may still submit it for review.

I don't think the use of cPickle is an issue here. It's already widely
used in other parts of the bitbake codebase. I agree one could just
re-compute the checkums every time, but that might take a while for
larger downloaded files, especially for SHA-256.

> And perhaps the reason it hasn't been reviewed is that I believe this
> patch should go to bitbake-devel@lists.openembedded.org instead.

I've re-sent the patch to bitbake-devel, thanks for the pointer.

> I also had this WIP branch on contrib, its from a couple of months
> back its "dirty" but in case you'd like to look around.
> 
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=hsalejandro/5571&id=2f59e26e534dc6b6d4c5bb8d78c574042e0fe7a7

Thanks, that was helpful in confirming that my approach isn't completely
unreasonable.


Clemens
-- 
Clemens Lang • Development Specialist
BMW Car IT GmbH • Lise-Meitner-Str. 14 • 89081 Ulm • http://bmw-carit.com
-------------------------------------------------------------------------
BMW Car IT GmbH
Geschäftsführer: Michael Würtenberger und Reinhard Stolle
Sitz und Registergericht: München HRB 134810
-------------------------------------------------------------------------

