Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7738BE00CA5; Thu, 10 Mar 2016 06:20:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EC81E00C91
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 06:20:34 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id l68so4144504wml.3
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 06:20:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=QjRdBszEN2LlpZZz4bZAEtcAA0augkKk4LepMSwElCo=;
	b=Wu1XHmi5OWYO7qql6wYqCivu6HxXrahkhaTznWQy9EOz8//3qltqtmsIGMOHlsQbVT
	zM4Z/PDjSjN2H4bgy2/7LjbfOHc0GQKbXGLEvfsRCiD2Vip/SfhBH1yO6OgC+A9w8Glc
	76RbeTndF84AxS7unYGmqyBc+JjDEuvwt5WkC2/EoP927mXHbmPF+hnFYDfoAbQHZ4V/
	nGTwnlAmLzU+FPBNxOWpvvlYWBlHQX+nch5vKKi7zcP+R5gYODavmRG6cFEPgnU3v+z/
	h3R1W0KVXgQBJGcrgQoBj++GM6tJuETKNYnMbAjoiAi4CT98w6aORzO3XlaPNTNLY0m1
	11MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=QjRdBszEN2LlpZZz4bZAEtcAA0augkKk4LepMSwElCo=;
	b=Ct3WRgAfXEZiXbakwYgVNaf6873G7k8luoPJ16bDD5lWjci8VyLPDTw0pDtlKVwc6s
	TdCRYjbUen+jalQIDRE+NH8ozEZPEbw+8njINBWESl9uCb8PdFKm63nNR+TTn+2CxYch
	PFG2tZDqHCuPwAWEuipDLh0+aBYkoZHP0VqvDqfvQuQnqBXqq36ocd+S1j8kyD7paqv8
	X/X4w734CbAy6IvgO8Nrq+UGMnyo9k2v5AlmYiiMEGENKMSdqb7y4avBBpMb2PPLB1VM
	H6u8NeSSKyUXH5l2z5tLVvB8uiT1dgYNlztGqBsKpos+ONa5EGVNDOx4H3a1F+CSgVsu
	rhew==
X-Gm-Message-State: AD7BkJKLwqVdkz0GPMQGDtV2sP88qcnl2tV5mrWi/k6XtVpIv8a2raYrWbeHyCj7G4ZEiw==
X-Received: by 10.194.187.71 with SMTP id fq7mr3967204wjc.97.1457619633987;
	Thu, 10 Mar 2016 06:20:33 -0800 (PST)
Received: from resin ([109.100.140.128])
	by smtp.gmail.com with ESMTPSA id u4sm3802789wjz.4.2016.03.10.06.20.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 10 Mar 2016 06:20:33 -0800 (PST)
Date: Thu, 10 Mar 2016 15:20:31 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160310142031.GD20329@resin>
References: <cover.1456586389.git.raj.khem@gmail.com>
	<CAMKF1sri1-St4xbaZbLVXa89m4+L2mQ9ztuA6+fuAJv=yqWA3g@mail.gmail.com>
	<CAK18fxEJEiOOhCWVBS6QH71fe0SUzC348fSJ-rRdUTS76-_znA@mail.gmail.com>
	<CAMKF1srXMXNrub5EraqVBj5GpShOraOjrOmHFEb1T0z1c4Fn=g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1srXMXNrub5EraqVBj5GpShOraOjrOmHFEb1T0z1c4Fn=g@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 00/23] Kernel/userland upgrade wayland support and clang fixes
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
X-List-Received-Date: Thu, 10 Mar 2016 14:20:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 02, 2016 at 08:34:06AM -0800, Khem Raj wrote:
> On Wed, Mar 2, 2016 at 7:47 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > Hi Khen,
> >
> > I started to merge the ones that were obvious. The rest need rebasing,
> > conflict fixing and so on. And then I test them locally. So it will take a
> > while. But I'll merge as I test. So you can easily see the progress.
> 
> You can use kraj/master branch from
> 
> https://github.com/kraj/meta-raspberrypi/tree/kraj/master
> 
> This is fully rebased on top of master. Should have no coflicts
>

Thank you Khem. I merged the patches to master.
-- 
Andrei Gherzan

