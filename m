Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F7C5E006C2
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 10:55:42 -0700 (PDT)
Received: by mail-vc0-f181.google.com with SMTP id lf11so5597353vcb.26
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 10:55:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=p55/AQat8mIIeIUFmDgvoLq3GegCm+nasL9tpXgn2Oo=;
	b=RQarbGigaIZRrfGcPWmsHcFX3PIkznQ+XzVI7PVDNf3GZraQBXJvlsC41krTSrDIBw
	wDoVkqIK13b2OuhWsPW1nzw/aQ6dssfQ/2l+ML68N70Ykd19qVlfnyEvly/p0WNJyRQ6
	5t/ot6kqPIjolNKOMxsNOWVKv/MhhU93qhyoxZ5bAcXGaTK4QZr1sfOJAc66FYUhvP3l
	Cq7QSXbRw8eE2rTnk2dj5CFq9F773VGIPP+YPkNGneClB6p6jZyN3FhmJJYiTgUYM1XX
	35eUuanCQsfGMum7TSTJR9jRsPn8lDcHCgBP0A0hPuwU/UyrhsNYQ8EevV1U/g/Szqwu
	r9hw==
MIME-Version: 1.0
X-Received: by 10.52.97.71 with SMTP id dy7mr8643097vdb.40.1371059741697; Wed,
	12 Jun 2013 10:55:41 -0700 (PDT)
Received: by 10.52.114.170 with HTTP; Wed, 12 Jun 2013 10:55:41 -0700 (PDT)
In-Reply-To: <CAFyqS9qOXTV-8vRDuff0_JN=4ZobqbwqSbLm1MNQtTHNEPP3Qg@mail.gmail.com>
References: <CAFyqS9qOXTV-8vRDuff0_JN=4ZobqbwqSbLm1MNQtTHNEPP3Qg@mail.gmail.com>
Date: Wed, 12 Jun 2013 10:55:41 -0700
Message-ID: <CAPhnLPBsH=Oibe5X3vDeVn9gxq3Msjn_ogZaU6dRm4W0uGYRCw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
X-Gm-Message-State: ALoCoQn2MVWYccmi0tITxEggEf7/+52FRMOjTdckr3tROQuwcta7QIIddYEJEm1/eFnk2B572kOY
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yet another LIC_FILES_CHKSUM question
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
X-List-Received-Date: Wed, 12 Jun 2013 17:55:43 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 12, 2013 at 6:05 AM, Hans Beck=E9rus <hans.beckerus@gmail.com> =
wrote:
> In what way does LIC_FILES_CHKSUM correlate to what is specified in LICEN=
SE?
> LIC_FILES_CHKSUM *must* be specified unless LICENSE is set to CLOSED.
> But, what if the package does not itself provide a license type file?
> Is it then ok to simply leave LIC_FILES_CHKSUM =3D "" ?

That's kind of a tricky situation. I'm not a lawyer, but I haven't
actually seen an actual instance where there was a stated open source
license that wasn't also in the source. If there is then the correct
path is to probably put actual license text in the upstream as I can
imagine all sorts of legal issues with this. Any lawyers care to field
this on?

-b

> Also, I could see that there was an Erlang Public License file
> available in poky. But the file is named ErlPL-1.1 and there were no
> maps attached to it, this patch will add that.
>
> Hans
>
> diff --git a/meta/conf/licenses.conf b/meta/conf/licenses.conf
> index 3cb143c..ffed997 100644
> --- a/meta/conf/licenses.conf
> +++ b/meta/conf/licenses.conf
> @@ -101,9 +101,14 @@ SPDXLICENSEMAP[AFL-1] =3D "AFL-1.2"
>  SPDXLICENSEMAP[AFLv2] =3D "AFL-2.0"
>  SPDXLICENSEMAP[AFLv1] =3D "AFL-1.2"
>
> +#Erlang variations
> +SPDXLICENSEMAP[ErlPLv1.1] =3D "ErlPL-1.1"
> +SPDXLICENSEMAP[ErlPL1.1] =3D "ErlPL-1.1"
> +
>  #Other variations
>  SPDXLICENSEMAP[EPLv1.0] =3D "EPL-1.0"
>
> +
>  # Additional license directories. Add your custom licenses
> directories this path.
>  # LICENSE_PATH +=3D "${COREBASE}/custom-licenses"
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
Elizabeth Flanagan
Yocto Project
Build and Release

