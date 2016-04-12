Return-Path: <gmane@reliableembeddedsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 765CCE00C89; Wed, 13 Apr 2016 11:51:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [108.163.228.170 listed in list.dnswl.org]
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.5000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 104754 seconds by postgrey-1.32 at yocto-www;
	Wed, 13 Apr 2016 11:51:27 PDT
Received: from se9.mailspamprotection.com (se9.mailspamprotection.com
	[108.163.228.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23D2EE007C5
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 11:51:27 -0700 (PDT)
Received: from ns1.siteground282.com ([184.154.233.8]
	helo=serv01.siteground282.com)
	by se9.mailspamprotection.com with esmtps
	(TLSv1.2:DHE-RSA-AES256-SHA:256) (Exim 4.85)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1apydD-0007gp-OY
	for yocto@yoctoproject.org; Tue, 12 Apr 2016 08:45:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reliableembeddedsystems.com; s=dkim;
	h=Message-ID:Subject:To:From:Date:
	Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=le/ym1pOwgmh4br6e7A/qiXVADwJYCHnyigCBQ6+OwI=;
	b=mbZwBH0r+CZUDLTy29BvBKhmB2
	ji1L81Lf9UmBNdXrrGtnY5y4rBB/YFAQ0wfV2tmb+GpOOAgistF4BYijUSGlBQgrmQCESZjkVXkoy
	A8O/GuxmMTFv8xwlxnUsJzTdGSmG0TJ9YE1VpITp0WlZ4dsZPPqGkvA+RDKIHCtpgF5Y=; 
Received: from [127.0.0.1] (port=33527 helo=secure282.sgcpanel.com)
	by serv01.siteground282.com with esmtpa (Exim 4.86_2)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1apydD-000BFD-6L
	for yocto@yoctoproject.org; Tue, 12 Apr 2016 08:45:27 -0500
MIME-Version: 1.0
Date: Tue, 12 Apr 2016 08:45:27 -0500
From: gmane@reliableembeddedsystems.com
To: yocto@yoctoproject.org
Message-ID: <09232bb667868c885b64dfd7ac49dfab@reliableembeddedsystems.com>
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
	8WfReHqUOdh1n/PPcFwS9U7+zbdlXLFOqrVhPFSS4JoM4GPJCe0HNh/FFUdUzlz1pRXWhjh9fdbl
	44I0Df1bDJmuEytGOjhN7+VkHzjLSbBIxrv0tc9XqsVkeAX6S4rjo9pjU2jwGeOCxBY5D4UaYsqX
	q41MoOtzweKQlohrFyrtVW4KaRSURqFyxA+5hz/fZ77l9WrLiw3jbC6gJt3PWdnJQeN5cgRmGf5G
	X0xwhXsBjV/r0cSqC1xhIwVnc0ks5uz+SxUE4e8QCBKvyQCW/0SRYQ0ROxX2dwaCJb79Jwd/Ie5B
	ug3IiAebyObbQrbRF0J+AL6gRRwFcty0/RFX0QIjIjCn1zvQuUxCBw4J+4fateCeFsLSBPBEabXV
	ietQy3uAkh2klY0pFWVKuKSFewGNX+vRxKoLXGEjBWdzGfxNlhQyZmS3TgLw2A6IYikyjcOOd4Fq
	JBAIzjLX+3rpd66zq7t8jrxsZWFJWZQXcxw3qqhc+N6cuEg4XWh5FiJjFf1NgFCarWv3c1m+15zz
	+GlizNDpiwTdUtGFEkIbTKlMEeT1N6wcSlD/nRGK6zJBq66m5xNeLi+XiDcbSiw=
X-Report-Abuse-To: spam@quarantine.mailspamprotection.com
X-Originating-IP: 184.154.233.8
X-SpamExperts-Domain: siteground282.com
X-SpamExperts-Username: 184.154.233.8
Authentication-Results: mailspamprotection.com;
	auth=pass smtp.auth=184.154.233.8@siteground282.com
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.63)
X-Recommended-Action: accept
Subject: something like kernel configuration fragments for device tree?
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
X-List-Received-Date: Wed, 13 Apr 2016 18:51:31 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I was wondering if there is something like kernel config fragments also 
available for device trees from the YP.

It would be convenient, since kernel configuration and device tree might 
be related in some cases.

Regards,

Robert

