Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82AA5E00B66; Sat, 24 Oct 2015 14:06:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 526A3E00473
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 14:06:37 -0700 (PDT)
Received: by wikq8 with SMTP id q8so117666139wik.1
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 14:06:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=huKBVQDY42Mlmpvw16mjTz1/Q1AQ2izDjbZiQtOmFQA=;
	b=Jtkni3ole7YLsZbKwyZMZF1jD/01/QLRXMX3bH4BHwhoFJoU5cip0p0r5PVUmehQRC
	ZU1h+MZtuvrmOYmZ+ALcGUJhgmpzK/oj4ccMD7l9tERpyzyJfQsZlKl8hYFT4c1N3v1y
	Y2AkaVmjzedQ5fU80Z4qg/+BJTGaiMh5SHQCpoCoCLgn/IhFcoZ73AOCRv0vbz3ZRMNu
	CwtEuPvnX56enJC/w+CNrzIW68qWKHtJNjy5oGDnjfl5NNvWxD6meVdhoV0+LHepmDUV
	OmxuSYfjbKW6nSXABgXR2ez6AygaaPKOv3NDheOb0R0U3PH8k3Ui1x86V9/+FxdGnCT3
	/zjA==
X-Gm-Message-State: ALoCoQmy32s2VjzQFixvDk8DfoxgzkVMQSjn8UwKid17YlA5osViMl2soIoPX/dtWDIeYgWgBYLg
X-Received: by 10.180.73.244 with SMTP id o20mr12257320wiv.9.1445720796744;
	Sat, 24 Oct 2015 14:06:36 -0700 (PDT)
Received: from resin (dslb-088-067-185-162.088.067.pools.vodafone-ip.de.
	[88.67.185.162])
	by smtp.gmail.com with ESMTPSA id l1sm1442428wmb.1.2015.10.24.14.06.35
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Oct 2015 14:06:36 -0700 (PDT)
Date: Sat, 24 Oct 2015 23:06:33 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Alex J Lennon <ajlennon@gmail.com>
Message-ID: <20151024210633.GH4459@resin>
References: <CAK18fxHMv0LR1y58wzRZHEEmy-mwbMRHKTbqh9KR56NeEB98Cg@mail.gmail.com>
	<CAHTvVMc7DBOLGvOU7X5YuO+O6FKSEaXW0aUsBd_VHsKQrEhqcg@mail.gmail.com>
	<20151024201300.GG4459@resin>
	<F491BE1B-5731-4EBC-8484-6C291EE73C16@gmail.com>
MIME-Version: 1.0
In-Reply-To: <F491BE1B-5731-4EBC-8484-6C291EE73C16@gmail.com>
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
X-List-Received-Date: Sat, 24 Oct 2015 21:06:41 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Oct 24, 2015 at 09:46:41PM +0100, Alex J Lennon wrote:
>
>
>
>
> Sent from my iPhone
> >> On 24 Oct 2015, at 21:13, Andrei Gherzan <andrei@gherzan.ro> wrote:
> >>
> >>> On Sat, Oct 24, 2015 at 09:58:42PM +0200, Nicolas Aguirre wrote:
> >>> 2015-10-24 19:26 GMT+02:00 Andrei Gherzan <andrei@gherzan.ro>:
> >>> Hi all,
> >>
> >> Hi Andrei,
> >>
> >>> Have a C.H.I.P. 9$ computer? It works with Yocto now.
> >>>
> >>> http://layers.openembedded.org/layerindex/branch/master/layer/meta-chip/
> >> Good job.
> >> IMO it make sense to add C.H.I.P support in meta-sunxi, don't you think ?
> >>
> >> https://github.com/linux-sunxi/meta-sunxi
> >
> > Well. Temporary it is a separate layer. And this is mainly because of the
> > overhead you need for flashing the board. So I do see a benefit in keeping it
> > separately. We will see in time.
> >
> > Thanks for feedback.
>
> Great work Andrei. I have a couple of CHiPs here and was trying to decide whether meta-sunxi would provide what was needed or whether we needed a custom layer.
>
> I've been hugely impressed with what Docker+Resin gives me for application deployment management so I'd like to look at how easy it is to take your Linux/u-boot CHiP support and deploy via Resin.
>
> Are you at the point you have a base OS image for CHiP with Resin support? If not I would be interested in having a look at this with you.
>

We definitely thought about that already. The problem is that we currently rely
on a BTRFS partition for the docker runtime environment. This obviously won't
work on a flash raw device. So if you want to dig into this I can give you some
hints, otherwise we will just tackle it when we will get to it.

Andrei

--
Andrei Gherzan

