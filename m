Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 537DBE00CC0; Fri,  9 Sep 2016 01:52:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6221E00BFF
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2016 01:51:56 -0700 (PDT)
Received: by mail-lf0-f46.google.com with SMTP id h127so39292876lfh.0
	for <yocto@yoctoproject.org>; Fri, 09 Sep 2016 01:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:organization
	:user-agent; bh=3qpCRKXoKhj/ZvY8BD1BvQidLD55qsM4cTU5+LmCBUQ=;
	b=wINKGXOijoVBLItmuPKR5ObNgnZVT90BZfEEIBEVPVeDhB7eYAmEHIayprgvAH7jtq
	1WFX55L2O6xjKq5nCDJ4gfd4GsQJfhDlCUElYKJat/JptF1rmsxKklq96Y+VuUty2pmD
	1qd4CFa6g1v6F8QyPkUxxvFmY2ofTDuWiYDTeLwZ/xbpcWVYWAqsNirbZjQmXz7tKjyQ
	NNK8VnlhV2izyeod3UXqpWsjLfE3vqvpheditrKGFnXtNhJBCAe+mdGdg85Jp3OalrwE
	VI8rfkWDq+HtjTxEDbmftM5UkmzRv01nu5BjvQRl5APyP3fqLOuf+3Gx9HbswwKvY6Zu
	kRqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-disposition:in-reply-to
	:organization:user-agent;
	bh=3qpCRKXoKhj/ZvY8BD1BvQidLD55qsM4cTU5+LmCBUQ=;
	b=Chg5iZTi/78DoXvPoHDmNrgNgwNv+WRiHWlpe+mg7qJ+puZl4Ups2YeefpQVQ2/3RT
	mtZf2KRlLmhOLJVwOueGMPcm1LiDOs9J1ZSzzBtQwpAiznV2zD9uqLtBVAGBg6mAMMdl
	qn4Ji3FTO5xz01CVtSpWGKRH/aP7mBbmk43lXGxx/npG+vP0j1KRDUHN0gtNvnpB1t0l
	bMSROHkfXsgjDqxe3RpXXUGCSy3+evqP+MJ4q7QxkTeevV1+32ieBGdEXogfuJ5cETb0
	FG9mql04aDEvzT024P8aIVgbuTB9JZPwDVAqfFTZ4LygALwPojkLwv4IGtKoU3HPu99C
	6BzQ==
X-Gm-Message-State: AE9vXwPjS0li+eWsxEAjS4Je4/SCEWDh6Cjq98HFe2D2C93O7aBFMR4fqh61/OGirw1lxA==
X-Received: by 10.25.27.195 with SMTP id b186mr345461lfb.74.1473411114803;
	Fri, 09 Sep 2016 01:51:54 -0700 (PDT)
Received: from ad.chargestorm.se (213-64-218-130-no126.business.telia.com.
	[213.64.218.130])
	by smtp.gmail.com with ESMTPSA id 196sm432509ljf.5.2016.09.09.01.51.40
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 09 Sep 2016 01:51:49 -0700 (PDT)
Date: Fri, 9 Sep 2016 10:51:34 +0200
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20160909085134.fqtseh7atxcmqaxo@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <CY1PR0101MB1594A28319500402879A0B79D7FB0@CY1PR0101MB1594.prod.exchangelabs.com>
MIME-Version: 1.0
In-Reply-To: <CY1PR0101MB1594A28319500402879A0B79D7FB0@CY1PR0101MB1594.prod.exchangelabs.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: NeoMutt/20160827 (1.7.0)
Subject: Re: pkg_postinst behavior?
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
X-List-Received-Date: Fri, 09 Sep 2016 08:52:00 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Takashi Matsuzawa <tmatsuzawa@uievolution.com> [160908 14:23]:

> Provided the following scripts are provided, in two bbappend recipes
> as below, which of them are actually executed and which are not?  I
> have briefly tried and 'OK's below are called and 'NG's are not.

> AAA.bbappend:

> pkg_postinst_AAA() {} - OK
> pkg_postinst_AAA_append() {} - OK
> pkg_postinst_BBB() {} - NG
> pkg_postinst_BBB_append() {} - NG

A recipe can't influence another recipe, thus this isn't going to work.

However, a single recipe can build multiple packages, eg AAA and
AAA-foo.

Cheers,
Anders

-- 
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB

