Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CFAAE008E3; Sun,  4 Nov 2018 18:38:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com
	[209.85.217.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C494E006F1
	for <yocto@yoctoproject.org>; Sun,  4 Nov 2018 18:38:31 -0800 (PST)
Received: by mail-vs1-f45.google.com with SMTP id d62so4233393vsd.2
	for <yocto@yoctoproject.org>; Sun, 04 Nov 2018 18:38:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OvLiqoW8zh0jKmflrav2tA8e9faN0bg1TgVFbBZy/0I=;
	b=ckC8i8dmabG8jCaeNVLFAxXyhIYc2cg6M0xrsOUCEnd56QdYZ3n40oOz/7lGRKnOrn
	IGQ3QoitrR42Cda6tjOiVPEsFfhBKAUtcRvl7RgckdZ86ElLCwjivnkAqJvmalOsFcJI
	7raIWW1TMbQ+OjIiji1QNmJq/nAmukQd424EfCyJhrMvuFPdaAbkpgDqtLQF4PA43LoR
	/3cGiPTPxLvVhvvhYQIZywP02fjyb9aEdEgemIiELhaUp8GuXNwWJBJi+rHatebGEiBz
	mkQcjaTF1Qh9QbIrvYex4qmWy31o9StrpPy3NNdD1W0KzlEM6ZEdfS9rJrzYDSpBzCov
	ImXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OvLiqoW8zh0jKmflrav2tA8e9faN0bg1TgVFbBZy/0I=;
	b=eT8Bb/KiwDZqUhk0R7nD9RVbweJDGLJiBuZB7uBq+OvEuBJBP0RZclODsYhDFsfaWM
	bV9Z47qCfsaaVUES0QZ1R8QyU+OzsCkU9REMi5OsenYnzQZ7+7d02Dy7llh5eYVJsX72
	nddeQMSiyl8T2c3N3lcT7JMStzQ19P8NMlaGQQ4UxRxyxpHzDRXAGcClDCMR0ydYYKGv
	NjI81lxSEiF4so4/BUwkK+eUDSCIasmvcGKcm3TObxwBiZTsTCAATXymAVti3hRsqf7z
	iwbgzOOSynDmDFwElukGakQ2I5pAzSFwPhBh6t+HpGvU9FNjLD3SMp+hcnuoy/2taoF6
	lJCQ==
X-Gm-Message-State: AGRZ1gI64GtMSKptwepGPIfdHKnKGY/3wBlcgsbzVXKNMsN8NLPa7ybI
	gRrgvCa4VXXXrk8iIkGYpTiTqkdol1AHsVvTlFI=
X-Google-Smtp-Source: AJdET5fVJXZPzM44di8m7l+KmUADAujOPrL/bViWn/0I9NpAjIHYV8Vxb9r97KsAapoCxK4Fv/cTRq1+mN0zuq6Q6fs=
X-Received: by 2002:a67:848a:: with SMTP id g132mr3971893vsd.222.1541385510761;
	Sun, 04 Nov 2018 18:38:30 -0800 (PST)
MIME-Version: 1.0
References: <20181104175530.3ca8ed50@yaise-pc1>
In-Reply-To: <20181104175530.3ca8ed50@yaise-pc1>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Sun, 4 Nov 2018 18:38:18 -0800
Message-ID: <CAJ86T=WZ9fbqo6FQ6y-573Fmw+Lb_rCuZeNWGaLNmDLqFJk8cg@mail.gmail.com>
To: patrick.boettcher@posteo.de
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to request a certain version of a recipes for an image?
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
X-List-Received-Date: Mon, 05 Nov 2018 02:38:32 -0000
Content-Type: text/plain; charset="UTF-8"

On Sun, Nov 4, 2018 at 2:30 PM Patrick Boettcher
<patrick.boettcher@posteo.de> wrote:
>
> Hi list,
>
> I'm using the morty-release for my device.
>
> My sources consists of different layers. Some application
> specific-layers (which contains a image-recipe), our
> BSP-provider and tooling-layers.
>
> It now happens that in there is package (dt-utils) which has recipes in
> two different layers, with different versions.
>
> In my image-file I request the package via
>
>     IMAGE_INSTALL += "dt-utils"
>
> How do I force the version of dt-utils for this image? By default it
> selects the wrong one.
>
> Here's what I tried, by adding to the image-recipe:
>
>     DEPENDS += "dt-utils (>= 2017.03.0)"
>
> and
>
>     RDEPENDS += "dt-utils (>= 2017.03.0)"
>
> seems to have no effect. Adding the version-logic to the
> IMAGE_INSTALL-line fails to build.
>
> What works is to add PREFERRED_VERSION to local.conf. But this is not
> committable, so I'd like to avoid it.

You can't directly influence the build of one recipe (ie dt-utils) by
making a change in another recipe (ie the image recipe), so the
DEPENDS and RDEPENDS style changes you have tried will not work.
Variables in the image recipe are not visible when the dt-utils recipe
is built.

Setting PREFERRED_VERSION from a global config file is a valid
solution. In that case it's up to you to decide which global config to
use - adding to local.conf, the machine config, the distro config, a
meta layer config file will all work. Using either the distro or
machine config would be the most typical approach - depending on
whether you want to version preference to apply to one build
configuration (ie one machine) or to all your builds (ie your distro).

An alternative solution would to be to change the priority of the
recipes in the meta layer(s) which contains the dt-utils recipes. e.g.
increasing BBFILE_PRIORITY_xxx in the layer.conf in the meta layer
with the dt-utils recipe you want to use.

