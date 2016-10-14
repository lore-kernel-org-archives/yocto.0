Return-Path: <gmane@reliableembeddedsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15739E00E73; Fri, 14 Oct 2016 03:32:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [184.154.58.228 listed in list.dnswl.org]
X-Greylist: delayed 3553 seconds by postgrey-1.32 at yocto-www;
	Fri, 14 Oct 2016 03:32:45 PDT
Received: from delivery.mailspamprotection.com
	(delivery.mailspamprotection.com [184.154.58.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7652E00CCD
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 03:32:45 -0700 (PDT)
Received: from ns1.siteground282.com ([184.154.233.8] helo=siteground282.com)
	by se10.mailspamprotection.com with esmtps
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.86)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1buyrq-0005Pl-OK
	for yocto@yoctoproject.org; Fri, 14 Oct 2016 04:33:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reliableembeddedsystems.com; s=dkim;
	h=Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=cEVWt6v/n/nd1VE7lwWb1NpIvZizZc4lzc1l3Kcd6fw=;
	b=f2nO8UtdS/CJovoeT6SoOJrHt
	UO8js9gauSosomsO8dxW2XrUzhdipoL5hGa4wo/Xclao0w176ymWjxo68QOu9E1l2Dq2LMONk4A4f
	EumoAh0v9U+f3Egf+IYrV0cf++lNV7bZgTnfsC9vfkdN9BhXfGqDYLXgAwy9r1Zu0JJp4=; 
Received: from [127.0.0.1] (port=35312 helo=secure282.sgcpanel.com)
	by siteground282.com with esmtpa (Exim 4.86_2)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1buyrp-0001MJ-F0; Fri, 14 Oct 2016 04:33:29 -0500
MIME-Version: 1.0
Date: Fri, 14 Oct 2016 04:33:29 -0500
From: gmane@reliableembeddedsystems.com
To: Joshua Lock <joshua.g.lock@linux.intel.com>
In-Reply-To: <1476437255.7662.1.camel@linux.intel.com>
References: <35ab47fa82f7707f84e445919ddbbef5@reliableembeddedsystems.com>
	<1476394173.3034.13.camel@intel.com>
	<e3a14ab26616aab0dc71e7f8360a5af1@reliableembeddedsystems.com>
	<1476437255.7662.1.camel@linux.intel.com>
Message-ID: <ce19b1f43eaf8f09c2aea56dfdfb194e@reliableembeddedsystems.com>
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
	8WfReHqUOdh1n/PPcFzPrTWUZW4Hy4IeOh2rVk0FFWNxK0WZwIaGWKuoisLM5Fz1pRXWhjh9fdbl
	44I0Df1bDJmuEytGOjhN7+VkHzjLSbBIxrv0tc9XqsVkeAX6S7iXkMXDFHgBzeWjk6Zbtb6ZULs/
	x/wiY4bOQVH/H0QQPBfyCUQPGRfAuQJyQcUhQ4/Ia6YN5m0MsQWfYUYaa1Lo0EEGTh9WNZgruaGG
	pyvdI7qaN8yfURviR8OTeMmKUqzo7AcUqNzrkO1kQ1IW8ac6xxrycw2ScA+2hbCxTNV1lHIbmw+x
	cBDSXBmIVsiBPGIW1l+d5u2ITozWClL6/rEu//nzk76lak4ojODbJHHE/Dw6ORF2hyiPywks80fx
	SU3VhpzTalbJG9pSL0Hyv/WnnxF0rh7QmTz7opAw1zOChLHHE9xOD3HLtj72QQ7kSxhlvQgLtgdW
	oDpnCQASakL21rVoYghgZ72n8IglF2KyASJFC/49WOPBr5nlEUI4xJJI6kVHbf6/1xp7bVe8bc0j
	1ipddsQaiG3fcemzEozYR9ZdiCmQnA0PXLI5Uu5bBSjbnjOATIPA7m6DQrsV2XQ=
X-Report-Abuse-To: spam@quarantine1.mailspamprotection.com
X-Originating-IP: 184.154.233.8
X-SpamExperts-Domain: siteground282.com
X-SpamExperts-Username: 184.154.233.8
Authentication-Results: mailspamprotection.com;
	auth=pass smtp.auth=184.154.233.8@siteground282.com
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.19)
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
X-List-Received-Date: Fri, 14 Oct 2016 10:32:49 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 2016-10-14 04:27, Joshua Lock wrote:
> 
> This is a reasonable goal, but something I'd rather see addressed in
> the proposed PublishArtifacts rewrite. As we're trying to release morty
> right now I'd like to avoid changes to the AB behaviour until after the
> release.

I'm absolutely happy with this and eagerly waiting for morty.
Please keep me updated so, as my time permits, I can test the new Y-AB 
version.

> 
> Regards,
> 
> Joshua

Regards,

Robert

