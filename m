Return-Path: <v.intelegator@sirinsoftware.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAFBFE00DFA; Tue,  9 Jan 2018 07:55:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42F09E00DB6
	for <yocto@yoctoproject.org>; Tue,  9 Jan 2018 07:54:59 -0800 (PST)
Received: by mail-lf0-f54.google.com with SMTP id h137so16453364lfe.8
	for <yocto@yoctoproject.org>; Tue, 09 Jan 2018 07:54:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sirinsoftware-com.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mime-version:content-disposition
	:user-agent; bh=D7geiOr7TimS42UwkooHX9PkuRfEIuKhqubKrXcWLm4=;
	b=qXg6jokptTv0UDTfGfDd7og6tLS5zUNWft/6dXgfmpRzfGxR//RcdjnNdF7haqsEjy
	UAa7cIVXoUpc4Ts415LTIIWbtLW7f5dna196hLl1WvuKLQIMJGpPtfH1+2zd3YeXSa6K
	etr4J0fDBf/oaxRgJ5VZ8CVj1mQygv0mm/S5ybgG2MhS4nvrtnbEvB9uG0R9aI9kXya0
	X/wtUERuKtc1Spwc7xilD4DCsgcbYiMnrVx+3ujuwbFbwT/mb1/UYvpoHQzod1UR+L0q
	yTMLP2aLWYASuhP7YW4PXFTtP6PorNX53Cdz9lxYHhc3cixCRbUwatZidIljjWyGjk+G
	PqvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version
	:content-disposition:user-agent;
	bh=D7geiOr7TimS42UwkooHX9PkuRfEIuKhqubKrXcWLm4=;
	b=gfmmwG6Byt6gvqnbhxDwrktaehm+CSzNJGfeQYuWbAO5/cuuo2kB5nro2i2pH6lQM6
	gDXXMifLeH1WIkYNQ7Mk1uBA9u9Vs0ONc2Hk3GqJegHCZSptQnG7Jsh9lT+zi9h03Opd
	ridqPrFPXmsJxaE1g8dR9LEWoPWziQiIZJS48Cqthn49MLIL6oNv3ucOWHZcqe6q3WBG
	lrIAhLq3e9yy83gEfTr+WOmPw2Cb5w7nB6+JdR3Oc8bKbDIwSjYUF5RDx+VCoQ3DS/Yo
	6BO1BxQeuaUc1qHA/Cfy8dhvFOCl++PEeqz5QJUpEeCqL5UkBej0bDhcuTLh+m2SqHyV
	nZ5Q==
X-Gm-Message-State: AKwxytcE09MPs6Z3OF9q6Lire26nIKcDqWp+XRdB97Ewk6zNXtL/zwEP
	WjqZdD2jogpHobxpvvy40trxxLNR
X-Google-Smtp-Source: ACJfBoudJlCebXKjCTHCIkyVpzasnvbx6bXoRk/LnGCMWAgdUnyvOtKpm2j8GhN9uk8FAthgckHDGQ==
X-Received: by 10.25.84.197 with SMTP id b66mr1113316lfl.18.1515513298826;
	Tue, 09 Jan 2018 07:54:58 -0800 (PST)
Received: from localhost ([5.53.119.222]) by smtp.gmail.com with ESMTPSA id
	d80sm2868131ljd.51.2018.01.09.07.54.57 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 09 Jan 2018 07:54:57 -0800 (PST)
Date: Tue, 9 Jan 2018 17:54:56 +0200
From: Vadim Intelegator <v.intelegator@sirinsoftware.com>
To: yocto@yoctoproject.org
Message-ID: <20180109155456.GA19053@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.9.1 (2017-09-22)
X-Mailman-Approved-At: Thu, 11 Jan 2018 09:16:41 -0800
Subject: applying patches depending on the image's name
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
X-List-Received-Date: Tue, 09 Jan 2018 15:55:01 -0000
X-Groupsio-MsgNum: 39498
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZGiS0Q5IWpPtfppv"
Content-Disposition: inline

--ZGiS0Q5IWpPtfppv
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

I have several images (image-a.bb and image-b.bb) in a yocto layer and want=
 to apply different patches to the kernel depending on the current image na=
me.
How can that be done?

Thank you in advance.

--=20
Vadim

--ZGiS0Q5IWpPtfppv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEiiEJ6bHIPfekiaTOdWe+bASZb4sFAlpU5c8ACgkQdWe+bASZ
b4tdFQ//etxx9cY1zqpS3ApguwBBsg0Zb0zSEUDw4to7WjqRH8IsInuKbd++a9d+
fbkdDizCNYSXy2Imt3QG0GetsILuUPTGIR2hK3YHWj415c//4zHyupkNUsGcOMgf
b2n1B7dIRfty8YtplJYKRl38DHYDk4GjmfM11LpyFiAA0q4X4Lq4Txc/esdsX8sx
GgrqoVUeXW7fivhLiyxowneXMaTL1sBD+Wy4NogICT87LPCtT1KdJijaBafWjS57
FExlh46zYApxFanwXQOHY2pUQvm+dpuNHEPjD18KsqXctTabV9WkdTrS+Qy+sbs2
QgWa6fy2sMZRr9m1gL6bFAMypsDvKtQligRX62uFLc30x/lbMhPaikUk9MwEgkmB
pVWBK8PubPPna4iRBOoZcHjT659+h9jAgJOzkFU+A20Tw8YDIOfvls2xA6ieO/Rd
VIl5ILw2y6FOjQ5zWpff7Ny3qp6YTmpkrCkTBvLXa1jDM2Ukmpopo74NDkJf8Wyb
E06xxk6N8eLet6PL3e/SZuN9u/RJJRHgsnijNmBWNQD5/dQfWAZdKQYW3oR8zLvh
5PtIxpKvqW5wh7MygkDqMoKw7H7b4GZeUN6/wXc3gOospcivusfOg+FhEM4HhRNQ
o8TH3IT6U6y54n5OIPxt7XIDaNNIkhzqPlAdX7v092Qv8BhC+BA=
=aUze
-----END PGP SIGNATURE-----

--ZGiS0Q5IWpPtfppv--
