Return-Path: <dean@ripperd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60E22E00830; Sat,  8 Nov 2014 06:01:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [96.114.154.168 listed in list.dnswl.org]
X-Greylist: delayed 71 seconds by postgrey-1.32 at yocto-www;
	Sat, 08 Nov 2014 06:01:25 PST
Received: from resqmta-po-09v.sys.comcast.net (resqmta-po-09v.sys.comcast.net
	[96.114.154.168])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EF8EE007BA
	for <yocto@yoctoproject.org>; Sat,  8 Nov 2014 06:01:25 -0800 (PST)
Received: from resomta-po-19v.sys.comcast.net ([96.114.154.243])
	by resqmta-po-09v.sys.comcast.net with comcast
	id D1zE1p0025FMDhs0120Dda; Sat, 08 Nov 2014 14:00:13 +0000
Received: from mail.ripperd.com ([24.118.104.28])
	by resomta-po-19v.sys.comcast.net with comcast
	id D20C1p00Q0cmX740120DjS; Sat, 08 Nov 2014 14:00:13 +0000
Received: by mail.ripperd.com (Postfix, from userid 65534)
	id 3C5F5663AF; Sat,  8 Nov 2014 08:00:12 -0600 (CST)
Received: from [10.0.1.6] (unknown [10.0.1.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.ripperd.com (Postfix) with ESMTPSA id 0E6BF66398
	for <yocto@yoctoproject.org>; Sat,  8 Nov 2014 08:00:11 -0600 (CST)
Message-ID: <545E21EA.9040403@ripperd.com>
Date: Sat, 08 Nov 2014 08:00:10 -0600
From: Dean <dean@ripperd.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20140121; t=1415455213;
	bh=2J1zXMnFscQOGEjHXZqjFrJQG73e2hJJ6tJEFx7pRxo=;
	h=Received:Received:Received:Received:Message-ID:Date:From:
	MIME-Version:To:Subject:Content-Type;
	b=kwSbaP2z+VPu7tonRWB+eKHay071JlrN5CkUbfNgtj1HzUj0xhpmDptg62GnITWO7
	rSUX3tgsfhQEbCZU+4kVZyQShmUZc4gmckuzel64iGdlfhuC2QWMQIdMI+WtMwPYmS
	0Q4gl7SHxjkDY/Dbhn6cYHeEq9SklXSh9v5L0H5LXkTUdaH7nKrVpOqLlYSbiDr+Ml
	SQsKxjGLH1DbFpMHEXlu9Ob6csw/R3Qj+p4lBPqjOeJQs86ZSOcaESBXad1F1Q0lQi
	kFWn5QaU8C4FH3E8MZF3nu650Lb2t35qaMGyKm+3mQla7+c0C4lz+djKBVdZZwgvja
	+aQzFl08I6/kQ==
Subject: Build optimization question
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
X-List-Received-Date: Sat, 08 Nov 2014 14:01:28 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

So I am using core-image-minimal and trying to shrink things as much as 
possible for boot speed. I wrap the bitbake command in some other 
commands to basically extract the image and then attach it to a kernel 
as a ramdisk. So the size of the image is critical to boot speed.

In some of my custom packages I have used -Os in the gcc command line.
Is there a way to set this globally for all the packages built into the 
image?

Any other hints or tips to reduce the size of the build? Or potential 
changes to u-boot to make it load faster? This is running on a 
beaglebone black.


Thanks,
Dean

