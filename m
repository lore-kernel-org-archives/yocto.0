Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E696BE00924; Fri, 18 Nov 2016 13:20:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.43 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 832E7E0080D
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2016 13:20:54 -0800 (PST)
Received: by mail-it0-f43.google.com with SMTP id c20so45034516itb.0
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2016 13:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:mime-version:content-disposition
	:user-agent; bh=YY4uuPXPq1e5e89EI+wsCltjRO8R8CMk6Mjgzlg2AwY=;
	b=knSmtNo3S6eyL0uCNZ4fLhg/9JO+WSmpL7dlMerE50F2Y5nxzkTZwRWmoxdRp7eM6f
	TdjIowLQ1dxymEN9KIHfjcEcp+Dz7qo/CXuqLh5ttQa4JVZJI8x9Q8lwnrfGnf+Vef2X
	zZ2AfHNgJf8OevwsFUxz8XtB6TSPJrZtCnXQyXramfnEA8Qzlw59Fi1j8CQqiqVw6nUS
	bxFMrnNVxokAA4JTe3UQ23RfVLRfYOP7K0TB+LsHRcvSPAKr0RVZ2ZoQuhDnPWMiXONg
	bn5opCLy/Vb3P76h5HLrAjUqzIf+ZZpfTcMHpQkvvM/bLA6O3lqX8nloUe9hbAU6pwmu
	qyzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version
	:content-disposition:user-agent;
	bh=YY4uuPXPq1e5e89EI+wsCltjRO8R8CMk6Mjgzlg2AwY=;
	b=bLq/soVWdKG0oNwrcSUEWaEgldrNymp5U0qVjlJTTOhanbPvcwGmauQbIOXqdVA4ie
	mg/SajHIcn4QRGK5gHkzxk/BHOgJ/ObXgKk7QV0K38uqNR/HHMPBvY7sNMPHOpheKWrm
	caA0l9X2HeJVaxPOmtota68HFrX/hpVswGtF3JQSz5k9AECIMJSaXW8QPd7utEVf/6Ut
	hHoyp3qt3/IBjOTqveDrB8c4JNsGn49mKSHrecnsg1yIJy0QVG2tfvT6TOgyrm4/fntX
	gTi17urcj4SKp1oT1y8DkXuV48sJwfMQaF+upggQ/3raSq3OgW5gFydcry8nCn3BEuFd
	KRJA==
X-Gm-Message-State: AKaTC03tUP6doX6cS68nY+kJRP4XoH16ArAtxmaRh1WC1TDLjGXd2iR4cFFRJou0BFZDPg==
X-Received: by 10.36.94.148 with SMTP id h142mr469137itb.75.1479504053898;
	Fri, 18 Nov 2016 13:20:53 -0800 (PST)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	t129sm3586291iod.11.2016.11.18.13.20.50 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 18 Nov 2016 13:20:53 -0800 (PST)
Date: Fri, 18 Nov 2016 16:20:42 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20161118212042.GA26177@openSUSE-i7.site>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: [raspberrypi] raspi3 vs raspi2
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
X-List-Received-Date: Fri, 18 Nov 2016 21:20:57 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi,

I was wondering if there were any plans to create a MACHINE=raspberrypi3 that
treats the raspi3 like the CortexA53 that it is instead of generating images
that are backwards compatible with the CortexA7 that is the raspi2?

Best regards,
	Trevor

