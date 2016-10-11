Return-Path: <gmane@reliableembeddedsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAE0CE00DA9; Tue, 11 Oct 2016 09:15:40 -0700 (PDT)
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
	*      [184.154.208.36 listed in list.dnswl.org]
X-Greylist: delayed 2187 seconds by postgrey-1.32 at yocto-www;
	Tue, 11 Oct 2016 09:15:35 PDT
Received: from delivery.mailspamprotection.com
	(delivery.mailspamprotection.com [184.154.208.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83CA5E00510
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 09:15:35 -0700 (PDT)
Received: from ns1.siteground282.com ([184.154.233.8] helo=siteground282.com)
	by se6.mailspamprotection.com with esmtps
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.86)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1btz8f-00086g-OF
	for yocto@yoctoproject.org; Tue, 11 Oct 2016 10:39:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reliableembeddedsystems.com; s=dkim;
	h=Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=FGVYJZ2LJS9EK+DFALx4VFvtj/t+zE2a1EBcAvtngzE=;
	b=h3DocQ8T7TqlJ4io++ipg4Hkh
	al3hCyTJ4p4jI86PmbmTJqIm0FABLAlxk386qIN0GRnxCT/ulMPlTT1lXZJ0FJJjtKiUqAvrOK5hH
	x6/pC7RsolU7oef2OCqukeyN9r+X7TE6gxyXHACVnzgL4HQwgT6dit6V4hLg97B+/crFk=; 
Received: from [127.0.0.1] (port=37316 helo=secure282.sgcpanel.com)
	by siteground282.com with esmtpa (Exim 4.86_2)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1btz8f-0004Vi-ER; Tue, 11 Oct 2016 10:38:45 -0500
MIME-Version: 1.0
Date: Tue, 11 Oct 2016 18:38:45 +0300
From: gmane@reliableembeddedsystems.com
To: Joshua Lock <joshua.g.lock@linux.intel.com>
In-Reply-To: <1476196748.2912.36.camel@linux.intel.com>
References: <97f92f451012b39869a89eaeffbdf1a7@reliableembeddedsystems.com>
	<1476196748.2912.36.camel@linux.intel.com>
Message-ID: <d55fea8b61e453f1ad6bf5d2ea96ae75@reliableembeddedsystems.com>
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
	8WfReHqUOdh1n/PPcFy3zqUM1f1PZP2+vCB7hhhdphw2XxVqACTZ2xk6y9Xvglz1pRXWhjh9fdbl
	44I0Df1bDJmuEytGOjhN7+VkHzjLSbBIxrv0tc9XqsVkeAX6S7iXkMXDFHgBzeWjk6Zbtb6ZULs/
	x/wiY4bOQVH/H0QQPBfyCUQPGRfAuQJyQcUhQ4/Ia6YN5m0MsQWfYUYaa1Lo0EEGTh9WNZgruaGG
	pyvdI7qaN8yfURviR8OTeMmKUqzo7AcUqNzrkO1kQ1IW8ac6xxrycw2ScA+2hbCxTNV1lHIbmw+x
	cBDSXBmIVsiBPGIW1l+d5u2ITozWClL6/rEu//nzk76lak4ojODbJHHE/Dw6ORF2hyiPywks80fx
	SU3VhpzTalbJG9pSL0Hyv/WnnxF0rh7QmTz7opAw1zOCx6AoM/sstGqwASJuN0ZI7d5xBQHSPUfe
	3ja8lYcxJ//I0WkU2DaIvSyZINaqxL7/6J1fhOzjF0b4LXcjJZ5lomA3TThE7PgL8FKIfDj4oGkh
	sTbOm0n23gAH4LW5RBSd8xvhmpkqK6lzdXhhHwmzyvpmzdQjXE961MSkPADU05Y=
X-Report-Abuse-To: spam@quarantine1.mailspamprotection.com
X-Originating-IP: 184.154.233.8
X-SpamExperts-Domain: siteground282.com
X-SpamExperts-Username: 184.154.233.8
Authentication-Results: mailspamprotection.com;
	auth=pass smtp.auth=184.154.233.8@siteground282.com
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.18)
X-Recommended-Action: accept
Cc: yocto@yoctoproject.org
Subject: Re: Y-AB automatic updates?
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
X-List-Received-Date: Tue, 11 Oct 2016 16:15:40 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 2016-10-11 17:39, Joshua Lock wrote:
> aren't set.
> 
> If you point PRSERV_HOST and PRSERV_PORT at a non-localhost PRServer
> the git repo won't be fetched/updated.
> 

I use the Y-AB for nightly builds and to populate DL_DIR and friends. 
It's also not unusual to use this machine as the "master" PRSERV. What 
you are saying is that if I do so through the ab-prserv script (which I 
would like to use) it will automatically update PRServer and suggest as 
a work around to move my PRServer to another machine?

I would like to use Y-AB and run the PRServer on it as well - ideally by 
using the script. So I guess I'll need to hack the ab-prserv script.

How can you do QA with the Y-AB in it's "default mode" where it 
potentially updates the PRServer whenever you restart it? And you need 
to restart it e.g. to add/modify configuration files.
I also can't see any indication which version of the PRServer is being 
used in the build logs.

> Regards,
> 
> Joshua

Regards,

Robert

