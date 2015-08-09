Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7DC0E00A6D; Sun,  9 Aug 2015 14:57:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42F75E00306
	for <yocto@yoctoproject.org>; Sun,  9 Aug 2015 14:57:13 -0700 (PDT)
Received: by wicja10 with SMTP id ja10so16775855wic.1
	for <yocto@yoctoproject.org>; Sun, 09 Aug 2015 14:57:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=bls9UVExICULDwYR4sH/5akDnxQyRJQMKwrUxTn5ZsE=;
	b=gbLQ4rhy5Qt6LtZflBVW6LNscViKhLu0asSvo8A8El9sdNOZpvaEkBOyA6esm16fah
	m8bHqq7aXfCFBefB6BXITbioAZxXhidkqv/XYdZjRljXqPaDrmmJwPeA45UVNzF6o1uI
	gaf1OJnuj0gn4zitzgQxQ0AUwonz0ZQn1BRbU26crOzy0nnSANcO5mZA63p5x9ChjgD7
	QJcgqthwOyLiOChxOpFcIiVOBXgWOV3rYT3r1/Ws9doJufTIPpOivfDTbhpIVlWZyBfQ
	aY3p26R4sAQkvj5blL2fx1l1WtSHMXSPL0kPTWRdPY2/M3HSOcCdTCooOE3VNX8GomSa
	CeLw==
X-Gm-Message-State: ALoCoQkjH++kuH1mv5utgXmC+g+YjasyHbBymDmRWn6qoHBxvJxMGz4CWCbXJY1KHgAZih8TaFvq
X-Received: by 10.180.101.138 with SMTP id fg10mr18943025wib.46.1439157432951; 
	Sun, 09 Aug 2015 14:57:12 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	y13sm26228849wjq.26.2015.08.09.14.57.12
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 09 Aug 2015 14:57:12 -0700 (PDT)
Date: Sun, 9 Aug 2015 23:57:10 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Message-ID: <20150809215710.GD17962@resin>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-4-git-send-email-javier@osg.samsung.com>
MIME-Version: 1.0
In-Reply-To: <1438245251-20437-4-git-send-email-javier@osg.samsung.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org, Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH 3/5] sdcard_image-rpi.bbclass: Allocate more space for boot partition
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
X-List-Received-Date: Sun, 09 Aug 2015 21:57:17 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Cheers guys,

On Thu, Jul 30, 2015 at 10:34:09AM +0200, Javier Martinez Canillas wrote:
> From: Derek Foreman <derekf@osg.samsung.com>
>
> The boot partition currently has a size of 20 MiB but just the start elf
> binaries account almost 12 MiB, which means that only 8 MiB is left for
> the kernel image. A recent kernel with many of its options built-in can
> easily be more than 4 MiB so let's double the boot partition size to 40
> MiB to make sure that it has enough room for the kernel image, the DTBs
> and possible even a backup kernel.
>
> Signed-off-by: Derek Foreman <derekf@osg.samsung.com>
> [javier: Extended the commit message]
> Signed-off-by: Javier Martinez Canillas <javier@osg.samsung.com>
>
> ---
>
>  classes/sdcard_image-rpi.bbclass | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>

Merged to master. Thanks.

--
Andrei Gherzan

