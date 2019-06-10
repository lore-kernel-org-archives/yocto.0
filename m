Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1E5AE00B33; Mon, 10 Jun 2019 04:41:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 463A9E00951
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2019 04:41:45 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id g135so8157745wme.4
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2019 04:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=iswXyXy1gXfWmoMb55EryoDSqXL0bmlf04kaqPK6RRo=;
	b=Qw9wtsMFofQMdDbpHbLiME5hp7VdBPQUhpwB6ebfYxNECf2A3KPQPngLCfXavnReIA
	EoHoTZ4T5KqyZSTrA+zctrRQdCSdvjhLN0sgPbZ7qhADH3TT3uMHUJfvluXQ5mppXseh
	1jQuMLJ10XSyan/e4q7ej9GU1PjZpYQrv9VA8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=iswXyXy1gXfWmoMb55EryoDSqXL0bmlf04kaqPK6RRo=;
	b=ZnSCoA98BbSA0Ywe/aGBooCA9A9Mg1hVuytdqQjD+ESKSzS8qtEb0zplIwxm95IVck
	qc6bsJdS0z4A+LbL1u4IE2aPKuVVAd8ddVF2W1k4PIjCXZMcziGGt232fYm8zDmB2l3X
	spNPzOmowVRv9IwfgXbqKNt5pDPKbFcfdDBwFscJGPw1jbpKaFIQMNEMG3N7Kb+D+U9D
	EoxCNI3mk0X5NXgDmRhn9b+fGKH9YvpeSfTS7tnIz7LFileKJD7IKjynVRe1Al3x6/o0
	diYrjL7YRvgLBo3KYAvcVnBQxmmNj0yysJyocuSC0ZE1rl3lIu8dODGat049Ma7QT36P
	73RA==
X-Gm-Message-State: APjAAAUyMA6b1ft4RuPV0c+ycsXlmKPoi5Z+E4Rb8G1ZdZYdtFbStFch
	areSf80EoJkIa2tJ4ebPirGZw5T0qjE=
X-Google-Smtp-Source: APXvYqz9Pndiju9Rna8/8sRNYBIiSBHcUq7nPY69Z8IvvERYBbUuJxj/9rNnRO5iXoobj4CVCnx42w==
X-Received: by 2002:a1c:6a11:: with SMTP id f17mr12339238wmc.110.1560166904259;
	Mon, 10 Jun 2019 04:41:44 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id 11sm9845279wmd.23.2019.06.10.04.41.43
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 10 Jun 2019 04:41:43 -0700 (PDT)
Message-ID: <0a98d6545550da32b92a556dc2a516640a4ae0ea.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ulf Samuelsson <yocto@emagii.com>, yocto@yoctoproject.org
Date: Mon, 10 Jun 2019 12:41:42 +0100
In-Reply-To: <7ebe65af-7756-eee5-ec9e-9d7f8637d761@emagii.com>
References: <AM0PR10MB2658E98F7B370BD2FAEE187EC3330@AM0PR10MB2658.EURPRD10.PROD.OUTLOOK.COM>
	<CAJTo0Lb2dGk4rdX1cm83aDyEr8WxapH3+nAL6oVgSeO-hFZbiQ@mail.gmail.com>
	<7ebe65af-7756-eee5-ec9e-9d7f8637d761@emagii.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Subject: Re: Multiple MACHINEs and DISTROs: When to use own build dir, SSTATE_DIR, DL_DIR ?
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
X-List-Received-Date: Mon, 10 Jun 2019 11:41:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2019-06-10 at 00:11 +0200, Ulf Samuelsson wrote:
> Den 2019-05-09 kl. 11:56, skrev Burton, Ross:
> > On Thu, 9 May 2019 at 10:47, Fabian Knapp <knapp@ambibox.de 
> > <mailto:knapp@ambibox.de>> wrote:
> > 
> >     we have multiple MACHINEs and DISTROs and Im wondering for
> > which
> >     combinations I have to setup a dedicated build dir, SSTATE_DIR
> > and
> >     DL_DIR.
> > 
> >     Information in the form of:
> > 
> >     Each (change of) MACHINE needs its dedicated SSTATE_DIR and
> > build
> >     dir but can share DL_DIR.
> > 
> > 
> > You can always share DL_DIR and SSTATE_DIR.
> > 
> > Ross
> > 
> When you have the same machine, and the recipes have variants
> which are DISTRO dependent the SSTATE_DIR can be messed up
> 
> We never digged deep enough to find the cause,
> but when we separated the SSTATE to only have one DISTRO
> in the same SSTATE, the problem disappeared.

The system is designed to work sharing DISTROs within sstate. If there
is a problem I would very much like to see the issue investigated and
fixed and can help with that.

Any such problems that have been filed in the bugzilla have been
addressed and there haven't really need any for quite a while.

Cheers,

Richard



