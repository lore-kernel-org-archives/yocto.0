Return-Path: <psiva87@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2A08E00973; Mon, 28 Mar 2016 04:14:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_20,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_LOW,T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (psiva87[at]gmail.com)
	* 1.5 HTML_IMAGE_ONLY_20 BODY: HTML: images with 1600-2000 bytes of
	words
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15D7EE0090C
	for <yocto@yoctoproject.org>; Mon, 28 Mar 2016 04:14:26 -0700 (PDT)
Received: by mail-lf0-f46.google.com with SMTP id e133so33225283lfe.3
	for <yocto@yoctoproject.org>; Mon, 28 Mar 2016 04:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=Oc9iXXZjD2iYMQw+pFONuy/w4nQ51P8sDQSMdq7/UQo=;
	b=hnCcv1qmv4ZroqJg41L608dtTm899bmN9D2wQPHeC3wX5iVQP+KwqhM6/oMZ6iPVwS
	wByZqUqovEP44E1VXXGF2BSz0y00h99MsVLPwS3p2dJSey5PJ8la1DoFikNhHKynFHnB
	C4TawEXxJXlmgfm4Jb2EdU0fb7+sXEiU6OyQXWo1cPlgdogR5sPZt892yXlxH03Csiko
	vCWqkjo+xoMjA5oUpGg3ASzC5dIt9CiAvAs0pcBz/p74H/brmJs78n3frl4yoLxjZXhQ
	8XfRON/NGlDWaBZcxMiUceXVQtcLrqEHVb74969sVAL6ScZ5/rZ6oSbx1psdQtr4Hwsd
	NnSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=Oc9iXXZjD2iYMQw+pFONuy/w4nQ51P8sDQSMdq7/UQo=;
	b=Ri/jzGQatywgW5O3bPRqRJP77pkrARCb8sN1ChsT/uH8ElWNN4J2ehbzCXBqHl1m4k
	N6DqT20AVLvVewoR16M5urkqzfUz28we8SvjPoahG+ujwp0g1Xy/prvpy31Zo3DoPKpV
	DxIVKt7pu7ss4Oz9D49k5Ov/05Dkyu6w8L+uhUB0faqNXvOGyLfQOAIgEY9MqLERRWuP
	KwRqqLVWAokw6E2wxhgSvs+9YgSaiIuR0a0z9AvmwwkSMluVJHRUHaaFtdE7qwsGlRA+
	UKWMV0iSUZb28fUv9QHtCzOszjTf6xqzYQ8Us5irKHoB17Zan+DoGMXkIcOfTSRdT4MD
	a2gQ==
X-Gm-Message-State: AD7BkJLEUwIsy85chfnhyLhvN0e+6WEZ1+Y86quNd1LeGbYecGWmDxmvaKZR1ZTB13CjszQkuikkSWBr8F1XAw==
MIME-Version: 1.0
X-Received: by 10.25.165.140 with SMTP id o134mr10339378lfe.35.1459163664759; 
	Mon, 28 Mar 2016 04:14:24 -0700 (PDT)
Received: by 10.112.199.10 with HTTP; Mon, 28 Mar 2016 04:14:24 -0700 (PDT)
In-Reply-To: <426eab4493ea1ce18b994c8fd83b653@cweb05.nm.nhnsystem.com>
References: <426eab4493ea1ce18b994c8fd83b653@cweb05.nm.nhnsystem.com>
Date: Mon, 28 Mar 2016 16:44:24 +0530
Message-ID: <CAOorjZSBoXoxGk3zSts0nCCXyNNE7uXtn=YU=48zyFCm1vvH8w@mail.gmail.com>
From: "SIVA SUBRAMANIAN.P" <psiva87@gmail.com>
To: =?UTF-8?B?7Jyk7JiB7ISd?= <earwigz@naver.com>
Cc: yoctoproject <yocto@yoctoproject.org>
Subject: Re: how to patch except unpack?
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
X-List-Received-Date: Mon, 28 Mar 2016 11:14:29 -0000
Content-Type: multipart/alternative; boundary=001a11410a0ee83f1a052f1a0317

--001a11410a0ee83f1a052f1a0317
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Do you have patches like SRC_URI +=3D abc.patch in .bb/.bbappend file? If s=
o,
either do bitbake comp -c patch -f or see whether your patch is
available/applied in build dir.

On Mon, Mar 28, 2016 at 2:03 PM, =EC=9C=A4=EC=98=81=EC=84=9D <earwigz@naver=
.com> wrote:

> I am making recipes using source that are packed tar.
>
> ex) customrecipe.bb
>
> ex) source.tar.xz
>
>
>
> So, when i compiled this recipes i just typed below.
>
> $ bitbake customrecipe
>
>
>
> Every times, unpack method was called each compile times.
>
> Currently 1 running tasks (65 of 66):
>
> 0: customrecipe do_unpack (pid 26550)
>
>
>
> I just wanted to know if patchs were completed or not.
>
> What do i do?
>
> Could you help me?
>
>
>
> Thanks.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11410a0ee83f1a052f1a0317
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Do you have patches like SRC_URI +=3D abc.patch in .bb/.bb=
append file? If so, either do bitbake comp -c patch -f or see whether your =
patch is available/applied in build dir.<br></div><div class=3D"gmail_extra=
"><br><div class=3D"gmail_quote">On Mon, Mar 28, 2016 at 2:03 PM, =EC=9C=A4=
=EC=98=81=EC=84=9D <span dir=3D"ltr">&lt;<a href=3D"mailto:earwigz@naver.co=
m" target=3D"_blank">earwigz@naver.com</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><div><div style=3D"font-size:10pt;font-family:Gulim"><p=
>I am making recipes using source that are packed tar.</p><p>ex) <a href=3D=
"http://customrecipe.bb" target=3D"_blank">customrecipe.bb</a></p><p>ex) so=
urce.tar.xz</p><p>=C2=A0</p><p>So, when i compiled this recipes i just type=
d below.</p><p>$ bitbake customrecipe</p><p>=C2=A0</p><p>Every times, unpac=
k method was called each compile times.</p><p>Currently 1 running tasks (65=
 of 66):</p><p>0: customrecipe do_unpack (pid 26550)</p><p>=C2=A0</p><p>I j=
ust wanted to know if patchs were completed or not.</p><p>What do i do?</p>=
<p>Could you help me?</p><p>=C2=A0</p><p>Thanks.</p><div><br></div></div></=
div>
<table><tbody><tr><td><img src=3D"http://mail.naver.com/readReceipt/notify/=
?img=3DfXRN1B%2BZM6k0FoUdhARPM6UdFAvqp6uwMrEwazUlax3oazpvaAFSFoEqtzFXp6UmFL=
l5WLl51zlqDBFdp6d5MreRhoRlWrFdWdIlWrFdWXIZWrG0MXt5WXiN.gif" border=3D"0"></=
td></tr></tbody></table><br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a11410a0ee83f1a052f1a0317--
