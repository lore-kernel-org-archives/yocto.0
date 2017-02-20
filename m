Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69260E00A6B; Mon, 20 Feb 2017 08:34:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.179 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EE32E00A5C
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 08:34:00 -0800 (PST)
Received: by mail-qk0-f179.google.com with SMTP id p22so99836823qka.0
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 08:34:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/jPn8b33Nlr2wRswEo0gnda/1PcwNVcZNNaVqaZKP0Q=;
	b=w3+b5lATCV6Cha1k6+Ad8DhiN8OvK86BPR48AfHacogUloWusSea+GNJVYNJ0BHkZO
	Us2++VSRvH8X3Oe/GVOiqQy5fbnnwZdKMoIQ2+9dFonPH4aDGzkxzH5BUXTpSby/fxo7
	fz1kGYjfblIks5Tajy2+CROjhMzaNAxxDJMB7Sc0z9IchWKNY4owdK4iLPom3W06mBKs
	4GAa5C2GO+Wz5JC4JSxhenBsoEKy38gnIYFkgmy7KjM8rfBHugnt2nP7aQAsh6a6BAhH
	hGcdxoN7/x1f+lz1V/dawCaWhLkt2nvm00fH7qX24nrzCCjpDpFmqHqn+ySXTlc9dOsA
	wxFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/jPn8b33Nlr2wRswEo0gnda/1PcwNVcZNNaVqaZKP0Q=;
	b=Tb80pePG55D6NW71SM2yiBhk1WjlT9t41gxGDy9A5QB3Dyf/j/rny81RyU3kJLibDy
	dp6H6GzkJs+BLgdWj3fBXuOgJORhbRIvwMPsSzuKNnKT81mcnu6RdtHFV5/i0BxLo1EB
	x2GuYsjOOIxpubluEI1pxthonjvz+VgTq9CoarVqEh8Ro24UrzG5A64msOA6tkp7/IHX
	cjtgzs9KHpM6MorbrfKl/HM6b7VjeUHBRXWUvFD2g+GBNY/Odt5RaEWxp2LR1L+z13V3
	nZVlbVNz4oqBekeuPBxdZsj8anFxxEFW2rLvE0FeBpQJVwLlVb4iz5pcK06BJ+NfkV9V
	U5iQ==
X-Gm-Message-State: AMke39l+xeOZavK29Nq/cE9XJUUXJjWu3X5pwlfAbcNHUg0kwer78x2Lnd3r6/AOGAkHr+0Ess3wt5TkRDzp2O6/
X-Received: by 10.55.183.133 with SMTP id h127mr22739617qkf.121.1487608440027; 
	Mon, 20 Feb 2017 08:34:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Mon, 20 Feb 2017 08:33:39 -0800 (PST)
In-Reply-To: <CAF1M0z72cFVW61EkLqdSwPrRKO1AptMsntfxxEzo8Qy=ak79oQ@mail.gmail.com>
References: <CAF1M0z72cFVW61EkLqdSwPrRKO1AptMsntfxxEzo8Qy=ak79oQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 20 Feb 2017 16:33:39 +0000
Message-ID: <CAJTo0Lau5AyY33Y+cROUMR38uR_Msr5YSiGQtnd-Nscu-oe0nA@mail.gmail.com>
To: SatyaNarayana Sampangi <satya.2891@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem: Installation
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
X-List-Received-Date: Mon, 20 Feb 2017 16:34:03 -0000
Content-Type: multipart/alternative; boundary=94eb2c060056a21f070548f8d4db

--94eb2c060056a21f070548f8d4db
Content-Type: text/plain; charset=UTF-8

On 20 February 2017 at 16:30, SatyaNarayana Sampangi <satya.2891@gmail.com>
wrote:

>  14 SRC_URI = "file://hellosatya-1.0.tgz"
>  15
>  16 S = "${WORKDIR}"
>

What files are in the tgz, and where do they expand to?  The error says no
such file or directory, so presumably it didn't unpack helloprint.c into
the work directory.

Ross

--94eb2c060056a21f070548f8d4db
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 20 February 2017 at 16:30, SatyaNarayana Sampangi <span dir=3D"ltr">&lt;=
<a href=3D"mailto:satya.2891@gmail.com" target=3D"_blank">satya.2891@gmail.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>=C2=A014 S=
RC_URI =3D &quot;file://hellosatya-1.0.tgz&quot;<br>=C2=A015 <br>=C2=A016 S=
 =3D &quot;${WORKDIR}&quot;</div></blockquote></div><br>What files are in t=
he tgz, and where do they expand to?=C2=A0 The error says no such file or d=
irectory, so presumably it didn&#39;t unpack helloprint.c into the work dir=
ectory.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra=
">Ross</div></div>

--94eb2c060056a21f070548f8d4db--
