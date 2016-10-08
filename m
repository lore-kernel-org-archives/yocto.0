Return-Path: <gmane@reliableembeddedsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E0FBE00CB0; Fri,  7 Oct 2016 23:27:58 -0700 (PDT)
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
	*      [198.143.161.12 listed in list.dnswl.org]
X-Greylist: delayed 53027 seconds by postgrey-1.32 at yocto-www;
	Fri, 07 Oct 2016 23:27:53 PDT
Received: from delivery.mailspamprotection.com
	(delivery.mailspamprotection.com [198.143.161.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FDAEE00C09
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2016 23:27:53 -0700 (PDT)
Received: from ns1.siteground282.com ([184.154.233.8] helo=siteground282.com)
	by se8.mailspamprotection.com with esmtps
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.86)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1bsl6s-00065H-9a
	for yocto@yoctoproject.org; Sat, 08 Oct 2016 01:27:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reliableembeddedsystems.com; s=dkim;
	h=Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=mCZgKd4NcZfgeAzjadnR4hnCORnmCaEqR9H3kYMWo0Y=;
	b=xlvz6JNRfvxk6p4c9C2MfVUwR
	Yq+byTHEmy7a+sgEgtaaCpoKdpLoJwh+sUgYRDoA4DTYDWdPfAJnKLkG+Qv60GWzsTDYNcgYUXUhW
	bbbRO7r3x/b3dOYDRCPxhjzqDMTzppVyq/UI2pMgtWNq33bGS7kRtPaiqZEHaXI9KEpTs=; 
Received: from [127.0.0.1] (port=47186 helo=secure282.sgcpanel.com)
	by siteground282.com with esmtpa (Exim 4.86_2)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1bsl6r-0001cx-UY; Sat, 08 Oct 2016 01:27:49 -0500
MIME-Version: 1.0
Date: Sat, 08 Oct 2016 01:27:49 -0500
From: gmane@reliableembeddedsystems.com
To: Bill Randle <bill.randle@gmail.com>
In-Reply-To: <CA+n--H-B+0MgxB1ztB+Lbw18G9mYEzy=FhAzZnE_R89SYjpL_w@mail.gmail.com>
References: <e31067aeb8accb65a84da105dad48944@reliableembeddedsystems.com>
	<CA+n--H-B+0MgxB1ztB+Lbw18G9mYEzy=FhAzZnE_R89SYjpL_w@mail.gmail.com>
Message-ID: <56993190d475014fd9f289fdad7db19e@reliableembeddedsystems.com>
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
	8WfReHqUOdh1n/PPcFwX6JG8lzqVscQusn/Xjs+jmpsILFqvBY/33RS5Cd46SFz1pRXWhjh9fdbl
	44I0Df1bDJmuEytGOjhN7+VkHzjLSbBIxrv0tc9XqsVkeAX6S7iXkMXDFHgBzeWjk6Zbtb6ZULs/
	x/wiY4bOQVH/H0QQPBfyCUQPGRfAuQJyQcUhQ4/Ia6YN5m0MsQWfYUYaa1Lo0EEGTh9WNZgruaGG
	pyvdI7qaN8yfURviR8OTeMmKUqzo7AcUqNzrkO1kQ1IW8ac6xxrycw2ScA+2hbCxTNV1lHIbmw+x
	cBDSXBmIVsiBPGIW1l+d5u2ITozWClL6/rEu//nzk76lak4ojODbJHHE/Dw6ORF2hyiPywks80fx
	SU3VhpzTalbJG9pSL0Hyv/WnnxF0rh7QmTz7opAw1zOCx6AoM/sstGqwASJuN0ZI7aHFiWh8InNS
	IRKoSGz6ikfI0WkU2DaIvSyZINaqxL7/6J1fhOzjF0b4LXcjJZ5lokV1CKyhVhZZPt3wKk/qd9lk
	DSi+R1QeWHGeD/ozkhX48xvhmpkqK6lzdXhhHwmzyvpmzdQjXE961MSkPADU05Y=
X-Report-Abuse-To: spam@quarantine1.mailspamprotection.com
X-Originating-IP: 184.154.233.8
X-SpamExperts-Domain: siteground282.com
X-SpamExperts-Username: 184.154.233.8
Authentication-Results: mailspamprotection.com;
	auth=pass smtp.auth=184.154.233.8@siteground282.com
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.14)
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
X-List-Received-Date: Sat, 08 Oct 2016 06:27:58 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 2016-10-07 22:05, Bill Randle wrote:
> Hi Robert,
> 
> I see a couple of problems with this proposed patch. First, it's not
> clear the existing code is broken.

Here[1] is a paste of the error.

cp: cannot stat 
'/tmp/yocto-autobuilder/yocto-autobuilder/yocto-worker/res-custom-morty-multi-v7-core-image-minimal-dev-sato-sdk-toolchain/build/build/tmp/deploy/sdk/poky-*i686-core-image*.sh': 
No such file or directory

That's[2] the .conf file which I used.

Note that I'm not building a i686 toolchain, but only the 64 bit 
version.

[1] http://pastebin.com/aLyer2fi
[2] 
https://github.com/RobertBerger/meta-mainline/blob/morty-training-v4.4.x/multi-v7-ml/yocto-autobuilder/res-custom-morty-multi-v7-core-image-minimal-dev-sato-sdk-toolchain.conf

Regards,

Robert

