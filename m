Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D79FBE00D48; Tue,  4 Jun 2019 14:34:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
	[209.85.160.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43EF7E00C7D
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2019 14:34:28 -0700 (PDT)
Received: by mail-qt1-f196.google.com with SMTP id s15so15616223qtk.9
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2019 14:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=3tAiXUtWNSxqV3w7d/36j0cD/2y/egaXe3NQiCe/8d4=;
	b=hzuU9VUgsMnokLIOn0XNaKkiqV+OAUwxFS67fQE+t3N0UhyNWSOJR8j//dT6rbE1NG
	/17Elcpq3ciroiy22OckyTkr9Zm+X4QDc3bCMykWMqpXtjhGvjwQEJkeWHcUpgb87Onu
	rWnPBqY+uUkcVKt0OW0KarJBkwTCLM5WgsNgrMx8Q/9GEuqbo67f2zTnSwfd0XB4XD5V
	Og0d0wp6XCAbvYznXlak5uBE057HPXkKxnxZG1oYi5Hh01pKMchy+Cmj9nkuxbkJJUmE
	gOPPD3OLN3iVCiK7W5c6a+X8Igp+zFn+AB0BaLOpV/ujLnem6WAOHvTD6zCvx9JwsOV8
	8fcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=3tAiXUtWNSxqV3w7d/36j0cD/2y/egaXe3NQiCe/8d4=;
	b=LtnpBXC/ycBH2Jy2XLQCoKD1hgB0hmvNEMPjGNR78XSV+gYCsUc26QEeA8Y2ubsuAz
	k8vUMlXOH2OIBbjrC5uq1soM+pJ5/ZvxII8ZN2/I0hIfTgnsirHduZsQA+BCJXHReyYC
	BliOnYQnBUaN656Zes6a6XxfSfrnj0m9/OePhOAsITnsocuL7kMB+SDuqbePAlT1rNyX
	C2GUvGdeTwCQ5H6HDov57RHv00HTDO78U3v0MuHOgskAcIGCX730182iy7pQOblquzIG
	JcfBkGRzo4ZzOMtI3T/GpakksTDTvRkSZr7GOnNvDARq09cy061TKzibrjPmHeGfabCd
	pthw==
X-Gm-Message-State: APjAAAVEzztac0zgBA5UPUhdthMOrCFBdn8TwiStlMq7clgA/SafJ0Se
	7E2F53+eP1bZ8THv45E1qI+chaA3Sm/+3ZP6OSZCQglj
X-Google-Smtp-Source: APXvYqwleAUqWjAuNoODIsgkcE/DWUZPLju158jqou7ZMtYh5w/aAGaf0MfF7VgaZ9XKG/Fmileb/PLYI99c1O6LSHA=
X-Received: by 2002:ac8:2fce:: with SMTP id m14mr10835414qta.22.1559684066072; 
	Tue, 04 Jun 2019 14:34:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8Lxb88uf_zw0Hzkc74zSD3GG4zQh-UwzQmBhMTLCxqRd5Q@mail.gmail.com>
	<20190603190711.GB24026@archworkstation>
In-Reply-To: <20190603190711.GB24026@archworkstation>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 4 Jun 2019 23:34:15 +0200
Message-ID: <CAGAf8LxXdZADK+ScSXLr1Ov-xAY24YsS2nZ-1-SpSKDbS3cBHw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>, morne@linux.com
Subject: Potential (?) systemd YOCTO problems
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
X-List-Received-Date: Tue, 04 Jun 2019 21:34:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> I would have a look at the values of
> DISTRO_FEATURES_BACKFILL_CONSIDERED as well as
> VIRTUAL-RUNTIME_initscripts.
>
> My understanding is that if the former is set to
> "sysvinit", it causes any redundant SysVinit
> scripts to be removed, and further, that if the
> latter is set to "", then all initscripts are
> removed from the image altogether.

I would like to thank you for the advice. I tried several combinations
without any success, and at the end I came up exactly what you have
suggested to me.

Local.conf looks something like this:
https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/experimental/lo=
cal.conf_core-tools-profile

And the latest changes committed which I have tried following your
suggestion are:
https://github.com/ZoranStojsavljevic/bbb-yocto/commit/83c22e8ec516020206dc=
1b34e93276cca8f3f16b

I need to do more tests... But seems that initial tests show that all
scripts are in place, and systemd is used.

This also should be much better documented somewhere in YOCTO
documentation. My best guess (I did not find it anywhere in the
manuals, maybe I missed the paragraph - please, advice where it is?).

Thank you again,
Zoran
_______

On Mon, Jun 3, 2019 at 9:07 PM Morn=C3=A9 Lamprecht <morne@linux.com> wrote=
:
>
> On Mon, Jun 03, 2019 at 07:38:47PM +0200, Zoran Stojsavljevic wrote:
> >Still. I expected to see the following on the
> >target (my BBB): /etc/init.d/networking script,
>
> I would have a look at the values of
> DISTRO_FEATURES_BACKFILL_CONSIDERED as well as
> VIRTUAL-RUNTIME_initscripts.
>
> My understanding is that if the former is set to
> "sysvinit", it causes any redundant SysVinit
> scripts to be removed, and further, that if the
> latter is set to "", then all initscripts are
> removed from the image altogether.
>
>                 - Morn=C3=A9
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

