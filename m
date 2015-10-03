Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6C9AE00E41; Sat,  3 Oct 2015 11:24:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3F4CE0073C
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 11:24:37 -0700 (PDT)
Received: by wiclk2 with SMTP id lk2so71229701wic.0
	for <yocto@yoctoproject.org>; Sat, 03 Oct 2015 11:24:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=uJBX+02QKRX0w+MZQE+YJ+jb819fpIvZl/DBkbQ6qkA=;
	b=dPTsW5P60VcUlxkLKLvZtFhFK5veFDUzUFJru3nqWE3DaFPEsNn4i8mmKas9AOcHCE
	LgojNv3pqJiOd79pBL38zGrtTCK0Lslo03VJcyqGwdr/oqKdBhYxOtj9LZJOt1jUR7yC
	N4zqIKDtpYedWqhDOmwjpPyAYvwvfhn0uk7o178qOzkefK6/DGmbqbGq3+HtPDAxV7QT
	bVUyb/4J6PF0mvSBrnTcMLVf5FZYKOMtqAnNcpz+Lj+3uF+BQ05HR4S4U65JQh+i/w4q
	X3SnxJ+s4fx8omTLudE0bCVGL0IbtZVSeG4gmk9f39pVPj8DU3c1E2Gxf2HnZYQXMuEA
	01pg==
X-Gm-Message-State: ALoCoQkXDWAOBCJhs9f+N1GCO9g+rWonG7K+iCgL72n/SJ1Kc5vKzn0UgUFziLNQSCa2mJTNzKfJ
X-Received: by 10.180.104.40 with SMTP id gb8mr3612686wib.17.1443896676775;
	Sat, 03 Oct 2015 11:24:36 -0700 (PDT)
Received: from resin (ipservice-092-217-119-031.092.217.pools.vodafone-ip.de.
	[92.217.119.31]) by smtp.gmail.com with ESMTPSA id
	iw8sm17601306wjb.5.2015.10.03.11.24.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 03 Oct 2015 11:24:35 -0700 (PDT)
Date: Sat, 3 Oct 2015 20:24:33 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20151003182433.GA23956@resin>
References: <1443890258-14442-1-git-send-email-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1443890258-14442-1-git-send-email-raj.khem@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Sat, 03 Oct 2015 18:24:43 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hey Khem,

On Sat, Oct 03, 2015 at 04:37:34PM +0000, Khem Raj wrote:
> several userspace libraries like libepoxy poke for pkgconfigs ( .pc )
> files to detect egl support, and comes out to fail in configure stage,
> one of the patches now adds support to generate .pc files for some known
> cases. it could be further extended if needed for other libraries too
>
> Secondly, the default CMAKE_INSTALL_PREFIX is /opt/vc but in OE we use
> proper /usr so lets make this change as well, it simplifies do_install()
>
> .so are not versioned so we need to grapple with OE's defaults of
> expecting versioned .so files.
>
> Adjust packages for -dev package such that it can automatically package
> pkgconfig files and inherit pkgconfig because in cmake code we are not
> looking for pkgconfig so we need the dependency also put in place for
> consistent builds
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>

Do you happen to have this patchset in a branch somewhere remote? Something
doesn't apply the way it should.

Thanks,

----
Andrei Gherzan

