Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E0A3E00D6D; Sat, 29 Jul 2017 00:21:51 -0700 (PDT)
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
	*      [74.125.82.50 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.50 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19382E00BF6
	for <yocto@yoctoproject.org>; Sat, 29 Jul 2017 00:21:49 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id k20so3464795wmg.0
	for <yocto@yoctoproject.org>; Sat, 29 Jul 2017 00:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=KscV8VSEzPQORMQR/mFNzWZC1JOnUByx/GyMlIK1VzQ=;
	b=gX4X66uxhrU+Z8/JtpKDm6GF4ycrV71LxxEAQqUd5o7KMEttP50XGPYyAyfDXgi5ld
	99wKF9y64ep8jOvsMxT4ME8spfa0hJeljmL4cx7D5qI2+FkTjS0OhYC6Q7RWZIkqWZ3+
	hcAOyUKFeO8SW4QF8EzIu+M4kEl7BQnHIUtLdjoMpKtTVQMzYJf04OQoASroPxtelf/V
	bYziQli6+3bGPljKrJWTEEFYc5tk6IGEiDvwV014Ga4a8J6D+STBCDzK7BdFLnUL8Xln
	rFBDXBiC+9zT0/W061hiuhHtF6qNPQ1c8B6tVWtH7w34odJdtQpIoFtKue3YRb4i0jiO
	nTnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=KscV8VSEzPQORMQR/mFNzWZC1JOnUByx/GyMlIK1VzQ=;
	b=lVZCnyVstGx4Osla7j7YTEpYD5tZ2pCNhMrdXdnjn1i5uIWPYbpLtFdup1iwW12w5M
	u1F7b1ijZ08RByAFXTNqoLyQxFI28KGzI5TAaZNpwnrQE2PeVXJUDrHzujnroEPb0thB
	pk4Xr7qIbvS4+OyiP5BiJkBlSATbycKDi1itPbXiKn0CIhJOejJaJksaV8WydX7HzwAE
	zETHeUIXKQFoDXh2cB1nSyYlHucCOuE+8LLQXAocJBfDj4iQq2daiZ0VrSlOV0BZ8qDq
	Y1FEYiAXo5vIQNw7/oO9XHhcrg7mZ0Qd2mGUdOUL/6gs7M4cvhAq6hVs1QZqZNpIbsVj
	vNIA==
X-Gm-Message-State: AIVw1136t9XaNa2RCacxBRlKyHqlNiLMOYECdCCFp/U2d5ZrL0Ktso1a
	BTwWTczVKC8fKGQVSkkAdys8g6MNP7yj
X-Received: by 10.80.140.253 with SMTP id r58mr8916175edr.123.1501312909192;
	Sat, 29 Jul 2017 00:21:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.149.181 with HTTP; Sat, 29 Jul 2017 00:21:18 -0700 (PDT)
In-Reply-To: <MWHPR01MB3293F61E00763699373AC5F0B6BC0@MWHPR01MB3293.prod.exchangelabs.com>
References: <MWHPR01MB3293F61E00763699373AC5F0B6BC0@MWHPR01MB3293.prod.exchangelabs.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 29 Jul 2017 00:21:18 -0700
Message-ID: <CAMKF1spgMpe+pN5Hy6DrpE_C8JmZKq-q+uZ=nB_DRTpDMD5SvQ@mail.gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@xevo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bilding webkit/qtwebengine?
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
X-List-Received-Date: Sat, 29 Jul 2017 07:21:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 28, 2017 at 8:55 PM, Takashi Matsuzawa <tmatsuzawa@xevo.com> wr=
ote:
> Hello.
> I am seeing issue with threads/parallel make.  I wonder if anyone has
> experience/suggestion.
>
> My question: is if it is possible that I set parallel make numbers to low=
er
> only for a few recipes that are known to resource hog?
>
> I am building webkig/chrome related recipes (e.g. qtwebengine or alike) a=
s
> part of my image build.  I have been setting parallel thread / make
> parameters relatively high in the past, say 20-30.
> So far it worked well and it make me finish my build faster.
>
> Then, I added these components to my image, then the build crashes (jenki=
ns
> killed with lack of memory).
> I imagine these components have complex build system within it, so it is
> more resource hog compared to the other =E2=80=9Cordinal=E2=80=9D compone=
nts.
>
> I imagine that by reducing the parallel make configuration numbers to low=
er,
> the build will not break for webkits, but at the same time, it will be
> slower to the other parts of the build.
>

yes you can do that via a local.conf entry like

PARALLEL_MAKE_pn-qtwebengine  =3D "-j 8"
....

and so on.

>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

