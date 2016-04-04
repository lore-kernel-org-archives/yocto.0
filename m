Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D3F8E00A9C; Mon,  4 Apr 2016 14:58:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.65 listed in list.dnswl.org]
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DC26E006C7
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 14:58:13 -0700 (PDT)
Received: by mail-pa0-f65.google.com with SMTP id q6so21386584pav.0
	for <yocto@yoctoproject.org>; Mon, 04 Apr 2016 14:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=tJr4d3VVXyCQ+p+hQz+PnV1WkJhnNQY408YtorNqCD0=;
	b=d794l34KXBdGlgwkf1XaQ2o8eIwvYK3YSIJbtHSAvBmHVu5Vqayzvu8ry73Df9CoQh
	JU1HspHznh9Ecbp8wqAiq6e8ZEESmIAblTo2CjVxnThDR7l8OSM5+mfQcfkiptUAp2wF
	IMGxMyG0RFKNm1fAxCnbEJ+xsfLz6xBoHicAIBp4bE1KUMOmlyhMBiMzygP6xSeXT8A1
	lHsUCNLvD126Le+/kzkUsx8hIwfPpLgJFURjxniz8WwWKcMb2moUTFBuU6D5DueWtHM/
	JJFqyc9+ZHEsPQFZ4APyD8PoomKABn77y02rBbYlCRLmxdibpEWOarjA25yZ8hTI9ed0
	oVkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=tJr4d3VVXyCQ+p+hQz+PnV1WkJhnNQY408YtorNqCD0=;
	b=Ap74twgCjZrON/pTZgEkpNN0WiVoJPHHiHHodAlBLGKTGVd1J2JhcPBGcM2EfNbO1U
	dtk9hwYz1NdLis3KY8mbdy6BgybBYLL1ij0QCm3HovGn289erL4KrmAA1hp1Y1zI9bPz
	0Y5j00PUksmQsKP4CLcON1SpQJ9e4JmpAbTfaLNwDnjziG9cTsM9jR0PFwFC5BQ8zlxv
	Rm95hOyu2Bkjz2GC+8NdnqkQIlOicBW2CisQ5b6an2z0kEKvIVslAgKcCLAL2wsi8Jae
	ShohAMvmf8vntqzMq1iQQgC8Laj/EsVOEexnbM9aL26SgbgJ78A1+eX0VfpxDDMIicjf
	Ud9A==
X-Gm-Message-State: AD7BkJJ5Qlk33XXVmsWuFCeIC8bIvghHkJwKliJzL0Ypq6/5AhLeMhdMCjRKwBM2AdBZMQ==
X-Received: by 10.66.90.163 with SMTP id bx3mr56758650pab.59.1459807093337;
	Mon, 04 Apr 2016 14:58:13 -0700 (PDT)
Received: from resin ([209.65.105.100]) by smtp.gmail.com with ESMTPSA id
	zu10sm2533598pab.31.2016.04.04.14.58.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Apr 2016 14:58:12 -0700 (PDT)
Date: Mon, 4 Apr 2016 23:58:10 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: yoctoproject.org@herrie.org
Message-ID: <20160404215810.GB6860@resin>
References: <5702B520.6060608@herrie.org> <20160404192846.GA6860@resin>
	<5702C473.5020804@herrie.org>
MIME-Version: 1.0
In-Reply-To: <5702C473.5020804@herrie.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] [patch] linux-raspberrypi_Rename_linux.inc_to_linux-rpi.inc
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
X-List-Received-Date: Mon, 04 Apr 2016 21:58:17 -0000
X-Groupsio-MsgNum: 29293
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="MfFXiAuoTsnnDAfZ"
Content-Disposition: inline

--MfFXiAuoTsnnDAfZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

On Mon, Apr 04, 2016 at 09:45:55PM +0200, Herrie wrote:
>
> Andrei,
>
> Hopefully better like this. Changed it to plain text at my end now for below
> patch
>

Sadly nothing changed. Lines are still wrapped breaking the patch.

--
Andrei Gherzan

--MfFXiAuoTsnnDAfZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXAuNtAAoJEHO76Gt+erfPyFgQAMTtMXXvhIwyFLXPXneFspsg
9u64TJPpkqrpY6QLLFHhe68Yn7ERuZH+133X0Uee1vH/9ewh74Vq2hRZKQwW8oSl
EcRvTl51nENGG+Il3EVGXGgcvACIrA3L4VRz4cSI/SoE10PpaIqcLZVxTiyv7A+b
pNh1V7fITtMdcf62V7ZEvilkjp1KsvUSA/OVhOZG7ypSD0g9C6mW+VZHqDWCqRhu
z62naK4SCO0kzaY9a+wrnRj5Bmoy2zNO2GLpjZnwU8S1oo5nYMBSpAWAyBTpxbar
yRA2InTq/GHPyXBlEyJaUR0zSj15yOuh3GC3dpetR0vS44CHzWtNSrT3n4/a6MZm
zEux9K97N4nOL30ejItygRhCAnBvOrOvr2lqQ6+sa45buHp5+iVRA0wTNKQlONZ8
DYbFSKDnwwT2pOHP8AGmynA+1nebxIFWP6KBfkyQi6YFgs9EV2Kz5v6I8Btrin+l
WWvYRq+CMKe55Xb3/eaDEHdSQCm5G++tL4XPw5olxpo6m4qMj/ADrluyITJBnOop
Q5bcVGj2HA07ArhNx643Y9esSc+bRkXNfEgmcuHXghA6UkJCFZAJlk0yWiGosVEX
mpfw2IK2DRhfi2fn28HSy9Tz8G77H23+uGUw9wF3myNWn5fJ82ZiYV5dzTSzkzqB
SIcm+cySsZRD/T26BkjK
=A8Lj
-----END PGP SIGNATURE-----

--MfFXiAuoTsnnDAfZ--
