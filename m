Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DF23E00CE2; Mon, 28 Jan 2019 11:25:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f178.google.com (mail-it1-f178.google.com
	[209.85.166.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABF21E00CDF
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 11:25:33 -0800 (PST)
Received: by mail-it1-f178.google.com with SMTP id g85so251853ita.3
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 11:25:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=rEeIrYsnMrHHpvS6mHwuPuKjwJz+k/myoNvEQ/2nna0=;
	b=yx7+qSMnQwJ9N8KmLkWJ9EaeH9I1doeMR48kpWRJrXTjQgHMgkbU30STaxzH0it1E/
	6pasd+UujWNSRNeq5jjbCnqGPV4H86+0u0j+I37qq7BfPRNSRD9hXqaEi298wY0AblOX
	lJ+CJuRJcMz7grhNMdhvQ+hkN4upt1FnbcUhcef6rfV2LcLo4S2UA+uAfS9NyptFz/yn
	vyg37u3KEWiFazdjVKbYe5L/5BH5iYnlYXAM+9CcyjBfJNCjEOL+oM8Chwlo1kLovtYx
	P3dwn1q0xjmdUlQbyNKV/Ad1CcqF44u8ymJoyKnoDsr7MDYf33k1Jf2jDNQJoIitvxvT
	VPBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=rEeIrYsnMrHHpvS6mHwuPuKjwJz+k/myoNvEQ/2nna0=;
	b=E7apbQF4BjeGA47//m0mrdGjEHdZtDOzVztZ43YBYlY7Bs2E4kWhkTi+k1dqRRrdQ7
	m1+96H3suy2KrQfhaWgUTBaRQPLmx4X+RSQEoTP3v3fv698UBG1Wk51lCWmlfEJ2iAYI
	RdvTadALH9DyLIgu4etcUyqwNhl1DKkr422yeXusp0KX70K/G0UU8/b/Wr3hieIPv8Xk
	et5JzRWg0vXfP4c5avX+KeIhewch2Jwb514BfGF1NGabQd6W0rCyB+YYn9ZyWTzDSyfW
	4nmHhUT/EdF89eR2g9qeVHHsaUtgOueZ+u0Z1Ej8Fn/gQpsE67g1U/vOtGDc+EZFMXhu
	OoXg==
X-Gm-Message-State: AHQUAuaMCm68GvBg/aGm2hZDFuFdOOpmzTMJ05RwK6LrN+8XL+Ac9UL1
	ncchMoAnInxjqOQq+9i+bC0QQKZIVH3SMKbACvBV489s
X-Google-Smtp-Source: AHgI3IbbNoR1ufuWSQzYj/xVzQBkhR2uIb5S2KXF/YH6VNWtm40KIr7qDcxf9BU9Ingl9kT4oM45BcESS0C8YG0iv5U=
X-Received: by 2002:a24:8e43:: with SMTP id h64mr56303ite.26.1548703532796;
	Mon, 28 Jan 2019 11:25:32 -0800 (PST)
MIME-Version: 1.0
References: <CAGMdoFm=08uPEFYp+wXOvzzfwbZHPom1pU3ASDmDtVQ9vGsXvg@mail.gmail.com>
	<CE2E43470FE5444A811B580382FE5EDF5247BAAE08@KEMPMAIL2.woodward.com>
In-Reply-To: <CE2E43470FE5444A811B580382FE5EDF5247BAAE08@KEMPMAIL2.woodward.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 28 Jan 2019 19:25:21 +0000
Message-ID: <CAJTo0LZvi_H7LbfqhWuzewmCEi9HFD9_5KFuV6uPYH31Toetaw@mail.gmail.com>
To: Lukasz Zemla <Lukasz.Zemla@woodward.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [EXTERNAL] SRC URI checksums
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
X-List-Received-Date: Mon, 28 Jan 2019 19:25:34 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, 28 Jan 2019 at 19:23, Lukasz Zemla <Lukasz.Zemla@woodward.com> wrote:
> Checksums were introduced to ensure data consistency. They are not checked if SRC_URI points to repository (svn, git, hg..., it is assumed that  repository provides its own mechanism to ensure data correctness).

To clarify, the checksums are only used when download tarballs.

Ross

