Return-Path: <marcelo.magallon@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4AA8E00D5D; Wed,  6 Dec 2017 06:56:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.241.32.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 538 seconds by postgrey-1.32 at yocto-www;
	Wed, 06 Dec 2017 06:56:29 PST
Received: from g9t1613g.houston.hpe.com (g9t1613g.houston.hpe.com
	[15.241.32.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30F8CE00CE2
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 06:56:29 -0800 (PST)
Received: from g4t3427.houston.hpe.com (g4t3427.houston.hpe.com
	[15.241.140.73])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g9t1613g.houston.hpe.com (Postfix) with ESMTPS id 4070D61322
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 14:47:31 +0000 (UTC)
Received: from g4t3433.houston.hpecorp.net (g4t3433.houston.hpecorp.net
	[16.208.49.245])
	by g4t3427.houston.hpe.com (Postfix) with ESMTP id 8F8DD57;
	Wed,  6 Dec 2017 14:47:30 +0000 (UTC)
Received: from hpe.com (nyx.americas.hpqcorp.net [10.250.101.104])
	by g4t3433.houston.hpecorp.net (Postfix) with ESMTP id 3457850;
	Wed,  6 Dec 2017 14:47:30 +0000 (UTC)
Date: Wed, 6 Dec 2017 08:47:29 -0600
From: "Marcelo E. Magallon" <marcelo.magallon@hpe.com>
To: "Koehler, Yannick" <yannick.koehler@hpe.com>
Message-ID: <20171206144616.zlfpkmqgz2wsexol@nyx.americas.hpqcorp.net>
References: <CS1PR8401MB0840E46EE333163758C5D9B3ED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
	<d7cac90e-b07c-fe83-945f-82725ceeda81@linux.intel.com>
	<CS1PR8401MB08404303F44A38D6603DE3B3ED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
MIME-Version: 1.0
In-Reply-To: <CS1PR8401MB08404303F44A38D6603DE3B3ED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
User-Agent: NeoMutt/20170609 (1.8.3)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: externalsrc + sstate why is not compatible?
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
X-List-Received-Date: Wed, 06 Dec 2017 14:56:30 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Dec 06, 2017 at 02:13:26PM +0000, Koehler, Yannick wrote:

> In regards to file fetcher, I will go check the code, I thought the
> unpack would only occurs for tarball, not subdir.

If you have:

	SRC_URI := "file://some-dir/"

and your tree looks somewhat like this:

	.git
	poky
	src/some-dir

and you set things up so that bitbake will look in src/ (set FILESPATH),
then it will copy "some-dir" to $WORKDIR/some-dir, and you can point S
there.

This satisfies your requirement as I understand it (single repo, all the
source code is there, including poky).

The huge downside of this is that some-dir is copied and this confuses
people.

I know the bitbake version in 2.4 has some differences that might help
here, but I haven't had the chance to investigate further.

Marcelo

