Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57695E00BAF; Fri, 23 Jun 2017 06:42:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA30BE00B53
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 06:42:34 -0700 (PDT)
Received: by mail-lf0-f54.google.com with SMTP id h22so30638152lfk.3
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 06:42:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=n3fWIVbxiat+l8sF2uwdvHCGZrSiZQIf0Cezuysi3hc=;
	b=lfbGsiF0/8DTfugf+jYw/+/Ns5ufR6GJeLXu3F+yKqYZ96UTD31OFFmtXI07zjGdyt
	E1sgye2TjmZ6s/SfI2jSBwPdiu/lh3xf+p2Dya90M3C6kTERMF1CjDDSZsZIB8Ja9REk
	Y5HrVIRnQwv99viB86JzuhoqT5uXp0YyVqpaJxAoI8oiMJ7iA2/wIkALnEqO+Wl2UvyU
	NYAd96xBUn1yr6ce4LqaF5amvg0rtA++ycRk1xCdDToluaDJAokDBMEgOfC7o8r2MUeI
	aeQLVOD7dWKT8I3+dlb0EQGjKbWYzZd9jTsHvBp2PI9d6AOBIf3YeRqhOegGUYKujQjh
	tGiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=n3fWIVbxiat+l8sF2uwdvHCGZrSiZQIf0Cezuysi3hc=;
	b=Umx8h0Q8R/Afy2P6Lm7ZL8Kc51ujVqyghUOuCoh52I5EAcJfzFUHpi67UkLdXH3dC3
	4JYFFtGgpmAhgf1Ifg3ueDYLDa4aqLAVsuNhG29Vxb5QkhW3unbX2mJgs48CuPwgdySf
	PGN4U5rWV67FiyMM+lvwRMOH9f6eOL2iCIcN0XOPB4s5+5x3GesmQDJsdUrSCH1c/QRs
	3wNcc0taqSD4uuXFPcVshac122xoKONs943YFwAH8ccroLZ2iVsBXsAJruLx+td48AS+
	rZbLqIfBGM1b+m2Qq1znPaZdnQnXD+ATQdQOwA01SZwWAksIQBBGC3noefGE/MWBdDTH
	Wl5Q==
X-Gm-Message-State: AKS2vOzAnbl4KMf7XV3LAssUBAm7gQtV6mPmU4B6Uylcx+nyqWW3pBOw
	zZHCYMh0rZ1FzHW61YeDe7u3HX9Nvw==
X-Received: by 10.80.180.188 with SMTP id w57mr6181844edd.42.1498225353549;
	Fri, 23 Jun 2017 06:42:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.165.198 with HTTP; Fri, 23 Jun 2017 06:42:03 -0700 (PDT)
In-Reply-To: <fe34f976-648e-7fbc-c190-a5fb0829552f@gmail.com>
References: <fe34f976-648e-7fbc-c190-a5fb0829552f@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 23 Jun 2017 06:42:03 -0700
Message-ID: <CAMKF1sq0XX0ahRiG34oi9LwiDCZL83Oxf4sbkwmd5XL1n66jWw@mail.gmail.com>
To: Riko Ho <antonius.riko@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: internet radio
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
X-List-Received-Date: Fri, 23 Jun 2017 13:42:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 23, 2017 at 1:18 AM, Riko Ho <antonius.riko@gmail.com> wrote:
> Hello everyone,
>
> What do you suggest me using for internet radio / playing multimedia on G=
UI
> ? Which recipe is suitable for it ?
>

may be you could use mplayer or kodi

> Thanks
>
> --
>
> /*******/
> Sent by Ubuntu LTS 16.04,
> =E8=B0=A2=E8=B0=A2,
> Regards,
> Riko Ho
> /*******/
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

