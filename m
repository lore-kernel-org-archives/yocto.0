Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1420FE00B45; Wed, 19 Sep 2018 05:14:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
	[209.85.210.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFDEFE00939
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 05:14:47 -0700 (PDT)
Received: by mail-ot1-f52.google.com with SMTP id 36-v6so5487128oth.11
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 05:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=HdS1nUIYnnlvgYLn+FR7rtI8IF+CcS69MBAxr7/1/WA=;
	b=S2d0QAOdxYayvbzKgzIVD1uJ45AWBQ2ByeNORFE5O1AFodESFveYRPQoiM34CKF/qs
	qfjUNTLmlsHIB8lWogHzuxsK0bun0L/cIWkJHBrADqrfh8kczMad3gVPcXvXe0y5euj+
	qSZ5abc9tiCkmeqiXzGAXZO8Jq4fr0hFEJpDc6d1331dCKUM1WgsLFKle6HE3tYFlqUz
	oSmibx0Ij9ngraB7k+y7gU1TZGjAbuH8CxjkfQrtgrnchelvPbZ3iTGj+SB44yZldW1o
	rOr8PS836GHJBdRu/ar/9Qi3VMg+yPbuk4hlAIVV+gzFY3unwt4aswFXgKfoDY0nOkpo
	bHUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=HdS1nUIYnnlvgYLn+FR7rtI8IF+CcS69MBAxr7/1/WA=;
	b=i9bAre2eutJSM7GL+d4xO/Id4iVJSpPWDrHjaP3dbtwpptKY/YoEOBxU3X7e8/URGP
	PuJLWKvzUhVJ3JoAZ3Ho8XCllOL+IcuSR/V/X3FRR6u6scemswtIfilwTh0rh+bjsI55
	aw7sO9O/0d/kHcmgBWAiPNoqRigkqKN9Osad7qyrp/Sivi9gV0fe8vfUuXXtNPa45Qrp
	6FRF45LF+fygDh4I8UjakmLhnccjF5sthoSEE/3FjG48CuYZhmtXI451owmpVb+BpgYl
	lCMU0LxrbsX6bxvdwziRKT57UuSeOsgQSsyJ21wnB78eTVHWzEqcvW12kJBf172lZZ4+
	FuqA==
X-Gm-Message-State: APzg51Bs+g5a8OOmYD9BBp2je5ePIu4v0VG04rAt8fYS5F5azyXMBEDU
	2R+kuwiZ0NvBwJ7eTdggDmwq/Fyb+iRdka1ezKZ/aQ==
X-Google-Smtp-Source: ANB0VdYEePfMpioDc7Cy5qiCohJg6Qp+HStwm05JWYa+6g29cVsv8rGvgaS9JkzhEuv+9NZ3jq/oa2m55vnAgURGlng=
X-Received: by 2002:a9d:11ee:: with SMTP id
	y43-v6mr18246513oty.341.1537359287002; 
	Wed, 19 Sep 2018 05:14:47 -0700 (PDT)
MIME-Version: 1.0
References: <HE1P195MB03625FB2341F7F8FBD894D2DC11D0@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>
	<CAJTo0LYxMCH2BXsMreV=MxHqT4uFNPADHiNqRmxqQDcyzqPDuA@mail.gmail.com>
	<VI1P195MB036666289CDE9F01960945E8C11C0@VI1P195MB0366.EURP195.PROD.OUTLOOK.COM>
In-Reply-To: <VI1P195MB036666289CDE9F01960945E8C11C0@VI1P195MB0366.EURP195.PROD.OUTLOOK.COM>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 19 Sep 2018 13:14:35 +0100
Message-ID: <CAJTo0LbkFP0RaCco1_EdR62y-tXGvUeq0RT31F+qzdTkdbhX+w@mail.gmail.com>
To: MohamedYouseif@outlook.com, Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Adding nInvaders game package recipe
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
X-List-Received-Date: Wed, 19 Sep 2018 12:14:49 -0000
Content-Type: text/plain; charset="UTF-8"

Please remember to reply to the list.

On Wed, 19 Sep 2018 at 13:08, Mohamed Youseif
<MohamedYouseif@outlook.com> wrote:
> Thanks, Ross for replying, I had changed the recipe and tried to get the source code of ninvaders package from SourceForge with .tar extension,
> so the new recipe created was different than the old one that inherits Autotools and it modifies the do_compile routine to run "oe_runmake" and this
> passes the compilation but the do_install is empty, so when I build new image after adding this package to the image using
> IMAGE_INSTALL_append = " ninvaders " in conf/local.conf file and boot the image on my machine i do not find the package in the new
> image, so what I should add in the do_install routine?.

Well your makefile doesn't have an install target, so you'll need to
manually copy the files from ${S} to ${D}${bindir}.

Ross

