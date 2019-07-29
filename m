Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E08BE00A93; Mon, 29 Jul 2019 03:37:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dbaryshkov[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.196 listed in list.dnswl.org]
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1F15E00736
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2019 03:37:42 -0700 (PDT)
Received: by mail-pf1-f196.google.com with SMTP id c3so4677864pfa.13
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2019 03:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=4UkGYq2GnBN0uMiCzFOXD7a9wnA8rh/ovty0sbJ703w=;
	b=npV9udbYDbY/4C2kOuohIGg3dZNttheusO+aPzgJYsjIZxepB+olUrt1krMDN/bZjq
	TuGJ0CGjpqliyZnhAWFxwSVXugQ8LltRviuLVsLQt0UjdYWgVX75vKVb7UUkumEpk3/w
	msraYttm4coay2h8DM1GT7Fvzg+r+VJ2DiCZLYQddngcmTjSWLdEhZa1//AQMM1b7fNi
	AG/nvPSkVz1gTGNermrqMwI5X02gcdQC7PFoy6w+AOhaEVzl+mNv9ES/Bu5V66wPVK/o
	h/BMkimAzR1/XXgc1P1dOal1nKm46aWdZjZr7kSJX+3JSEyoHo4SjwfjXcX4ULNLu209
	HSng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=4UkGYq2GnBN0uMiCzFOXD7a9wnA8rh/ovty0sbJ703w=;
	b=EUK6ZKwAFCS0lCjg95PcI74pVUT/e3BdLBxOJ6VyW7JNVC7KqiPhnz3Cn1aClGmIGT
	JWNSFOsD1FHfECw+LywNPqbr2RQkl5IYdx58EToqKY5LYYUroD9Ylq9aFAaeJdoy3ETT
	DVM3V6mBJOBRI8Wn98EURJ0fePTtjEVCoCFLgH/hHmTdw0n7ubZAsDmO+esxg6oCDsj8
	WlIwvmU+U1pCQ/PX1eB9gbz0XXxCloGS72faY/eZmOdnF2C+BnxuyjvzJLcaucPdfl5g
	ZoXD46LOVmWQRYSDh72IFErRsGdeT74ypbkv6av64esh0eB6nS/5IkXTajmpSBkq4bo6
	523Q==
X-Gm-Message-State: APjAAAX2YcLNfrFq34BL+95XfQLYEyvbQhXPZALpzGO9857Zx0QF/uv5
	B5jt+N6GZkLdExn0FiXU/B6Gnygf1BqOrvAXCzyIpQ==
X-Google-Smtp-Source: APXvYqzA4r4J3tiVVEHO4ge+1vUmEkhZvcIgzNGwD62jS5+efswcbqJdsPTApEE5pNpbAWS2i49XY8FIqGN6nAFYvfY=
X-Received: by 2002:a17:90a:eb04:: with SMTP id
	j4mr107308727pjz.103.1564396662239; 
	Mon, 29 Jul 2019 03:37:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190724112326.960-1-dmitry_eremin-solenikov@mentor.com>
	<20190729094926.GA10147@jama>
In-Reply-To: <20190729094926.GA10147@jama>
From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
Date: Mon, 29 Jul 2019 13:37:30 +0300
Message-ID: <CALT56yNugJ_ok41-AHjY5KKbL1Q9YmO1ohcbXGeQy0+h+Ge5Pg@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-integrity][PATCH 1/3] layer.conf: add dependency on meta-security
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
X-List-Received-Date: Mon, 29 Jul 2019 10:37:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D0=BF=D0=BD, 29 =D0=B8=D1=8E=D0=BB. 2019 =D0=B3. =D0=B2 12:49, Martin Jans=
a <martin.jansa@gmail.com>:
>
> On Wed, Jul 24, 2019 at 02:23:24PM +0300, Dmitry Eremin-Solenikov wrote:
> > ima-evm-utils recipe depends on keyutils recipe which is a part of
> > meta-security layer.
> >
> > Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.=
com>
> > ---
> >  meta-integrity/conf/layer.conf | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer=
.conf
> > index 2f696cf7c332..917aa86e11d7 100644
> > --- a/meta-integrity/conf/layer.conf
> > +++ b/meta-integrity/conf/layer.conf
> > @@ -22,3 +22,5 @@ IMA_EVM_BASE :=3D '${LAYERDIR}'
> >  OE_TERMINAL_EXPORTS +=3D "IMA_EVM_BASE"
> >
> >  LAYERSERIES_COMPAT_integrity =3D "warrior"
> > +# ima-evm-utils depends on keyutils from meta-security
> > +LAYERDEPENDS_integrity =3D "core security"
>
> keyutils are now in meta-oe:
> http://git.openembedded.org/meta-openembedded/commit/?id=3D415e213ad75ec9=
a93171c963395a1c4b92c6233b

Thank you!

--=20
With best wishes
Dmitry

