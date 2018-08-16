Return-Path: <matthias.schoepfer@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4015E007D1; Thu, 16 Aug 2018 07:20:31 -0700 (PDT)
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
	*      [209.85.208.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
	[209.85.208.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DB85E006B4
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2018 07:20:30 -0700 (PDT)
Received: by mail-ed1-f44.google.com with SMTP id h1-v6so2782352eds.1
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2018 07:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=oKS7gGXaLP2CIvUEsblW2Qa4M8RaxewxA3T7z/7Q5lA=;
	b=TeaOPsk+50Gk5F193t58XSjrHv9gSjQPMcocCbcwnptoLDxJqO2DtibKGDbtD2hBSW
	a68KtpSNnZY4XOe+y2pO9RGxo3fMhRCnY381EvK2p13HVMFO4L0FLfMa4ReWL+BSI3j2
	BZ4bwf6kyvUCxxmItXYZqd6mQ51Eo67WRama2A60+S/Dwg5t8Qjf5lh7DeQZsfKjLqfB
	2qEe8k7h3YFjacnkyi1hPJHNCl6+KeVp19f4DQBhCKMqKK9yAbQ4hcxUQwD9nGveuU02
	jADZZv1A5Oky50WKYLPzIS5aRVUYivhEpTY5tpBlA8nUy9NLbuIqUKPAT74DaZUlpchW
	UbWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=oKS7gGXaLP2CIvUEsblW2Qa4M8RaxewxA3T7z/7Q5lA=;
	b=G7zB7BMQs9yjanxLj4KvWTvRh9iWcInSSrO8SClgM4VY89w6sJOa7l9HjFfl505E2+
	hJHrKGQ8jAp8pLlYYSg57O/e77mc1YdYVGeQ/1u4acONh4JFcxiPxbOmyU3+WGZWRFnZ
	T00b+pqW+BCNxQTe96XN5SBeD2X0kaYpnBFGfIPG4RvMloupWQQ+YPLZP12FSjjPUH93
	+3nO/eyhBt73rNxujIzqw1HrHwZmN7kzNcNkcUhXSEJM6qNga1Ig0M0Utb6UzZCmnflM
	riR+GtBsktdlq/BtOq+WLy9pXBwFs8WU71In+TwxdezhTDjXUOZXZmCuopOYn+rDYG2P
	Tbgw==
X-Gm-Message-State: AOUpUlHGqu5oMOSD6Vl3OeEpXUZ/mmYoESKlLpNiIL4BEXYvBr7phCkn
	isZcnraAkl1dadtIzQXe4qyqmPEb
X-Google-Smtp-Source: AA+uWPwLJVV+Mejga2Ei4ru5fO/Ce15Rg9Fh/Ci17p+nckcpfSdnSqOOiOkBsneEUWRKVTWeI9Cq1g==
X-Received: by 2002:aa7:c910:: with SMTP id
	b16-v6mr38702196edt.22.1534429229922; 
	Thu, 16 Aug 2018 07:20:29 -0700 (PDT)
Received: from [172.16.100.122] ([213.168.66.146])
	by smtp.gmail.com with ESMTPSA id
	x8-v6sm486260edr.24.2018.08.16.07.20.29 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Aug 2018 07:20:29 -0700 (PDT)
To: yocto@yoctoproject.org
From: Matthias Schoepfer <matthias.schoepfer@googlemail.com>
Message-ID: <634408b8-bb9e-2f06-2633-9b53ff1c568a@googlemail.com>
Date: Thu, 16 Aug 2018 16:20:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.0
MIME-Version: 1.0
Subject: sumo missing recipe for kernel 4.4
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
X-List-Received-Date: Thu, 16 Aug 2018 14:20:31 -0000
X-Groupsio-MsgNum: 42169
Content-Type: multipart/mixed; boundary="------------B2E478A9FC77E44D83FD8D6A"
Content-Language: en-US

--------------B2E478A9FC77E44D83FD8D6A
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi!

I might be a little late to the party but ... what is the rational
behind removing kernel recipe for kernel 4.4 from sumo (and later). This
is *the* kernel with the longest support as of now. When building an
embedded system that needs updates for quite some years, I would go with
4.4 right now...

Just wondering...

Regards,

=C2=A0=C2=A0 Matthias


--------------B2E478A9FC77E44D83FD8D6A
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

--------------B2E478A9FC77E44D83FD8D6A--
