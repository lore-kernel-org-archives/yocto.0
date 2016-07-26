Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA787E00D38; Mon, 25 Jul 2016 23:24:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E67BE00D25
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 23:24:56 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id q128so159519956wma.1
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 23:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CQHCu8tcUmTgpVQ/soxU9nSv2a8YC0OrNIqbo07Ka/A=;
	b=ep17BtwyixKzCvQOpROXovnHizvzRrJciEFwVVnevN+FmfcbYlL6ZeG/7c4wJqHyvY
	HnwCOtwGUmbJQ4dXd6jW/QEiOsdZCe4SNyEOIfsdfHXfQ99OtTw6bBh+xvArHdCb0yZE
	td+Pjh0+hqMt4miQ+RoexdEboJYs1QYyGH0bY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CQHCu8tcUmTgpVQ/soxU9nSv2a8YC0OrNIqbo07Ka/A=;
	b=Vdkb1enHwPPpz98LN4lC1upj6qF2gWVFeYPCjsOSuJAeuWAqehbmvOK37AOSkLDpJ5
	zQhxQkmJpD8M6LZlooQYZj3m/pYKIsmcq5ZVMlLFaUc3LbALbZkqBrcdTxq1+EWB+KLS
	Ez76+wGH5X4b39VU+DJGX7WVq0/5//k2jl961ktg2GOJi0rvo62bL2yWZ+Ksngg6qXVJ
	f7abyACak+bJDrRoLnZAm6GB8X17o+hRdkvyOrJIGqGx2qTct7nWybgkV8/E/SQjxxnJ
	yJvkZKQSqRxChm1TzAnjy5LH9LswiuswkknWymefNcb628cF6859PpONhFuBBdGNfCKX
	f74A==
X-Gm-Message-State: AEkoouuN/GQ0vw50t0wxOu/7T1z7KcQUZUQGBdJfyq65aP6JprX9PnazHzEmy1VGgx+vxh8mp9jS/Q2Zcwdw99MP
X-Received: by 10.195.13.18 with SMTP id eu18mr18760660wjd.121.1469514295183; 
	Mon, 25 Jul 2016 23:24:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.163.225 with HTTP; Mon, 25 Jul 2016 23:24:35 -0700 (PDT)
In-Reply-To: <nn6vat$c6p$1@ger.gmane.org>
References: <nn6vat$c6p$1@ger.gmane.org>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 26 Jul 2016 10:24:35 +0400
Message-ID: <CAP71WjwOzwdVq_spUqngYSZsEbjOe2gMGemW=i4ACyHmy4GiKQ@mail.gmail.com>
To: Robert Berger <gmane@reliableembeddedsystems.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: empty packages
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
X-List-Received-Date: Tue, 26 Jul 2016 06:24:59 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jul 26, 2016 at 10:18 AM, Robert Berger
<gmane@reliableembeddedsystems.com> wrote:
> According to [1]:
>
> "By default, BitBake does not produce empty packages."
>
> This does not seem to be the case at least for Jethro.
>
> If I bitbake something like this[2] for qemuarm I see empty packages
> like e.g. the -dev package.
>
> Now it's getting even more interesting.
>
> [3] says:
>
> The list of packages to be created from the recipe. The default value is
> the following:
>
> ${PN}-dbg ${PN}-staticdev ${PN}-dev ${PN}-doc ${PN}-locale
> ${PACKAGE_BEFORE_PN} ${PN}
>
> ... but ...
>
> a non empty -dbg package is being built
> an empty -dev package is being built
> no -locale package is being built
>
> Is this expected behavior? If yes please explain.
>
> Regards,
>
> Robert
>
>
> [1]
> http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-ALLOW_EMPTY
> [2]
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/documentation/ref-manual/examples/hello-single/hello.bb
> [3]
> http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-PACKAGES..."The
> three principal virtues of a programmer are Laziness, Impatience, and
> Hubris." - Larry Wall

as you have seed in your [1] link, ALLOW_EMPTY can be set for a
specific package to force a package to be created even empty.

ALLOW_EMPTY is set to 1 by default for -dev and -dbg (check
bitbake.conf), but it is not set for -locale.  that should explain the
behavior you are seeing.

