Return-Path: <gmane@reliableembeddedsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92075E00CCB; Sat,  8 Oct 2016 15:08:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [96.127.176.250 listed in list.dnswl.org]
X-Greylist: delayed 973 seconds by postgrey-1.32 at yocto-www;
	Sat, 08 Oct 2016 15:08:36 PDT
Received: from delivery.mailspamprotection.com
	(delivery.mailspamprotection.com [96.127.176.250])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12B94E00752
	for <yocto@yoctoproject.org>; Sat,  8 Oct 2016 15:08:36 -0700 (PDT)
Received: from ns1.siteground282.com ([184.154.233.8] helo=siteground282.com)
	by se3.mailspamprotection.com with esmtps
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.86)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1bszXY-0003WJ-77
	for yocto@yoctoproject.org; Sat, 08 Oct 2016 16:52:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reliableembeddedsystems.com; s=dkim;
	h=Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=QAVEsJsGOnwC7A8ia5KwrLfNnnzr6glynJFpS2KAQ5U=;
	b=LHjd648g7vsWan99akhdVeaIt
	d2LZD/jytKKr2ooyICIctldNTxyMyfSMHo11/GZ9EE0RTtsyKVzSgUK+8RrM4s+FoTLfQAFKlS4/Y
	CtKOh9iZXiP7JbxxRZ8WX1Pt/W+ZuHYHnZtY4LOh2q7K/+qVTqSbBo251LfNxWjO9UNyk=; 
Received: from [127.0.0.1] (port=54998 helo=secure282.sgcpanel.com)
	by siteground282.com with esmtpa (Exim 4.86_2)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1bszXX-0006W9-W2; Sat, 08 Oct 2016 16:52:19 -0500
MIME-Version: 1.0
Date: Sat, 08 Oct 2016 16:52:19 -0500
From: gmane@reliableembeddedsystems.com
To: Bill Randle <bill.randle@gmail.com>
In-Reply-To: <CA+n--H8NN32sFJVQFrODtm_99aR5D60kHnK1o0S5B_RWqLfkBQ@mail.gmail.com>
References: <e31067aeb8accb65a84da105dad48944@reliableembeddedsystems.com>
	<CA+n--H-B+0MgxB1ztB+Lbw18G9mYEzy=FhAzZnE_R89SYjpL_w@mail.gmail.com>
	<56993190d475014fd9f289fdad7db19e@reliableembeddedsystems.com>
	<CA+n--H8NN32sFJVQFrODtm_99aR5D60kHnK1o0S5B_RWqLfkBQ@mail.gmail.com>
Message-ID: <c2bd83f60d7dee07af64bc0796ae28c0@reliableembeddedsystems.com>
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
	8WfReHqUOdh1n/PPcFwX6JG8lzqVscQusn/Xjs+jOP3Bov002FW3lqzBmHWSyFz1pRXWhjh9fdbl
	44I0Df1bDJmuEytGOjhN7+VkHzjLSbBIxrv0tc9XqsVkeAX6S7iXkMXDFHgBzeWjk6Zbtb6ZULs/
	x/wiY4bOQVH/H0QQPBfyCUQPGRfAuQJyQcUhQ4/Ia6YN5m0MsQWfYUYaa1Lo0EEGTh9WNZgruaGG
	pyvdI7qaN8yfURviR8OTeMmKUqzo7AcUqNzrkO1kQ1IW8ac6xxrycw2ScA+2hbCxTNV1lHIbmw+x
	cBDSXBmIVsiBPGIW1l+d5u2ITozWClL6/rEu//nzk76lak4ojODbJHHE/Dw6ORF2hyiPywks80fx
	SU3VhpzTalbJG9pSL0Hyv/WnnxF0rh7QmTz7opAw1zOCx6AoM/sstGqwASJuN0ZI7b8iwtW8U0pO
	aiKgha0BgqbI0WkU2DaIvSyZINaqxL7/6J1fhOzjF0b4LXcjJZ5lohuhT13Bj8VNLHfZatRVqMdk
	DSi+R1QeWHGeD/ozkhX48xvhmpkqK6lzdXhhHwmzyvpmzdQjXE961MSkPADU05Y=
X-Report-Abuse-To: spam@quarantine1.mailspamprotection.com
X-Originating-IP: 184.154.233.8
X-SpamExperts-Domain: siteground282.com
X-SpamExperts-Username: 184.154.233.8
Authentication-Results: mailspamprotection.com;
	auth=pass smtp.auth=184.154.233.8@siteground282.com
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.10)
X-Recommended-Action: accept
Cc: yocto@yoctoproject.org
Subject: Re: Y-AB PublishArtifacts toolchain wrong dir
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
X-List-Received-Date: Sat, 08 Oct 2016 22:08:42 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 2016-10-08 09:28, Bill Randle wrote:
> 
> All the "standard" build configs produce both x86 and x86_64
> toolchains - which makes sense, since it's not known what build host
> the user is using and the AB needs to show both are buildable. In your
> case, you know you have an x86_64 machine and don't want to bother
> building for x86, so, it's seems like the thing to do is check for the
> existence of a build package (x86 or x86_64) before attempting the
> copy.
> 

That's what I thought as well at first. So I introduced new toolchain 
artifacts like toolchain_x86_64 and toolchain_i686 where I did only the 
relevant thing in the relevant branch.
It did not solve my problem.

Regards,

Robert

