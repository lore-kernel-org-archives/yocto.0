Return-Path: <thomas.perrot@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19A5EC44500
	for <webhook@archiver.kernel.org>; Thu, 22 Jan 2026 09:33:18 +0000 (UTC)
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.33751.1769074390506418227
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jan 2026 01:33:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=bbR3HKQq;
 spf=pass (domain: bootlin.com, ip: 185.246.84.56, mailfrom: thomas.perrot@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 616EF1A2A33
	for <yocto@lists.yoctoproject.org>; Thu, 22 Jan 2026 09:33:08 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 38368606B6;
	Thu, 22 Jan 2026 09:33:08 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3A8D2119B1FF8;
	Thu, 22 Jan 2026 10:33:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769074387;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:autocrypt;
	bh=1e7GpDc7gAM7OmJfR4hBFMUhHpVyOIhi1H5Awf1s96Y=;
	b=bbR3HKQqOObkGyjIhRcUcahr3JMFCB0P+jqFQocbp1B5V9HxMA4MSsR0bBYP2lipcXyhRa
	vpxpvvO5rImb2RVA27FpOkItIldnzmwTWJNtwx60rNBOeZxiaQA8/lZUpecBNbaCNAk9yQ
	+KxCpEBs+egeN6SIKd0/yOOuRgr+e35+Ipph4zNp0uHnqOuv+C5lPCDFzv9ej1/Hd2Ta8m
	32Z6joc4qzFeoQFEm1IkIVlDYms0etK5+dDL/eEQ30Soj/9srrcu9g0AiYf4Pj0IJWnW/5
	+KeAoVcSC/qxz4foRH3X9Ze9duXJeDco1p8dUqgNE1h+kCDJT6iiz0TKMQolzQ==
Message-ID: <92b1fbe3da82c19ed2ca7a617077f6055a74f7e3.camel@bootlin.com>
Subject: [RFC] Moving OP-TEE support from meta-arm to oe-core
From: Thomas Perrot <thomas.perrot@bootlin.com>
To: yocto@lists.yoctoproject.org
Cc: thomas.perrot@bootlin.com, nylon.chen@sifive.com, peter.lin@sifive.com
Date: Thu, 22 Jan 2026 10:33:05 +0100
Autocrypt: addr=thomas.perrot@bootlin.com; prefer-encrypt=mutual;
 keydata=mQGNBF+/ZOUBDAC2DghCjZvmgYcve02OG7dGZ7Iy58uEwne3LB7w7nRwdAxKw7ZaiVqwY
 O+yNGVi+GVx7oA6Wn4pv46z+QDRLQiq6OseuXhkSGCg7U/yBCUq12B/GRGO1Qt2Qi1mJJT1s+1qZ5
 Gxv6Nypz9qKVn94GM2bR1hXBga0t87vBpebThOHmX5d/0dqIcVxRCM7onNb0dDyRoVgLS5rBhQzrL
 CMrJaCy39xZUy0J1SOlH4Mgk6EhJIPYY4wlzikGX6urg+Tc9EjGd78ry0e0p5U5qgjFR5QGJDy1Gn
 U3CfwbT9sowdCASDbQDUoltlv2iWJCLa0xl97KVchCa0pr7HKbFA3J5SLKqFYUBCkFL+5WudYlz2n
 XxiUgyviMQxyK+ij66kEi6/2zFDAecd43pHV7790ptqZBC3Jc67Emj7Vo3ShX6RXPPxxbeCTOF2uk
 I45aJ9XcVFH/MFE96NjXj8uahnIsiTPyuCUoJu8tj7TSQyue874qJqVQvqlFyt2aZYJZ8ruq8AEQE
 AAbQpVGhvbWFzIFBlcnJvdCA8dGhvbWFzLnBlcnJvdEBib290bGluLmNvbT6JAc4EEwEIADgCGwMF
 CwkIBwIGFQoJCAsCBBYCAwECHgECF4AWIQSHQHfGpqMKIwOoEiGfwAsFcf4K7QUCX79mdwAKCRCfw
 AsFcf4K7fhbC/wP0kSl6id2E/K3+UdXk6CLMVRbCFLCREzQs5WFpQ6l/I0WGOamhrOgegdszheiVF
 orlUP8d37XSpFAqydhKGaN78V5Dps0Wmwm4lIlS4MtQXJtSLUHXDJLIZLW0pw8tiPLKsd1o/yDkXE
 dnpsjJTRG6SdDSHnyOB2/gh4p+yTaLytFdARk/r4/P26+L+FiH0fFl+RnBt19LPklfKgeDc7GwIif
 ja+nIWpp3W23DAUuI6xduEut25Q89yu7Ci8CliLfAiLy9bIGjBQWU2Y+1/j/7KuPj6VbBsZWLTZY0
 hUmpJSTnWAqc9SMsNxo7NSQuddgviz5e2tqucaRqxP02FGzNa8U4NAKdWaXrlHG5Dglj9XH0DK+SH
 +c96qqFewYD8VPQ6XAGxQcXbrtJmiMor1R2DfziispLRvJcfYs8xqabbCtoS3ouXB9XRi8hn7A2kh
 ME1ryS+Oh63JshXHnw6bmjCpVd/p+fGLIGU6A47pJOpviKR4jEO84pl2ejtDZ3Tc=
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-nvUqcPDjWBiBwJfcMBpa"
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jan 2026 09:33:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66178


--=-nvUqcPDjWBiBwJfcMBpa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Currently, OP-TEE support is maintained in the meta-arm layer. However,
OP-TEE is now being adopted by non-ARM platforms as well, notably RISC-
V.

Given this broader adoption, would it make sense to move the OP-TEE
recipes from meta-arm to oe-core?

I'd like to hear the community's thoughts on this.

Kind regards,
Thomas Perrot
--=20
Thomas Perrot, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--=-nvUqcPDjWBiBwJfcMBpa
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQGzBAABCAAdFiEEh0B3xqajCiMDqBIhn8ALBXH+Cu0FAmlx7tEACgkQn8ALBXH+
Cu2LEAwAgjCBRUZefqutxYsEGb8uvrCY2C03ZPSyXO7u1CKaAD39H7xXC03lnhHA
ZiERYJWGF5VB7vnhBYbfGBrvqdDNTiLy7ro60Ixrgi2nTJzdHWlocGoTdQkhET8H
q48pzb/XqBwYYJ6MZCIGKKpBvsI6tHcdzjX0jIK9uAnhpTf4r9my25bSTCT3S/Ze
Eu2mk0Fc3jn8BRXXwjg+IZHzCVTfrHsO+PQbUty7zM4ZhQ3qLsDyutoAeKalaAMT
yW8MGHeCj0k50EI+neKs/hb41TLs0IY6L+1rjac5Gd/8wUkLhDLMrku5bvIr22v4
nj/a4GnxZFtOCLR5ToF3JO7YMwSP5h7OHTnCVa4Ld8aLpZxpj/GyhCqkwjUAXRHU
Li+mU6LHumShBvw5uyuS4sI5fUx2jcLCxZsVoHnx0d8DjmuRV5GM2MOwHuc/sjTT
dtYvEV518tWBac7CxTq4E7fO35BnjECR7Pcz1M6DkXaccEgCgCacq6axkKHNGcJP
xtWRjhiC
=d1QZ
-----END PGP SIGNATURE-----

--=-nvUqcPDjWBiBwJfcMBpa--

