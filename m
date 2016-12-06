Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45145E00571; Tue,  6 Dec 2016 08:20:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E050E00546
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 08:19:58 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id a20so22540024wme.2
	for <yocto@yoctoproject.org>; Tue, 06 Dec 2016 08:19:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=MsX55FUgkKzpHYCOmSLUj4/RnM29VHDy+wGQ6vzUl/I=;
	b=DZ/Mik1KgHhqjy8CHshVw2ZCta//8I5WRmvfsGevUyRMcjp5wPhtQEASM+ob6LckyB
	B8YyChZKIuKrKVUWa8v3f+tFoTnE4W71zr7IaXTXjOxVQT6vnJIDPvCq61ck+nmS7EUk
	yFAw1VXZIQ/+HDziEEP68qeLGjab3uhxQnVWBcoC//51KbfQfDQttcRbFKOLNOlwFC4p
	7GRgwB55H5yBhEco4GdOyemMNHn1GEDauYyiQcPAqjXrm89DGNa6D+hIj5gzmnoExaQP
	Xdj/Z4jVgQ7QClZ1t8QkU6L0I/dO6haZN4y0K4WSYYa1C5QIvMUozbGtAFT8+8tmiXpF
	Yb8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=MsX55FUgkKzpHYCOmSLUj4/RnM29VHDy+wGQ6vzUl/I=;
	b=SyaJHKEh+4V5pD8ztoUI41n11iPsfDc4OVUv2TOLqaws4bnmF0jL5n3ccqkMX5Jn1K
	nRaHpkwZKPwNvbDQP6DjIXpiG6cOL6osVu4CmUqfE8S86gyFaDHeOf2ffa6iMgjPLzpE
	z7ktfIneVqW5XSBmEPfmpqfKxF6+JUIief+tYN3UVtq3FBkfElCBPJ2UiGhMHnjVKdeb
	LwnHQ62xP1WqgQ15drDvYRGwjKAOVtI+sz1nF9NGwb9ddkGGKpBdI4yPloD7aFNBRlTN
	uSDi4iJ7D7nxTVmLMOS+NfIaw9NF+CwpVpPnsIxvVrr78gutoEu1j7Z208gPvcFCrm9p
	B23g==
X-Gm-Message-State: AKaTC03Ted5CG8DDK37q6Y+2ONWNQFbBxpaRFMpHrXMR8i4NKXOzgJQixXeifsppRuW8SA==
X-Received: by 10.28.24.67 with SMTP id 64mr3306256wmy.136.1481041197727;
	Tue, 06 Dec 2016 08:19:57 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	n17sm26584348wjq.6.2016.12.06.08.19.55
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Dec 2016 08:19:56 -0800 (PST)
Date: Tue, 6 Dec 2016 16:19:54 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20161206161954.GE1636@carbonA>
References: <20161128164638.13097-1-twoerner@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20161128164638.13097-1-twoerner@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi_4.8.bb: upgrade to 4.8.11
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
X-List-Received-Date: Tue, 06 Dec 2016 16:20:01 -0000
X-Groupsio-MsgNum: 33320
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="19uQFt6ulqmgNgg1"
Content-Disposition: inline

--19uQFt6ulqmgNgg1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Nov 28, 2016 at 11:46:38AM -0500, Trevor Woerner wrote:
> The rpi-4.8.y branch of git://github.com/raspberrypi/linux.git was rebased,
> losing any previous commit hashes. This latest update doesn't include the
> raspberry pi patches for 4.8.6, but the upstream patches are included starting
> with 4.8.11.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.8.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
> index 4664249..504fb6a 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
> @@ -1,8 +1,8 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
> -LINUX_VERSION ?= "4.8.6"
> +LINUX_VERSION ?= "4.8.11"
>
> -SRCREV = "6abac13566786086cd912d87e4f1a922e2a391b2"
> +SRCREV = "429efdba18a1201043eacc15c42f989253fbd68b"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y \
>  "
>  require linux-raspberrypi.inc

I updated this patch to 4.8.12 as this was not working already, and
merged to master.

--
Andrei Gherzan

--19uQFt6ulqmgNgg1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYRuUqAAoJEHO76Gt+erfPKrAQAIKbrFYVcryjBHzX39bZeaBN
h9l4pQlzRnRYkj1McRubgj9TDrtsL4j80/EQyh1/VFtnqkTQ6sZHBexHZAuur58Z
vHaLXmNewkv95e4dE71tesW80zpH1HJHX7LOXO/UVLBvCgm4Mdio2R7oPIIyExu5
Lpp6wr6KPZKrIY6ZNTBvwu467OFS6wRd9FF7Xv8Z2j9NEJff+1XwbpMp0lhuAhbb
kZw9ekFCV3WQ6PtUsM2BBXe3p5TGd2x87UyCCPHf07Gv+Sg3iByLo2/Wyfi7ueSI
iFhA/64DVG+pIUHGAeo5xiZm+FFdi0iUGwKWe7F06BO5mNGs3d41KhZb6J/DBSc3
wfQ/9jTGQZFEY3pB1eGx3tYm9RNJoF17Nc30m1k3ffOsGhoGImY9ziMdAQ/o6kCU
vKnWPCw0bIqOaSfcunrh7yTzuO8flGCaptrkc7hMdN5Sw3gs4s7nyNqvTmYpLIxW
WpDNcG70s1emnED1c6EcaJvxwo2ICsDr0ih+QXb/yp3kQxwNARDzP6E2Ybtv4WKO
Eg6umnZnjRzgEh9aq619jgdx7QxnjxZNUsyjtiFJdR+/ryr++4Y86q55jYRUQkZ3
c0rhYxGWI1/UlnqKn7O49SQ3TqnxhlEdu+6zGTLQvSwDZdWxfejZvZgbSub5t0jI
l4PS/URkVFyf5jWQyfIU
=ZQEI
-----END PGP SIGNATURE-----

--19uQFt6ulqmgNgg1--
