Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 679A5E00B47; Wed, 14 Jun 2017 02:21:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f48.google.com (mail-lf0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19B30E00888
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 02:21:02 -0700 (PDT)
Received: by mail-lf0-f48.google.com with SMTP id v20so87560947lfa.1
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 02:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:organization
	:user-agent; bh=NNZaHBYG6xj7Qk6XpJjvjNln9cOC3Yq/SKqWnzuQ/0Y=;
	b=0GN1YSdV1YwcAvT2LwKwC0HQEiPWq0jonGzBqnx1VpY94971nzN8eAsK2bS68NVm5h
	T9scUJV68/StlML9GSS99Om0xbMeW9ue0jZHG9q0pV59AFyS3yLEf1RkRvEkWmwLCWVE
	U3oOSjMc8iMzDRk7WV9hDE4GvAGkNneQEt523YAKS/YWPKyiA0f6py6U+5aaKcPQ116o
	1xepruTmzsBLj1HVVVzhnev903X98F8QK8bda+jdWbtd8T6a113kYbmrjZwEdrUduam4
	85nUk6j03Y2TmN2a/4wpCV5Z3CghtXUrhnf+gtR3v9xAwYWnHaEe0Rxmj+J7lJKHdzID
	83Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-disposition:in-reply-to
	:organization:user-agent;
	bh=NNZaHBYG6xj7Qk6XpJjvjNln9cOC3Yq/SKqWnzuQ/0Y=;
	b=gJHy9Y5riyvOmGprHWc4SHqmH41kAOXvMKWb+FQZtNyxdnHRCVPBPEyx315bstXxA6
	d1tZyXN8Jix2xoWW0mkyYUCWaFXv5ASfCtmWgJYR/dqNYs5J0p8W/VCRrf4LhsrZ/RyN
	BPFiQrKeEDx66f+bqyfMRMeIkERVPYdsmeRdtRW5roGUubODL++iEcnylGsqKDbx3uPH
	7KaQWWEXmX06C2h4lasJIDGeZh+ad/GJdFBjQ1cwxchhuXJL8EkjPhsxQnDUG0lubsyF
	MiOpPB0Cy22/OIesy0Tj3Nnk7zTPszXIiyACZu7qtogKDNwBwMP8Nslr1YabmUy5dOcp
	6goQ==
X-Gm-Message-State: AKS2vOyKIH71Rq027u4jPVPRKonUqU1C1rol2alfhdzVWU9hDZdwjyEy
	4dRJq5SEzAaL09sHlyYQLQ==
X-Received: by 10.46.14.1 with SMTP id 1mr1272140ljo.40.1497432061050;
	Wed, 14 Jun 2017 02:21:01 -0700 (PDT)
Received: from ad.chargestorm.se (194-237-220-218.customer.telia.com.
	[194.237.220.218])
	by smtp.gmail.com with ESMTPSA id b17sm121632lfg.32.2017.06.14.02.21.00
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 14 Jun 2017 02:21:00 -0700 (PDT)
Date: Wed, 14 Jun 2017 11:20:57 +0200
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20170614092057.amc6kambns3nvcoq@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <BFC5B361F1B24D4CBD6CB3483A12B103@PAULD>
	<20170614082258.GA36175@mbabyjoh-desk.ger.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <20170614082258.GA36175@mbabyjoh-desk.ger.corp.intel.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: NeoMutt/20170306 (1.8.0)
Subject: Re: Image lacks libraries needed by SDK
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
X-List-Received-Date: Wed, 14 Jun 2017 09:21:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Maxin B. John <maxin.john@intel.com> [170614 10:24]:

> Hi Paul,

> On Tue, Jun 13, 2017 at 04:24:38PM -0700, Paul D. DeRocco wrote:
> > In order to try out the much more recent compiler in the Yocto SDK (and to
> > prepare for converting to a different architecture in the future), I built
> > a standard SDK by using do_populate_sdk on my image. I managed to modify
> > my project to use the toolchain and libraries in the sysroot in the SDK,
> > and it successfully produces an executable. But when I copy this into my
> > system, it barfs because there is no libstdc++.o (and perhaps other
> > libraries) on my system. And there is no libstdc++.a in the SDK.

> Had a similar experience with respect to the availability of static libraries
> in the SDK.

> https://bugzilla.yoctoproject.org/show_bug.cgi?id=5347

> One way to fix this will be to include required static libraries in the image
> before building SDK - eg: for glibc static development libraries:

> IMAGE_INSTALL_append = " glibc-staticdev"

Why install it to the image? 

TOOLCHAIN_TARGET_TASK_append = " glibc-staticdev"

would be better, as it'll only add this package to the SDK.

Cheers,
Anders

-- 
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB

