Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B75CCE00D97; Mon,  8 Feb 2016 08:14:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83D36E0086B
	for <yocto@yoctoproject.org>; Mon,  8 Feb 2016 08:14:52 -0800 (PST)
Received: by mail-io0-f178.google.com with SMTP id 9so200287226iom.1
	for <yocto@yoctoproject.org>; Mon, 08 Feb 2016 08:14:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=6t1U/kKJO0i6nHFXMAvi/1VusPpDLgmzoZf3l9y3+kE=;
	b=cn+DVMQINJbQKHJRnGpTHX8xn9p+rHN/Hy3/wONmdzas91fOy8hnxl/It7YoLbuF3t
	AVw4j8VRRKiq9prrst+SmgusBhzFbSI6yyf9Tc1KxD8pQ/gPLZhga3QCCducdwVlBvqI
	QDDYedPXiDR0XsL0zZfeAkGr3ohX/DxtKeoqupb8fJjRGyhyHUg44FUojekAERCkkU4o
	6AXltAotZPS47uDCRdCaY6ub6qC8k9z09NyY086/spToLFw/7UC+SVEHmdGUmGLqSFSl
	sFVBvysbfv6PtYWNGoFCTg5Gmgo9smygGGbMZHFftJ7+aW1qlH8KpNb0ouy71at4BE/3
	ioig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=6t1U/kKJO0i6nHFXMAvi/1VusPpDLgmzoZf3l9y3+kE=;
	b=kjVOUjJ8LAMvPHFTECpvs/ibR8QdvpcQ9ABjS+xXv21AKMKwy+gndwx4goTOMrsPJx
	TV6qPmHjCQlQuuYt2/wRTbHzjHk/C3ejd770JEZDrcEze06PdazllNOlcy5WRpYpmYEK
	gLmuONT7qMNW22Gk4fm5Y2GIvRJbFZ7MmkPpYw4/Wl/B7iqhIRxEJw8I9323hk8YecX8
	Ny9ENKMbkwN6u+RvqCFnDVaVsiJNwqi58fSW8B1wGdNb/pi/ukWoyMEWFcxrq0OTnf+N
	V1TaanW+Cayptm9yLWS3wvfhERwL0W8RKHMqvFtlTZvL3n3UssYzACrWVeHFnH8Z5TTW
	j0/g==
X-Gm-Message-State: AG10YORQC6QWHUVVurrzfFORIXU4cb8+c+glwFRGQcg7cYB6iCaJWzN1mYfrDetOpG4XLNVupZEkZUnpR/Hm/Vnx
X-Received: by 10.107.3.220 with SMTP id e89mr26471630ioi.99.1454948091680;
	Mon, 08 Feb 2016 08:14:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Mon, 8 Feb 2016 08:14:32 -0800 (PST)
In-Reply-To: <D3B58608AFC8B244BA0ACD53B2AE612598EEF622@vistrex4.vi.vector.int>
References: <D3B58608AFC8B244BA0ACD53B2AE612598EEF5C6@vistrex4.vi.vector.int>
	<D3B58608AFC8B244BA0ACD53B2AE612598EEF622@vistrex4.vi.vector.int>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 8 Feb 2016 16:14:32 +0000
Message-ID: <CAJTo0Lav44kxc8i-VDSEUrHdFAaC7kjrLG97w2pmOjw+TZvM0Q@mail.gmail.com>
To: "Baumann, Michael" <Michael.Baumann@vector.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to create a named_pipe in my image
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
X-List-Received-Date: Mon, 08 Feb 2016 16:14:56 -0000
Content-Type: multipart/alternative; boundary=001a113f0e7c2bf4b4052b44806e

--001a113f0e7c2bf4b4052b44806e
Content-Type: text/plain; charset=UTF-8

On 8 February 2016 at 16:12, Baumann, Michael <Michael.Baumann@vector.com>
wrote:

> Possibly it's because named pipes cannot be packed into an archive? If
> yes, how can I circumvent this?
>

It would be interesting to see what happens if you change PACKAGE_CLASSES
to use rpm instead of ipkg.  One workaround would be to create the fifo in
a postinst.

Ross

--001a113f0e7c2bf4b4052b44806e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 February 2016 at 16:12, Baumann, Michael <span dir=3D"ltr">&lt;<a href=
=3D"mailto:Michael.Baumann@vector.com" target=3D"_blank">Michael.Baumann@ve=
ctor.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=
=3D":mw6" class=3D"a3s" style=3D"overflow:hidden">Possibly it&#39;s because=
 named pipes cannot be packed into an archive? If yes, how can I circumvent=
 this?<br></div></blockquote></div><br>It would be interesting to see what =
happens if you change PACKAGE_CLASSES to use rpm instead of ipkg.=C2=A0 One=
 workaround would be to create the fifo in a postinst.</div><div class=3D"g=
mail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113f0e7c2bf4b4052b44806e--
