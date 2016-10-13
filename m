Return-Path: <gmane@reliableembeddedsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A33DAE00E54; Thu, 13 Oct 2016 16:19:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [69.175.69.90 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [69.175.69.90 listed in list.dnswl.org]
X-Greylist: delayed 2458 seconds by postgrey-1.32 at yocto-www;
	Thu, 13 Oct 2016 16:19:43 PDT
Received: from delivery.mailspamprotection.com
	(delivery.mailspamprotection.com [69.175.69.90])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F4DDE00E51
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 16:19:43 -0700 (PDT)
Received: from ns1.siteground282.com ([184.154.233.8] helo=siteground282.com)
	by se4.mailspamprotection.com with esmtps
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.86)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1buoeC-0004Qp-2b
	for yocto@yoctoproject.org; Thu, 13 Oct 2016 17:38:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reliableembeddedsystems.com; s=dkim;
	h=Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=GSGAZiHaXl71IFyQLnAnnh3mgxmdvM7xDeiLwxSMAyw=;
	b=GlipEfClKonC6waRnTMVm2s/f
	06auGSm1mZL25zSHftapkKMYex4P1944CZCW/IxduY+2OzmAVxZCiwTxFHNT2ed374iqiYHPaotoZ
	tLfD+QgrVrURdhw7YYrhryrzeL3hob/axg4kAi8J04ZR+z7pEM3YcZpSPl+NLOH/R8PhE=; 
Received: from [127.0.0.1] (port=35606 helo=secure282.sgcpanel.com)
	by siteground282.com with esmtpa (Exim 4.86_2)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1buoe9-00012f-CQ; Thu, 13 Oct 2016 17:38:41 -0500
MIME-Version: 1.0
Date: Thu, 13 Oct 2016 17:38:41 -0500
From: gmane@reliableembeddedsystems.com
To: "Lock, Joshua G" <joshua.g.lock@intel.com>
In-Reply-To: <1476394173.3034.13.camel@intel.com>
References: <35ab47fa82f7707f84e445919ddbbef5@reliableembeddedsystems.com>
	<1476394173.3034.13.camel@intel.com>
Message-ID: <e3a14ab26616aab0dc71e7f8360a5af1@reliableembeddedsystems.com>
X-Sender: gmane@reliableembeddedsystems.com
User-Agent: Roundcube Webmail/1.1.4
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - siteground282.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - reliableembeddedsystems.com
X-Filter-ID: s0sct1PQhAABKnZB5plbIWEcM0d9a2K3OcfFeaASvaIT05e+4t99MpEggFbXzbnhttgCKkcBtGCa
	+yWmGXl+/0OdHUzGyIWSzveO/M+HlaVWShQ0+uJXiDSCp280tJFsbX/3TQnYbqlNHxpi9XBHG8Jz
	8WfReHqUOdh1n/PPcFzPrTWUZW4Hy4IeOh2rVk0F6jQonRdfD9hsVQXp/BPkn1z1pRXWhjh9fdbl
	44I0Df1bDJmuEytGOjhN7+VkHzjLSbBIxrv0tc9XqsVkeAX6S7iXkMXDFHgBzeWjk6Zbtb6ZULs/
	x/wiY4bOQVH/H0QQPBfyCUQPGRfAuQJyQcUhQ4/Ia6YN5m0MsQWfYUYaa1Lo0EEGTh9WNZgruaGG
	pyvdI7qaN8yfURviR8OTeMmKUqzo7AcUqNzrkO1kQ1IW8ac6xxrycw2ScA+2hbCxTNV1lHIbmw+x
	cBDSXBmIVsiBPGIW1l+d5u2ITozWClL6/rEu//nzk76lak4ojODbJHHE/Dw6ORF2hyiPywks80fx
	SU3VhpzTalbJG9pSL0Hyv/WnnxF0rh7QmTz7opAw1zOCx6AoM/sstGqwASJuN0ZI7ZegNiUfHu7N
	PcCsHEUWcjzI0WkU2DaIvSyZINaqxL7/6J1fhOzjF0b4LXcjJZ5lotH0+pAXDCsngy0ThWX1/tRt
	pbQqVsjuh0JlrWxsIcuBwtwS/qU0RWX0GMIZgMQ4mXQBhG44XyCF1TiE+080S2E=
X-Report-Abuse-To: spam@quarantine1.mailspamprotection.com
X-Originating-IP: 184.154.233.8
X-SpamExperts-Domain: siteground282.com
X-SpamExperts-Username: 184.154.233.8
Authentication-Results: mailspamprotection.com;
	auth=pass smtp.auth=184.154.233.8@siteground282.com
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.15)
X-Recommended-Action: accept
Cc: yocto@yoctoproject.org, robert.berger@reliableembeddedsystems.com
Subject: Re: [yocto-autobuilder][PATCH] PublishArtifacts.py: deal only with built toolchains, cp also md5 and manifests
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
X-List-Received-Date: Thu, 13 Oct 2016 23:19:45 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 2016-10-13 16:29, Lock, Joshua G wrote:
> Can you help me understand why you needed to create this patch?
> 
> We've run into some issues recently where toolchains we expected to be
> built weren't and the PublishArtifacts buildstep failing because
> they're missing is useful. With this change we'll no longer get that,
> right?

Yes that's right (and not intended).

I would hope that you'll be able to detect such kind of problems before 
the PublishArtifacts buildstep because there should be some error in 
previous steps. The toolchain did not build!

I made this patch because I just want to build a 64 bit toolchain as 
opposed to both (like I used to do with some older version of Y-AB) and 
don't want the PublishArtifacts step to fail just because there is no 
32-bit toolchain. There is no 32 bit toolchain on purpose.

As a bonus the patch also copies md5sums and friends over and not just 
the .sh files.

I do not want PublishArtifacts toolchain(s) to find out that something 
went wrong in previous build steps, but I would want it to copy over 
whatever was built (and not to fail if something I did not build is 
missing).

As a quick and dirty alternative I would also be happy with a solution 
based on additional PublishArtifacts steps like:

toolchain_i686 for 32 bit only   (only the 32 bit toolchain)
toolchain_x86_64 for 64 bit only (only the 64 bit toolchain)

if that helps.

Then in my config file I just use toolchain_x86_64 instead of toolchain 
in my PublishArtifacts step to indicate that I just want the 64 bit 
version.

To publish both you could use toolchain_i686 and toolchain_x86_64 in the 
PublishArtifacts step.

I find it a bit confusing to write toolchain and to expect various 64 
bit and 32 bit toolchains to be published.

BTW what happens here[1] if one toolchain does not build?

I think even without my patch you'll not be able to detect the problem, 
since BuildToolchainImages is being called 4 times so two 32 bit and two 
64 bit toolchains should be built. You'll just get an error in 
PublishArtifacts before my patch if no 32 bit or no 64 bit toolchain is 
being built. Nobody counts how many should be there.

So I would say the best would be to count how many toolchains should be 
built (count BuildToolchainImages in combination with SDKMACHINE) and 
check if that's the case in PublishArtifacts. No idea if and how this 
can be done.

> 
> Thanks,
> 
> Joshua

Regards,

Robert

[1] 
http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/tree/buildset-config.controller/nightly-arm.conf

> ---------------------------------------------------------------------
> Intel Corporation (UK) Limited
> Registered No. 1134945 (England)
> Registered Office: Pipers Way, Swindon SN3 1RJ
> VAT No: 860 2173 47
> 
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.

