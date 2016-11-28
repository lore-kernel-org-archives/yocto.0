Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34B25E00C41; Mon, 28 Nov 2016 15:20:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81F6AE00C2D
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 15:20:18 -0800 (PST)
Received: by mail-pf0-f193.google.com with SMTP id c4so7085718pfb.3
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 15:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=2tMrxYYfJb4axMj2dpa5aOVUiXfqasO7oplBbD1Io5U=;
	b=n6/AqHQ+YBXM7fLBmYA0AAJc11f4wBlcMMbqLT+f+mBouYyuxLfcKEXpcqJMPMUYWz
	pN4hEtdEwyskBfgcn4S1toWfDl+W+MeGcXxjiSJsgaOIaW926xJQTb0JIvx9MGwHZ4JT
	RXUa2I45Yh9q6El4QzYWq1XyiwwVb6H6FEYcQ01pV3pbipbbSZxVSYNg0qc4iyx2+Ah5
	2PUmwzW5cW95jjyz3dsKpuUUzFGY9bvbefoYU9xA7nIjtL+VV3T3+IAu3rsa13n2shKe
	LjpfWCgdLy2VrAJ9uxxOdVdgZrNtRpugrm3kuwYp4oZ87N/UEfp6MAuyKT4HrHuBwDMp
	Hkvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=2tMrxYYfJb4axMj2dpa5aOVUiXfqasO7oplBbD1Io5U=;
	b=hZh3AmkBycGg2S75V4AzNsxGyNXpuGU5R6aZq/L/KNgLU1OzNGzANNuAJaAaHx+O0t
	sumYqlTciUOGk/b2o78+zkate29mljG6ARiKI2hnbjNxXwgEW1wYUQD2dZDNzFgSU/K+
	pQAF31x3wnzg6hjQxAXSG9JZOVGkMbDiNT12LEePpB8XstqXycL6YYYETfaCbPY5igSa
	lBzKLfV2ghcHFxErKI5aZ/VwO9uQqvRue41NjjGUGkLpaRakoba8NHDoG5BlIapwByEv
	rPguz+g5qYq1qGJR/l/MG3mcOJoTIHNrt9akXY5/ntHt6GK5aTR3Psi/wBi0JQ/t57j5
	O3Eg==
X-Gm-Message-State: AKaTC018/SWhSDRp4SVNIfWAKwvVukHnf2WIPARHtHieYqADjBA/8ek/s11kFUTx/leeCg==
X-Received: by 10.84.136.164 with SMTP id 33mr55060065pll.148.1480375218438;
	Mon, 28 Nov 2016 15:20:18 -0800 (PST)
Received: from ?IPv6:2601:646:8882:b8c:f08c:19b4:e718:7b0b?
	([2601:646:8882:b8c:f08c:19b4:e718:7b0b])
	by smtp.gmail.com with ESMTPSA id
	p64sm89665385pfi.88.2016.11.28.15.20.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 28 Nov 2016 15:20:17 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20161128164638.13097-1-twoerner@gmail.com>
Date: Mon, 28 Nov 2016 15:20:16 -0800
Message-Id: <4BAF2383-AAC7-4F51-9B0D-D0152B8E1310@gmail.com>
References: <20161128164638.13097-1-twoerner@gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Mailer: Apple Mail (2.3251)
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
X-List-Received-Date: Mon, 28 Nov 2016 23:20:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I have a similar patch in my layer. This looks ok too

> On Nov 28, 2016, at 8:46 AM, Trevor Woerner <twoerner@gmail.com> =
wrote:
>=20
> The rpi-4.8.y branch of git://github.com/raspberrypi/linux.git was =
rebased,
> losing any previous commit hashes. This latest update doesn't include =
the
> raspberry pi patches for 4.8.6, but the upstream patches are included =
starting
> with 4.8.11.
>=20
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
> recipes-kernel/linux/linux-raspberrypi_4.8.bb | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb =
b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
> index 4664249..504fb6a 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
> @@ -1,8 +1,8 @@
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
>=20
> -LINUX_VERSION ?=3D "4.8.6"
> +LINUX_VERSION ?=3D "4.8.11"
>=20
> -SRCREV =3D "6abac13566786086cd912d87e4f1a922e2a391b2"
> +SRCREV =3D "429efdba18a1201043eacc15c42f989253fbd68b"
> SRC_URI =3D =
"git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-4.8.y =
\
> "
> require linux-raspberrypi.inc
> --=20
> 2.10.2
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


