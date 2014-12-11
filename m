Return-Path: <gmane@reliableembeddedsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B42EBE0083A; Thu, 11 Dec 2014 12:13:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0075]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1357 seconds by postgrey-1.32 at yocto-www;
	Thu, 11 Dec 2014 12:13:11 PST
Received: from delivery.mailspamprotection.com
	(delivery.mailspamprotection.com [108.178.24.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CF0CE00521
	for <yocto@yoctoproject.org>; Thu, 11 Dec 2014 12:13:11 -0800 (PST)
Received: from ns1.siteground282.com ([184.154.233.8]
	helo=serv01.siteground282.com)
	by se1.mailspamprotection.com with esmtps
	(TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.84)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1Xz9kf-0005Hw-Qw
	for yocto@yoctoproject.org; Thu, 11 Dec 2014 13:50:28 -0600
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reliableembeddedsystems.com; s=dkim; 
	h=Message-ID:Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=P870egdAL1TnNmktqQkMbgH2/A15ZMqtElV17KA72Gs=; 
	b=1ZdfQgbxyjf+zANBYJbwDupzHwIzL6hwwbUnXPzh+Hmfyb14+TnIWTLvCIPerDMeFZOlfp8m4HBHCVyN+LA8BG5gucYERCwheDLEAyXrkH01+Sw4h3hq6a4417rxqHDdMSfPvPKjJGPoJH5iFa/PJYwxYeRt50IMcJfbgKU8FkA=;
Received: from [127.0.0.1] (port=49232 helo=secure282.sgcpanel.com)
	by serv01.siteground282.com with esmtpa (Exim 4.80.1)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1Xz9kZ-0002Oo-Rg; Thu, 11 Dec 2014 13:50:11 -0600
MIME-Version: 1.0
Date: Thu, 11 Dec 2014 13:50:11 -0600
From: gmane@reliableembeddedsystems.com
To: yocto@yoctoproject.org
Message-ID: <0160729e4beba1b0cedec21a9c640e0f@reliableembeddedsystems.com>
X-Sender: gmane@reliableembeddedsystems.com
User-Agent: Roundcube Webmail/0.9.5
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - serv01.siteground282.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - reliableembeddedsystems.com
X-Filter-ID: s0sct1PQhAABKnZB5plbIWEcM0d9a2K3OcfFeaASvaIT05e+4t99MpEggFbXzbnhttgCKkcBtGCa
	+yWmGXl+/0OdHUzGyIWSzveO/M+HlaVWShQ0+uJXiDSCp280tJFsbX/3TQnYbqlNHxpi9XBHG8Jz
	8WfReHqUOdh1n/PPcFxYrgVtmNkRjS7WSS96w3hMIe+NidcPxIRk/KxFMCED1Fz1pRXWhjh9fdbl
	44I0Df1bDJmuEytGOjhN7+VkHzjLSbBIxrv0tc9XqsVkeAX6S4rjo9pjU2jwGeOCxBY5D4UaYsqX
	q41MoOtzweKQlohrFyrtVW4KaRSURqFyxA+5hz/fZ77l9WrLiw3jbC6gJt3PWdnJQeN5cgRmGf5G
	X0xwhXsBjV/r0cSqC1xhIwVnc0ks5uz+SxUE4e8QCBKvyQCW/0SRYQ0ROxX2dwaCJb79Jwd/Ie5B
	ug3IiAebyObbQrbRF0J+AL6gRRwFcty0/RFX0QIjIjCn1zvQuUxCBw4J+4fateCeFsLSBPBEabXV
	ietQy3uAkh2klY0pFWVKuKSFewGNX+vRxKoLXGEjBWdzGfxNlhQyZmS3TgLw2A6IYsGaojZTebwW
	bZmtd3gd80Tpd66zq7t8jrxsZWFJWZQXcxw3qqhc+N6cuEg4XWh5FjqmfqyRyoWtIXjFMS828Jd7
	qm5RO6fQya3VRDVJSCo656Dn5RwX9m/yl7fqKmGjdDVR1n0X04As1se9YpRQfwk=
X-Report-Abuse-To: spam@quarantine.mailspamprotection.com
X-Filter-Fingerprint: IFrWXGses7OKB5S5G8/dJb0kolOUiviGeQyDsBgQ6PBA3cTUQ1R++keuE7RDJ8Kg3RbMLUalw1oC
	mj99/u+Poh38tEMU4IgC4sNz49qn3HHnhRv/ZJ3kEy8bfiAr+Fb/UpndEJ0YoaLytXXo8BMTaX2p
	Mk7LBarWD9Fj4R3eIu5amSKkALoA6KDzkQ8jq89Qglr+eUaqsXi6ilYykBRNmy1w3rhXI7ypWHcC
	zReLskSoC1jzfYuYzO5TaopJL1l0EkXKTCB9mgAH2nNvM1GFDcH5C2MO7hTENZJE35bUvwA=
X-Originating-IP: 184.154.233.8
X-SpamExperts-Domain: siteground282.com
X-SpamExperts-Username: 184.154.233.8
Authentication-Results: mailspamprotection.com;
	auth=pass smtp.auth=184.154.233.8
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.58)
X-Recommended-Action: accept
Cc: robert.berger@reliableembeddedsystems.com
Subject: How to properly add new qemu target + testimage support?
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
X-List-Received-Date: Thu, 11 Dec 2014 20:13:24 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I hacked together a qemu target which supports vexpress-a9.

In order to get

core-image-minimal -c testimage

to work as well I had to cook

meta/lib/oeqa/utils/qemurunner.py
scripts/runqemu
scripts/runqemu-internal

This does not seem to be a generic way to do such a thing.

What's the proper way to do it?

Regards,

Robert

