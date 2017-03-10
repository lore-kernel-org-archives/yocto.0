Return-Path: <otavio.salvador@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C4B3E009CF; Fri, 10 Mar 2017 06:30:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.44 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f169.google.com (mail-ot0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB039E009A0
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 06:30:14 -0800 (PST)
Received: by mail-ot0-f169.google.com with SMTP id 19so77697595oti.0
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 06:30:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
	h=from:mime-version:in-reply-to:references:date:message-id:subject:to
	:cc; bh=x/xRTCOkNqCpL5IrRx6URlZaDLF3FpaFaBlSNNd0zTo=;
	b=uXLPEe1uk91ZGUMpnQ26hL7dF+W0LdxH1xYI4uSGAu53lCi440o9u01kNqQcF+nN5q
	ZTHHNVp1SETUszazI8/0lqCKF5Sb/3GyBj3mklZXQLZ0JwKEeQxlmq6ltinBXq7Lxv4S
	3EZpQ/G3npKJT4oJs4wEpY1IrcLwrMnFLNVwIUMVZ79JpKSvHAK+RROaafmb0RBnFQXS
	fkyJ94uR06WOfw0ka7AYj6xN/dSd3LGlFIFhS2+st/SYgp4+UUBqfi3FhWhhMzmc9IMA
	PnOSmwt33rR3Gogv5IDbtny9QaJBD5zP47ZzDHrF9wVlJw0tyvC5bCyvx37RZgTlHArt
	8qnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:in-reply-to:references:date
	:message-id:subject:to:cc;
	bh=x/xRTCOkNqCpL5IrRx6URlZaDLF3FpaFaBlSNNd0zTo=;
	b=LfYlYNwVkUtDjRh0+5zV0TCU97n5zWvyWT7KgWQMv6Y5zWgrQPvdPLybsTFnbgGtyl
	5DQo85PdKU4iVwRIs8ncUFsdVgo2AFp/fduM+X8mwYxXSVCUVlv6BIUUXKPeRJt8kjtQ
	3Ht7qy1ljUzZ0lS8xFzkqsNbgEy4g1PShOWi0/spEr6Hxj8HdmHXH4MkKQrgMaM3d3Xj
	XuQRc8ES1YuSKJE4QnpMg4N87BdUHp8/LnSABCMA+CUIbFhdjVqjGkW+H3UAovDtyyHR
	gRxxEu/WNEPPIoEFgvNapuXtR0iN6mUtGM7S9b6KyRApWHqeFO62XFewVvfMZP4G2W27
	nVgA==
X-Gm-Message-State: AMke39mk0GZuZsKSgpJbuG+pox813seAi1BWBsrdWc2eDljUp4QU/I7kJb38iXhhJ3tKvQ==
X-Received: by 10.157.17.52 with SMTP id g49mr12233297ote.222.1489156213546;
	Fri, 10 Mar 2017 06:30:13 -0800 (PST)
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com.
	[209.85.218.44]) by smtp.gmail.com with ESMTPSA id
	q81sm4267458oia.14.2017.03.10.06.30.12 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 10 Mar 2017 06:30:12 -0800 (PST)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-oi0-f44.google.com with SMTP id m124so52048079oig.1
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 06:30:12 -0800 (PST)
X-Received: by 10.202.108.18 with SMTP id h18mr9032401oic.158.1489156211849;
	Fri, 10 Mar 2017 06:30:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.74.26.5 with HTTP; Fri, 10 Mar 2017 06:30:11 -0800 (PST)
In-Reply-To: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
References: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
Date: Fri, 10 Mar 2017 11:30:11 -0300
X-Gmail-Original-Message-ID: <CAP9ODKogXP8vO7CCmxs2c-TiRmZZhOKyN5M=ffZV7U2Qrjw1hQ@mail.gmail.com>
Message-ID: <CAP9ODKogXP8vO7CCmxs2c-TiRmZZhOKyN5M=ffZV7U2Qrjw1hQ@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>
Subject: Re: [Openembedded-architecture] Proposal: dealing with language-specific build tools/dependency management tools
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
X-List-Received-Date: Fri, 10 Mar 2017 14:30:16 -0000
Content-Type: text/plain; charset=UTF-8

Hello Alexander,

On Fri, Mar 10, 2017 at 10:49 AM, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
> The new generation of programming languages (think node.js, Go, Rust) is a
> poor fit for the Yocto build model which follows the traditional Unix model.
> In particular, those new development environments have no problem with
> 'grabbing random stuff from the Internet' as a part of development and build
> process. However, Yocto has very strict rules about the build steps and what
> they can and can not do, and also a strict enforcement of license and
> version checks for every component that gets built. Those two models clash,
> and this is a proposal of how they could be reconciled.

When integrating the CHICKEN Scheme support onto the Yocto Project we
dealt it using their installation tool but making the package of
individual packages (eggs, in this specific case) as individual
recipes. We went further and automated the recipe generation and this
made it quite easy to maintain in long term.

Take a look at:

https://github.com/OSSystems/meta-chicken

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

