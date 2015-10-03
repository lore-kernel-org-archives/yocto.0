Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3DC8E00DB0; Sat,  3 Oct 2015 12:03:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.172 listed in list.dnswl.org]
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09F9DE007DA
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 12:03:14 -0700 (PDT)
Received: by wicgb1 with SMTP id gb1so71137269wic.1
	for <yocto@yoctoproject.org>; Sat, 03 Oct 2015 12:03:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=c/zgBxfZaIy6MGjoNrH9x+013SbcyImjBY0PfKO5+Og=;
	b=NASYJ/DOzUVWrpouL9Ypt8XqF6XTKlfbYtSBvVZ4sd6aouOo2AO19X+RHLxi0adXm9
	KyL+3N3j/+dq7GhJEdAPDmQAuqnkviRgANmg37GGQAs2BLFPI1AhHnsOdY2OP/syLeyy
	R//hZJfGa4VkbBIm3SkhocblM0MAQaWon+RIeZKzLS95d2sF/Oxop23gP1RwZGsqtgLx
	m09QmJJee1QR5Ncgp8vmldJZUzE2YwH0bqDUW4cM1n9zoFexRvooQCXmyLJB/KEBr7m0
	tX3yOgNwzYzjCWXHZYxqJPTjZfgrkszmZYvngZRah2+D0VEFfeLbRAf7GfuBPWjguTTg
	WB+w==
X-Gm-Message-State: ALoCoQm7pncTB4Tilo7uUHYZvWQD768n4Q1OJdRfMfYOEwcTXg1qC6OBERQe/qtpnYdiHnTRj8eW
X-Received: by 10.180.107.102 with SMTP id hb6mr3319945wib.37.1443898993992;
	Sat, 03 Oct 2015 12:03:13 -0700 (PDT)
Received: from resin (ipservice-092-217-119-031.092.217.pools.vodafone-ip.de.
	[92.217.119.31]) by smtp.gmail.com with ESMTPSA id
	i10sm17734447wjz.41.2015.10.03.12.03.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 03 Oct 2015 12:03:12 -0700 (PDT)
Date: Sat, 3 Oct 2015 21:03:10 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20151003190310.GA24208@resin>
References: <1443890258-14442-1-git-send-email-raj.khem@gmail.com>
	<20151003182433.GA23956@resin>
	<CAMKF1spKaSO=k-UWitbbN8=KV-PEri6i5AwFn47EoRn1-Eqkqw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1spKaSO=k-UWitbbN8=KV-PEri6i5AwFn47EoRn1-Eqkqw@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V4 1/5] userland: Fix install prefix and generate pkgconfigs
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
X-List-Received-Date: Sat, 03 Oct 2015 19:03:16 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sat, Oct 03, 2015 at 12:00:13PM -0700, Khem Raj wrote:
> On Sat, Oct 3, 2015 at 11:24 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > Do you happen to have this patchset in a branch somewhere remote? Something
> > doesn't apply the way it should.
>
> yes
> https://github.com/kraj/meta-raspberrypi/commits/kraj/master

Which these commits:
c92ec8f weston: Enable rpi compositor backend
26e2365 userland: Adjust include location for pthreads-headers
ec4ebd1 userland: Add wayland support
070df78 userland: Fix install prefix and generate pkgconfigs
4dfa633 userland: Fix multiple inline issues while building with gcc 5.x

... build fails as it follows:
fatal error: interface/vmcs_host/wayland-dispmanx-server-protocol.h: No such
file or directory

Could you give it a try and see if it compiles for you? As well do you have any
idea who should provide that header? I don't see it in userland.

--
Andrei Gherzan

