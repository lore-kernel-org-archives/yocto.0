Return-Path: <gmane@reliableembeddedsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FAB2E00C60; Thu, 17 Mar 2016 20:49:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_40,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.3950]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [198.143.161.18 listed in list.dnswl.org]
X-Greylist: delayed 58159 seconds by postgrey-1.32 at yocto-www;
	Thu, 17 Mar 2016 20:49:38 PDT
Received: from delivery.mailspamprotection.com
	(delivery.mailspamprotection.com [198.143.161.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 137C2E00C55
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 20:49:38 -0700 (PDT)
Received: from ns1.siteground282.com ([184.154.233.8]
	helo=serv01.siteground282.com)
	by se2.mailspamprotection.com with esmtps
	(TLSv1.2:DHE-RSA-AES256-SHA:256) (Exim 4.85)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1agWHp-0001kk-4A
	for yocto@yoctoproject.org; Thu, 17 Mar 2016 06:40:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reliableembeddedsystems.com; s=dkim; 
	h=Message-ID:Subject:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=Fv6LT8pbAhpqv0HefGD0WpXxv0Cb7+9jEeL8/9utfmc=; 
	b=mB1nBfQGPQxjMRYBnI5LY8AY/WoDDEOZZ7DVzCbjd/WAu1sQuUfQ8dkxW5yGg288i9M1h4i62lGFwBHSSEH63CcJMl8rswVmyeRvHJEIHR4tIoAe+BGQqQhtbrNwDymKwDvDccZ+HRkbi2Uy3yyla7OO9dr7u3cVNzM5mbyrOTA=;
Received: from [127.0.0.1] (port=57805 helo=secure282.sgcpanel.com)
	by serv01.siteground282.com with esmtpa (Exim 4.80.1)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1agWHo-0000TC-Rb
	for yocto@yoctoproject.org; Thu, 17 Mar 2016 06:40:16 -0500
MIME-Version: 1.0
Date: Thu, 17 Mar 2016 06:40:16 -0500
From: gmane@reliableembeddedsystems.com
To: yocto@yoctoproject.org
Message-ID: <047fa5bc428c39bbc544c1c36b918692@reliableembeddedsystems.com>
X-Sender: gmane@reliableembeddedsystems.com
User-Agent: Roundcube Webmail/1.0.6
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - serv01.siteground282.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - reliableembeddedsystems.com
X-Filter-ID: s0sct1PQhAABKnZB5plbIWEcM0d9a2K3OcfFeaASvaIT05e+4t99MpEggFbXzbnhttgCKkcBtGCa
	+yWmGXl+/0OdHUzGyIWSzveO/M+HlaVWShQ0+uJXiDSCp280tJFsbX/3TQnYbqlNHxpi9XBHG8Jz
	8WfReHqUOdh1n/PPcFxrMtBpUve9Iv6Q5O+Neg4Y/2v8aY+5fozBJykoLRzqtVz1pRXWhjh9fdbl
	44I0Df1bDJmuEytGOjhN7+VkHzjLSbBIxrv0tc9XqsVkeAX6S4rjo9pjU2jwGeOCxBY5D4UaYsqX
	q41MoOtzweKQlohrFyrtVW4KaRSURqFyxA+5hz/fZ77l9WrLiw3jbC6gJt3PWdnJQeN5cgRmGf5G
	X0xwhXsBjV/r0cSqC1xhIwVnc0ks5uz+SxUE4e8QCBKvyQCW/0SRYQ0ROxX2dwaCJb79Jwd/Ie5B
	ug3IiAebyObbQrbRF0J+AL6gRRwFcty0/RFX0QIjIjCn1zvQuUxCBw4J+4fateCeFsLSBPBEabXV
	ietQy3uAkh2klY0pFWVKuKSFewGNX+vRxKoLXGEjBWdzGfxNlhQyZmS3TgLw2A6IYmrveHWGqmrm
	KHH4pzVsBPjpd66zq7t8jrxsZWFJWZQXcxw3qqhc+N6cuEg4XWh5FiJjFf1NgFCarWv3c1m+15y4
	+f2bl5T8yciCn5WQ8LLiTKlMEeT1N6wcSlD/nRGK6zJBq66m5xNeLi+XiDcbSiw=
X-Report-Abuse-To: spam@quarantine.mailspamprotection.com
X-Filter-Fingerprint: IFrWXGses7OKB5S5G8/dJb0kolOUiviGeQyDsBgQ6PBA3cTUQ1R++keuE7RDJ8Kg3RbMLUalw1oC
	mj99/u+Poh38tEMU4IgC4sNz49qn3HHnhRv/ZJ3kEy8bfiAr+Fb/UpndEJ0YoaLytXXo8BMTaX2p
	Mk7LBarWD9Fj4R3eIu5amSKkALoA6KDzkQ8jq89Qglr+eUaqsXi6ilYykBRNmy1w3rhXI7ypWHcC
	zReLskSoC1jzfYuYzO5TaopJL1l0EkXKTCB9mgAH2nNvM1GFDcH5C2MO7hTENZJE35bUvwA=
X-Originating-IP: 184.154.233.8
X-SpamExperts-Domain: siteground282.com
X-SpamExperts-Username: 184.154.233.8
Authentication-Results: mailspamprotection.com;
	auth=pass smtp.auth=184.154.233.8@siteground282.com
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.43)
X-Recommended-Action: accept
Subject: use yocto toolchain as external toolchain
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
X-List-Received-Date: Fri, 18 Mar 2016 03:49:43 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

It may sound slightly crazy:) but can I use a toolchain, which was 
created by Poky as an external toolchain for Poky?

What I am after is something like this:

I create a multiplatfrom v7 compatible Yocto project, which spits out 
toolchain/rootfs/kernel/various device trees.[1]

Now I need to build for each board a custom u-boot, something like 
[2][3],...

Obviously [2] and [3] build again the toolchain. Would it be possible to 
reuse the toolchain built by [1] like an external toolchain to save some 
build time?

Regards,

Robert


[1] 
https://github.com/RobertBerger/meta-mainline/tree/jethro-training-v4.4.x/multi-v7-ml
[2] 
https://github.com/RobertBerger/meta-mainline/tree/jethro-training-v4.4.x/beagle-bone-black-multi-v7-ml
[3] 
https://github.com/RobertBerger/meta-mainline/tree/jethro-training-v4.4.x/zedboard-multi-v7-ml

