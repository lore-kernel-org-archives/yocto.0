Return-Path: <matthias.schoepfer@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 747AAE00AAA; Fri, 21 Sep 2018 10:30:13 -0700 (PDT)
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
	*      [209.85.208.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
	[209.85.208.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3F4CE0080F
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 10:30:12 -0700 (PDT)
Received: by mail-ed1-f53.google.com with SMTP id l5so11335783edw.9
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 10:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=Rb19GMuLB1jdCUaDVGljKtVogwss6R9pMSIu7x+PezM=;
	b=DdSaekrWdwBHEdNjLt/qZjQ2Xjd34AM3G8qShkBwQe7b3GJYShSyvTl3sQtXu38xTp
	/hhwLaP69fFtgbuyyalbrNKLmC/kI1Gcml1gf70aN4tKHWELG1enuESfxgOVW8ehhP4z
	uyrQftR45ftbAKY1LnoK76c4N9fB0EdiIH2vdfixsiLRgQ/PVMg4ms0D1PPFh0/L2+Du
	Qhm7z4Zx5mpT0hoF2NDEGwSgxLymteugwefIP1yR7Fk0p2WIyMUDdwjv/FscR9cMton2
	9QH8PAPu50aaBU3USMrsPjxBb5IYQufTaSMnTcf6Um7YTtWqYnrwNDcGxyrE4xFoHVjF
	DYPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=Rb19GMuLB1jdCUaDVGljKtVogwss6R9pMSIu7x+PezM=;
	b=pKUY/o/xfbxE8Ojw8GNU8NjAmQ9dThtvK++dAxtDGQz7HVOb7bOKHhKPwPomdgLOt1
	nVif7CTEuqqtZjjcvGYjH1XDOs1slphV49KL2SYQna9ew9THi0q0+OUxkZJR0aerW0A+
	CFA+WN4S5v97g2X7uEhOHVcsVGGJoZK+nhVnudHjh9pBIkIGZtGZtGi+u/ZXJqCkQ/i2
	tjB+bCL2p68/flL7Iq3UCdlq2IhbAq0IdBNq4FtxbxhegTNxwWSG//fGuy+rD9ypKgGA
	vndk9l9xPnJaY8YffzExg9+rSPy1gc5tk+Qd8U3ZUhTGHkvWBp6Sk7R1IT1C/UHmOePm
	ieLw==
X-Gm-Message-State: ABuFfoiMwOq2YLaLpFxyJXk8Y/D+mihm/2ndcKIzQy/tgPRPQNndD1t7
	7gl01AL5z4IlVI5AUO6fpHO0W6WH
X-Google-Smtp-Source: ACcGV62Y81jF73a6dwbW4AkMpfMlB06kFIbJFTQyv76Pfh9AtQodVYTJLTsytDgocxmOGxBG/zb/8A==
X-Received: by 2002:a50:b399:: with SMTP id
	s25-v6mr284740edd.217.1537551011422; 
	Fri, 21 Sep 2018 10:30:11 -0700 (PDT)
Received: from [172.16.100.122] ([213.168.66.146])
	by smtp.gmail.com with ESMTPSA id
	a19-v6sm3078995edd.69.2018.09.21.10.30.09
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Sep 2018 10:30:10 -0700 (PDT)
To: yocto@yoctoproject.org
From: Matthias Schoepfer <matthias.schoepfer@googlemail.com>
Message-ID: <4a16a305-d09d-486a-4371-81388e62f1ff@googlemail.com>
Date: Fri, 21 Sep 2018 19:29:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
Subject: remove unneeded files from update-alternatives packages
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
X-List-Received-Date: Fri, 21 Sep 2018 17:30:13 -0000
X-Groupsio-MsgNum: 42564
Content-Type: multipart/mixed; boundary="------------509789C5AB10433C4FBAB1CE"
Content-Language: en-US

--------------509789C5AB10433C4FBAB1CE
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi!

In my case, I am using coreutils and busybox. But I only need one
program of coreutils. Now, I have plenty binaries with .coreutils
installed in my image, which bloats the image (every byte counts ;) ).
Its a read-only-image, update-alternatives or package management is not
used. Is there a better way to remove the unneeded files then manually
removing them in a ROOTFS_POSTPROCESS_COMMAND?!

Thanks and Regards,

=C2=A0=C2=A0=C2=A0 Matthias


--------------509789C5AB10433C4FBAB1CE
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

--------------509789C5AB10433C4FBAB1CE--
