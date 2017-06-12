Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06C32E00AF0; Mon, 12 Jun 2017 00:27:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08FDEE00AE4
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 00:27:05 -0700 (PDT)
Received: by mail-lf0-f54.google.com with SMTP id p189so47388290lfe.2
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 00:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:organization
	:user-agent; bh=NkAnuMsj42+xk7KNLUcNhgikOXZ7L0xmMYBnTDCluI8=;
	b=Ay4mmbFoM5KK6C0JhlNuoOJZc3sxgOvqF1Gjg9zlT5YHhbr/btXWSUi6D8H70E5vYq
	Yi5k88E9U140vsn2Ls1MYLyxvbrsk/KLTQfUXmd5vQlgFdVvOujD9Q0ip+Qm6cUvnebb
	sVShm+Ozsc/ExKZn7EjnJKdFpEIo3zgFSbkfQ+czbt6fI+QSEOSUuWvZ+WDXXX5m4Faj
	wDGaWbyuqV/CxbSXz529NW4tYsays4AbY4LgJ13y3mnMCWZtO3GNG6wKezqa5Kuh0MA8
	7YmiYmuPozxqCEY2CfTPn/sgzG98AfSWzg1fgFSd+RMVdi1D6azz/1db6uRqTwp/krqw
	IX4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-disposition:in-reply-to
	:organization:user-agent;
	bh=NkAnuMsj42+xk7KNLUcNhgikOXZ7L0xmMYBnTDCluI8=;
	b=ryhjNIqn8MGiptvN+41hpP07cmPrMfGXoEHgY8xqGwoOBIiJZp0/PjVd3f7ZUa8yKn
	nnxmohp0aRg4VrFQqUnX97PNxeGOQl/BN5nHe+v8l1/9WJIX+cnRb924wjwQ3f2r7bzJ
	LGxFoPJpSkY/DL04/xR3wXgLjHISSnE1sH8t6Mjbpfey9JSHMXrnwK7GouP8bZHU0+AL
	yJKUltQz1IyEmlQfIv0GoKzh3JrDT/LuvgbV7QMSdbwIs9Vl5OyCo0C8vBlDiEHGqbv3
	zHSDSHQrKR/wwJl8/ipqbIAJTzOcMbF1rGgM3D/yY2O4G9Yzbsl1ujQdUZo4ZKZ/ySa2
	w2iw==
X-Gm-Message-State: AODbwcCL+/Jdoz3sXPnHTkjWowj57ahHGOCQzunTXYttwwAZGk1GZrWU
	PdMbD1oL5WBmlBVY/Qtorw==
X-Received: by 10.25.170.12 with SMTP id t12mr8896568lfe.51.1497252424585;
	Mon, 12 Jun 2017 00:27:04 -0700 (PDT)
Received: from ad.chargestorm.se (194-237-220-218.customer.telia.com.
	[194.237.220.218])
	by smtp.gmail.com with ESMTPSA id l1sm552621ljb.48.2017.06.12.00.27.03
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 12 Jun 2017 00:27:03 -0700 (PDT)
Date: Mon, 12 Jun 2017 09:27:02 +0200
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20170612072702.qwrjrbgpetf2pom2@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <5500469A22567C4BAF673A6E86AFA3A40295F079EEFF@IR-CENTRAL.corp.innerrange.com>
	<CAJTo0LbPvhZehFQsEJMZU72SQvxbNupHVsjpJ_8RLjS9hNYRkg@mail.gmail.com>
	<2dcac9da-5dbb-c93c-0c2d-3a9bec5ecabc@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <2dcac9da-5dbb-c93c-0c2d-3a9bec5ecabc@linux.intel.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: NeoMutt/20170306 (1.8.0)
Subject: Re: Python 3 internal package dependencies
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
X-List-Received-Date: Mon, 12 Jun 2017 07:27:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Alexander Kanavin <alexander.kanavin@linux.intel.com> [170608 13:04]:

> On 06/08/2017 11:50 AM, Burton, Ross wrote:

> >     Is it worth trying to improve the internal package RDEPENDS in the
> >     Python 3 recipe, or is it better for recipes for Python apps to just
> >     manually list all the sub-dependencies as needed?


> > Definitely worth improving the internal dependencies, they're generated
> > by the scripts in oe-core/scripts/contrib/python.

> I'll bite: should we just drop the the splitting of Python modules into
> their own packages? In 2017, this is more trouble than it's worth, IMO.

NO.

If necessary, I'll prefer to add each and every module by hand, that I
need... That's a lot better than forcing everyone to have the complete
standard library installed.

Not everyone wants / can afford huge rootfs', but might still prefer /
require a few smaller python applications.

You'd be welcome to suggest that people try to install the complete
pyhton(3)-modules package, as that makes it easier for everyone with
large eMMC's and SD-cards, though.

Cheers,
Anders

-- 
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB

