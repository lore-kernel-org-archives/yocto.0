Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B4B2E00E12; Fri,  6 Sep 2019 04:32:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BC7EE00D83
	for <yocto@yoctoproject.org>; Fri,  6 Sep 2019 04:32:09 -0700 (PDT)
Received: by mail-wm1-f67.google.com with SMTP id c10so6156442wmc.0
	for <yocto@yoctoproject.org>; Fri, 06 Sep 2019 04:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=gZ+JVO0ojJEQ2Mq5bkPAGkXP5MSOzxD7Sm/5BEBkfxU=;
	b=qrfx67TiglB/WDntqaKMEyuc2Y38n8iJV5Cmk3IHRgvc/qxLVbBssd8BCxiEjOjmuh
	FROZ5mwQSoKNGYHl6mFF8vp/YdEtxOkwmQme+bz0vKLKc0hTQz4Nh+5vgNARq8bWHFHJ
	WsXWKKJVgdP277O3O1ghZWlmCJOWdadA9n14NTL//AS2EN+NhDxAiS1AtYLXcxc4B4QO
	bSa7wKgEsXVUFttA25k0khfAvUR1XZl5nMAQH00oNPY2qH63cTqlI2vzf6wyD+iyEIeE
	udGZgKKVg8nnvVRTWj0cNmDtsiJNdHGwl2pb9CF5GYZzxYlPmqyLor/O5RDrWVkc/ndn
	8+4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=gZ+JVO0ojJEQ2Mq5bkPAGkXP5MSOzxD7Sm/5BEBkfxU=;
	b=jGkfrx2xj0rT0goP6R9usXb4EiblGbi3g7QOmnC1JtooKPO0Hsj39oUUlJ1y+lcpu0
	tKZyBQjTRmfmYboD8hPMn+I5GMSd3DGLtmq6Xr0lGxXYF6ZBI07lN1Of1MhjkmWGnaTv
	VRvjlwfpgpTzmpJWa0Aw04zjs9Y2jYUHhP1q0sl1Y42xLNbKQba0lH8SsArj90yduiuf
	hA5DC5Wu+aojCAPk7mFCb/QN/xzVVrRIqFKtYQHZ+Z3TWP6d9w4gpbaAMH59JZZsOJxB
	eit00J8xVSLVTzcExXeurdKdE9Wvs7MHGbtqDrLEYhd4jSAdAUDtMmoZiaIY97arbmRi
	Jryw==
X-Gm-Message-State: APjAAAWPwXq6h2nuFqkAQUVo2NWi1lyEUx7fbHlel2W667HHD4iVo4cE
	eQlINdmOSjCex81abO4UUCE6vZHFe14=
X-Google-Smtp-Source: APXvYqw+FeSIlAL8CqGYREKtd5QWMuQ+XDzfJ75y91cpdS84C7Zd7q6mImiN2xdRmS1P7K+0OBxaTw==
X-Received: by 2002:a7b:c1cc:: with SMTP id a12mr6533074wmj.73.1567769527972; 
	Fri, 06 Sep 2019 04:32:07 -0700 (PDT)
Received: from localhost (ip-217-030-068-212.aim-net.cz. [217.30.68.212])
	by smtp.gmail.com with ESMTPSA id p8sm3762588wrq.22.2019.09.06.04.32.06
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 06 Sep 2019 04:32:06 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Fri, 6 Sep 2019 13:32:10 +0200
To: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Message-ID: <20190906113210.GA1530@jama>
References: <20190812195140.900-1-Martin.Jansa@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190812195140.900-1-Martin.Jansa@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Cc: srifenbark@gmail.com, herb.kuta@lge.com
Subject: Re: [yocto-docs][PATCH] ref-manual: mention PREPROCESS_RELOCATE_DIRS variable
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
X-List-Received-Date: Fri, 06 Sep 2019 11:32:11 -0000
X-Groupsio-MsgNum: 46533
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="yrj/dFKFPuw6o+aM"
Content-Disposition: inline

--yrj/dFKFPuw6o+aM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 12, 2019 at 07:51:40PM +0000, Martin Jansa wrote:
> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>

ping

> ---
>  documentation/ref-manual/ref-classes.xml   |  5 ++++-
>  documentation/ref-manual/ref-variables.xml | 21 +++++++++++++++++++++
>  2 files changed, 25 insertions(+), 1 deletion(-)
>=20
> diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref=
-manual/ref-classes.xml
> index ece47e757..159efb3b1 100644
> --- a/documentation/ref-manual/ref-classes.xml
> +++ b/documentation/ref-manual/ref-classes.xml
> @@ -413,7 +413,10 @@
>          <filename>cross</filename>, and
>          <filename>cross-canadian</filename> recipes to change
>          <filename>RPATH</filename> records within binaries in order to m=
ake
> -        them relocatable.
> +        them relocatable. To extend the list of directories where it sea=
rches
> +        for binaries to relocate, you can set
> +        <link linkend=3D'var-PREPROCESS_RELOCATE_DIRS'><filename>PREPROC=
ESS_RELOCATE_DIRS</filename></link>
> +        variable in your recipe.
>      </para>
>  </section>
> =20
> diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/r=
ef-manual/ref-variables.xml
> index 9470a780a..5ac766658 100644
> --- a/documentation/ref-manual/ref-variables.xml
> +++ b/documentation/ref-manual/ref-variables.xml
> @@ -11424,6 +11424,27 @@
>              </glossdef>
>          </glossentry>
> =20
> +        <glossentry id=3D'var-PREPROCESS_RELOCATE_DIRS'><glossterm>PREPR=
OCESS_RELOCATE_DIRS</glossterm>
> +            <info>
> +                PREPROCESS_RELOCATE_DIRS[doc] =3D "List of extra directo=
ries where to search for binaries which should be relocatable."
> +            </info>
> +            <glossdef>
> +                <para role=3D"glossdeffirst">
> +<!--                <para role=3D"glossdeffirst"><imagedata fileref=3D"f=
igures/define-generic.png" /> -->
> +                    List of extra directories with binaries.
> +                </para>
> +
> +                <para>
> +                    <filename>PREPROCESS_RELOCATE_DIRS</filename> is use=
d by
> +                    chrpath.bbclass to allow extending the list where it=
 searches
> +                    for binaries. By default it searches in:
> +                    ${bindir} ${sbindir} ${base_sbindir} ${base_bindir} =
${libdir} ${base_libdir} ${libexecdir}
> +                    Thus, <filename>PREPROCESS_RELOCATE_DIRS</filename> =
usually doesn't
> +                    need to be set withing recipes.
> +                </para>
> +            </glossdef>
> +        </glossentry>
> +
>          <glossentry id=3D'var-PRIORITY'><glossterm>PRIORITY</glossterm>
>              <info>
>                  PRIORITY[doc] =3D "Indicates the importance of a package=
=2E  The default value is 'optional'.  Other standard values are 'required'=
, 'standard', and 'extra'."
> --=20
> 2.17.1
>=20

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--yrj/dFKFPuw6o+aM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCXXJDuQAKCRA3VSO3ZXaA
HOGQAKCg+y1Nl5AO6hhXavL6vqpqDPPF3gCglk/fvif5foug34jeelIzy1P40kI=
=xCIy
-----END PGP SIGNATURE-----

--yrj/dFKFPuw6o+aM--
