Return-Path: <ulfalizer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC25EE00B8B; Mon, 18 Jan 2016 01:56:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ulfalizer[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f44.google.com (mail-vk0-f44.google.com
	[209.85.213.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52EEEE00AB9
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 01:56:42 -0800 (PST)
Received: by mail-vk0-f44.google.com with SMTP id a123so299249247vkh.1
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 01:56:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=GvKw63nCOI9wYcyVrWJjEvfl/nmbAvV+k6kLZ67UUEk=;
	b=omV28XyCP+KLpaRIf56F3Eez2USsgEh59KMQhGUt+osv5z01zXN5auz2sVjdMxlNaC
	AGidhlxcyj/2fPP69T+E90iDOg8OhRt174pY8QvqamBIGk4iAksdMMff4SLHjhtAUC8j
	RVEaiJnzIiDI0prnbFyJnXKJWs1SRfsU3PE6v3TLK3nikwWU5CivitwELqkEcQ4DkqJi
	5xrNSDZC33r90f/xWlDBFg4BuyQCskqXP7snXrsjDwYcxrCxnrqY6gB4sB6Xbwo83Z4S
	1iDWwSE50Ocb608dbXgNNtfwkwWZNXAmXdHxwlr3rpzK1r1jfxDOcthhEHqn+fuPBrst
	p5dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=GvKw63nCOI9wYcyVrWJjEvfl/nmbAvV+k6kLZ67UUEk=;
	b=m6tEbUjVTN1ZKe9oEjoZL0FwvW1IW0GY9rGUxLjT5wi5YW3neOl5ooa6UmXlm7La4D
	CvPnsDdbe1RrgETn5gUF2A20N53VSmathPZeOgCL5sZ+h3+UQ1eFT+DDagqPnGqdyNCH
	s6I2ZyXIt9/qlEMcln1qbyjGvDlevnAL9yog5IH0F8nrilYyGbGhT8dioT9hBB8Qc+I5
	M9IG8u/ETeUnY4dyT/mDs4yodXon4MGvPSfxyJ1aFD+fGmD46m89sZrX0XukHNzOxNY+
	uzhyhX+r4Ms8JL0KEiN1eULKGsy+4rbvF+uekq+a4aHc1k8GJbzjiVvPfyUHy6i3i2MU
	1nDQ==
X-Gm-Message-State: ALoCoQmPPcK7J91BAHCKjqnMh1lnFipnn74YP/kvz/cvnP442lJr1x42VmZ71y5zMBhsPAzzNSDDUUW5Uv3bDmirVS7hJ1oj/Q==
MIME-Version: 1.0
X-Received: by 10.31.149.78 with SMTP id x75mr16396695vkd.103.1453111001555;
	Mon, 18 Jan 2016 01:56:41 -0800 (PST)
Received: by 10.103.64.132 with HTTP; Mon, 18 Jan 2016 01:56:41 -0800 (PST)
Date: Mon, 18 Jan 2016 10:56:41 +0100
Message-ID: <CAFkk2KRuH8g49LBzceZSnFcetQc6ANedd7iMFD8uUqMHZDbKCg@mail.gmail.com>
From: Ulf Magnusson <ulfalizer@gmail.com>
To: yocto@yoctoproject.org
Subject: Mapping root filesystem files back into packages
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
X-List-Received-Date: Mon, 18 Jan 2016 09:56:44 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

To support an in-house packaging format, we need to partition the root
filesystem into a number of packages (called "internal packages" from
here on to avoid confusion), where each internal package corresponds
to a number of (e.g. IPK) packages.

The way this is currently done is by manually maintaining a database
(implemented as a PACKAGE_CLASSES class) that maps files in the root
filesystem back to packages, along with a list of what packages should
go into each internal package. I suspect it is done this way so that
post-processing steps on the root filesystem will be included in the
internal packages.

To me this feels pretty roundabout, and I suspect that there are much
nicer solutions (suggestions welcome!). What I'm mostly curious about
at the moment though is whether there's some nicer way to map files
from the root filesystem back to packages, without having to maintain
a separate database. Having the method be independent of the package
format (e.g., IPK) would be a bonus, though I'm not sure if it's a
strict requirement.

Cheers,
Ulf

