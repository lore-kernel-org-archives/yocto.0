Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C875E00DDF; Wed, 13 Jul 2016 04:47:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3053AE00D81
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 04:47:41 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id o80so5597273wme.0
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 04:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=gFIblPCdYQLwSiTwlwb9ZF3yK73I6eoAJ490Cv35Zng=;
	b=byHgdFLafiIYaf/rlQFJ1L1/Imt2iMLnHaBJpI8oM9qgsf6L6eFxVT7pR6HbSxd77h
	TBp+p0KvOMMvv7AK/a8uLQMgtWtf3WYvwkFMs8C00tVKKczU+/Vq19tifvRJ8JUPEtWE
	g2QkOn/I2W0L95JWjKxFneqlkfYJFJqIir1PwqY1WgavT3WuAX+6r0Hk0YfuWFdKPtSj
	M2hA8PrHuUAlfSrEdEiwodLI0ghMWwbgl5uYMu9I9iPThRsTuUi8XsOyipB2Q4+xi05o
	cr/nc16otAeIALmN6EeUg9h/SX2xOU/tlQTuBGKDc2hD4mCNa73Z9S8FUKJIBl2Hrs58
	tzOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=gFIblPCdYQLwSiTwlwb9ZF3yK73I6eoAJ490Cv35Zng=;
	b=fd5hbZoohLW6vmj8dvZB7JnVdtWVMBO2V5hTTyaWwT4Ffs++o9MS6OvLy7/0kLISh0
	r9oKcGxu42yJRF9omLmDbeF0rlc5y1AYicj12fuZwzVVqzcIMcFijX+ufLdzTyVIiC3+
	+qcLkVyg4WlHAwQlIREQzKrPaRluy64fmSST8jgDGGBMtWthluCQJH+ZL7eoVm9F+Pkj
	yAV/E/TaKzUqVNMl0IP0g8OEIn4ZCtwPONpNs2uJAM1mIxPdio96CIBDsVInlorjUB/e
	s/wm7WADxJKlN98RgY/bF4X0alRaNgx1IgMiNGHghuYEAJubwpsPtQhrz9EbJ1IYPp/D
	BYWA==
X-Gm-Message-State: ALyK8tIyHhReQurZHhB5bBsvpRQx6R4PSJGva5cVhUroz3LwphokQUuRkqsQgQ1vvQA1hA==
X-Received: by 10.194.9.69 with SMTP id x5mr495207wja.19.1468410461309;
	Wed, 13 Jul 2016 04:47:41 -0700 (PDT)
Received: from resin.home (host109-152-128-245.range109-152.btcentralplus.com.
	[109.152.128.245]) by smtp.gmail.com with ESMTPSA id
	f193sm8044038wme.11.2016.07.13.04.47.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Jul 2016 04:47:40 -0700 (PDT)
Date: Wed, 13 Jul 2016 12:47:39 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160713114739.GC21822@resin.home>
References: <20160623213431.5513-1-raj.khem@gmail.com>
	<20160623213431.5513-4-raj.khem@gmail.com>
	<CANwerB0-kwTu93ybFFpMwdSZ1KOVGOTO2=PgoKuoqwgv_MOtAQ@mail.gmail.com>
	<CAMKF1soN1UOi_zu=NqrO5B7RYx_3EsoGCh4R7QreAwLJMDidQA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1soN1UOi_zu=NqrO5B7RYx_3EsoGCh4R7QreAwLJMDidQA@mail.gmail.com>
User-Agent: Mutt/1.6.2 (2016-07-01)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 4/4] sdcard_image-rpi.bbclass: Exclude DATETIME from task stamp
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
X-List-Received-Date: Wed, 13 Jul 2016 11:47:59 -0000
X-Groupsio-MsgNum: 31025
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hYooF8G/hrfVAmum"
Content-Disposition: inline

