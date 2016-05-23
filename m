Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 824ACE00E49; Mon, 23 May 2016 02:21:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57DEFE00E21
	for <yocto@yoctoproject.org>; Mon, 23 May 2016 02:21:13 -0700 (PDT)
Received: by mail-it0-f43.google.com with SMTP id e62so26929273ita.1
	for <yocto@yoctoproject.org>; Mon, 23 May 2016 02:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=bLW8cLLN52SYNtSpp8fMkD68NhfJe5yBbVrzWr1J0BA=;
	b=2OUTdHsIsAyyS3To0mMe4n02mqigEqPBRifJz23qKH27YFTFz7YlZDtvbDv2Z9Gkfw
	xwkrdN6cAflqZo9FdRA5aeGeCMaHPgNMnrZBti3G7W8whT/4ftWAb71IDP4SpN6DVRCg
	NqF3ScVfD/Un35O3qirrm3/ndXyQU5q8QDPZcyP3w58TrqemZgs9JsCC1Y/u3AMKZuRl
	S0Yso+2kE/Fc6T5DNixuNSErLYsuPJwP0pqXODYIgZY4hvzaZHB9Hfz4qAUj+tDCF0kv
	zr6Tgf/1Zxczz0Ubh+GOzmk7k37oCqpqHIKz78dxJZK2EXaMe4RS1aZNJWctJI5PZJ8U
	AORg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=bLW8cLLN52SYNtSpp8fMkD68NhfJe5yBbVrzWr1J0BA=;
	b=AWDVXG5glWUSVEv0SWLD5Eye5kiIH958AenyUZgO/g1mUY5NIU8Hw6HgfzlBH7C96U
	xgYyQcedpvB5XyU5xlIIYzym4SZVD3JFW89wWv9aKIYxR2j/oJwvY4Mz1PnDo1ezP95m
	iUKdfWvc6Fy3HJuavJBDDXLf/eXas3HftN5tCQ+QkcYSFclaC2xnmvBseUbZxEKKlCWG
	IANmgwt9M/++hBMgT5YHW4rl3TwdaO10/oT+70qFd80xjel2uyk4XuRIX+iC0B7zfZ0q
	LWJEOEONkcRgMohDlj0xNa/BVHUpCmbidpaGJZhjiD6G5aTHmzQH0+0s5BLg50P9sFEA
	onqw==
X-Gm-Message-State: AOPr4FUkBSCCGVX0hH9VI2W3e7mvjtqBwXOI0GjLppcrfhqws7qNRJRq+ccoeUufs3HLd7Yes2ObQA16B5uBp/u3
X-Received: by 10.36.57.211 with SMTP id l202mr12048349ita.22.1463995273088;
	Mon, 23 May 2016 02:21:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Mon, 23 May 2016 02:20:53 -0700 (PDT)
In-Reply-To: <BLU171-W28EBFEE16CCBA0BB11F9CFC84D0@phx.gbl>
References: <BLU171-W1085648A84ED37DD927FDC3C84C0@phx.gbl>
	<CAJTo0LZ_PzKa8BMNvYmYtNa8ddO-PY0DLgjQcOTqnqaRrZiQaw@mail.gmail.com>
	<BLU171-W28EBFEE16CCBA0BB11F9CFC84D0@phx.gbl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 May 2016 10:20:53 +0100
Message-ID: <CAJTo0LZawADfHxD4A93KiP+mB5ZzSe+mVf7zYruzosEgVFo+Jw@mail.gmail.com>
To: Bjorn Sorensen <bsoren@hotmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: populate_sysroot error, need SSTATE_DUPWHITELIST variable. How?
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
X-List-Received-Date: Mon, 23 May 2016 09:21:17 -0000
Content-Type: multipart/alternative; boundary=001a114ab3ca34baf005337ef62d

--001a114ab3ca34baf005337ef62d
Content-Type: text/plain; charset=UTF-8

On 22 May 2016 at 22:19, Bjorn Sorensen <bsoren@hotmail.com> wrote:

> Its the other way around, actually libftdi builds eeprom. I am still a
> newbie with Yocto and dont have the knowledge to manipulate the builds from
> the recipe like you suggested.
> Although I managed the workaround by adding the SSTATE_DUPWHITELIST
> variable to the recipe and list the conflicting files in the list.
> it all worked out!
>

Did it work on the target?  You've now got two target packages that contain
the same files, so you'll have to be careful that they don't get installed
at the same time, or diverge.  If libftdi builds eeprom, then why do you
need another recipe for ftdi-eeprom?

It really would be best to fix the packaging, instead of working around
broken packaging with SSTATE_DUPWHITELIST.

Ross

--001a114ab3ca34baf005337ef62d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 22 May 2016 at 22:19, Bjorn Sorensen <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:bsoren@hotmail.com" target=3D"_blank">bsoren@hotmail.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Its the other w=
ay around, actually libftdi builds eeprom. I am still a newbie with Yocto a=
nd dont have the knowledge to manipulate the builds from the recipe like yo=
u suggested.=C2=A0<div>Although I managed the workaround by adding the SSTA=
TE_DUPWHITELIST variable to the recipe and list the conflicting files in th=
e list.<div>it all worked out!</div><div></div></div></div></blockquote></d=
iv><br>Did it work on the target?=C2=A0 You&#39;ve now got two target packa=
ges that contain the same files, so you&#39;ll have to be careful that they=
 don&#39;t get installed at the same time, or diverge.=C2=A0 If libftdi bui=
lds eeprom, then why do you need another recipe for ftdi-eeprom?</div><div =
class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">It really would =
be best to fix the packaging, instead of working around broken packaging wi=
th SSTATE_DUPWHITELIST.</div><div class=3D"gmail_extra"><br></div><div clas=
s=3D"gmail_extra">Ross</div></div>

--001a114ab3ca34baf005337ef62d--
