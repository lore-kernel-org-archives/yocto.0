Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40102E003DB; Thu, 12 Jan 2017 08:23:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.170 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f170.google.com (mail-ua0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED632E0030B
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 08:23:55 -0800 (PST)
Received: by mail-ua0-f170.google.com with SMTP id y9so17873396uae.2
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 08:23:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=PHj3O7Ww/IbF2mbWYFY7G9Rz5JilUYgKlGhJA8IdjIo=;
	b=eODWuMeMZaHjA4D6Nyc5z6eJW1ds16RBzcRTsmogoERYZAwBCx9qFMkKf1H5hvRv01
	XN+oJNa0SOaGRPpp5Ou9nBQeaDyJgeC2NQ99LoquiagY5JLKwwf8iAKYfEOBMJtnyEOd
	xwqXyCkspWN1QX3hMgNqrlfp+/KgKJDGVBeC74B4SY+0NLinq2C8t7ipdeP/9E4FAJiX
	7N+iFqwFcTjas1Q7BYGNz1VRa3N4WSmfiEyCrwBGkLuEpTSZFHG8kdU++YHbOhqCBSZr
	GfE8qZ5JwY3Ht5NTP4/WnRUiLfoNagLC51CYs7xI6h0o/4oFIPPzD79Rx0jDNaHO31GA
	LZ6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=PHj3O7Ww/IbF2mbWYFY7G9Rz5JilUYgKlGhJA8IdjIo=;
	b=OEgt2KJnM443DgYf9TB//JM4RtySceE5TujQYsAjWlL+vyr6KkM8XnQZz6s3jcS0+f
	va2sBlksT4xoSXtww4f9GhFOMhX/pGDSuvlcqwC1WU6NVjNm2nsE9avVqfXLEBcxQqK9
	qtmkzNPgfkiqxw/gaCa2nXW6j12AJ8WpJZmF8lbQaxTxWbDw29/526TKTOFxlgXe9hTg
	6H/TqVyNcYU2B0S8mRLFCFlOd08dkChk44dWf1tSeTv8funSOlQHDOVfpF1ONCUwdaIF
	B4jQQlyhHriD5IsLuR6ZPR3CUjq6iURYMs8aNzavcmF+2mSlpsSi6jBlRCERVlx+rBLU
	7NcA==
X-Gm-Message-State: AIkVDXKpmXrNUW+37F61L1MII4rPStybrq+T5V3WiM5Ao5I/E/OgRs+0gEjTM3M6E6n7KxjS3zIzAXUtervUfg==
X-Received: by 10.159.48.147 with SMTP id j19mr7714378uab.6.1484238234768;
	Thu, 12 Jan 2017 08:23:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Thu, 12 Jan 2017 08:23:24 -0800 (PST)
In-Reply-To: <CY4PR12MB1880D87F3C84CF1046AE33B8A5790@CY4PR12MB1880.namprd12.prod.outlook.com>
References: <CY4PR12MB1880D87F3C84CF1046AE33B8A5790@CY4PR12MB1880.namprd12.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 12 Jan 2017 08:23:24 -0800
Message-ID: <CAMKF1sobjaJC0RZfGS9BYNG9+mOWKt64f2RotxY=D3JBwzpKiA@mail.gmail.com>
To: Richard Zhang <richard.zhang@pica8.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Linux kernel 4.8 boot can't login.
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
X-List-Received-Date: Thu, 12 Jan 2017 16:23:58 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jan 11, 2017 at 9:48 PM, Richard Zhang <richard.zhang@pica8.com> wrote:
> Starting crond: setuid: Function not implemented

Linux gained a new config option, CONFIG_MULTIUSER, that makes
support for non-root users optional. This results in a number of syscalls
being disabled setuid is one of them. set this option to 'y'

