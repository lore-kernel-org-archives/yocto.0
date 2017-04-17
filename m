Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43624E00B7D; Sun, 16 Apr 2017 18:31:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECB59E00BAA
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:31:34 -0700 (PDT)
Received: by mail-wr0-f194.google.com with SMTP id l44so18706233wrc.2
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=m94TdXM4l35XfTevlI/ksmd+o1UfhPKWWO0xJykTIkU=;
	b=JpXASCPcHtnWN2l3/fy7dIvFjUvUF7xnK7+yakMOBwQEuRmT0xt03bYTP1oxVGC7ra
	N622OoIl2xCWmtwxeb5mdg+YKT+OADHs8vKCdyOXR0e0QunRf3Wa2v+FrhueSeJnbFgP
	mx/YVS+VYFq/vRDtf3TI2excDYEs2AD7u7XOwuEalxEij9/6zqp12t8LpKQWcA1yDc/9
	SMVr6oD9rlrzbel7u3z3AUx7F9F8hznkut3VVfns7WHS9PCuf57ijsdoJgNsKC6VNoQg
	j27WW8QWF1D0qXPcwYOdXaX9/xWPw5/qhSJApUwGwbIVFNfjlUL4NhAcptOVhnzrwVvj
	JlsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=m94TdXM4l35XfTevlI/ksmd+o1UfhPKWWO0xJykTIkU=;
	b=cz0UVrg4BlohkmqjQ8t+7SVBts8B3SYsz4342uWHtxTk8PA/q91hNDX70o+RSRkwC7
	WoxoJJ4tdok1MUOo4OGrsgTyn197nM2Vq8AHc3mMY2JwSROKFh9a/4HG8BIB8unYwsb8
	qhCZ86zrHI2Bub9ywzmv4CrKy4yVPWi0zABJvLNqp3NNYofCGsYhBUw1LDXypwoaTCmI
	6dqJBc6CTm58TtAvU5dq9OYgcn2p/yFyj6wWxmhKimEnijJ9BNiMBPY5a6MUMx30E5IM
	fvP68iU9XO2G9+/IPBTwsl8oVVzyrQ3Y6vXac6a23LKJZr1k1YJHYZS6EiQgjLxvHzmM
	rBJw==
X-Gm-Message-State: AN3rC/6V/qJaNBzUc5vSjITFzEFL7V8i061dM2sKx5ipF3XDptd5SJb+
	DWyVvOqV2uig3Q==
X-Received: by 10.223.177.157 with SMTP id q29mr16248382wra.67.1492392693788; 
	Sun, 16 Apr 2017 18:31:33 -0700 (PDT)
Received: from carbonA (host86-158-8-191.range86-158.btcentralplus.com.
	[86.158.8.191]) by smtp.gmail.com with ESMTPSA id
	m201sm8459787wmd.15.2017.04.16.18.31.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Apr 2017 18:31:33 -0700 (PDT)
Date: Mon, 17 Apr 2017 02:31:31 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170417013131.GJ16624@carbonA>
References: <20170414182133.2051-1-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20170414182133.2051-1-raj.khem@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 6/6] psplash: Let distro override the default splash image if it provides
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
X-List-Received-Date: Mon, 17 Apr 2017 01:31:45 -0000
X-Groupsio-MsgNum: 35599
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7AwgMNpd3VkAVXjS"
Content-Disposition: inline

--7AwgMNpd3VkAVXjS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 14, 2017 at 11:21:33AM -0700, Khem Raj wrote:
> BSPs should not be overriding the distro splash images, here we
> reduce the priority of psplash-raspberrypi below 100 so the defaults
> from distros can kick in.
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-core/psplash/psplash_git.bbappend | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-core/psplash/psplash_git.bbappend b/recipes-core/psplash/psplash_git.bbappend
> index 65dc30f..698564b 100644
> --- a/recipes-core/psplash/psplash_git.bbappend
> +++ b/recipes-core/psplash/psplash_git.bbappend
> @@ -1,2 +1,4 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> -SPLASH_IMAGES += "file://psplash-raspberrypi-img.h;outsuffix=raspberrypi"
> +SPLASH_IMAGES_append_rpi = " file://psplash-raspberrypi-img.h;outsuffix=raspberrypi"
> +ALTERNATIVE_PRIORITY_psplash-raspberrypi[psplash] = "10"
> +
> --
> 2.12.2
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks!

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--7AwgMNpd3VkAVXjS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj0GvMACgkQJrqo2vax
FPb4Sg//VogU7/rf8XJFHTqic5SJk/hlpaJk3/Y9/Xo0nva1C+fNIw+FrPPCGnhJ
ApZR11+tc2UKj5vLtO9C6fdjen04Z2IOMMZsPlIoeMWZHG2QEXJFfUg0KCGfVi6p
kEwKUff62kSF1WtRS/VsJ99drFEFeiUD8wy4bMA/yOznijFnm4788Z701rz+6h2U
WZDYatwkTLxwTl+yHs5OrmYmLJTo7Vg/1pMvSK8dBNpdCQXlr1guuRlOYv3c0wF5
1wI6BimR08TIiBrhL/KUoVlWXk7ueLYFY93fmMI/NdJRByt5mlRUfZqIg4cJoz1Q
Acnolda53o8EK0E3AK0dp6ChXCixXNnaCswyQFzaCMg4Ro95av5JLioqRJ21i1oK
K1x121dtDrb5SIFFz4+imXxNMvt1kUotbGtySR/LchmT4zaVMjEewaqTWhnTxCiw
w+N5VNIXrDK4apQobZNqlpdZXJ1z3n+rVyS4xqvAWxmD6SE9iXLLO+LX0sgym7JD
xbzwaHFYr2qADmgxnWSdzSugHJiqqFad3VNZtAYugunTP1rwXlKK6FvVDiYwOXBw
cW40omgkEUgDP2TNCriPHgqAC8YI9y/AkkPd+Ytuc4S7rnQ2WSgcsHbpTOSnYv7V
vIBXn2gWYimU6L2x5RDpClyW05LsgndINanHnr8RTgeKkFYewps=
=oebM
-----END PGP SIGNATURE-----

--7AwgMNpd3VkAVXjS--
