Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DC84E0084A; Tue, 27 Jun 2017 00:59:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.46 listed in dnsbl.sorbs.net]
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94452E00524
	for <yocto@yoctoproject.org>; Tue, 27 Jun 2017 00:59:20 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id m68so10123628ith.1
	for <yocto@yoctoproject.org>; Tue, 27 Jun 2017 00:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=Xyn6+w8Gj5eMhDO6p2MtqVAJqO7WoNHJV16wRumJWTY=;
	b=FZatYb3cTWHRVlaULKRBtD2xFBNa3gRwMDx2XHkVugZrx05z1cJj4Z7/j3gvn1n4Ci
	QTkJDHfaBfCvc1cGsDEPe/y2PiG352mvBgO0S+ubEMl6U0oJI+aw7dW0ik1VB/9vJpBE
	f+mK8x5eXIu8fRnvJ4aPnt2r/pVbtQX2Mu93yetBkUGraHWeew+6wy//mglbW4W9n9k9
	tR/poV37zc2kXv8WW/UeEbP2xVGwea4FwQ6uyy/29V8yjjZTt79K5D1W/JnbBAEdJXRg
	EqSYftVxPO3BRDxBmDC1k+eySKxlXbCGhDu4ePWPKr0aJvmsHbNItrL2s1TRtTD0RwVk
	rAcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=Xyn6+w8Gj5eMhDO6p2MtqVAJqO7WoNHJV16wRumJWTY=;
	b=kfg1ztpvhDGUFXk+tZEo1hOho+fYm+72yr+L7VWmuMpgBI7wmU/FS1xXV4dIP+MQRG
	wZOFA3wtPvdJkknI9DCfG/T3mQ2MNpBgDArUFjRpwASVT1ZAqCH0eHI9Uk4HXj9g4icc
	4J49Bq04qUWW0k3+juM4fRSFgpWjSW0j5SRrW2JZ6mGLzlF8l/RfA5qXYVeX9zRagCKM
	ikzB0Utvf1rQsttYryTObFIE8X/BiedeWvNPqUHS0DytdC31gJcEj2kV47M+mNyl0Xjq
	F0btTqC+Ne7hOAKw+HpkJ31oqRQeYGPP8SPP59yVOz6aVRUyHuPuA5s0Xe2m8QegGSJd
	bL3Q==
X-Gm-Message-State: AKS2vOwJgMxGsIs78NsZBHlZuS2IEDvICoR/4l7fufkYMc3P2EEE6Shm
	eyru7oEKnngrBmq/utQ=
X-Received: by 10.36.81.211 with SMTP id s202mr2039407ita.113.1498550359682;
	Tue, 27 Jun 2017 00:59:19 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8FB9F.dip0.t-ipconnect.de. [93.232.251.159])
	by smtp.gmail.com with ESMTPSA id
	a191sm1235729ioe.1.2017.06.27.00.58.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 27 Jun 2017 00:58:57 -0700 (PDT)
Message-ID: <1498550334.7464.21.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Tue, 27 Jun 2017 09:58:54 +0200
In-Reply-To: <E68186D16557413C961C4DA89EF49E84@PAULD>
References: <E68186D16557413C961C4DA89EF49E84@PAULD>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How do you remove an IMAGEFS?
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
X-List-Received-Date: Tue, 27 Jun 2017 07:59:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2017-06-23 at 16:21 -0700, Paul D. DeRocco wrote:
> x86-base.inc adds "live" to IMAGE_FSTYPES. I have no need for a live
> image, or an iso, so I thought adding IMAGE_FSTYPES_remove = "live iso" to
> my image recipe might work, but it complained in do_bootimg that my recipe
> "depends upon non-existent task do_image_ext4". On a hunch, I movved the
> IMAGE_FSTYPES_remove to before inheriting core-image,

That's the only feasible approach at the moment. IMAGE_FSTYPES gets
checked while inheriting the class and then triggers inheriting
image-live.bbclass even when the "live" type gets removed later one.

There's a patch for x86-base.inc which removes this unconditional
extension of IMAGE_FSTYPES, see "[OE-core] [PATCH] x86-base.inc: Don't
add live to IMAGE_FSTYPES, default instead".

>  and then it didn't
> complain, but it didn't build ANY images.

You still need to set some kind of IMAGE_FSTYPES, for example "wic".

Further hacks may be needed depending on your version of OE-core, for
example inheriting the class set by EFI_PROVIDER.

Here's how we solved this in refkit:
https://github.com/intel/intel-iot-refkit/blob/0ec24f348453/meta-refkit-core/classes/refkit-image.bbclass#L219

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




