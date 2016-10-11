Return-Path: <gmane@reliableembeddedsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79BD0E00D26; Tue, 11 Oct 2016 01:42:27 -0700 (PDT)
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
	*      [96.127.176.252 listed in list.dnswl.org]
Received: from delivery.mailspamprotection.com
	(delivery.mailspamprotection.com [96.127.176.252])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DA8AE00CF5
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 01:42:23 -0700 (PDT)
Received: from ns1.siteground282.com ([184.154.233.8] helo=siteground282.com)
	by se3.mailspamprotection.com with esmtps
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.86)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1btsdf-0000VK-66
	for yocto@yoctoproject.org; Tue, 11 Oct 2016 03:42:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reliableembeddedsystems.com; s=dkim;
	h=Message-ID:Subject:To:From:Date:
	Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=UVmaimDwOQcTDCR4koMgsxOuUzX/88IhUUal3n4hAD4=;
	b=oS/J5kmavsBy2nmnxITfhxWwj1
	qEX8UEgGaSAroH08PG24PsOvipaBBxIVj5q05eXGQRN2+/ytV90aq+laFgJIj3ni93hF8g8lmxb0J
	9KuhTGpO9Igrn+9PuBR45FF3XY09nALhhxEh6GauFA7LXLHABmoJtaw8EmiaKulsRhFQ=; 
Received: from [127.0.0.1] (port=34282 helo=secure282.sgcpanel.com)
	by siteground282.com with esmtpa (Exim 4.86_2)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1btsdb-000798-TM
	for yocto@yoctoproject.org; Tue, 11 Oct 2016 03:42:15 -0500
MIME-Version: 1.0
Date: Tue, 11 Oct 2016 11:42:15 +0300
From: gmane@reliableembeddedsystems.com
To: yocto@yoctoproject.org
Message-ID: <97f92f451012b39869a89eaeffbdf1a7@reliableembeddedsystems.com>
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
	8WfReHqUOdh1n/PPcFy3zqUM1f1PZP2+vCB7hhhdkaot+Nz7su9AcFG4U42fEFz1pRXWhjh9fdbl
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
X-SpamExperts-Outgoing-Evidence: Combined (0.27)
X-Recommended-Action: accept
Subject: Y-AB automatic updates?
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
X-List-Received-Date: Tue, 11 Oct 2016 08:42:27 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

With a latest and greatest Yocto Autobuilder I noticed stuff like this 
when I restart it:

---
...
  Updating PRSERV
remote: Counting objects: 20, done.
remote: Compressing objects: 100% (20/20), done.
remote: Total 20 (delta 17), reused 0 (delta 0)
Unpacking objects: 100% (20/20), done.
 From git://git.openembedded.org/bitbake
    35927a9..d9713ed  master     -> origin/master
    35927a9..d9713ed  1.32       -> origin/1.32
  + 21defce...09dd499 master-next -> origin/master-next  (forced update)
Updating 35927a9..d9713ed
Fast-forward
  bin/bitbake         |  2 +-
  lib/bb/__init__.py  |  2 +-
  lib/bb/ui/depexp.py | 24 ++++++++++++++++++++++++
  3 files changed, 26 insertions(+), 2 deletions(-)

---

This pumps e.g. the bitbake version:

Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Tue Oct 11 08:46:35 2016 +0100

     bitbake: Update version to 1.32.0

---

Is this really intentionally and what's the purpose?

Say you have a build server for your production software and PRSERV is 
being (randomly) updated.
Due to a bug before or after the update the build output might be 
different.
So you can't reproduce your images any more.

Some people (including myself) really would like to have reproduce able 
builds.

Is there a "non hacky" way to turn these updates off?

Regards,

Robert

