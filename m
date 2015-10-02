Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C428E00F03; Fri,  2 Oct 2015 14:33:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67FAFE0086D
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 14:33:39 -0700 (PDT)
Received: by wicgb1 with SMTP id gb1so49807993wic.1
	for <yocto@yoctoproject.org>; Fri, 02 Oct 2015 14:33:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=3tkweV6AJsBbuzVQZNtsi75U8ikOStB0Mc3FiyfKPTE=;
	b=N9H3QrILuDm4NV3JlgfTieAHEnUESYiUauE1Amh/NBNBQuEdN/szq8hchHBmA1WRdu
	S/3Bcvp2YfNJBKzUmlRnH7UEKQQVkv3J+aJm4bJI8GX7AcsLI8MpFCYJOhYHD7A9R8K2
	hIcKMb3/k8rAr64FLm2IW/pdBMFWaLugukUsHsVeU14KQlUDfpKJ32vIJ1j4qa+W6R3G
	07A1c2pmsh6GhMNSBzd7+L8VqKVaDQRuDiJaemvoeIbNSlUX6kOMEXw+l8kEjAkJINdJ
	rOfYFwzzfkbm9YJQR0bAzw+T7xysoD4z5vx48yAjI43Op+4vMrjl2L0dryj2coG8GO9O
	1zGw==
X-Gm-Message-State: ALoCoQlllaJPOxuZRlcNu84+7DsXlwn49DRmgYIi5jj4tmE+BxDAdMllZS7eADN5t29ucOEdmvXG
X-Received: by 10.180.85.226 with SMTP id k2mr891013wiz.67.1443821619174;
	Fri, 02 Oct 2015 14:33:39 -0700 (PDT)
Received: from resin (ipservice-092-217-119-031.092.217.pools.vodafone-ip.de.
	[92.217.119.31])
	by smtp.gmail.com with ESMTPSA id go5sm931602wib.3.2015.10.02.14.33.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 02 Oct 2015 14:33:37 -0700 (PDT)
Date: Fri, 2 Oct 2015 23:33:35 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Tom Martin <t.martin@eins-plus.de>
Message-ID: <20151002213335.GA3484@resin>
References: <5604850F.2030108@eins-plus.de>
MIME-Version: 1.0
In-Reply-To: <5604850F.2030108@eins-plus.de>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] compiling userland
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
X-List-Received-Date: Fri, 02 Oct 2015 21:33:42 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Tom,

On Fri, Sep 25, 2015 at 01:19:43AM +0200, Tom Martin wrote:
> i'm completly new to yocta and doing my first steps.
>
> plan is to build a system with a small footprint for low-latency video
> wifibroadcast.
>
> first steps are trying to build rpi-test-image including omxplayer. but
> compiling fails when compiling userland.
>
> last lines before the failure are. am i missing just something basic?

This should be now fixed in master. Could you give it a try?

--
Andrei Gherzan