--hYooF8G/hrfVAmum
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 11, 2016 at 04:44:45PM -0700, Khem Raj wrote:
> On Jul 11, 2016 4:00 PM, "Jonathan Liu" <net147@gmail.com> wrote:
> >
> > Hi Khem,
> >
> > On 24 June 2016 at 07:34, Khem Raj <raj.khem@gmail.com> wrote:
> > > This helps in fixing occasional error seen quite often
> > >
> > > ERROR: wpe-image-1.0-r0 do_image_rpi_sdimg: Taskhash mismatch
> 7ea6b505bb7a2cc5ca03552bcf3333fa verses 3be7cdad8c4532430d96368c5ca523d4
> for /a/builder/home/kraj/work/oe/meta-metrological/recipes-core/images/wp
> > > e-image.bb.do_image_rpi_sdimg
> > > ERROR: Taskhash mismatch 7ea6b505bb7a2cc5ca03552bcf3333fa verses
> 3be7cdad8c4532430d96368c5ca523d4 for
> /a/builder/home/kraj/work/oe/meta-metrological/recipes-core/images/wpe-im=
age.bb.do_image_rpi_sdimg
> > >
> > > Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > > ---
> > >  classes/sdcard_image-rpi.bbclass | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/classes/sdcard_image-rpi.bbclass
> b/classes/sdcard_image-rpi.bbclass
> > > index 4dfd7a3..e566669 100644
> > > --- a/classes/sdcard_image-rpi.bbclass
> > > +++ b/classes/sdcard_image-rpi.bbclass
> > > @@ -73,6 +73,7 @@ FATPAYLOAD ?=3D ""
> > >
> > >  IMAGEDATESTAMP =3D "${@time.strftime('%Y.%m.%d',time.gmtime())}"
> > >  IMAGE_CMD_rpi-sdimg[vardepsexclude] =3D "IMAGEDATESTAMP"
> > > +IMAGE_CMD_rpi-sdimg[vardepsexclude] =3D "DATETIME"
> >
> > Did you mean to append DATETIME to vardepsexclude or override
> IMAGEDATESTAMP?
> >
>
> =E2=80=8BYes and a followup was sent to correct this
>
> https://lists.yoctoproject.org/pipermail/yocto/2016-July/031035.html=E2=
=80=8B
>
>
> > >
> > >  IMAGE_CMD_rpi-sdimg () {
> > >
> > > --
> > > 2.9.0
> > >
> >
> > Regards,
> > Jonathan

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

This patch is now in master.

--
Andrei Gherzan

--hYooF8G/hrfVAmum
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXhipaAAoJEHO76Gt+erfPtmEP/j1Aa21Dm5ukhM5aljF8+GqP
/VCoO3kynSP5PJn3MfmsUg7x8OGhuPsNEpZJ0W3t8xfgrvRJC/71dqhB1fDRNWMU
bqhcrFT2Z/NnUKsftoe+0opLnoJ3xs5WsPajBFwB3607ZEXadDA9W8QUbVQNEPD0
cw2V7CaxWPXkaOMjXeKwXCdIfXBHQZMbWrJf/9rWv9S2cFtl6gRsDEjE6jadzn/8
mqHgqD6clAfEmxmWHIk/UkXX5smMMFLiHP85YY0+Md2jtTBr3scN/rlwOCPHQp91
WS7qAIim4S6kMFa3en7fND7DDP9DusxGzMjvs+VHgUVRszOhm6zVUaJNqkQlgcJM
aISBuRfIYLm2XYtCrYoyq+sG4m5ovmwhsx30P6bSIkBUO103uQnBzaKJ4DQ+iIzL
n/x8aAm7DGJdFACG9W5RoCC/VQNZMLvlJucew2huwOlM2/k3XsTMmhinTOofBft3
zAd5hAJpqVw4jmnwWR2jEUpni0uHJ0wUkwsxXOq30/1cVeNvE2bFlXfXNNEP9Xla
KljVm36KOUja+kcQ0xNf+hq5pfNDSwVY9dJ06ayVJAIOAQTf1nGT9IFmQiIFfKQs
g05sc6e8rajniPxxEkJQ7bZ1RaudPgAA7DiGILVdE/a8jtX3WQre/wYWBPLvVObv
1CDox7TbeK9RWV9juC7Y
=38wx
-----END PGP SIGNATURE-----

--hYooF8G/hrfVAmum--
