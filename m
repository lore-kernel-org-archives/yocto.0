Return-Path: <matthias.schoepfer@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2783E00C31; Thu, 22 Nov 2018 07:10:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (matthias.schoepfer[at]googlemail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.48 listed in list.dnswl.org]
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
	[209.85.208.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CAC5E007B3
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2018 07:10:32 -0800 (PST)
Received: by mail-ed1-f48.google.com with SMTP id o10so7938577edt.13
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2018 07:10:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=YhB0m0N9fPT1JrAoc2GoEnI6Y0hyEvp1S+yBKChbGr8=;
	b=ahaXAEOv2ERCTMZ4McfbLtO4TMRbobD6kVN7LLE8Cf7ilZCLTrknD1jt4qjPKljLMw
	/er7HNFzX0CeX7Sp4CbthnVf00LArpo369Kntz7sRZXbbxBJHDsPj1ICw3vND0IJP9vy
	P3OugNULXJouNg+MrA6A0rDjXlKM0lDYr6qXuY7PUeKW3SZdkMLPXDdr6cX6+nFfi7ms
	Jm+rGIPRd6dchS8hN/XXXQjtyMOVTzKEDLEYfja8BkSTxpgFnguqPNg+/ogQeSHUtuqo
	dGAHsavCtUZJT/25MpWS9SRuq39zskDzOgH1o5Ngly6075s5mKjjg+hN0/DKDyqezYZV
	fHpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=YhB0m0N9fPT1JrAoc2GoEnI6Y0hyEvp1S+yBKChbGr8=;
	b=jRM8N10jh3SJ+3KaWfl7Cbdm/yCZ3lJEbfCspDZ25JRCTTj5mMvXB5qG/w5fYHo2Xb
	FSnF4N0a9mMr79JQDhVUlZhwDRzrUNpz7yXRlcoKVjmttpqa+3G+cJDcJLFR/6Lf62/Y
	xsbrP4Iq4gnUDF6omkw+Z+/Eo2mbi3CutGHPLfjZrPnprnxMKbe7uKfUnOc44MbcCeON
	znngYutigfMczGZUmY1YAJX9sFcdhb0Uq+tlxl4P7i/XSIrE5NJTwckz78GIiwzBR9Rv
	1fUaKGwEl0twCwwwx1POorbNy2klsvvJjuNX/IcaePy/deCwNt6YXMtW5vbX7iCbFiLJ
	2QUw==
X-Gm-Message-State: AGRZ1gK3hYXeAW5/t4hkQyUnxazBXZgS+h/PInScFFv0RGlmt4us7N34
	OPISS54uxJWXnMIjqS/aAWtQ+NLw
X-Google-Smtp-Source: AJdET5f+H9aJyyrRxkNTciw/njoTWTEGSg0MmsDXSG5rfr9+QPli4bmjynvSjMguLE6Cn/aXuYyieg==
X-Received: by 2002:a17:906:46c7:: with SMTP id
	k7-v6mr8327324ejs.71.1542899431340; 
	Thu, 22 Nov 2018 07:10:31 -0800 (PST)
Received: from [172.16.100.83] ([213.168.66.146])
	by smtp.gmail.com with ESMTPSA id
	k12sm10860884eda.12.2018.11.22.07.10.29 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 22 Nov 2018 07:10:30 -0800 (PST)
To: yocto@yoctoproject.org
References: <545a7e8a-5ccd-c8b8-6b88-0b6f1723f794@gmail.com>
From: Matthias Schoepfer <matthias.schoepfer@googlemail.com>
Message-ID: <75775c5c-c769-98d7-4414-9b3e3016f65a@googlemail.com>
Date: Thu, 22 Nov 2018 16:10:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <545a7e8a-5ccd-c8b8-6b88-0b6f1723f794@gmail.com>
Subject: Re: Yocto layers missing thud branches
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
X-List-Received-Date: Thu, 22 Nov 2018 15:10:34 -0000
X-Groupsio-MsgNum: 43335
Content-Type: multipart/mixed; boundary="------------EB7D9A13A3CB79602420A734"
Content-Language: en-US

--------------EB7D9A13A3CB79602420A734
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi there,

seems like meta-java also missing a thud branch?!

git://git.yoctoproject.org/meta-java

Regards,

=C2=A0=C2=A0 Matthias


On 11/18/2018 12:50 AM, akuster808 wrote:
> Can the maintainers of meta-qt3, meta-qt4, meta-selinux, and meta-cgl
> please add a "Thud" branch
>
> kind regards,
> Armin


--------------EB7D9A13A3CB79602420A734
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

--------------EB7D9A13A3CB79602420A734--
