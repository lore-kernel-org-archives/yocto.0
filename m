Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C390E00C58; Sat, 15 Dec 2018 03:30:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD944E00C45
	for <yocto@yoctoproject.org>; Sat, 15 Dec 2018 03:30:03 -0800 (PST)
Received: by mail-wr1-f44.google.com with SMTP id z5so7785425wrt.11
	for <yocto@yoctoproject.org>; Sat, 15 Dec 2018 03:30:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=7l8hhzruwJZBbIeCQVgXtJnxkWOXU1pvoGKgMII3IHU=;
	b=LFSSqQb7q96+zEn0Ws0/HUcRXm8CZ/wteax54T9OIW8QqeFEsgC/EGnbBivPz/8vdz
	2ig3AvYtvdWHwM/xS6fh4Jd9a9AeGhUvhnxjbPLIgMoL5CcGDn3Nlnc33O4IxzVqdc1H
	x1uttHiBdJjsfu0qwKIqlR1LLGlqNpvX7P7c4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=7l8hhzruwJZBbIeCQVgXtJnxkWOXU1pvoGKgMII3IHU=;
	b=K6XB3J0UoE58jpiJmSBX8/oGAivYEAgbWxrDHu7zO96blkeeUk6vQlSNzovQBnXby5
	I1HkX5tZK48feDh7vJzz4FEZv+7/Fzy1y7+b/jbFJl7j0/JzKOTjeP7zZ/H+msAQhTez
	THFb01gcvNruTlZI5h1TvkYd2d3fXSIVfCTnPYpoXIiwuFeZ1wUURjMJYODR5Bd00bD2
	5lL07FskN9P1qh20WQxuHpMDSCzkqnjjdtmL4BWMi1n3AoNZt8PSsk79g3PRkipqif8a
	yarTM7OQ8ZZjvrPbwpWx/Dqyb0UfbqTutELqMV/K1h8MnI5cqesxkw0Ja24rWZc9GOLr
	sY3g==
X-Gm-Message-State: AA+aEWa+kW628LtgADNnQQIJmPhpoiIannYZQ9DJW2Ljl43ns5Jqf376
	GAqKvZkf80GcCH3yV4z1pUhLmA==
X-Google-Smtp-Source: AFSGD/XNVI7/BCV5aCIKUhSqWHhLCYkb21vqpFuhr2EUpB/TmTmdV/YBL0CBcxoBm+Y1DsKyiX7xFA==
X-Received: by 2002:adf:bb8d:: with SMTP id q13mr5267947wrg.183.1544873402662; 
	Sat, 15 Dec 2018 03:30:02 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	j24sm5446887wrd.86.2018.12.15.03.30.01
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Sat, 15 Dec 2018 03:30:02 -0800 (PST)
Message-ID: <a50b269c2523b4c98865f408dabface496f0cf1f.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tomasz Michalski <tmichalski23@gmail.com>, yocto@yoctoproject.org
Date: Sat, 15 Dec 2018 11:30:01 +0000
In-Reply-To: <CAE5v_rLRcNZAGHA29xrcf_BYf7Y_4ihHJseXACEr8nMDQcfqRw@mail.gmail.com>
References: <CAE5v_rLRcNZAGHA29xrcf_BYf7Y_4ihHJseXACEr8nMDQcfqRw@mail.gmail.com>
User-Agent: Evolution 3.30.2-1 
Mime-Version: 1.0
Subject: Re: THISDIR variable in another meta-layer
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
X-List-Received-Date: Sat, 15 Dec 2018 11:30:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2018-12-14 at 10:26 +0100, Tomasz Michalski wrote:
> Hi
> I have structure of files:
> 
> meta-layer-A
>     recipes-X
>         componentB
>              default
>                  script.sh
>              componentB.bb
> meta-layer-B
>     recipes-X
>         componentB
>              files
>                  script.sh
>              componentB.bbappend
> 
> In componentB.bb I have function do_install:
> do_install () {
>     install -m 0755 -d ${D}/usr/share
>     cmake_do_install
>     install -m 0755 ${THISDIR}/default/script.sh  ${D}/usr/share
> }
> 
> In componentB.bbapend I overwrite function in order to install other
> script instead:
> do_install () {
>     install -m 0755 -d ${D}/usr/share
>     cmake_do_install
>     install -m 0755 ${THISDIR}/files/script.sh  ${D}/usr/share
> }
> 
> 
> The problem is that ${THISDIR} indicates IN BOTH CASES to path meta-
> layer-A/recipes-X/componentB.
> So how to tell bitbake in componentB.bbappend to install my script
> from path meta-layer-B/recipes-X/componentB/files? It is really
> frustrating that variable THISDIR doesn't indicates to path meta-
> layer-B/recipes-X/componentB when I used it in componentB.bbapend.

THISDIR isn't meant to be used from do_install, its something which
works at parsing time using immediate expansion.

You need to reference the file you're using from SRC_URI and use the
functionality in SRC_URI to override files from other layers. It should
copy the right thing to WORKDIR which you can then install in
do_install.

To make it see the files in the extra layer, this is why you see
recipes which do things like:

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

so your bbappend might have:

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

for your case above.


Cheers,

Richard




