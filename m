Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A81BFE00A86; Sun,  9 Aug 2015 17:10:28 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0712E006EE
	for <yocto@yoctoproject.org>; Sun,  9 Aug 2015 17:10:23 -0700 (PDT)
Received: by wibhh20 with SMTP id hh20so129000312wib.0
	for <yocto@yoctoproject.org>; Sun, 09 Aug 2015 17:10:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=vPwOf9gDX6KADnNqpLt0DxFT+gg6nJ+nql/ca5VoHdM=;
	b=GqCfyJ9jRcIF8GUW8nW8vlP7tiC1sBViUpzFBQKcDerwKyEuL9t/KxKBC0/2aBNNc9
	L9YFEpnHAK8UQlUEB3Dtck36WBzPGUZGswIrObcF55aCTQhN6YHRiN2rfW4iT8L8HRoo
	aAd3pZwDG5T4IitTa4khyiQm2PtLtXJtzCPsPUqWTLL6DzONNKBMm4DOMNv5cVQlpKOv
	yttAyv3ZtvG0kCouEESY2EP514RUdyTPWTPN5G1vyDHvjFo8aXbquFGEBfV/MaSCnJyh
	ZWVE382MSQ+L0pHEcIASSAnagJA3yYr6Dmyk++wL7jCMzK+JQfeN3aecKGPk+W9RQB6n
	VlSw==
X-Gm-Message-State: ALoCoQmD9efZVri8NzyVj4N4IWxMjPPuwRjnH99sqe8it3ybRrMENprCa5eRJEW3srchm8iu6NgT
X-Received: by 10.194.87.4 with SMTP id t4mr42334046wjz.84.1439165422762;
	Sun, 09 Aug 2015 17:10:22 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	y13sm26637830wjq.26.2015.08.09.17.10.21
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 09 Aug 2015 17:10:22 -0700 (PDT)
Date: Mon, 10 Aug 2015 02:10:20 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Andreas Enbacka <andreas.enbacka@gasera.fi>
Message-ID: <20150810001020.GC16574@resin>
References: <001701d09ebe$2f3a5030$8daef090$@gasera.fi>
	<20150605151129.GF1829@gmail.com>
	<000601d0a285$19143850$4b3ca8f0$@gasera.fi>
MIME-Version: 1.0
In-Reply-To: <000601d0a285$19143850$4b3ca8f0$@gasera.fi>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Issue with 8250/16550 UART1 access in raspberrypi (meta-raspberrypi)
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
X-List-Received-Date: Mon, 10 Aug 2015 00:10:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

On Tue, Jun 09, 2015 at 10:22:52AM +0300, Andreas Enbacka wrote:
> Hello Andrei,
>
> I attempted to compile the driver as a module, and ismod it after using
> wiringPi to configure the pins for uart1 (bcm pins 32/33), however the
> system still freeze (freeze occurs when attempting to close Minicom, and
> when attempting to switch off hardware flow control which of some reason is
> enabled by default when connecting to /dev/ttyS0). I am using kernel
> 3.18.5+, could this have some impact? Or could some addresses for uart1
> require modifications in the driver?
>

That's a bummer. Were you able to fix it in the meanwhile?

--
Andrei Gherzan

