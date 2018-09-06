Return-Path: <matthias.schoepfer@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CF16E006C7; Thu,  6 Sep 2018 06:20:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matthias.schoepfer[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f181.google.com (mail-qt0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22893E003D7
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2018 06:20:26 -0700 (PDT)
Received: by mail-qt0-f181.google.com with SMTP id t39-v6so12138984qtc.8
	for <yocto@yoctoproject.org>; Thu, 06 Sep 2018 06:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=3fiB2B5t0ulKClFzi81EMkQP114V8NEUf82PF+RMkxk=;
	b=TDc+MRzaQk89/iM7WW/O9xWxykzQVZoJpQ2QfJIi1d3LaLzsS/VLXHkTCPpieYZFwN
	scH9xM3drtx5PO9yeKcyjtTjaSDUe/6vOEGVmPzryj1Fcb2TJOThMN2rjeWK7NznYeDR
	w9uEmj4Clma2XCg6qQtqgUfoClIsl8kSLcdraFfG9H0k4hBSwu0x/RXqV05V6K8qIqlZ
	CRFOZlokZ5t6gy5sM4NzQVITf1tym5o3ag/zS9Nh2T8SAmDz0VgapEWrBLSnCIEqZQ8V
	bL7/ZrEevpfjJ9TfpQPyZvTWHtU//+154bRoGIX1xXa2cP/nBReI2N6lKV+lYc3cpV7c
	Druw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=3fiB2B5t0ulKClFzi81EMkQP114V8NEUf82PF+RMkxk=;
	b=sMj3dQG1T4OxGR0Uw4kgCQyhSGwNLc39uSDbWN/vJtJgba0ohubqSUHO3BKAxV0lWS
	C4WWXhMLBS8qExZjC4ieDRYGLa+vQq2RNyTCBcJakjFBAoLOTBE7k6r7e7F/whCOkpr/
	8Fcd8WxhFnyn2mhAjn5McmPDsbiebA9dv+WkCW6gZDqZ0xWoCtImtC00n/F72DOXAfab
	KBBjiN5T0ul/Uibyt1I8mzUTi5HxpYujCL7ZKw77siP0orLPRnQsro8sPKcc3zIzMNMZ
	shxyG4LhjV3O9etz+RN9vbyQOicR4F7m6ksg/s3F7RBCnZKtdujqJMSH+3SmDtBdZl76
	SRnw==
X-Gm-Message-State: APzg51AE/2OCNVv+vJ9kwRgkMO+yr1nwKRl1ilBEduoGXE7JAZeajawU
	fcV4rrxcpejNkQFKepLjmXsHKlnN
X-Google-Smtp-Source: ANB0VdbKZmdf5mEku7sIg39RHgwRcxg5CAlihyi/SD5aXthkHyOw4+DY89AS21fTJOFohTtBWXK4Rw==
X-Received: by 2002:ac8:3479:: with SMTP id
	v54-v6mr1992483qtb.231.1536240025271; 
	Thu, 06 Sep 2018 06:20:25 -0700 (PDT)
Received: from [172.16.100.122] ([213.168.66.146])
	by smtp.gmail.com with ESMTPSA id
	n8-v6sm3020930qtk.38.2018.09.06.06.20.23 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 06 Sep 2018 06:20:24 -0700 (PDT)
To: yocto@yoctoproject.org
From: Matthias Schoepfer <matthias.schoepfer@googlemail.com>
Message-ID: <9eefcad1-13db-1733-1d8a-b46425278336@googlemail.com>
Date: Thu, 6 Sep 2018 15:19:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
Subject: Determine revision of meta-layer within a recipe
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
X-List-Received-Date: Thu, 06 Sep 2018 13:20:26 -0000
X-Groupsio-MsgNum: 42395
Content-Type: multipart/mixed; boundary="------------BDE7C2D38BD0A0AEBF4DA0DF"
Content-Language: en-US

--------------BDE7C2D38BD0A0AEBF4DA0DF
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi!

Is there a standard way of determining the git revision of the *layer*
the recipe lives in from within the recipe itself? I know that
image-buildinfo class does something like it, but I wonder how this
could be used within a recipe.

Thanks and Regards,

=C2=A0=C2=A0 Matthias


--------------BDE7C2D38BD0A0AEBF4DA0DF
Content-Type: application/pgp-keys;
 name="pEpkey.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="pEpkey.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

mQENBFtGITgBCAC91l+KbxaKKHBzO/KzwcQ3SJhPm2BXfnXX9DMX2qK9d1m6qXrJ
l465gSIsMPdSzaar/u9ZSlQJ1SQuhwLUXDEX1omH3UVArFhQQSaYOk+98lgzo/AW
Xsh77fKy2idzlVGy685E3phqYUE35g9FgO11vbTPKqVzqfdFZtJa2KnpnbU0n12S
jtYeD4ziZQR4nYa2h8/DrotA4dMaf8HkYbptC9i8bT0aAn2YYIRFNhVamN14La8l
33qKB7ZoTah3Q9YPaefZ7hXPkR0Rt93oETkhwUq03SAPXypV86mtvFvAE4bZZkDv
M7XBkSKs8KqxTnFUXGJBUJghmAKu9+uot6NBABEBAAG0RW1hdHRoaWFzLnNjaG9l
cGZlckBnb29nbGVtYWlsLmNvbSA8bWF0dGhpYXMuc2Nob2VwZmVyQGdvb2dsZW1h
aWwuY29tPokBVAQTAQgAPhYhBCh5MQUlF0JdgUEzOBhFS+UIjAUQBQJbRiE5AhsD
BQkB4TOABQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEBhFS+UIjAUQrLcH/3Sb
IWoUOGx9iy1fVNuSAkF1SFMJn11qrQPxrhHe4pc0jaLQSmnFwvsv2POuqSud+Lj8
BShgyfpbetdgDJVbORhmqRP+TGGDP0iT3b2/b+Aw027Wljt18HKOCw28GQx+OYxA
Y3DOK34aJNQq3+7ZvZM7lanc+ZutcfDFWo/FxMj3gXaZZ2SSsRrhyjYC+FaUguYM
5QtyLaOJSpgviPdZWh1Lsp0AVyX9PCT2+PoFvt71YHja7zYFImiRHi7YDHsJaWWO
XzXRSG3hWN256NRbU+g0UeD6DFT42RpabmnAXG/BDfQJEaH9P80RE+1214q1RKhG
zwNMTBmiJj3a/7BjGgi5AQ0EW0YhOQEIAL4RfL8Ggghnz0K2Pb2c1WzSaSHULk5H
gg2bctg0RAfH6peOJfX0zFKM82nwvSd5R+N6m2Y4ZgB39nI914DmbFjljqXCNduz
+5PGbm4gkw8JYkSP6tctcyA5HfSkKEu7CzNG+gYfWjC5mxQmFmmUwEhvEJe3cSnk
jrOJzboFuMPoP3XMpA2WXpSLxcEd65Y+493jRZybvfmuu9A4ZGOMFnewLV+eQP5R
l5EGXLVNLJAUD72VOPezOtdAbzVx1iPnN+qk6KzqWYDXjzHxfI8o3+lECypBD3/q
Q5xK2JhmfRusRTjVxB+Gxe5arFy4iPspWPhOKfNHbRptMecOGnQzBb8AEQEAAYkB
PAQYAQgAJhYhBCh5MQUlF0JdgUEzOBhFS+UIjAUQBQJbRiE5AhsMBQkB4TOAAAoJ
EBhFS+UIjAUQWUkIALI+fZIAWzvWu/kC3X/a5v5VvW+YHywnibZUHTlCaf5Et12+
r9gxgCxdBOHLfP1Xx8uh+NhkZP0+IgrDK/dHReynlDCYLb4F810HitApJSr/4ZRk
K1zLPW529PTOw+mGby2Kkc2L3kxKGepMFbo9zBMzdDNvLCVEXoUnEBq6ER/HhiKu
+/3KzSd8RXXDxgYEj+jCIixVMThUM84jpPC3b0GeY3Uf7puVyZLLWgE1JKeAVW/d
T84NrT/InD+n+HXvjQ53pbNeM2gMN7MyAzypLrJJVf/EvCs0VcqMF70VXr9AFiYZ
AHpNeVoSTfZcx4z2jIsZc9OY7k5vcXNEHWToQQA=3D
=3DGeio
-----END PGP PUBLIC KEY BLOCK-----

--------------BDE7C2D38BD0A0AEBF4DA0DF--
