Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4C5EE00B6C; Thu, 27 Sep 2018 14:29:08 -0700 (PDT)
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
	*      [209.85.208.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
	[209.85.208.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2823E0090A
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2018 14:29:07 -0700 (PDT)
Received: by mail-lj1-f178.google.com with SMTP id w4-v6so3868192ljd.2
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2018 14:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=x7EVLwUjAnHLm5AfM0gQVVnsxuwozNa4OtykZil/PHs=;
	b=LxgWlFvnnRBhgYeKnZor3Pv2GkMsey0B5/FBEBH+JsFmmK6Qf08efnq9Pp9h+dDR3s
	f0GK9rHUfdFsaN5jG1kj/x/jP7o3ytRDug0xs5vr92tzVAuk+pRGwBuoLuYG1xoW1rBw
	0bI6wfbGrYNtEPFAvivlJoSCG7xJ7ZWZMVKXw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=x7EVLwUjAnHLm5AfM0gQVVnsxuwozNa4OtykZil/PHs=;
	b=SSFF10DhE4caofoywFSR/LmnxcnIMrN6rhKDPna6Ts4FfNANgfIYC1Qa6nIuLLtuXJ
	Z8HDztlBQ5JrWulNBB8RXMjWoGM74tOtlDHt1KyDjAbT4vvqFcms/KKNGdLIG3VStn1L
	NypkMBiQJcJBcNcmZ+7uUQz57VDV5R/iSmO7mMYIi5W+M8GB9VqpgDZiKF7zmvAAbaLb
	rd9pS9nsYB4M0sgVCGkxhnCuqdRxrpHLXyaPVPPMEOYIdfj6jus0gauD7XdZ3vuSXbwY
	ZCfNKuDF2riFPCjZgpUrxl/sGEghGJP37ZHUNduYMnbpYUjzs9Y7gycD76EcY6Drao08
	o/vQ==
X-Gm-Message-State: ABuFfojn/bboZainSrGTu+yzZohcrS2GIT9nvMLje2pplrWXXCmbqYxR
	NPpNTynYhGnyK1c5Jkg63J9C9NZZ7x4mFGD/IoLSj/vD
X-Google-Smtp-Source: ACcGV60tDUaI12GBbL6iq4bUDi1d5/9U/EfJJhtLjaueWVKF5+FFXZWyLDpHOKG+b3AmU06mkTOX/ZOGLaaQaO3rMUo=
X-Received: by 2002:a2e:6598:: with SMTP id
	e24-v6mr6230970ljf.99.1538083746662; 
	Thu, 27 Sep 2018 14:29:06 -0700 (PDT)
MIME-Version: 1.0
References: <1721109.tuLG3TFsTU@localhost.localdomain>
In-Reply-To: <1721109.tuLG3TFsTU@localhost.localdomain>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 27 Sep 2018 23:28:55 +0200
Message-ID: <CAP71WjzUkYnazb3VHzEHgEDHoRqKdOT89Waw_hAy6pRyh8=BNA@mail.gmail.com>
To: "Eggleton, Paul" <paul.eggleton@intel.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>,
	openembedded-devel <openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: layers.openembedded.org upgraded
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
X-List-Received-Date: Thu, 27 Sep 2018 21:29:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 27, 2018 at 10:43 PM Paul Eggleton <paul.eggleton@intel.com> wr=
ote:
>
> Hi all,
>
> I'm very happy to announce that we've finally been able to upgrade the la=
yer
> index at http://layers.openembedded.org to the latest revision on master,
> incorporating quite a bit of work that's been going on for the past few
> months. Improvements now visible:
>
> * Patch tracking - each recipe detail page now lists any patches being ap=
plied
> by the recipe along with upstream status for each - see attached screensh=
ot.
> You can click through to view/download the actual patch, and any URLs in =
the
> supplemental status text are also made into clickable links.
>
> * Source tracking - remote entries in SRC_URI are now listed on the recip=
e
> detail page and made into clickable links where possible - see attached
> screenshot
>
> * Link to inc files - there is now a link in the recipe detail page to an=
y inc
> files that a recipe includes as long as they are in the same directory, a=
s a
> shortcut to see the rest of the definitions for the recipe.
>
> * Recipe list CSV export - there is now an "Export CSV" button at the top=
 of
> the recipe list on the layer detail page. This currently includes the rec=
ipe
> name and version - we could look at extending this, but note that the RES=
T API
> provides access to all of the information programmatically and may be bet=
ter
> suited for many applications that need this data.
>
> * Site-wide notice support - admins can now add notifications to appear a=
t the
> top of the page across the entire site. This is useful in the case where =
there
> is some problem with the update process or maintenance is going on as hap=
pens
> from time to time.
>
> * Bootstrap 3 - the UI has been updated to use Bootstrap 3 from version 2=
 that
> we were using previously. This has made a fairly minor difference to the =
UI
> (padding/spacing/fonts have changed a little) but has allowed us to tidy =
up a
> few things in the code.
>
> * The "Base" layer type is no longer selectable for layer submissions. I
> noticed people sometimes selected this erroneously; it's only applicable =
for
> openembedded-core and meta-oe basically so that they show up at the top o=
f the
> layer list. Only admins can now select this type for a layer.
>
> * Numerous other bugfixes, robustness improvements and code cleanups.
>
> Thanks very much to everyone who has contributed to the layer index code =
up to
> now (and to BitBake / tinfoil, which we rely upon to extract the informat=
ion
> from the metadata), but I'd like to give particular thanks to Michael
> Halstead, Yi Zhao, Konrad Scherer, Robert Yang and An=C3=ADbal Lim=C3=B3n=
 for making
> this upgrade possible.

Paul, and everyone above, many thanks for your contributions to the
Layer Index which is definitely a great tool for our community! It
encourages and simplifies reuse and sharing of all recipes! The update
looks really good, and as Andreas says, the top #3 features will make
a big difference.

>
>
> Also integrated were the Recipe Reporting System (RRS) which powers
> http://recipes.yoctoproject.org and other distro comparison support, but =
these
> will take a bit more time to properly enable so I'll send out a separate =
email
> with further details when they are ready.
>
> As always, please let me know if you have any comments or notice any issu=
es.
> (I've already seen a few minor problems in the update logs so I'll be loo=
king
> into those.)
>
> Cheers,
> Paul
>
> --
> Paul Eggleton
> Intel Open Source Technology Centre--
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

