Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D05BE0085D; Fri, 12 Dec 2014 07:19:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f52.google.com (mail-la0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F284E002A6
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 07:19:33 -0800 (PST)
Received: by mail-la0-f52.google.com with SMTP id hs14so6158045lab.25
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 07:19:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:in-reply-to:organization:user-agent;
	bh=whkgGUpqnGfBDqAvTzkERiDd9KIP0RehIP1u/+Brbug=;
	b=B9A1HAhGtxjGh1pWYg2w/av76pNX36509pj/B0OcUZp6D8V65b1TWyaZcUc3F8PxeI
	OKOqDTRIJazLMLIXB/YS87TFpnfLxFOcb/EnLI1pvjSG5hYoAnJkyH7g+f0Cm3g+JRlI
	q6V926s12ojBlyQ/q2wo/FsJkWaaUSZa58e7OUVQQtQGQkyNDEjLOk03vHdV0+e/FZuP
	l6aQglw2MWMguP3Aq5RcOhs7V5VEjMfxLxEa7269HX8mOD9xgaYbQovDRYGsAw0jOjML
	M8S+Nqnu1KEwNJrPPgiE9V1uhYu9eu0lVkGrcfrWQeY+a892h+D50ILm9WOZJibzs5IU
	gaKA==
X-Gm-Message-State: ALoCoQkFpmUJRdtSeVabgpT0skcC9145fQHwhpkpX5QVgNHN5g4vzO86oybfHpxUbK3tADPWOCjD
X-Received: by 10.152.20.7 with SMTP id j7mr5301665lae.37.1418397572227;
	Fri, 12 Dec 2014 07:19:32 -0800 (PST)
Received: from ad.chargestorm.se (c-83-233-19-145.cust.bredband2.com.
	[83.233.19.145])
	by mx.google.com with ESMTPSA id w8sm472708lad.17.2014.12.12.07.19.30
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 12 Dec 2014 07:19:31 -0800 (PST)
Date: Fri, 12 Dec 2014 16:18:44 +0100
From: Anders Darander <anders@chargestorm.se>
To: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
Message-ID: <20141212151844.GF18879@ad.chargestorm.se>
Mail-Followup-To: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>, 
	"Burton, Ross" <ross.burton@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <95CF81BBD42FB348A182716C4D4310A80548C44C@G1W3650.americas.hpqcorp.net>
	<CAJTo0LZwnFS6h51KRMfXECzftLq8N1CdYx4c2ZPnUWnVbZECdA@mail.gmail.com>
	<95CF81BBD42FB348A182716C4D4310A80548C51C@G1W3650.americas.hpqcorp.net>
MIME-Version: 1.0
In-Reply-To: <95CF81BBD42FB348A182716C4D4310A80548C51C@G1W3650.americas.hpqcorp.net>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package Feature compile/runtime dependency
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
X-List-Received-Date: Fri, 12 Dec 2014 15:19:37 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Koehler, Yannick (HP Networking) <yannick.koehler@hp.com> [141212 16:11]:

> It would definitely make sense to have a distro level feature called
> init-busyboxinit/init-sysvinit/init-systemd/init-upstart or something
> along those line.  Is this already in place?

We have sysvinit and systemd as distro features today.

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

