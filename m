Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58D75E00B2F; Thu, 29 Jun 2017 18:34:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.172 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.172 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f172.google.com (mail-yw0-f172.google.com
	[209.85.161.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39E36E00B18
	for <yocto@yoctoproject.org>; Thu, 29 Jun 2017 18:34:23 -0700 (PDT)
Received: by mail-yw0-f172.google.com with SMTP id l21so35342363ywb.1
	for <yocto@yoctoproject.org>; Thu, 29 Jun 2017 18:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=PTFYjZcZBkM8U3aAIwqUjdqdGmJGohdgHcdm2eyepYg=;
	b=aGM8+WERrMspGFrqcDivlBZJNiIaWDAqhA+41v9CDyyIr3QdEqgv9ij9XTlohOqA48
	J70bGP69OPsa1ghwJ1+HZWBJamtrXXSt1suuPQ97uwEhsbYRbBUXJcISWorVsPl4GVKI
	4ZmoX9S4bE0+gGuNEhFiIfjP8zDSO9RTlf1bo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=PTFYjZcZBkM8U3aAIwqUjdqdGmJGohdgHcdm2eyepYg=;
	b=TkRubtpG7O0bv2T4nGwJra1vsP9OhuQsanvhqEiJSKMkBQMj0PhFhnN9ccnXVm+ftN
	R2kmgWy7dSI3SJobtpafOfsMN+Acgg5bSiI0mltyA5lnX93mXwqQg20VHLsULLvZOhDP
	gMdZ7Z2BqYA5fHT4ufzrsqVZOGFrJP3NHzinR+gRvYvVvS227yD64NL9ODQUq54Es958
	ZUApNV3nZYuXOwjoHltklRnV3BsI5FD8eRr48IF84vjrQBS7vJQ0WP+pTHy4i8uRPtWJ
	5Yvr5j+GGhGYODJM8qRftAzMdkY5D180ACNoXz+PymhmiCElfzlM7Isxf9QpuIoB2LZV
	V4Kw==
X-Gm-Message-State: AKS2vOweq+VpOx8RD7bH6tyd3UotIRJJ5aDWUdJkUA0Z/SrJEeKIezs4
	V9MLABPEOUygI6th
X-Received: by 10.129.200.75 with SMTP id k11mr8043643ywl.253.1498786463079;
	Thu, 29 Jun 2017 18:34:23 -0700 (PDT)
Received: from bill-the-cat (cpe-75-180-228-133.ec.res.rr.com.
	[75.180.228.133]) by smtp.gmail.com with ESMTPSA id
	m206sm2423789ywm.25.2017.06.29.18.34.22
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Thu, 29 Jun 2017 18:34:22 -0700 (PDT)
Date: Thu, 29 Jun 2017 21:35:06 -0400
From: Tom Rini <trini@konsulko.com>
To: Anders Montonen <Anders.Montonen@iki.fi>
Message-ID: <20170630013506.GI9889@bill-the-cat>
References: <alpine.DEB.2.11.1706201553410.27988@lakka.kapsi.fi>
	<CAMKF1spmLmRv8z2vBvSLUh2VrWVa9=Ov-W7QzK7LDYSnwd=HjQ@mail.gmail.com>
	<AD70DBFD-84A9-44DF-8DCB-1C25BBF0F351@iki.fi>
	<20170622120832.GS27196@bill-the-cat>
	<alpine.DEB.2.11.1706291347560.1790@lakka.kapsi.fi>
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.11.1706291347560.1790@lakka.kapsi.fi>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: AppArmor
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
X-List-Received-Date: Fri, 30 Jun 2017 01:34:27 -0000
X-Groupsio-MsgNum: 36845
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="7GFA+bvAY1vP//DC"
Content-Disposition: inline

--7GFA+bvAY1vP//DC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 29, 2017 at 01:56:22PM +0300, Anders Montonen wrote:
> Hi Tom,
>=20
> On Thu, 22 Jun 2017, Tom Rini wrote:
> >
> >I did fix the latter of these (along with the perl problem), but I'm
> >using sysvinit and needed apache2 in my project anyhow.
>=20
> Your commit fixes most of the problems, but /usr/bin/aa-easyprof
> still gets installed with a shebang referring to the host python3
> interpreter. The script is processed and installed by
> utils/python-tools-setup.py, which captures whatever $PYTHON is set
> to at the time.

Oh thanks!  I'll v2 things shortly with that fixed up.

--=20
Tom

--7GFA+bvAY1vP//DC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJZVarJAAoJEIf59jXTHXZS5vEQAL5kmnzXHuulSVwtPUsPF5ud
sherckLJEaqsD4viiJA2GOeBbcx67GBNB6TcND3RuTValN6qmoOcV46mFNnTx+hO
LatY+L/qkR9sbnvElNLC3ssuhJ0DCM708fOzHdomFlqfOI28ldhSdQjtREpUz+d4
d26kqcWOsECGIDxodToG8NyrA3wdbiNZBXOK8Tte4hiTIGVXkmMcyL4zJwKy5D7q
j+NF66cmh8L/HQPqDbdQelOGfsy7beQFEl/REVZD9rn3ZFH8pBQnSXLboVjc4joH
1BtpKEcdPTz3fo07zv4FOymE/UqOD7IMw3sA4LUQSIcm5rUEuv77iAde1fsbN2e6
WVHYLyRskVSaMuuRErRlTxbGk8OLQb6rL7h5G35IRLvbvv8U3j70wm7m9N650/tB
aGRdMtLybq1wk5phC6h1DdDcAMv1UZRSq3TH8lLuU05y14OAFASUuAV4qorMCNKt
/4q8d+5/04yIB8XYfMDoWG4+C7C3/S7+yO7eKMygXast9NSyCIcDL35BBOZe/vcP
eF858ziAGPz4glloLKgp47/6MXGFcJ4o6zi5J4T71t7HBZ5n//n7LzFsoXNMyHa6
AA3upjwm9caDcqFm4p7gqGGMNbWNm6ENLwyQIdWKnuHILGDo/WsABUxC42GTXyNB
3bfJpE2CikPjRSxgzvBh
=N+SS
-----END PGP SIGNATURE-----

--7GFA+bvAY1vP//DC--
