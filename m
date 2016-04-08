Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 480D8E00C1B; Fri,  8 Apr 2016 08:10:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_10_20,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.1 HTML_OBFUSCATE_10_20 BODY: Message is 10% to 20% HTML obfuscation
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68B60E00BB9
	for <yocto@yoctoproject.org>; Fri,  8 Apr 2016 08:10:44 -0700 (PDT)
Received: by mail-ig0-f177.google.com with SMTP id g8so18571035igr.0
	for <yocto@yoctoproject.org>; Fri, 08 Apr 2016 08:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7NAjy3zLuKRtyHfp3pF8+xfjkqfza5v7t/OP3KY0qSQ=;
	b=go/QyvpPRql2snnG0d2TBo5t3u/OVE+mbO+uesiMc0KhnMTbDFFbNY+cFGzw98Ngq8
	UuTT2W2vuwFxN3RMTSgnJfY47a7w+2kRgup9+C8oxVKC4WeYjJOJFb8PTjHUff5+Ato9
	UeMOJe1Ax+zLTN1ZjjZ7L9lLRPjJRjahqdHZGoPGMMFulsnCg93AC9QT9K/L8nvuWhxQ
	AEXRwEFMcZBU0seGCJ6zb1SlU7WzdvmHCwKt0QWT588Y8DZ77AylZtIrNXTMNdNu1gXE
	lSLVHtY2f25txsFzf2OgbfHmD+BZlOv1FaA90EJCeMbZkQIBl9sGLtfuUmpLz66DS4sD
	yMRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7NAjy3zLuKRtyHfp3pF8+xfjkqfza5v7t/OP3KY0qSQ=;
	b=fcZA15wzYndQkWaS6GkycVO0gw6c+C448GNgjSXdhC+oUrpJaZ6E/Hoxqoumcp1bd9
	xAYEaQAXrn6mBpiwUI7Arkv/I621n+tNfgG39f2MGlkA4ZHdlDjF5Sqz2TyJwxIjV1B9
	F+1zSeCFwfz2+nlRFU+JBIs3RFJYBik7Wo+omwalAVV8mibZAIIBo6IDYnGkEepoWYab
	Pr+WoQ7DsqaTbqzrPaFivPFYgcdrDnocNobYJrOeIgPfn/MxK8FaTwJgjxzHf6gBEGCO
	xFCzC4yp7nATIdysGazZp+SSf2j0U5LioBygE0L25WJTUxgcSY8qfL3OjTwWeDV6DP5X
	18kw==
X-Gm-Message-State: AOPr4FXdjMFtykCDM2MQ3n//auqrysboM1Vbl2K+FI7Ad3y9rlaRgbETM5aoSiPUMMThAI4M6AFP3tbR6ogEBZ3Q
X-Received: by 10.50.217.200 with SMTP id pa8mr1999670igc.78.1460128243522;
	Fri, 08 Apr 2016 08:10:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.24 with HTTP; Fri, 8 Apr 2016 08:10:24 -0700 (PDT)
In-Reply-To: <3804BDFE6D2105429FC87BEC5F7ABA16CCD4F3@MXEX2010.minnetronix.com>
References: <3804BDFE6D2105429FC87BEC5F7ABA16CCD48B@MXEX2010.minnetronix.com>
	<CAJTo0LZVdjL6GtZVnTnabz_cnHwrraD8vyq_B58R2o0SpqEyVg@mail.gmail.com>
	<3804BDFE6D2105429FC87BEC5F7ABA16CCD4F3@MXEX2010.minnetronix.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 8 Apr 2016 16:10:24 +0100
Message-ID: <CAJTo0LYxqkorjARwMUZ-mCTYUruJmOcf-Y2gnM2D5s0pOfZbbw@mail.gmail.com>
To: Andy Gikling <agikling@minnetronix.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Prescribed way to make global variables in recipes?
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
X-List-Received-Date: Fri, 08 Apr 2016 15:10:48 -0000
Content-Type: multipart/alternative; boundary=14dae9340dc5483934052ffa99a8

--14dae9340dc5483934052ffa99a8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 8 April 2016 at 16:05, Andy Gikling <agikling@minnetronix.com> wrote:

> So what do I do in that case? Just make two of my own versions of the
> u-boot_2014.04.bb file, and give them different names?  For example =E2=
=80=9C
> u-boot-faux_2014.04.bb=E2=80=9D and =E2=80=9Cu-boot-faux-debug_2014.04.bb=
=E2=80=9D ?  That should
> work but does that make sense to do?


As the stock u-boot appears to be sufficient I'd say use that and then add
a u-boot-faux-debug_2014.04.bb recipe that just does "include
u-boot-${PV}.bb" and then whatever SRC_URI changes you want in that version=
.

Hopefully you don't need to make any fiddly changes to the recipe as PN is
now different.

Ross

--14dae9340dc5483934052ffa99a8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 April 2016 at 16:05, Andy Gikling <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:agikling@minnetronix.com" target=3D"_blank">agikling@minnetronix.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span style=3D"font-s=
ize:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">So what =
do I do in that case? Just make two of my own versions of the <a href=3D"ht=
tp://u-boot_2014.04.bb" target=3D"_blank">u-boot_2014.04.bb</a> file, and g=
ive them different names?=C2=A0 For example =E2=80=9C<a href=3D"http://u-bo=
ot-faux_2014.04.bb" target=3D"_blank">u-boot-faux_2014.04.bb</a>=E2=80=9D a=
nd =E2=80=9C<a href=3D"http://u-boot-faux-debug_2014.04.bb" target=3D"_blan=
k">u-boot-faux-debug_2014.04.bb</a>=E2=80=9D
 ?=C2=A0 That should work but does that make sense to do?</span></blockquot=
e></div><br>As the stock u-boot appears to be sufficient I&#39;d say use th=
at and then add a <a href=3D"http://u-boot-faux-debug_2014.04.bb">u-boot-fa=
ux-debug_2014.04.bb</a> recipe that just does &quot;include u-boot-${PV}.bb=
&quot; and then whatever SRC_URI changes you want in that version.</div><di=
v class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Hopefully you =
don&#39;t need to make any fiddly changes to the recipe as PN is now differ=
ent.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">R=
oss</div><div class=3D"gmail_extra"><br></div></div>

--14dae9340dc5483934052ffa99a8--
