Return-Path: <gmane@reliableembeddedsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 529EAE00CB5; Sat,  8 Oct 2016 00:11:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3624 seconds by postgrey-1.32 at yocto-www;
	Sat, 08 Oct 2016 00:10:57 PDT
Received: from delivery.mailspamprotection.com
	(delivery.mailspamprotection.com [184.154.205.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEE8FE00C09
	for <yocto@yoctoproject.org>; Sat,  8 Oct 2016 00:10:57 -0700 (PDT)
Received: from ns1.siteground282.com ([184.154.233.8] helo=siteground282.com)
	by se5.mailspamprotection.com with esmtps
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.86)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1bskq7-0004cE-2Q
	for yocto@yoctoproject.org; Sat, 08 Oct 2016 01:10:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reliableembeddedsystems.com; s=dkim;
	h=Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=6fWedowmQblpSDhPL/bbT4Se3IlPF26HR+2D+roCzaY=;
	b=FFK5scfEN8Dzb+teBeLZxmcX4
	Dn91HX8eMRCTUvdgNxoykV+RokZHHy8B+ZsjNfXtXGzwT8dpL3mlGiysYBsMDbJAzOy5pk+2uX0JS
	QJiPLgow2p/VJXKhTz9eUGCTC7umXSCvZ0RKMV+ONzh7ObhdicbVIPNK4v2lTtnZzbmyk=; 
Received: from [127.0.0.1] (port=40260 helo=secure282.sgcpanel.com)
	by siteground282.com with esmtpa (Exim 4.86_2)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1bskq6-0002DX-Ky; Sat, 08 Oct 2016 01:10:30 -0500
MIME-Version: 1.0
Date: Sat, 08 Oct 2016 01:10:30 -0500
From: gmane@reliableembeddedsystems.com
To: Bill Randle <bill.randle@gmail.com>
In-Reply-To: <CA+n--H-B+0MgxB1ztB+Lbw18G9mYEzy=FhAzZnE_R89SYjpL_w@mail.gmail.com>
References: <e31067aeb8accb65a84da105dad48944@reliableembeddedsystems.com>
	<CA+n--H-B+0MgxB1ztB+Lbw18G9mYEzy=FhAzZnE_R89SYjpL_w@mail.gmail.com>
Message-ID: <923a8c9dbddbc1d6b917f00984ae39d6@reliableembeddedsystems.com>
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
	8WfReHqUOdh1n/PPcFwX6JG8lzqVscQusn/Xjs+jTI4Qs6cmnTPl6FObbcd6qlz1pRXWhjh9fdbl
	44I0Df1bDJmuEytGOjhN7+VkHzjLSbBIxrv0tc9XqsVkeAX6S7iXkMXDFHgBzeWjk6Zbtb6ZULs/
	x/wiY4bOQVH/H0QQPBfyCUQPGRfAuQJyQcUhQ4/Ia6YN5m0MsQWfYUYaa1Lo0EEGTh9WNZgruaGG
	pyvdI7qaN8yfURviR8OTeMmKUqzo7AcUqNzrkO1kQ1IW8ac6xxrycw2ScA+2hbCxTNV1lHIbmw+x
	cBDSXBmIVsiBPGIW1l+d5u2ITozWClL6/rEu//nzk76lak4ojODbJHHE/Dw6ORF2hyiPywks80fx
	SU3VhpzTalbJG9pSL0Hyv/WnnxF0rh7QmTz7opAw1zOCx6AoM/sstGqwASJuN0ZI7bXD4EhPfKmA
	uK5ipI87LdDI0WkU2DaIvSyZINaqxL7/6J1fhOzjF0b4LXcjJZ5loleexxHCvl4eIIx/2VfM/IFk
	DSi+R1QeWHGeD/ozkhX48xvhmpkqK6lzdXhhHwmzyvpmzdQjXE961MSkPADU05Y=
X-Report-Abuse-To: spam@quarantine1.mailspamprotection.com
X-Originating-IP: 184.154.233.8
X-SpamExperts-Domain: siteground282.com
X-SpamExperts-Username: 184.154.233.8
Authentication-Results: mailspamprotection.com;
	auth=pass smtp.auth=184.154.233.8@siteground282.com
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.22)
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
X-List-Received-Date: Sat, 08 Oct 2016 07:11:01 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 2016-10-07 22:05, Bill Randle wrote:
> Hi Robert,
> 
> I see a couple of problems with this proposed patch. First, it's not
> clear the existing code is broken.

Try this [1] to see the problem.

[1] 
https://github.com/RobertBerger/meta-mainline/blob/jethro-training-v4.4.x/multi-v7-ml/yocto-autobuilder/custom-jethro-multi-v7-core-image-minimal-sato-sdk-adt.conf

Regards,

Robert


