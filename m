Return-Path: <gmane@reliableembeddedsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D87AE0090E; Tue, 16 Feb 2016 03:30:12 -0800 (PST)
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
	*      [184.154.58.227 listed in list.dnswl.org]
X-Greylist: delayed 8772 seconds by postgrey-1.32 at yocto-www;
	Tue, 16 Feb 2016 03:30:08 PST
Received: from delivery.mailspamprotection.com
	(delivery.mailspamprotection.com [184.154.58.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 192C5E008F1
	for <yocto@yoctoproject.org>; Tue, 16 Feb 2016 03:30:08 -0800 (PST)
Received: from ns1.siteground282.com ([184.154.233.8]
	helo=serv01.siteground282.com)
	by se10.mailspamprotection.com with esmtps
	(TLSv1.2:DHE-RSA-AES256-SHA:256) (Exim 4.85)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1aVbXs-0003Pg-OC
	for yocto@yoctoproject.org; Tue, 16 Feb 2016 03:03:52 -0600
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reliableembeddedsystems.com; s=dkim; 
	h=Message-ID:Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=yNdsX+sxiWtMVf+cP4RRcF7z25vIoop/+XhAlwkeAwI=; 
	b=yzHWGiP9zStA66w8jPEIgOZYC62lvS/FmHqSMwyqSMm2myr2WmVNZ+Xpql9MpDIxicRbFGoNepc/8lh2qKtCWKNnHibI6ennyK8FT+4lZbl36VtHsGIX9+pF8Sr6UApBk5L9/ZkV4l3RVKlx39GchKVVuggXDko1SwHVTg592sA=;
Received: from [127.0.0.1] (port=32874 helo=secure282.sgcpanel.com)
	by serv01.siteground282.com with esmtpa (Exim 4.80.1)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1aVbXs-00051H-EV; Tue, 16 Feb 2016 03:03:44 -0600
MIME-Version: 1.0
Date: Tue, 16 Feb 2016 03:03:44 -0600
From: gmane@reliableembeddedsystems.com
To: yocto@yoctoproject.org
Message-ID: <b30acf5cbe7f661029158ab7e80a2ba4@reliableembeddedsystems.com>
X-Sender: gmane@reliableembeddedsystems.com
User-Agent: Roundcube Webmail/1.0.5
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - serv01.siteground282.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - reliableembeddedsystems.com
X-Filter-ID: s0sct1PQhAABKnZB5plbIWEcM0d9a2K3OcfFeaASvaIT05e+4t99MpEggFbXzbnhttgCKkcBtGCa
	+yWmGXl+/0OdHUzGyIWSzveO/M+HlaVWShQ0+uJXiDSCp280tJFsbX/3TQnYbqlNHxpi9XBHG8Jz
	8WfReHqUOdh1n/PPcFx5Z0Z1fM3V1ybzJa0otFuKZyJ09Qi+3vbvey+2nbENPlz1pRXWhjh9fdbl
	44I0Df1bDJmuEytGOjhN7+VkHzjLSbBIxrv0tc9XqsVkeAX6S4rjo9pjU2jwGeOCxBY5D4UaYsqX
	q41MoOtzweKQlohrFyrtVW4KaRSURqFyxA+5hz/fZ77l9WrLiw3jbC6gJt3PWdnJQeN5cgRmGf5G
	X0xwhXsBjV/r0cSqC1xhIwVnc0ks5uz+SxUE4e8QCBKvyQCW/0SRYQ0ROxX2dwaCJb79Jwd/Ie5B
	ug3IiAebyObbQrbRF0J+AL6gRRwFcty0/RFX0QIjIjCn1zvQuUxCBw4J+4fateCeFsLSBPBEabXV
	ietQy3uAkh2klY0pFWVKuKSFewGNX+vRxKoLXGEjBWdzGfxNlhQyZmS3TgLw2A6IYrsvLkDbcY0T
	ImotmUHfGe4XKu1VbgppFJRGoXLED7mHy9XUM2wxpPwCncXmP1ltNDBFI4q5cQ5RqubdBEVbZHw4
	uJN8TRUMxHrval0EO5YtTKlMEeT1N6wcSlD/nRGK6zJBq66m5xNeLi+XiDcbSiw=
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
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.28)
X-Recommended-Action: accept
Cc: paul.eggleton-VuQAYsv1563Yd54FQh9/CA@public.gmane.org
Subject: jethro 2.0.1/ubi-utils not installed on target
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
X-List-Received-Date: Tue, 16 Feb 2016 11:30:12 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I would like to have ubi-utils, which is part of mtd-utils, installed on 
my target.

It seems to be insufficient to add mtd-utils to a packagegroup[1] and 
add this to the image for it to be installed in the image.
The package is being built and I can install it afterwards e.g. opkg 
install mtd-utils-ubifs_1.5.1+git0+9f107132a6-r0_armv7a

Is it intended to be like this?

Regards,

Robert


[1] 
https://github.com/RobertBerger/meta-mainline/blob/jethro-training-v4.4.x/multi-v7-ml/recipes-core/packagegroups/packagegroup-tools-fs.bb

