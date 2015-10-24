Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5481FE00B58; Sat, 24 Oct 2015 12:56:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBE8AE00473
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 12:56:28 -0700 (PDT)
Received: by wicfx6 with SMTP id fx6so68625646wic.1
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 12:56:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=LMHO/CSSVW1hR9r7ol04YnTDrsyFixtj65bIR65qUNs=;
	b=guXLVg2c9hLMhdDql83SMAN3Cx+WdPeEgljWDp6NTymGdFju9lRmijtp/RWN/kTTjK
	itwsmFZsUksBmZdey5SzAUffnbIEMnPNPVdrIVQGPmCJ5YGDYDAjj4ASaXMncWxtYT38
	IFotsS8vGfaLLqao4oWbpoCPefyyGAwTPqzfQisXAcPvTx7YlAaJpanvr7MtORiJ8b+B
	nLQwhM1V0zrjnDS/eAdvcZXMBmvmaLpVzlu6QMonSLC2Le6N2iI4cmkD2j3/EtiRyUt2
	j67anlwMjUuCwRWHFlyLXd5OuvkMz0nEW9sdaXxO9PudsEcQHrNj0QQsaEVhqhbjs2oC
	p9VQ==
X-Gm-Message-State: ALoCoQlAQCWCl9MccE+nqfgWc6IdPbgrkRL8oPikyfMX/v02enqpOr0yXAoUCUHIVs1Wp5vi5ieG
X-Received: by 10.194.58.84 with SMTP id o20mr14038641wjq.73.1445716587922;
	Sat, 24 Oct 2015 12:56:27 -0700 (PDT)
Received: from resin (dslb-088-067-185-162.088.067.pools.vodafone-ip.de.
	[88.67.185.162]) by smtp.gmail.com with ESMTPSA id
	ee5sm29780447wjd.17.2015.10.24.12.56.26
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Oct 2015 12:56:26 -0700 (PDT)
Date: Sat, 24 Oct 2015 21:56:23 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20151024195623.GC4459@resin>
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
X-List-Received-Date: Sat, 24 Oct 2015 19:56:29 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

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

I merged this patch to master. The rest are still pending because of my build
issue.

--
Andrei Gherzan

