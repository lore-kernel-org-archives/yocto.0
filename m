Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE25CE008B4; Mon,  7 Mar 2016 13:45:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9468E0077F
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 13:45:25 -0800 (PST)
Received: by mail-wm0-f49.google.com with SMTP id n186so105618326wmn.1
	for <yocto@yoctoproject.org>; Mon, 07 Mar 2016 13:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1ZBTRDUuCrbtwpyyq1gZwFdg+Jzjm8Awi4Sb3dXNOeE=;
	b=EreytWBid5hOYQEsUmOA02IjQ1bLBNKp+WU6Rrk5aIy9tO5+CJNFTFzoIwsXI45qYy
	Hjqf+tYAkYmvGaihiC37OGqIaCCTB0B3FSywJK06UrctaMQyVgGZOypqZAO96hy1FBjX
	URZ+7zHFtgfs9oVN/H6lKhkc4m9fUBaZC0G/fZiQ3B7aqwksqQzR0mbV46XnUOvBG8Bb
	YhXHJPzjIhsdDGSXKL4NjNMoOiJi5GB/01BBUMwvOwpPtAId8mt6XcVg9aNIel+7PZT9
	WvusJeXUr7IZ25hRdA3ixwKdyp53jmbF4iQA3tbWFxAuSj0ubclUBhffSqaOirp+ozJl
	xa+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1ZBTRDUuCrbtwpyyq1gZwFdg+Jzjm8Awi4Sb3dXNOeE=;
	b=kqHbpTQuKZl4PoMolZ/OMPfx3WzeHfyoR4ZVUSZaPi4lw8Si+D4OaCfyY5+bqkx8Pd
	Ewx8N2UiExogtHIM//Ehb4OtfqN6ur8q2OHYbURxg2G4w4Cmp1WeGuRvSbSu6mrwhSh7
	qxxQIzBVMkvtt0X72y/3X9J+Fi46fWOCx/wfWXBmFFCGLRn6G4mEhqZ+/Hqmx2cEFTxQ
	5jeGZll2wIhqUXcG/7dN2CsbfQzqfz5aHATc2t8i055MhiGhTYVFxEXpTUfsrJdZQRs3
	q6QMtjRJT9GMyYb12nn6zo3Bfi7WlBClrxnDsBjBorPDDwcIU2AEK6PresVZXkfbYMqf
	TtYA==
X-Gm-Message-State: AD7BkJJecf6CKd3b3SuHiuUKXOLLnK2gm8HwP4d1/+O6FrwPPz4677jiUCb1l+eH6rq/Oi4gjoLWZsolGZCtQw==
X-Received: by 10.194.95.40 with SMTP id dh8mr27966425wjb.146.1457387124615;
	Mon, 07 Mar 2016 13:45:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.129.141 with HTTP; Mon, 7 Mar 2016 13:44:45 -0800 (PST)
X-Originating-IP: [109.100.140.128]
In-Reply-To: <zarafa.56dde040.2181.51baa63704937b48@pollux.e2eservices.co.uk>
References: <zarafa.56dde040.2181.51baa63704937b48@pollux.e2eservices.co.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 7 Mar 2016 22:44:45 +0100
Message-ID: <CAK18fxGGRAwrYYzKB1hudvCw4gB9imyeHURSbyUfObQQUuHK6Q@mail.gmail.com>
To: Alan Hughes <alanhughes@e2eservices.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Raspberry Pi 2 BSP build problem
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
X-List-Received-Date: Mon, 07 Mar 2016 21:45:26 -0000
Content-Type: multipart/alternative; boundary=047d7bea350edd2526052d7c612e

--047d7bea350edd2526052d7c612e
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 7, 2016 at 9:10 PM, Alan Hughes <alanhughes@e2eservices.co.uk>
wrote:

> I've been trying to build a BSP using Yocto 2.0 (Jethro) targetting a
> Raspberry Pi 2. Everything goes OK until we reach the point of building the
> "u-boot-rpi" package, at which point it blows up saying that it cannot find
> the file "linux/compiler-gcc5.h". I've looked on the web for any clues, but
> to date have not found anything relevent. If anyone has any suggestions I
> would be more than happy to try them out.
>
>
>
Hi Alan,

This is a known issue. Can you try to apply
https://github.com/resin-os/resin-via-arm/blob/master/layers/meta-resin-via-arm/recipes-bsp/u-boot/files/0001-uboot-support-gcc5.patch
and see if it fixes it?

--
Andrei Gherzan

--047d7bea350edd2526052d7c612e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On M=
on, Mar 7, 2016 at 9:10 PM, Alan Hughes <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:alanhughes@e2eservices.co.uk" target=3D"_blank">alanhughes@e2eservices=
.co.uk</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,20=
4,204);border-left-style:solid;padding-left:1ex"><u></u>

 =20
 =20
 =20
 =20

<div>
<p>I&#39;ve been trying to build a BSP using Yocto 2.0 (Jethro) targetting =
a Raspberry Pi 2. Everything goes OK until we reach the point of building t=
he &quot;u-boot-rpi&quot; package, at which point it blows up saying that i=
t cannot find the file &quot;linux/compiler-gcc5.h&quot;. I&#39;ve looked o=
n the web for any clues, but to date have not found anything relevent. If a=
nyone has any suggestions I would be more than happy to try them out.</p><p=
>=C2=A0</p></div></blockquote><div>Hi Alan,</div><div><br></div><div>This i=
s a known issue. Can you try to apply=C2=A0<a href=3D"https://github.com/re=
sin-os/resin-via-arm/blob/master/layers/meta-resin-via-arm/recipes-bsp/u-bo=
ot/files/0001-uboot-support-gcc5.patch">https://github.com/resin-os/resin-v=
ia-arm/blob/master/layers/meta-resin-via-arm/recipes-bsp/u-boot/files/0001-=
uboot-support-gcc5.patch</a> and see if it fixes it?=C2=A0</div><div><br></=
div><div><div class=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><=
div>--</div></div></div></div></div><div>Andrei Gherzan=C2=A0</div></div></=
div></div>

--047d7bea350edd2526052d7c612e--
