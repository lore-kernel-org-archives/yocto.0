Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84EF0E00DE6; Thu, 15 Dec 2016 09:28:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [192.55.52.88 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58D69E00DD3
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 09:28:08 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 15 Dec 2016 09:28:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,352,1477983600"; d="scan'208";a="798393891"
Received: from weipengl-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.182.212])
	by FMSMGA003.fm.intel.com with ESMTP; 15 Dec 2016 09:28:05 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Vincent Rubiolo <vincent.libre@cryostase.eu>
Date: Fri, 16 Dec 2016 06:28:02 +1300
Message-ID: <3954267.PvGXSHNjIp@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.13-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <d9f94631-0e2a-3e83-2ab7-e1ddffb79aaa@cryostase.eu>
References: <382d1e8e-1257-c255-354d-ffaf2f54385f@cryostase.eu>
	<3800149.2tT9rjCn72@peggleto-mobl.ger.corp.intel.com>
	<d9f94631-0e2a-3e83-2ab7-e1ddffb79aaa@cryostase.eu>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [recipetool] Failure to create a new recipe (failed to parse setup.py)
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
X-List-Received-Date: Thu, 15 Dec 2016 17:28:12 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Vincent,

On Wed, 14 Dec 2016 20:59:27 Vincent Rubiolo wrote:
> On 12/04/2016 11:14 AM, Paul Eggleton wrote:
> > Hmm, it looks like we're treating a byte array as a string (i.e. missing
> > decoding) and that doesn't work. Likely this broke during the Python3
> > migration, and since there are a number of different code paths in
> > recipetool's python handling code our relatively simplistic automated
> > tests
> > didn't hit it. I have a fix here and will send it out soon.
> 
> Are there any news on this patch? I'd gladly test it out.
> 
> In the meantime, I can work around the issue by using the yocto-layer
> script, asking it to create a sample recipe (or manually copying an
> existing recipe file) alongside the new layer.

Sorry for not getting back to you earlier - the patch got sent shortly after 
our discussion and has now been merged:

  http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=8fe1f25ea087cea13c5380de758078f0fb9eae34

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

