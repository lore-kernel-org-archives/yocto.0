Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20E6EE00C69; Tue, 13 Dec 2016 01:08:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.180 listed in dnsbl.sorbs.net]
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 711FEE00A1E
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2016 01:08:39 -0800 (PST)
Received: by mail-io0-f180.google.com with SMTP id 136so42502576iou.3
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2016 01:08:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=NOeTYPr1qCdknfD9JjGKldSHC1tVEQKx3NmGR3K3hzs=;
	b=Jc5R1/fuRmX024dIqrSEmc+rVDwwa92jMzFxY6CMC0eo5tGbz0ZNKD5Z/8c1nAJpRd
	EepAqY7luNKNPq7CrmJwP37y0x1BucysXopeQyf8H4WPHgbhGDaN5zFEBv7xAVw/AiUC
	rz1WjQjjFzyllB5O7ud91N1jHzbwLKB1AtlgO1OPKX2TLQlpwSB3G/3FVaeeXSCSpj7n
	7jX34bJx6noekksISyF8siPiJswQevccTZ++/2Zqg30TQiRnNg7wTTTXRIHC3Z4NmguQ
	4vznSYrOM3SDjEriSrWWDufW57pTDJFy28AhHbfKDtf1yGfXas/YMdGrm4HkupO1cddq
	Kr3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=NOeTYPr1qCdknfD9JjGKldSHC1tVEQKx3NmGR3K3hzs=;
	b=BMU3o54fizCImydE41VBe7PAIGbruHcod4qN0CSCKGglQITg3wxLWN+8gRkfnRuvI+
	zKE+E6JVIFd/QDo12ZVBD78l6mOsKJsgkPvlBHoFXmeLred8ENry25wqfJTpvGMZhQ3/
	pDltYGwQ5OK1NC09DPIsbjnvSjTlwwTWaDx5HJrEze5aNO4zMQkvgtU1/bJY0pl04TqD
	wd9Wh6Rd6g4mICvKC46Er8TTBmZLx4Knj36De42xW/poz/A/6KdLoNuE8tzKL+8jxXbQ
	X4HSwPo60wxGWILByuQrBZQY1zrJQVIesJSGqHRSESkb24v7wOHPy0wmy63Y0c3tn6Wv
	cjWQ==
X-Gm-Message-State: AKaTC00bPt7qBNZMPezjwt2e8bKahJJsVmgFENsj3/Bg8CUvyeaIRUEvCLzbgtfQxXbKxD5c
X-Received: by 10.107.142.2 with SMTP id q2mr84394561iod.128.1481620118378;
	Tue, 13 Dec 2016 01:08:38 -0800 (PST)
Received: from pohly-mobl1 (p5DE8F3B2.dip0.t-ipconnect.de. [93.232.243.178])
	by smtp.gmail.com with ESMTPSA id
	22sm21020027iog.28.2016.12.13.01.08.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 13 Dec 2016 01:08:37 -0800 (PST)
Message-ID: <1481620115.17535.262.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Mike Looijmans <mike.looijmans@topic.nl>
Date: Tue, 13 Dec 2016 10:08:35 +0100
In-Reply-To: <ad99fb40-4d8e-c7e0-3fe8-d27bc593f8fb@topic.nl>
References: <20161121120355.18309-1-git@andred.net>
	<1480503859.6873.280.camel@intel.com>
	<1480516308.13682.1.camel@andred.net>
	<1480517999.6873.298.camel@intel.com>
	<30a3dd41-2e1c-8658-b83d-8632944d1709@denx.de>
	<1481017522.17535.38.camel@intel.com>
	<8e1fdcb8-d9fb-0e51-2e21-91e7e7c6f450@linux.intel.com>
	<c3ce9528-f2eb-dd3f-cc68-331435aeda35@balister.org>
	<16ca1a50-f46a-196f-66b8-91f0d14f59c2@denx.de>
	<1481296433.17535.170.camel@intel.com>
	<ad99fb40-4d8e-c7e0-3fe8-d27bc593f8fb@topic.nl>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: update mechanisms
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
X-List-Received-Date: Tue, 13 Dec 2016 09:08:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2016-12-13 at 09:51 +0100, Mike Looijmans wrote:
> ﻿On 09-12-16 16:13, Patrick Ohly wrote:
> > Hello everyone!
> >
> > Thanks for contributing directly to the page. It's great to see this
> > done collaboratively.
> 
> Nice informative page.
> 
> Only thing lacking is simple, OE-built in upgrade procedures like: "Just run 
> 'opkg update && opkg upgrade'"

Want to add it? :-)

Seriously, it would be a good addition.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




