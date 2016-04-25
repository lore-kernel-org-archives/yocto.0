Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81D52E00D72; Mon, 25 Apr 2016 01:33:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2141E00D6F
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 01:33:40 -0700 (PDT)
Received: by mail-wm0-f41.google.com with SMTP id u206so114752109wme.1
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 01:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=4srqHTaf2G8A8E1dEKC+lCc3RiaNzIlD/9iDnisOYmY=;
	b=k6uq8cJdC7/oIWtefUWAlZnk6Z0BOawwLL9a8JGGlRXAZP7EKlrYzdGnQHcOFGwagl
	XN2v/TyCvNNHFn2kivdIOF4sHqwwUyV6Rry/fgLrZ8/yFSvFuQG5f/JfMLeg7rVVw5Si
	HGHygixAYjYAJZSKjgtA14SUxfhGl9qncYfO+YlBYrbMWL+eRu4Ib8vFbFD4GAwz0Nt3
	w3t56ENAqxc6/U+LeNJlrg8D30J0MwqSulQzlorw+FxeUvTk+DQ9mDaTs74BJlsM1H92
	JPwvM8ZNLAbhSVT4keCuWmaF1feIt91s3ofTcF+o5Y2KCO45DvX7ZMOrL56CfeRDcvJ2
	xXcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=4srqHTaf2G8A8E1dEKC+lCc3RiaNzIlD/9iDnisOYmY=;
	b=frSUzSpXZAHHANffT4Ihp6o/VlvgLDyem1zz8UpWQqS429DtWFEU82I+9rZ0TQzqIT
	/vnDrEwoEdrbjOkCypKE4wlQ9QQa8Wq7RJJpcPTdUzFzXUtRPj/gloqjpaaN/RPFmTrA
	xpAMTcWn1HD6E9Q+Q6CNC6nOS6wAOk10T0+lq1v+pTLBNEMlBC8iXLLIzhCOBubpn5Re
	bY8x2ETk9aUAPv08gKffNsL/OCNxcdCjC6uOvZE4HmJRbW+5UjzeVeR96d/Y57hgMNEH
	79imWX/ul4cyiBMAHz5DkR0cdueCXt6vN8zvYiCJvABRwvIIev5q4/YT52SA1R1JUTRK
	XBcw==
X-Gm-Message-State: AOPr4FUY84dorEFUALDT4l53SkaRXs8mVnyfyXiH7pYoHqaKmu7cbhxgNK/CFcWp/kHtpQ==
X-Received: by 10.194.86.200 with SMTP id r8mr31991493wjz.158.1461573219825;
	Mon, 25 Apr 2016 01:33:39 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	c16sm17569562wme.16.2016.04.25.01.33.39 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 25 Apr 2016 01:33:39 -0700 (PDT)
Date: Mon, 25 Apr 2016 10:33:37 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20160425083337.GG26977@resin>
References: <1461567975-26722-1-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1461567975-26722-1-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: Re: [meta-raspberrypi][PATCH] rpi-base.inc: Include pi3-miniuart-bt-overlay.dtb
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
X-List-Received-Date: Mon, 25 Apr 2016 08:33:56 -0000
X-Groupsio-MsgNum: 29613
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="BzCohdixPhurzSK4"
Content-Disposition: inline

--BzCohdixPhurzSK4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 25, 2016 at 09:06:15AM +0200, Andrei Gherzan wrote:
> This is used to switch BT from ttyUSB0 to ttyS0 (miniUART).
>
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  conf/machine/include/rpi-base.inc | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
> index f64bc9d..56ca83e 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -36,6 +36,7 @@ KERNEL_DEVICETREE ?= " \
>      overlays/rpi-ft5406-overlay.dtb \
>      overlays/w1-gpio-overlay.dtb \
>      overlays/w1-gpio-pullup-overlay.dtb \
> +    overlays/pi3-miniuart-bt-overlay.dtb \
>      "
>  KERNEL_IMAGETYPE ?= "Image"
>
> --
> 2.8.0
>

Merged to master.

--
Andrei Gherzan

--BzCohdixPhurzSK4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXHdZhAAoJEHO76Gt+erfPPaUQAJbLxcNjkihwKOHOiFXz8o4/
oywOh9eQQQRbbwDhNUcGqZHduknJ54sI/uNz1fJepYRqqb7NnApq7/LFVRKhIcN+
jc/JuF5QjfkryVL+1QPKJn1Ih+w1391b2D1bYyYto50TDZR1xO4Noms2vJTnpzG0
gSbXHB8n05EVO9MbukGFY/CLejk/xr6z7lldY8kR44f5RqgMwP48PAw1ilL6ZOmD
hOf4MHPCA3LZGLUS+ZOtRmDsiuRvwuL2QhXjBj40aH+dglV8pbOCbzgURT64M3lc
bFR3ZMZwGqz/52n4QpxostXFJRAiNfi3eb687lDnoMsgh1TJn1afYxGEITRu6ihs
R4cPXjUG6fvx4W3klXv8Etxa8oBokic/40seWzVXGL/5+Y5u6vY0cHNwWb0L1C3R
ErDYkUzPQSs/EqoyW0OYbnieVb5IAcaZfDKk8aDO3VStg1Wa1D9UDd0ou0q8h2us
8cJ/PRJP8mZ8hF8xWgd5KXdyUpHnHM1Tiwi1jEPAfHFk8Aps9D/Hd0sJFLsJUaIF
7i6qne36XHnnQRorD93c4wxE1DWnQ0dqEqNTb8q+mOMZM4oOny0yxlwP6PTj+d9o
cMpMmu1l85aXGH9sJ+wq97RNF+EyB/HX6x4TSkEyCKVxRNjU75DW8SNb/DtG7ske
QfctgPldFMip4ZTw7Yb/
=NZTW
-----END PGP SIGNATURE-----

--BzCohdixPhurzSK4--
