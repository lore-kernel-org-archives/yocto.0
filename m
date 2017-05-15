Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20477E00911; Mon, 15 May 2017 04:49:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.179 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.179 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f179.google.com (mail-qt0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 977ABE003E1
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 04:48:59 -0700 (PDT)
Received: by mail-qt0-f179.google.com with SMTP id f55so41299254qta.3
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 04:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=tYjHdNFpaF4nBywK81FLq81GFcpF4I/nVD26yqWraG8=;
	b=ML20cP97RSqDxNsDstqyu69hLZ1XbBDzeACe08IzDQabYOint9LwVOl0AOa2cEpgyQ
	DDhMDMWrWzB4G6QGZxb9az8j9UuhhHZTJ/L0Yv7HO5xrx554rtriPiT3zleBqkgJphZR
	shucVYdcXUW3jAzIp/x40ntwMEcGF+TJ+g+DuGRck7Ox/mZ+D7rQjtxYz6QF1AoDmJGW
	T7HEf41JLED53KUZmOPFBJMkp2emsqBgu1EHwinXNk+WynukSKN7UhaSJxV0qyq3rZRM
	RkjmsFbpVNrCStjO11s6bc+hIePqfJLEmPiw2guOmkcprkKmWT+jMMkhnc3oi2Z/O9Hw
	AzBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=tYjHdNFpaF4nBywK81FLq81GFcpF4I/nVD26yqWraG8=;
	b=TYFOPVi+GSfztaBsfs5EElwwFG6h7Qti2N18K0ZAGsg4pKJMZG1ZbW00S4GnnyBlaX
	fztSb2q7mZ6K1cpY8oosdNN2GMtB5wv8Az9zlvoGHP5aIv9pfWPxi/NYcUDl+CbxiIQj
	Ok6O6pWUQee6t4ZvJt+3UbbZWcJS053Ve7PeZAWe0HtbwyyjGcY6/EqaaCJfDKrr24zz
	M0bk8rU2E9mkCNzsvlsioC1BQFf9avOodOflk7XWLNoem7TaK/gh1q2sRIluk+vPF1wr
	5LH8v9wTYY1P/7acj7g4LpTTLRqcQhW1hnLtlot0CS4IXnj+EhFBWBmYAZIQKAYSlR/b
	iicg==
X-Gm-Message-State: AODbwcAClDzQNbi/sjUqFNbKsndTsUhEcZC74539P4O+tz31qgLOpQEv
	oJXEpjnMtrgxu8Zvmm1sSy3wpEDsFIII
X-Received: by 10.200.50.49 with SMTP id x46mr5279005qta.105.1494848938524;
	Mon, 15 May 2017 04:48:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.136 with HTTP; Mon, 15 May 2017 04:48:38 -0700 (PDT)
In-Reply-To: <CAFq4t4jFTyB7pn4nrcMp+ffix20tk0LB7GtfsCsKQ=05sE_UhA@mail.gmail.com>
References: <CAFq4t4jFTyB7pn4nrcMp+ffix20tk0LB7GtfsCsKQ=05sE_UhA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 15 May 2017 12:48:38 +0100
Message-ID: <CAJTo0Lan3pejMnNR9=sUnAaifPaHRtsfi1PFcFm__P7Sujr0dA@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: python-opencv module
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
X-List-Received-Date: Mon, 15 May 2017 11:49:01 -0000
Content-Type: multipart/alternative; boundary="001a113577a2f9e800054f8ea329"

--001a113577a2f9e800054f8ea329
Content-Type: text/plain; charset="UTF-8"

On 13 May 2017 at 12:24, Peter Balazovic <balazovic.peter@gmail.com> wrote:

> How do I include python-opencv module?
>

http://www.yoctoproject.org/docs/2.3/dev-manual/dev-manual.html#usingpoky-extend-customimage

Ross

--001a113577a2f9e800054f8ea329
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 May 2017 at 12:24, Peter Balazovic <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:balazovic.peter@gmail.com" target=3D"_blank">balazovic.peter@gmail.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-le=
ft-color:rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><div>How =
do I include python-opencv module?=C2=A0<br></div></div></div>
</blockquote></div><br><a href=3D"http://www.yoctoproject.org/docs/2.3/dev-=
manual/dev-manual.html#usingpoky-extend-customimage">http://www.yoctoprojec=
t.org/docs/2.3/dev-manual/dev-manual.html#usingpoky-extend-customimage</a><=
br></div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ro=
ss</div></div>

--001a113577a2f9e800054f8ea329--
