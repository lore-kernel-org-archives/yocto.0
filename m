Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDFAFE00D59; Tue, 13 Aug 2019 02:57:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.47 listed in list.dnswl.org]
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com
	[209.85.217.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96701E0082A
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 02:57:13 -0700 (PDT)
Received: by mail-vs1-f47.google.com with SMTP id s5so1674749vsi.10
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 02:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=aD/AfV/1MkkxTnMaxf+tiEmuymaIaFYqWIdlZROKWHc=;
	b=ttUoGbWo/+dzC1WG1MUDRUiAQilPVZMij2e8uDkE1LyzrV+NltrgQcixtiTO0PDFiH
	0viecrAIucbZH/jvwLav/yhjOgUOjXCBfHUpQiIEde9FHlW/jCt+Aus0LAtJMwyL93r1
	DaBuiib9Gs5+4fKoky3vvzzJdCgKTl6DH/8WWrNMbLPjPz/yeCJ0QMAIDYO4TeqTsnzc
	mlz6XCPzm8WAEohQ3qzL3n1Tu586FenVtEivpOZUPCRO03rnt94Wo3+GHOoIMPq0DRVf
	sqSQYFg7tEQHjtd4WqA5gHzDwo14C6R4/0RtdHE9oT/8PWSI9ybEl6EIboY8sR/VdnQb
	aamg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=aD/AfV/1MkkxTnMaxf+tiEmuymaIaFYqWIdlZROKWHc=;
	b=YGv241l2eEbEWDc3d2U2JoZ7p8NXz/zGiKqBJIM1cMH+JVbcr9I1aLs+nFkkRbDliC
	eAs+w3hHx4mfOxg+2ddAD1v9WeGPpQVRBj0Dlj+5lcec/b3Z4GO6nczSoumYaKhx9Gba
	ApJKbCz42eMlNG8l5W0BLPHVTfq1WHRKNQ9fezwAsHSGuK+341aUPAmev4kRi6GxcHW6
	JWoLtdJvQtwD36RwimQ8FqXcHOWwyGZB7TvYZbpEip55++i9vcorE+NcHvUG6TlXpm6o
	4l9E1rPgFdnTr9aaYaY6KZPafn8bGGwrlQuYFReLse8Flx1Pal6EQSeY5H8LwaNMhG4X
	9zVg==
X-Gm-Message-State: APjAAAXCZcH/8ZrQKV12o5+L5jPfPUvNQ1zRxhMDR1rDuPkQ8+C0cJmY
	/H1f20QJuKUtHiVp1QbA1MyadvnC+HBIook9boc=
X-Google-Smtp-Source: APXvYqy7RRf7drHIAZ65CtROHnY1hJnYEvpiSsZBpusipZhWzoTkHFZQbSplqtyl58bZPlKf9s0ChteP9vuivS7NsW0=
X-Received: by 2002:a67:8709:: with SMTP id j9mr24810181vsd.35.1565690232950; 
	Tue, 13 Aug 2019 02:57:12 -0700 (PDT)
MIME-Version: 1.0
References: <6332957486174883a87679522aaf246f@gomspace.com>
In-Reply-To: <6332957486174883a87679522aaf246f@gomspace.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 13 Aug 2019 11:57:01 +0200
Message-ID: <CANNYZj9q5pOCo3VFkYo_Z1iZemE1UfETdoUAPa1UycsL=FK7Rg@mail.gmail.com>
To: Martin Siegumfeldt <mns@gomspace.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: State of Meson build system through eSDK
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
X-List-Received-Date: Tue, 13 Aug 2019 09:57:15 -0000
Content-Type: multipart/alternative; boundary="00000000000029d58f058ffcaaa8"

--00000000000029d58f058ffcaaa8
Content-Type: text/plain; charset="UTF-8"

On Tue, 13 Aug 2019 at 10:40, Martin Siegumfeldt <mns@gomspace.com> wrote:

> I am wondering if/when Meson is expected supported through the eSDK - I
> don't see it from the list:
>
> https://www.yoctoproject.org/docs/current/sdk-manual/sdk-manual.html#sdk-a-closer-look-at-devtool-add
> ?
>

The link above is not about eSDK, it's about devtool which works perfectly
fine in a non-SDK environment (e.g. plain yocto).

I think meson in SDKs actually is supported, as there is a nativesdk-
version of the meson recipe. Do you want to try and report?

Alex

--00000000000029d58f058ffcaaa8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, 13 Aug 2019 at 10:40, Martin Siegumfeldt &lt;<a href=3D"mail=
to:mns@gomspace.com">mns@gomspace.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">I am wondering if/when Meson is expect=
ed supported through the eSDK - I<br>
don&#39;t see it from the list:<br>
<a href=3D"https://www.yoctoproject.org/docs/current/sdk-manual/sdk-manual.=
html#sdk-a-closer-look-at-devtool-add" rel=3D"noreferrer" target=3D"_blank"=
>https://www.yoctoproject.org/docs/current/sdk-manual/sdk-manual.html#sdk-a=
-closer-look-at-devtool-add</a><br>
?<br>
</blockquote><div><br></div><div>The link above is not about eSDK, it&#39;s=
 about devtool which works perfectly fine in a non-SDK environment (e.g. pl=
ain yocto).<br></div><div><br></div><div>I think meson in SDKs actually is =
supported, as there is a nativesdk- version of the meson recipe. Do you wan=
t to try and report?</div><div><br></div><div>Alex<br></div></div></div>

--00000000000029d58f058ffcaaa8--
