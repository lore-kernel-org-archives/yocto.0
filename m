Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 287ECE00D33; Sun,  2 Jun 2019 23:42:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4591AE00C7D
	for <yocto@yoctoproject.org>; Sun,  2 Jun 2019 23:42:19 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id 16so5427008wmg.5
	for <yocto@yoctoproject.org>; Sun, 02 Jun 2019 23:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=eaNTGnyU+1u3aCbOc0mXZjuSTke36SUYoS3doz27k5A=;
	b=UK2w39Ca5suxEuswE7BzaaslFrEDHl1eCWxPm+Z21gKnNM70TePXQAtcUdLLzWOt+f
	e4TTkzjhl8ubxVwjJy+pkuAvBEqLsd5qnGTiKV/70cBiSQDfhkAnECiGs3Ij5+XoAbNJ
	lCjPBNwb2okiTxxrY0v0n2Oizm7cDDp7P4iTjFLt8sszl65PlGFGdkVAS8C8mMj+w1L5
	+GbWewhFIYcPV/IpE4f51bPgpCdCulpKiTlJEwUW3lt0/r/pzFRgeixn54w8e3jLTIZj
	KX6z357MNE2xSLQBCiR/6RVVQiRN7AzK0rTQbuL44zwfykC9Lm2Zd9awRYlW/Mm+w47P
	YA8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=eaNTGnyU+1u3aCbOc0mXZjuSTke36SUYoS3doz27k5A=;
	b=uZ6dDgmkSQV1F1UX5f8CpMG6YyZvOrgvDHLNTHuBunbcI6NUR1TbqxTXgnm39TXi7j
	KFV0x8tZhvia8kSQ+mBsYr9nO1ajr4VhSFNP+l12RWHTXNqNmST4S09eua3g+XKFKWSI
	vqskrlknTkZDNS6SfRh0ePtl/3IHpxTCLGwzvz3egwAGR9LVt3ZROh/Uarr3Nr5EDmKj
	uwNNLGz0NIU6KD4hDvirfphH0Ei2na5QKrWD97LZoYlsohuvXweb+Gtu9I28QKDCin60
	wEmyNy2oLY3nFsLmw7FuX31DVdQcJ+G2kGyx5PeAGE+esNO/v3rqO/SuSnB+PYhAdA4B
	GWvQ==
X-Gm-Message-State: APjAAAWUhbPs4wXiXKjCxZBmCbj2GxC83Ib2TTmIcTpRjBDACZEmvxRk
	HQ3eB3dU5JftNJvhxhbPTYhfuGpG4A55dNrBqNc=
X-Google-Smtp-Source: APXvYqyx3Vw2+lsuDfE+PFlV2bMMI596po6IYi+nohhEb1fsq/SVb5XfptNLyGyiaWpOITntzT8yqNGQWEuHduqw46w=
X-Received: by 2002:a05:600c:1:: with SMTP id g1mr1176527wmc.43.1559544138303; 
	Sun, 02 Jun 2019 23:42:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190601144016.GA19383@archworkstation>
	<CAAfyv35XN0SiU8PQ0ZL9tXSk52FxkCsOjuXoxYM35egNL6DTxw@mail.gmail.com>
	<20190601182556.GB19383@archworkstation>
In-Reply-To: <20190601182556.GB19383@archworkstation>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 3 Jun 2019 08:42:07 +0200
Message-ID: <CAAfyv37b6xSxKE=HYEUkDOQkTYPP_fom73bpf-k07-jT0p6kuQ@mail.gmail.com>
To: =?UTF-8?Q?Morn=C3=A9_Lamprecht?= <morne@linux.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: do_rootfs fails while attempting to install hostapd package
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
X-List-Received-Date: Mon, 03 Jun 2019 06:42:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 1, 2019 at 8:26 PM Morn=C3=A9 Lamprecht <morne@linux.com> wrote=
:
>
> >I would check run.do_rootfs and check it maybe
> >there will be some more info.
>
> I checked it based on your suggestion,
> unfortunately found no relevant info.
>
> >Do you have some custom extension for hostapd?
>
> No, just the standard package.
Which startup system do you use (sysVinit or systemd)?
You can take a look at poky/meta/classed/update-rc.d.bbclass which
checks various parameters and try to debug it (by adding some
printouts).
By my guess is that some misconfiguration between systemd/sysvinit
must cause this issue. Thanks.
>
>                 - Morn=C3=A9

BR,

marek

--=20
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

