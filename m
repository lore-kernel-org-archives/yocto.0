Return-Path: <max.oss.09@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A665E00CC9; Thu,  7 Sep 2017 14:17:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (max.oss.09[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.48 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9323E00B8E
	for <yocto@yoctoproject.org>; Thu,  7 Sep 2017 14:17:30 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id f199so5689371wme.0
	for <yocto@yoctoproject.org>; Thu, 07 Sep 2017 14:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:subject:from:to:date:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=KXoOCO0B02EV0pnLpcUCvw25V6emPdQTl5uCuvXusEk=;
	b=dt5poWWfFaUtkM8UnZb1r/XmHnYbyjvHdsgwh69bWOZMknCY09GXf0MQ+FFeR5Bfe5
	mSfZ3YMQ1Dd1/yk03B3kx5rJ2FdleNyzk+gGnbj1Qx5C7E0WZ6T9LUPkfx5qs3kcD9al
	nwaa/TYnj7uYlqXG6P4uE/OPpDFm7O1abrmgudU3CJTgkWT1sDw4rqBBGNfiBLeGbBhE
	FRqbEksqqUEFaokuOUKgYv6f1V9BBuYOVzPZ0S3+P2F7SkxmC3hprGlK1SwgSYDl6G+h
	orQ1QOl5uWPvvJy8lxXkefesZ+9VcpFzT3Lq3FvO3Yhxnj3NIZHiaUZs8JXyoU+7ks9p
	ORTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=KXoOCO0B02EV0pnLpcUCvw25V6emPdQTl5uCuvXusEk=;
	b=sgF8ha1+ld1RGgATAVGedBy8G3Cg3G61sOMJ5bFpnhu7MKZvAnkkR+iIMCuqJTxwSm
	SwhX+aBg25lo2XTqAj1iKb2nybUsQPx1NE431lrDbWAzDdESstdLUtNEptAi6ek61WqM
	1GheLwZz7RLIU1ZI9Y+CULScqIi1OPFd018zb4Eb26QQg2XkN1/JvzPMnGcSq18iYQ9y
	83yhwFFRhSASzUuUl+sqhRRBr1cIuMZ/UQHpnAsp2NHDRoeq4koupVT+P0dcN+nuOJtr
	LAdhorl5CC+NGvvV120qJY30Hh3vZ4+XkHDy0duzxKkbV0He3GHiVbGqEH6DZVV9gkUe
	yzAQ==
X-Gm-Message-State: AHPjjUhEqfsx19wrRHJPe6gNlXwYIXDUsL4KN8WOHH7Z5oDYAIiGaA7z
	ZCO0luXgCLyR5g==
X-Google-Smtp-Source: ADKCNb5TeDQ8WB1TRTKvkFVXbyNpTfMu7IV0vztIcyJJkIL+1xOSOB3I1PLwsVqy9AKBjaaZaI55iA==
X-Received: by 10.80.164.71 with SMTP id v7mr408199edb.99.1504819049621;
	Thu, 07 Sep 2017 14:17:29 -0700 (PDT)
Received: from Saturn.local.all (138-14-48-195.pool.dsl-net.ch.
	[195.48.14.138])
	by smtp.gmail.com with ESMTPSA id q31sm92789edd.43.2017.09.07.14.17.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Sep 2017 14:17:28 -0700 (PDT)
Message-ID: <1504819047.4961.11.camel@gmail.com>
From: Max Krummenacher <max.oss.09@gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, Yocto Project
	<yocto@yoctoproject.org>
Date: Thu, 07 Sep 2017 23:17:27 +0200
In-Reply-To: <CAGAf8Lype6p4Dqzab9O0sGfEUhzYUYczjrua49o80baw_OYvpA@mail.gmail.com>
References: <CAGAf8Lype6p4Dqzab9O0sGfEUhzYUYczjrua49o80baw_OYvpA@mail.gmail.com>
X-Mailer: Evolution 3.20.5 
Mime-Version: 1.0
Subject: Re: The basehash value changed from...
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
X-List-Received-Date: Thu, 07 Sep 2017 21:17:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Zoran

Am Donnerstag, den 07.09.2017, 09:37 +0200 schrieb Zoran Stojsavljevic:
> While re-compiling the whole YOCTO load for freescale i.MX6, where I have
> added Qt5 layers (and it failed many times, so I needed to do some tricks
> there), I encounter the following warning (in *ORANGE*) and error (in *RED*)
> while finishing the build:
> 
> *WARNING: Duplicate inclusion for
> /home/user/toradex/Qt5-plus-x11/oe-core/build/../layers/meta-toradex-bsp-
> common/conf/tdx_version.conf
> in
> /home/user/toradex/Qt5-plus-x11/oe-core/build/../layers/meta-toradex-demos/recipes-
> images/images/tdx-image-fstype.inc*
> *ERROR: When reparsing
> /home/user/toradex/Qt5-plus-x11/oe-core/build/../layers/meta-toradex-demos/recipes-
> images/images/angstrom-lxde-image.bb.do_image_teziimg,
> the basehash value changed from b7b4f312b8b657bfdd068ebd8e2dd104 to
> 1e71714a9c01964cdc724c52290abee4. The metadata is not deterministic and
> this needs to be fixed.*
> NOTE: Tasks Summary: Attempted 7415 tasks of which 7394 didn't need to be
> rerun and all succeeded.

Please note the '... and all succeeded'. So the basehash error did not break the
build.

I think the basehash error is due to the use of the DATE variable and
that the following commit fixes it in master:
http://cgit.openembedded.org/openembedded-core/commit/?id=4af13a4855c74cea9cf6c168fd73165d7094bf93

However Stefan is still in the process of backporting said commit, so you still
see the error in morty.
http://lists.openembedded.org/pipermail/openembedded-core/2017-August/141582.html

Max


