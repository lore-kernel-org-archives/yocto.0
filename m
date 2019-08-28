Return-Path: <bradleyb@fuzziesquirrel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 567EFE00DAF; Tue, 27 Aug 2019 17:00:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bajor.fuzziesquirrel.com (mail.fuzziesquirrel.com
	[173.167.31.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36D6CE00DAA
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2019 17:00:29 -0700 (PDT)
X-Virus-Scanned: amavisd-new at fuzziesquirrel.com
Message-ID: <68bddbec8c08cbd9d31f561222bb3afde814a94b.camel@fuzziesquirrel.com>
From: Brad Bishop <bradleyb@fuzziesquirrel.com>
To: akuster808 <akuster808@gmail.com>, Jae Hyun Yoo
	<jae.hyun.yoo@linux.intel.com>
Date: Tue, 27 Aug 2019 20:00:56 -0400
In-Reply-To: <fbcfc988-687f-55ad-1ca9-ace092f09a99@gmail.com>
References: <038f49d9-099e-dabd-2957-d31e7b8bbf41@linux.intel.com>
	<628d5b4c-63d4-78b6-83d8-1781cbc86e0f@linux.intel.com>
	<7694CCA3-89BD-44FE-90D1-99569476E980@fuzziesquirrel.com>
	<fbcfc988-687f-55ad-1ca9-ace092f09a99@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
	James Feist <james.feist@linux.intel.com>
Subject: Re: Build break in the latest openbmc tree.
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
X-List-Received-Date: Wed, 28 Aug 2019 00:00:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2019-08-25 at 10:49 -0700, akuster808 wrote:
> the meta-security layer should be fix now.
> 
> please update and let me know if not.

Thanks Armin!

Jae, I've pulled this into OpenBMC.  Can you give it a try?

-brad

