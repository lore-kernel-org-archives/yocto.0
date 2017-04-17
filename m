Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E567E0053A; Sun, 16 Apr 2017 18:25:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f171.google.com (mail-wr0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B589DE003E1
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:25:40 -0700 (PDT)
Received: by mail-wr0-f171.google.com with SMTP id z109so76273967wrb.1
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=0LZjP0R4cv03aDSeR5Tj+Oz17z6Y3GLmcoSox1DBhXc=;
	b=L2OC4pQ/qYxAtNH7sEmkLIakw2USzJJfWF2MqrpWfyjLr/1VqrUnVP7BzoSQbkqNTu
	ZeSN5Uf2D7wIo/3HZD1j2bnn34bKUcLckwYbk60SjC5wKzglKbpTyJs2JujQDbT/hcgg
	u8SuXf2nmX+J6aW2e8dLNUiLosCyD9I3kby7af9qLlPxvrxWuk5tUri89hHgq0+tUZQH
	/IfCcdyqyByAx0YbKdSR2M0nkyvbc9PwES/H9ZDEaVLx2SbxW9Y+sSD4Bq5pFC4311wh
	OZqwQDeCK8Ya5XXNWbjeweMZpSxepnEVk9dixW32RNqkRAtdsM0QgmOof8SyhgOGrnyC
	Cw7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=0LZjP0R4cv03aDSeR5Tj+Oz17z6Y3GLmcoSox1DBhXc=;
	b=OjAlGXTRuIrGfGYtasNPD2qIsC22hiCa+udfaV66D8XXeGWKEDz0Jk44dGxONmUWFl
	bmTXaYEp1NXKC6aSLfHqsgUDYIhtZwI0nmeF7FgtMvpXvx8E4tfEKnHIcAeggHJxHehz
	OMNjDkEfO/1d2Upqamqc8bDQtdKZkYLZtDlEdHtNT4BD46nyQrh7VSA5+uxA0UoYT72P
	AwhCNFrUGwSjzhPmmKpdxLFz1XFB8d3T3QfmJwEYOOP0fB1dsY20XdOCTbRnEo+MSCOd
	FIoHtFeRsCcWdnP4IBK4IATnSjvriMmdy4Xlx0DFQg6X/sVMBp8yelCGpIv9iEI+UtPo
	2joA==
X-Gm-Message-State: AN3rC/6u8vxZqA2pdZbyabc+DVAJGjtxPWD9QMcC0tI3v1K0RuYhp9vq
	vK+fXgsMsqNHGQ==
X-Received: by 10.223.177.199 with SMTP id r7mr17861912wra.164.1492392339312; 
	Sun, 16 Apr 2017 18:25:39 -0700 (PDT)
Received: from carbonA (host86-158-8-191.range86-158.btcentralplus.com.
	[86.158.8.191])
	by smtp.gmail.com with ESMTPSA id x20sm8365220wme.0.2017.04.16.18.25.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Apr 2017 18:25:38 -0700 (PDT)
Date: Mon, 17 Apr 2017 02:25:36 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Rob Woolley <rob.woolley@windriver.com>
Message-ID: <20170417012536.GB16624@carbonA>
References: <20170406184420.55160-1-rob.woolley@windriver.com>
	<CAGAhMBzMeWRxf7JRON29g1XCO1NiW4CS1G-Mo5Z609r-9H6WjQ@mail.gmail.com>
	<CAK18fxE47uF1p0wq2uME-t35_gkODS0acvOtW2aXBRbugW8VeA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK18fxE47uF1p0wq2uME-t35_gkODS0acvOtW2aXBRbugW8VeA@mail.gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v2 0/3] pitft: Add support for pitft35r
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
X-List-Received-Date: Mon, 17 Apr 2017 01:25:45 -0000
X-Groupsio-MsgNum: 35591
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qlTNgmc+xy1dBmNv"
Content-Disposition: inline

--qlTNgmc+xy1dBmNv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 13, 2017 at 07:37:48PM +0100, Andrei Gherzan wrote:
> Hi Rob,
>
> On Thu, Apr 13, 2017 at 3:09 PM, Rob Woolley <rob.woolley@windriver.com> wrote:
> > Hi Andrei,
> >
> > Does this patchset look okay?
> >
> > Are there any further changes you would like me to make?
>
> Looks good. I'll test it and merge it soon.

Merged to master. Thanks.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--qlTNgmc+xy1dBmNv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj0GZAACgkQJrqo2vax
FPY6Yg/+JrdM5sH1UwsIRi8W/+jRITeOuE/VgqJtplNWd3RuWBRWPE2hFAgsyU/H
bEs3nNJ9tDko6NLr7NYDGvDNu/0JxHrH0L3pYsV2O5kF90k42KnJibFfSQAKVqtY
vWzZ7PsVgDjHiffv49OW9bQxul2nq6Q7vdwT2vjd31cn2f4ZFeaY0KligGy+NO9V
2oPcFeu1ilwK1TpNZYdIAwqbIEIf2pkw9Rf1dcf69EjBYp+EQYxuWH9BEMOd2Osz
ZgBjQSF0C1jGSVISd2sYPLqKDFbOh6l/W36xIlYAZSFDBzznvmjrKAlLENXnOnFJ
USP8oHrfMTWsh71hnG97BisL7C89zgXcVUJH3Cs36RCUz7dqsdjAYqIscV24fJmn
c/QqMO69SS165R6ygn75dsKWTDdgnNYehcG76pOi8PgTIi+ue1JCYGGLsuhPJ0U3
uM2+mKqHWMQRG4vT2Hsu1RfmmMj8upznf5N7t00q1ttdLPxKIALR6t7GLoG326JF
sNqESxi40i62jgoIzbx3nh7BB37ATvDSJIE55Yyg4uwB0XieN0tMkterxWSk8f6R
NLVma8OFXiAnwY7FHGZNJXqAeaVA7WwOlzY/KlVSarF91xJTeaIa0CaxEwJiPTlW
x9/4JQsoBOQsZ9Q31Jk+1KSj1xj3g1GIwKvN9h6w1oF8K5RiXtw=
=ENnn
-----END PGP SIGNATURE-----

--qlTNgmc+xy1dBmNv--
