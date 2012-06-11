Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48F79E006D9
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 10:35:08 -0700 (PDT)
Received: from mail-lpp01m010-f52.google.com ([209.85.215.52])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 11 Jun 2012 10:34:53 -0700
Received: by mail-lpp01m010-f52.google.com with SMTP id j13so2477562lah.25
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 10:34:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=lZ5ZEGboWieRtLAjiPXY5//zzTQaWFQ/pdNlNwRF+zU=;
	b=hx97lnzqMSr0cg7DhDM60kMrMh4nsBTyGv1SmcvyJD5fsO+g9TizbVNuNPCKOggTvc
	vjICvxDXpUMzleVcduBZHpCG237AJJxG53ynO/CGZWWE5PoujBUB72HhhRb37D6aQa8+
	0FJGancSbObmklkhGWSK8nLAvu2iDBbiKkyobVpapDQSolX/G04DBdrVVQ2thH/5Obk6
	FHy4LYQ6IDNqHwV9vYqJO8BaNODJWabETmFLKwJ4oXP2U4MkJTmfHUKVLaFuGl8KPLOs
	BZ05OA4ApqArKyu/tNct2meKlwAGWk0CB8VNSfH3lycFt9sHpSQ5W723q4zE0Ms3Stu+
	3u0Q==
MIME-Version: 1.0
Received: by 10.152.109.166 with SMTP id ht6mr18120418lab.46.1339436093413;
	Mon, 11 Jun 2012 10:34:53 -0700 (PDT)
Received: by 10.112.1.227 with HTTP; Mon, 11 Jun 2012 10:34:53 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1206061403550.4267@oneiric>
References: <alpine.DEB.2.02.1206061403550.4267@oneiric>
Date: Mon, 11 Jun 2012 10:34:53 -0700
Message-ID: <CAPhnLPCpNo+rp18nykVOkYQqTGLHOepmiTftEHgS7LyGrG32jQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Gm-Message-State: ALoCoQmWVjAnbnqrrxtzj7oT02m7QQzeajtCULNd4pEWko+lXhSkzkFj3RVjhj+mqj5ofMgESu+x
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] Correct documentation URL in top-level README file
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 11 Jun 2012 17:35:08 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 6, 2012 at 11:05 AM, Robert P. J. Day <rpjday@crashcourse.ca> w=
rote:
>
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>
> ---
>
> =A0even though redirection takes care of this, might as well be
> accurate.
>
> diff --git a/README b/README
> index 0ab0dbf..06b1ea6 100644
> --- a/README
> +++ b/README
> @@ -18,7 +18,7 @@ e.g. for the hardware support. Poky is in turn a compon=
ent of the Yocto Project.
>
> =A0The Yocto Project has extensive documentation about the system includi=
ng a
> =A0reference manual which can be found at:
> - =A0 =A0http://yoctoproject.org/community/documentation
> + =A0 =A0http://yoctoproject.org/documentation
>
> =A0OpenEmbedded-Core is a layer containing the core metadata for current =
versions
> =A0of OpenEmbedded. It is distro-less (can build a functional image with
>
> --
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 Ottawa, Ontario, CANADA
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0http://crashcourse.ca
>
> Twitter: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 http://twitter.com/rpjday
> LinkedIn: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 htt=
p://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


Merged into OE-Core

Thanks

-b


--=20
Elizabeth Flanagan
Yocto Project
Build and Release

