Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D84DE00A8C; Sun,  9 Aug 2015 16:05:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53D38E006EE
	for <yocto@yoctoproject.org>; Sun,  9 Aug 2015 16:05:32 -0700 (PDT)
Received: by wicne3 with SMTP id ne3so2547549wic.0
	for <yocto@yoctoproject.org>; Sun, 09 Aug 2015 16:05:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=rAJEzI9GQdg0ggAERa5Qe6Ibij3mCeWqIm3aqbCaS/0=;
	b=SfMz0OzGg4m2D2i3UvyJHAVVbL7cRxt4Al2uVmY1TjztdMeVAhIZ+LmKLXrBnsif8i
	or72P+A1XVyBRZ5x7BJ+rr+kOjnldD5Gpif8SNgYDASrKbSP6R4ZENrbCIR0ctnm0iZn
	//TsWVcStbuhfUghNVAf29BHCPtyD/uoS3nXpd51tOvIn1+NxwvNPf3DzB3BcG4RP4xG
	nGnYZ03JmXKdSuVYRXSRsO38rWVIUw0j2DuKSRq5cL8Nb3g05BMWKSi2zB0I8xLp6Pfz
	mOHEs/6VzirWLcwTWZMGqSl+BQ8UWV9Q9EV6ckP6JEpU+0vAKf4veRZRi1NiIH5Xjlr4
	y4Hg==
X-Gm-Message-State: ALoCoQnCdZ85io1kV3BVKKwV1kxHDQCHBk8vUkUCKpsT5w+J1JV2SzwhLtYfHd9Du2ilKaWE3oLo
X-Received: by 10.180.86.163 with SMTP id q3mr19342755wiz.75.1439161531462;
	Sun, 09 Aug 2015 16:05:31 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	ny7sm10726303wic.11.2015.08.09.16.05.30
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 09 Aug 2015 16:05:30 -0700 (PDT)
Date: Mon, 10 Aug 2015 01:05:28 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Message-ID: <20150809230528.GL17962@resin>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-6-git-send-email-javier@osg.samsung.com>
	<4731B312-4D73-4951-8E73-1579D8C54BD5@gmail.com>
	<55C1AE74.2030808@osg.samsung.com>
	<CAMKF1spq-7CntKTpVEByr7hi8pf6-uuw2DZiM=ZSvQKsaxkyBA@mail.gmail.com>
	<55C305EC.9030809@osg.samsung.com>
MIME-Version: 1.0
In-Reply-To: <55C305EC.9030809@osg.samsung.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	Derek Foreman <derekf@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH 5/5] rpi-default-providers: Switch providers according to used gfx stack
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
X-List-Received-Date: Sun, 09 Aug 2015 23:05:37 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 06, 2015 at 08:59:56AM +0200, Javier Martinez Canillas wrote:
> Hello Khem,
>
> On 08/06/2015 04:54 AM, Khem Raj wrote:
> > On Tue, Aug 4, 2015 at 11:34 PM, Javier Martinez Canillas
> > <javier@osg.samsung.com> wrote:
> >>> who defines the distro feature ?
> >>>
> >>>
> >>
> >> Distro features AFAICT are user defined options, you can for example have
> >> the following in your conf/local.conf:
> >>
> >> DISTRO_FEATURES_append = " vc4-gfx"
> >
> > I wasnt trying to learn about what DISTRO_FEATURES are, I was trying
> > to draw attention to the fact that meta-rpi being a BSP layer
>
> Ok, sorry. But I believe it's more productive to just do suggestions
> instead of asking rhetorical questions that can be misunderstood :-)
>
> > was trying to define a lot more than a BSP layer is supposed to do. So
> > if its a distro feature, I would like it to work as expected on other
> > machines besides raspberrypi. If thats not applicable then we should
> > rethink if it could be folded into MACHINE_FEATURES if it needs to be
>

Khem definitely has a very good point. Maybe his way of putting it in words was
not that productive. But the core idea was definitely right: I don't want rpi
layer to introduce distro features.

--
Andrei Gherzan

