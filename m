Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B86CE0034B; Mon, 10 Aug 2015 02:54:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05554E00306
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 02:54:19 -0700 (PDT)
Received: by qkdv3 with SMTP id v3so56167187qkd.3
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 02:54:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=olXBC7laPtGq3Ofr0m0wrfwu4Xb8l+UNtzpIQFWx5ds=;
	b=id7lTbQwQjsuRLgHNzHaWr8CdF+P0TkZN202PZqteDYfN95x7Rgm76O/tYHxKMsHa0
	Ky+66Jc0L8rMZLIV2w9L8y9agDYguKvZt7FJtrX1hJnw8w3MOmduBlqywLZV87/d+Bte
	K/Q2tS88KTXA4XIKCNFV1iyjQvnMpytIsk1lOz79LUuFtyNOdfcQd+Q5LK6SBl1e3lYI
	bAkeDU+tRVjTxHguKhwpKPF/QmUwC+iyalpyksmVtx+QV7gntM1JMjHW07Orz6duaTDR
	win4k24I6skBjAcPorzXERD/2uYZIcvRoUJmneRYAIvTg5CdJzIc7ekGijEAXhbiiXpf
	rBmw==
X-Gm-Message-State: ALoCoQnVMpdKaBOVNjNtmCxBNDV8dblYLSwV3COGCH7YEdTz29cVlu6l0OBaOz9o0YV1BpcCQwxp
X-Received: by 10.55.22.200 with SMTP id 69mr36311111qkw.29.1439200458872;
	Mon, 10 Aug 2015 02:54:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.98.67 with HTTP; Mon, 10 Aug 2015 02:53:59 -0700 (PDT)
In-Reply-To: <CAPzboycMBBs_d+06jX+CWCZ_9yaxvEbPOBzQrxDu6i3cEOgsLA@mail.gmail.com>
References: <CAPzboycMBBs_d+06jX+CWCZ_9yaxvEbPOBzQrxDu6i3cEOgsLA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 10 Aug 2015 10:53:59 +0100
Message-ID: <CAJTo0LYVMnYUkLoGm=CxkzSJjSwXYM-5JCODZXXmjmDBwP973A@mail.gmail.com>
To: Adam Rossi <ac.rossi@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: autotools --prefix ignored?
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
X-List-Received-Date: Mon, 10 Aug 2015 09:54:23 -0000
Content-Type: multipart/alternative; boundary=001a114952741cacd2051cf1f8b8

--001a114952741cacd2051cf1f8b8
Content-Type: text/plain; charset=UTF-8

On 7 August 2015 at 15:28, Adam Rossi <ac.rossi@gmail.com> wrote:

> inherit autotools
> EXTRA_OECONF = "--prefix=${D}/opt/myfolder"
>
> The above is ignored, auto tools puts the results in /usr/bin
>

Autotools already passes --prefix so you should probably just set prefix in
the recipe instead.  Also don't use ${D}.

inherit autotools
prefix=/opt/myfolder

Ross

--001a114952741cacd2051cf1f8b8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 August 2015 at 15:28, Adam Rossi <span dir=3D"ltr">&lt;<a href=3D"mail=
to:ac.rossi@gmail.com" target=3D"_blank">ac.rossi@gmail.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div id=3D":6sd" class=3D"a3s" sty=
le=3D"overflow:hidden">inherit autotools<br>
EXTRA_OECONF =3D &quot;--prefix=3D${D}/opt/myfolder&quot;<br>
<br>
The above is ignored, auto tools puts the results in /usr/bin</div></blockq=
uote></div><br>Autotools already passes --prefix so you should probably jus=
t set prefix in the recipe instead.=C2=A0 Also don&#39;t use ${D}.</div><di=
v class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">inherit autoto=
ols</div><div class=3D"gmail_extra">prefix=3D/opt/myfolder</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a114952741cacd2051cf1f8b8--
