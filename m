Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2B59E009BF; Tue,  8 Nov 2016 03:06:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8725DE009C9
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 03:05:54 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id p190so21837271wmp.1
	for <yocto@yoctoproject.org>; Tue, 08 Nov 2016 03:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=AT6Vwle2QNpLCTcwSwqHecdeY29r755WAZNSm2tSNCE=;
	b=tF5LvKMbg148Tdj5D0Io26g7ZuWPAfOtc+NCkb8xxtYwXi2RfTZW9bosa2pR5lI7a8
	VAMFkucv7xVbhXsmJ8+CkyvTOWsDuHeFZzn4f6yFwAKT+cIOgpG3/4oS+/MLYy3SEMGJ
	L6dBxPXsOAUxEYvgpAJIN0oLGhnqGJfjqWyF+hbjNsjpC+4tpoXNo03VQApWUGf8arkE
	ReEuJ4vqsRfUFaCqYYwbkuEs4bACe8F/lg/yzR9CpR4FVyfs17CJDqjxvuVc54VxpKn0
	EsHXXKLuHDLixoPyAN0ab5gtJRKmDiY1RbefCdYVVntjgLuIIr6mktUC65X/VHhjMPLD
	ENIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=AT6Vwle2QNpLCTcwSwqHecdeY29r755WAZNSm2tSNCE=;
	b=hRhRw96LUHWEr7ZJmvHTUweTk58Qp5/fqt36vgs95wmfeNIJP4y6rjCJwemRSw1b/9
	jCTBbhnq5aTj2PCXBoUalLFv3IPi1t1VCkClBAVsCZxYCITaYY3ju0S4NGwiTxFcDo8R
	IqylRnn4SXZ7T1cOuAnUDJnISdZBasALH6Ecjy9TcikRkAQcaFg33hxjfzSKpLf3Bxsm
	pf5TSGc9DC+E/dsgK31jIEyGe4qokLl5VJ4S+XnaCVAsiII2j7znRzjyDP6oTcdcSNzG
	H22MbCo3/hm8y2lTUoqjb5AOmbBXRlfVXZD6Cyu9Hj3EpZ4osZkeq7plJVq3fCnyoIUx
	5PPQ==
X-Gm-Message-State: ABUngvcOpnsR7puTtgfohaAPGE8cX9HoA6yGoLOgIrnBZqX42E62C8bktc2TCXS9ksr83Q==
X-Received: by 10.28.135.84 with SMTP id j81mr12449483wmd.127.1478603153156;
	Tue, 08 Nov 2016 03:05:53 -0800 (PST)
Received: from carbonA (adsl-191.109.242.150.tellas.gr. [109.242.150.191])
	by smtp.gmail.com with ESMTPSA id 18sm18971238wmr.6.2016.11.08.03.05.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 08 Nov 2016 03:05:52 -0800 (PST)
Date: Tue, 8 Nov 2016 11:05:39 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161108110539.GE19465@carbonA>
References: <20161031165208.16286-1-raj.khem@gmail.com>
	<20161031165208.16286-3-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20161031165208.16286-3-raj.khem@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 3/6] weston: Unify bbappends for weston into single file
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
X-List-Received-Date: Tue, 08 Nov 2016 11:06:02 -0000
X-Groupsio-MsgNum: 32911
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="BZaMRJmqxGScZ8Mx"
Content-Disposition: inline

--BZaMRJmqxGScZ8Mx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 31, 2016 at 09:52:05AM -0700, Khem Raj wrote:
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-graphics/wayland/weston_%.bbappend | 10 ++++++++++
>  recipes-graphics/weston/weston_%.bbappend  |  8 --------
>  2 files changed, 10 insertions(+), 8 deletions(-)
>  delete mode 100644 recipes-graphics/weston/weston_%.bbappend
>
> diff --git a/recipes-graphics/wayland/weston_%.bbappend b/recipes-graphics/wayland/weston_%.bbappend
> index 57b8079..f2cb7aa 100644
> --- a/recipes-graphics/wayland/weston_%.bbappend
> +++ b/recipes-graphics/wayland/weston_%.bbappend
> @@ -1,2 +1,12 @@
>  EXTRA_OECONF_append_rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', ' --enable-rpi-compositor WESTON_NATIVE_BACKEND=rpi-backend.so', d)}"
>
> +PACKAGECONFIG_remove_rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', 'fbdev', '', d)}"
> +
> +EXTRA_OECONF += "--disable-xwayland-test \
> +                 --disable-simple-egl-clients \
> +"
> +
> +EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', '--enable-rpi-compositor', d)}"
> +EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', '--disable-resize-optimization', d)}"
> +EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', '--disable-setuid-install', d)}"
> +EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', 'WESTON_NATIVE_BACKEND=rpi-backend.so', d)}"
> diff --git a/recipes-graphics/weston/weston_%.bbappend b/recipes-graphics/weston/weston_%.bbappend
> deleted file mode 100644
> index b964542..0000000
> --- a/recipes-graphics/weston/weston_%.bbappend
> +++ /dev/null
> @@ -1,8 +0,0 @@
> -PACKAGECONFIG_remove_rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', ' fbdev', '', d)}"
> -EXTRA_OECONF += "--disable-xwayland-test \
> -                 --disable-simple-egl-clients \
> -"
> -EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', '--enable-rpi-compositor', d)}"
> -EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', '--disable-resize-optimization', d)}"
> -EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', '--disable-setuid-install', d)}"
> -EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', 'WESTON_NATIVE_BACKEND=rpi-backend.so', d)}"
> --
> 2.10.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks.
--
Andrei Gherzan

--BZaMRJmqxGScZ8Mx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYIbGDAAoJEHO76Gt+erfP3O0P/0hJvDLfuKa1xOkapnJvSt5b
kHSwnz6y8gk/MWoMykqvfC6vWGmBFTyy7aN2HJ/Cd/E9vLrtMOlmb0iK84sKG5Oa
RIsbU/jFsfLGUoy7fpqB3G59uj3VGFLgtZ/AnnCH2hvJKIArtLSLAyanki8O7k5+
Yp8HFiNE1ODHV9cz75cpcv7fuo9PdDNSVxyDi6gKlN6+Hs1EOEbXxKNBWQZ0CAp0
Lin9sETSSU8JCoOpcrmkGcI+0Eeahd31Ai64gArDQTdwumVHHSO5hTuhY+qPGDxE
i3GeDE0+5rzJhhQL5rE6SQCBCUfNFS08TVSUZawHa5UJHm2AXPdCtNf+dgGZ2kTh
CSfgjEU0TfwnwhSTL3js6qG9yU+8bTF38Y7/8HMbLCFG60gsIca3x/eAY86rYs9u
TZ+Z6qcho1CQs7jIK4xwJ/I33R+5Yi3gGYzfWUyeqjHxzrYDWTo0nGZCXPRke6Zq
Qo6dnDFsgI47S9m9Sz3cOpQTZZJR6EvaIVwipUPlmJ+SLUagaRuM0SoFF8/FaJxh
xIqhj5QXlM5si+Ea3sEkFkY75ps20CKpWyz5MjPqPg+ZhOXcHiVC0Zb1qbLHcucc
UV+W5RIWXpORwrHbMwlHZp5nIF+3o6qXmlTwX+aR4xqHzbgFb2GV7lrzDDSgwwgB
i2kd3sfD7uw6Q6tBQnBw
=B0Zc
-----END PGP SIGNATURE-----

--BZaMRJmqxGScZ8Mx--
