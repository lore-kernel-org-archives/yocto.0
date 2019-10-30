Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C613E00D99; Wed, 30 Oct 2019 14:31:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7CD2E00D99
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2019 14:31:52 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Oct 2019 14:31:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,248,1569308400"; d="scan'208";a="225474215"
Received: from lismail-mobl.gar.corp.intel.com (HELO shodan.localnet)
	([10.255.184.81])
	by fmsmga004.fm.intel.com with ESMTP; 30 Oct 2019 14:31:49 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "McKay, Sean" <sean.mckay@hpe.com>
Date: Thu, 31 Oct 2019 10:31:47 +1300
Message-ID: <2172274.EiOOWsGUX1@shodan>
Organization: Intel Corporation
In-Reply-To: <CS1PR8401MB05684D967B297BDE3C95417D82600@CS1PR8401MB0568.NAMPRD84.PROD.OUTLOOK.COM>
References: <CS1PR8401MB05684D967B297BDE3C95417D82600@CS1PR8401MB0568.NAMPRD84.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Where is the documentation for things to fix when upgrading poky versions?
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
X-List-Received-Date: Wed, 30 Oct 2019 21:31:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Sean

On Thursday, 31 October 2019 9:33:30 AM NZDT McKay, Sean wrote:
> This is probably a super easy question, but I've been searching half the day
> and decided it would be faster to ask for help.
> I know I've seen documentation in one of the manuals that points out major
> changes in syntax or behavior that will need to be fixed when upgrading the
> underlying version of poky, but now that I have need of it, I can't seem to
> find it anywhere. Can anyone point me in the right direction?

It's in the reference manual:

  https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#migration

BTW if you (or anyone else) finds anything we missed documenting here then
please do let us know - things do slip by, especially upstream changes.

Cheers,
Paul

-- 

Paul Eggleton
Intel System Software Products



