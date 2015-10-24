Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55C6EE00B58; Sat, 24 Oct 2015 13:13:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.175 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB740E00473
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 13:13:04 -0700 (PDT)
Received: by wijp11 with SMTP id p11so117696999wij.0
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 13:13:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=XZbPAE+2SIb8nuxlUn4M12FxJHHsOaJxtcxIkbf8dOw=;
	b=elQvqBOVM/ib7035NUiXdVnZ+737W+d1foKUPUDecH7F9i9gMI43a2z4zJGWnbmxEv
	pIIc5sDw8cXK0rfV1l6MWFwMHDPT4PIvyEy1G5Wolo27bUS6NcMbSNwmQZlRWW5GdEuN
	fJgYklmahy73OBiwScoZA5LIHpOzFLPU1UxKEcBangHnpOcNc5RuuCtJoDUcoTP7nA22
	dczhlaHTqZJPBIXNPXG3TNYOAYprwCN4xTRR76AO0stmqIKxJmzdXwtvPRmZF7bnF1TK
	d/KbRSZxmIrsUNBoewD/cH9BJXrYtUx/84xN9FuC7d1oF4WkKPYXMW6WRRNkWkW355cF
	U4iA==
X-Gm-Message-State: ALoCoQltq2MlLGhNGvxmNmImnyWlBLWSV7HLmLJZyde6CwRh3cwOMz4trC0TR6k/Oq6hUhmiAfT0
X-Received: by 10.28.146.146 with SMTP id u140mr1126436wmd.85.1445717583313;
	Sat, 24 Oct 2015 13:13:03 -0700 (PDT)
Received: from resin (dslb-088-067-185-162.088.067.pools.vodafone-ip.de.
	[88.67.185.162]) by smtp.gmail.com with ESMTPSA id
	om1sm26592448wjc.2.2015.10.24.13.13.01
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Oct 2015 13:13:02 -0700 (PDT)
Date: Sat, 24 Oct 2015 22:13:00 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Nicolas Aguirre <aguirre.nicolas@gmail.com>
Message-ID: <20151024201300.GG4459@resin>
References: <CAK18fxHMv0LR1y58wzRZHEEmy-mwbMRHKTbqh9KR56NeEB98Cg@mail.gmail.com>
	<CAHTvVMc7DBOLGvOU7X5YuO+O6FKSEaXW0aUsBd_VHsKQrEhqcg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHTvVMc7DBOLGvOU7X5YuO+O6FKSEaXW0aUsBd_VHsKQrEhqcg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-chip] Yocto on the 9$ computer
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
X-List-Received-Date: Sat, 24 Oct 2015 20:13:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Oct 24, 2015 at 09:58:42PM +0200, Nicolas Aguirre wrote:
> 2015-10-24 19:26 GMT+02:00 Andrei Gherzan <andrei@gherzan.ro>:
> > Hi all,
> >
>
> Hi Andrei,
>
> > Have a C.H.I.P. 9$ computer? It works with Yocto now.
> >
> > http://layers.openembedded.org/layerindex/branch/master/layer/meta-chip/
> >
> Good job.
> IMO it make sense to add C.H.I.P support in meta-sunxi, don't you think ?
>
> https://github.com/linux-sunxi/meta-sunxi
>

Well. Temporary it is a separate layer. And this is mainly because of the
overhead you need for flashing the board. So I do see a benefit in keeping it
separately. We will see in time.

Thanks for feedback.

--
Andrei Gherzan

