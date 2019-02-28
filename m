Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1468E0090C; Thu, 28 Feb 2019 09:16:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
	[209.85.208.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FC4DE0084E
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 09:16:59 -0800 (PST)
Received: by mail-ed1-f52.google.com with SMTP id m12so17642011edv.4
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 09:16:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=iGEP4wSjEI8fbKyCWlh5j7QHcX4l3znQBPx/MXfHTrM=;
	b=iZy5+vBAhaLzAkZfwFj/T06XdLFTNxxzriwMv25VjtrbO0yYEAzdyj+r0zymK20I5J
	OPfXziVOHcGKrtdF6yEgeP20BPXrXpYM9XYMyObdg/rggMjT3ws0q7ttSgLBgh+yqKJd
	X4WuUbpT4TlxbSYxXVtXAT3bGVyi2Av75JwOE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=iGEP4wSjEI8fbKyCWlh5j7QHcX4l3znQBPx/MXfHTrM=;
	b=RYseRcibmsEsVwvVQok2mxpzOV8N80KopvUIjNxktD6+9XSNzE4vNbsqd8vfUb5l9M
	tfyjVsYOC2C1Dy8PYV+MaEJV/EWAK17bu/Aa/EA2H8ozlVlhyHHky/a8eo6Uxu/dp8Dp
	STLLcnU3HARNmjknKCSZxT+cFJfOak3rT9hfVw6hWZW98CyoxZVNXz9TYQYUVYpDDDaV
	93ShhXx57fFn3g9h5aTTfGJMj1Xnqy1oKi4uv3qNqmyUPjjK8Xn2pcTGot/JpLO2p5Hg
	c7CNV3UzKYM8VsDDbBky7G6f6VLqA5vOY4pek4W5PVWnVmwNbgUf7b5yrtmfBDHWNVem
	XJmg==
X-Gm-Message-State: AHQUAuZM8vNaAdRw223o5+hy6XxjPJDxoxQ4e0nSMXIVd5p8Iku9aSWn
	aR+PPWNNbjx+O2MbEmuZKka5Uw==
X-Google-Smtp-Source: AHgI3Ia9EDvy2jH5R726/Ibf1kwVtM6/8ZuY9TiZUzcg0/QV4Sx0lPEFruyNopplY7ihmiNL6ZScUg==
X-Received: by 2002:a17:906:f48:: with SMTP id h8mr6209234ejj.22.1551374218306;
	Thu, 28 Feb 2019 09:16:58 -0800 (PST)
Received: from bill-the-cat
	(cpe-2606-A000-1401-880D-344A-8475-F632-B81B.dyn6.twc.com.
	[2606:a000:1401:880d:344a:8475:f632:b81b])
	by smtp.gmail.com with ESMTPSA id
	g13sm2314750eda.71.2019.02.28.09.16.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 28 Feb 2019 09:16:57 -0800 (PST)
Date: Thu, 28 Feb 2019 12:16:53 -0500
From: Tom Rini <trini@konsulko.com>
To: changqing.li@windriver.com
Message-ID: <20190228171653.GO12046@bill-the-cat>
References: <20190227170328.GU12046@bill-the-cat>
	<1551332785-158951-1-git-send-email-changqing.li@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1551332785-158951-1-git-send-email-changqing.li@windriver.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH V2] xmlsec1: add PACKAGECONFIG disable-des
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
X-List-Received-Date: Thu, 28 Feb 2019 17:16:59 -0000
X-Groupsio-MsgNum: 44281
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="O1HwIoIQdgOxwxO6"
Content-Disposition: inline

--O1HwIoIQdgOxwxO6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 28, 2019 at 01:46:25PM +0800, changqing.li@windriver.com wrote:

> From: Changqing Li <changqing.li@windriver.com>
>=20
> Signed-off-by: Changqing Li <changqing.li@windriver.com>

Reviewed-by: Tom Rini <trini@konsulko.com>

--=20
Tom

--O1HwIoIQdgOxwxO6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJceBeEAAoJEIf59jXTHXZS6awP/3q1jtyxIi8SYLpIpWq8zKDE
uHunDSoRWHUGv6ZYyv0WlTnkOPdV3yPTJNjtdpp7qvV6IcChsObI2Yqn8Szzg004
EqVuBfbYeOYBwo2TRYR1oolh/SsTsLhE9e9gFXPe+UfxY1J/+JuSqO+gEEJSPnr9
nRiFcqPS8f0+P0HcE8gW/FhRY8IyBJEDL1NsBNmha7lOU6VbweffntXnBo15OwOa
kYpm9Djyi66rOi9R2NXkJuD2ULUfHHhcHmBVghRGDz3Cfm0c5ua78Gugnj4ahQAY
cCEbDmqRMW6zMOuVFgK4wCoqrnkZA7CZ8+yLTC6NJXBfYPLBpUq4lIak4Yajn3oN
Gzd013ct7vsnGX1A7/e4XI2Ev21Cnd/F0+nz6vbx+ZKlm5hYXcVH6g7QJpmJjB5b
Evvwqfd0dV5uEyIJukFqKkbySvl+lMxl34za+9sY/wQpjELUbRISPoEY10DE/o7g
i9lemLCxqF2w+C+mhqG4cYHFRNDGd4YB72Z3fOflNEhrWpO0kK/zbwnkHw3RH1zf
0tSwemFfZndSb05VUMAC4tc7u/1dwedvPoI6p9L5VBdE8kF0m0FFvatyuYhRhOpy
oMjncfFeEKPx1GKsSL/x6R7T9cQVzVGqtbXhdryfkYyJ6hyws4IXH7YCspW2k/8e
Uw5etqTcub3E8KKvnest
=u9Li
-----END PGP SIGNATURE-----

--O1HwIoIQdgOxwxO6--
