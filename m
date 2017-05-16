Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6753E0077F; Tue, 16 May 2017 15:02:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B967E0059A
	for <yocto@yoctoproject.org>; Tue, 16 May 2017 15:02:51 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id u65so134921857wmu.1
	for <yocto@yoctoproject.org>; Tue, 16 May 2017 15:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fW5b0U9qP9x1IUJDqHhlF2Cydl1MD5ZNhQ0UlfCLjW4=;
	b=LY2VgoovCqKTLTiYXcEjiGy98/sSZTwcQ81f4v/L1YRi9IzGI/5lSb3Ql8mr8OTU/1
	AsQUcy4I2z4K4SGL+8eLzQnVGysjTdUKX9Wb/zz+0UXfXc3x7EIoApukMxuxXToHfkZj
	MRwl1npgNOvAbx/HTahux3RejUXkD6xeCMFkAlyJr9YfP8vS7JODLMBDL2jnDidj/vSy
	YZ/4oPWWomu/huKG46Gxi6mLsjZI4mzRwPyIb8SWuC5r9ftM/nZjoprWFrVHb0yDYsNz
	KrUNnIYE27a45aQqqktlqbkeCF0i4xixY5I/CgHBc3NAUw5CAkA4i2x9e+3++/7of9nX
	igwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fW5b0U9qP9x1IUJDqHhlF2Cydl1MD5ZNhQ0UlfCLjW4=;
	b=XXOfXQchGFwDKGmh3M2rkJdpnozRjxOjhi6i6bU4HWsMZOfWdbfsfMSQAp7xYGGLsQ
	8TgaSEXI7aP9eAqMwPQvlu49dm3k+DPoI4a+iVEAezuDNc129Ev+zgbkd2YqIwYOGwAH
	tb618xLv4z6t+G01AD7xLG+PhEQNXVqQiiVcisTLf9ud+9g0+pOVChp4bkt/qerR2uEy
	skOyC1Bol41Mg5lulx/n3izvQufLjLg+jCOvcV5XXgX3f4LVBIDtX8mG8DVZZaXNbAIf
	K/ooTy1JbtJlD2s7mn4N5QSItlh31Mp+B5mmArm9JOsoExlwnqsy6S+kTE9CqMk+DFDn
	9x1w==
X-Gm-Message-State: AODbwcBCDrzTEk6C0JSlQGFED+T+tG+sS2CFwXFnBZ0ocW2ly74q6s4N
	Dl5I/LkvJX2MPwR/q/5XlVdKOgs8zg==
X-Received: by 10.80.147.195 with SMTP id o61mr519591eda.178.1494972170606;
	Tue, 16 May 2017 15:02:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Tue, 16 May 2017 15:02:20 -0700 (PDT)
In-Reply-To: <CAL02zyt=UufSDO-2v0F3A+_tZGkMiYpUQeGKb9mpebjr0br_dw@mail.gmail.com>
References: <CAL02zyt=UufSDO-2v0F3A+_tZGkMiYpUQeGKb9mpebjr0br_dw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 16 May 2017 15:02:20 -0700
Message-ID: <CAMKF1spKBpuUNe4tWOgKM0v_jYdG6igYnbh5CHKoRqNLd9O8pw@mail.gmail.com>
To: Jaymin D <jaymin.linux@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Add 'mongodb' package in Yocto (Jethro branch)
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
X-List-Received-Date: Tue, 16 May 2017 22:02:52 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, May 11, 2017 at 5:55 AM, Jaymin D <jaymin.linux@gmail.com> wrote:
> Hi Team,
>
> I want to add 'mongodb' package into my current Yocto (Jethro branch) build.
>
> I have tried to add in - CORE_IMAGE_EXTRA_INSTALL += " mongodb", also tried
> to add " boost" package too. But, it couldn't compile.
>
> The error was:
>
> ERROR: Required build target 'core-image-base' has no buildable providers.
> Missing or unbuildable dependency chain was: ['core-image-base', 'mongo']
>
> I have also tried this -
> "http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/mongodb/mongodb_git.bb?h=master"
>
> But, bitbake was failed.
>
> What would be the possible reason of failing the bitbake?
> In which file I have to make changes for adding the 'mongodb' package?
>
> All suggestions are welcomed.

in jethro mongodb recipe seems to be blacklisted. So you have to ensure
that the reason for blacklisting it is addressed before you can use it

>
> Thank You,
> Jaymin
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

