Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9CC2E00C78; Wed, 20 Sep 2017 18:45:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EF70E00C14
	for <yocto@yoctoproject.org>; Wed, 20 Sep 2017 18:45:53 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id m127so3892207wmm.0
	for <yocto@yoctoproject.org>; Wed, 20 Sep 2017 18:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=r2OOtOr7Dg2WmV/pn1KnYcCOYqG8ZRYlSHRzMEvicqc=;
	b=s+oIBdiyAULCKqgy+7JSZVM+cUxTYi7hiQ1XF2hTDRjx1YzyxmzMX7NjqQZ3/tSHFX
	5ruIc1LBsztz36HUpaZpRgnhc9qyp5cTrrwBEOCdOM4XPzDjyKVD6FVYVY3GWYMT55I7
	yuE4IvZP+u4QH5cj9/JULxE/z/R/elZveEoHyaypBkM/GbJMa1OdoV9BhHcl87I6K6+T
	IAuSaUuRHYmVJrCvL7iZ1osmXSE/zoogWGl5+osM29IND9wK1nCvQeuzflalZV2zZBm0
	SBYUkD5A8iT1PtuD1kaPlSojC7UTdz3vxuXb+Oeg7Mm3gSrtWAXXr9hDHkJUW7wVTD5X
	wwVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=r2OOtOr7Dg2WmV/pn1KnYcCOYqG8ZRYlSHRzMEvicqc=;
	b=o09I4hDKituyZV4H3xxQsAJOcbye43aRbXc2MV/wSSsSfDCMbfbBWtQs94F17ZwoRJ
	8Fy/MQS2uSdAvmVORhrsvlhrYUIRZxzBrnnjO4CIV7zfv1nRMoshh4FvhGDasz2g5vsV
	cT+vYggNmjHJELwvwUipj+neADflcnm3RetFjVE91Fi33Rgfq83TNr/WMkG0wONVcRs8
	KsYSs0/lSqY47eNdA7oxJxS8ycLdtem/IyG3Z69z+ju6/nmbt+Q7IN0IvCkHOUE2oefd
	n/TX9bGJyWXqKHTxP+JHNomMTJ4f086lWl9pmBgbPPPdMLSZisDGDo8WH6LLEu8i5z0y
	HfGg==
X-Gm-Message-State: AHPjjUiE1OQcyUZXiw4WTWc6yKcsjEjCGTp4OJ8w6ZOpt0RsM6O33hd7
	L0OPsS5HhI8uO9CCOTDslS1NpGZdTSESqKM5K+xlRA==
X-Google-Smtp-Source: AOwi7QCR1HaeBNfvZlOwMTwy/VkQ1UF4z0rwxsdrZTowbCO1JwjZ230Q3TrmlOiJ14875peVTJLVtzSNuWN+Q914IaA=
X-Received: by 10.28.103.195 with SMTP id b186mr526386wmc.101.1505958353069;
	Wed, 20 Sep 2017 18:45:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.141.198 with HTTP; Wed, 20 Sep 2017 18:45:52 -0700 (PDT)
In-Reply-To: <cfa95210-8fc5-492a-7c8c-3f9b6c561cda@seldal.com>
References: <cfa95210-8fc5-492a-7c8c-3f9b6c561cda@seldal.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 20 Sep 2017 18:45:52 -0700
Message-ID: <CAJ86T=X-_bDSKEZxgju03z6LVPOzDY45y9WsRR2gop=0mgajug@mail.gmail.com>
To: Svein Seldal <sveinse@seldal.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Sysroot bug in bitbake or wrong configuration?
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
X-List-Received-Date: Thu, 21 Sep 2017 01:45:54 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Sep 19, 2017 at 11:43 PM, Svein Seldal <sveinse@seldal.com> wrote:
>
> I have the spu-image.bb recipe below, and running on Pyro, the recipe
> behaves differently if the recipe is run on a fresh system with no sstate
> elements, compared to a system that has a sstate cache present.
>
> The failure is that the spu-image required the host tool "uuidgen", and thus
> has DEPENDS on "util-linux-native".

DEPENDS is basically a shorthand for saying that the
do_populate_sysroot task for the recipe(s) listed in DEPENDS should be
run before the do_configure task of the current recipe.

Since image recipes don't have a do_configure task (or at least, they
do their work in tasks such as do_rootfs which don't depend on
do_configure), using the DEPENDS shorthand for setting dependencies
for the do_configure task doesn't work.

If an image recipe's do_rootfs or do_image tasks have dependencies
then they need to be expressed using the "longhand" format, for
example:

  do_rootfs[depends] += "util-linux-native:do_populate_sysroot"

Unfortunately trying to use DEPENDS in an image recipe seems to be
quite a common mistake. Maybe we should try to make things a little
more user friendly by adding a sanity test to catch the problem? Or
perhaps do_rootfs should depend on a dummy do_configure task (and so
ensure that do_rootfs effectively sees dependencies expressed via
DEPENDS) ?

> When the -c cleanall spu-image is run
> prior to building spu-image, the recipe sysroot is properly initialized with
> util-linux-native and uuidgen is available in the task functions.
>
> If -c clean is run prior to build, or simply by deleting tmp, the sysroot
> will not be properly initialized and uuidgen is not available and the recipe
> fails
>
> Is this a bug in bitbake or am I missing something in my recipe?
>
> Best regards,
> Svein Seldal
>

