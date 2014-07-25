Return-Path: <rstreif@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01D40E00744; Fri, 25 Jul 2014 11:43:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ADD2E003C1
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 11:43:11 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id tr6so4117661ieb.21
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 11:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=xW0hd8dEF9yeEqeKM7g1Rch4YyBVpBKtwFov6u6oLwc=;
	b=RApWkBb+YjpC1SIGgJWMquT0BHxUEoX5s/obE3wCtr718ESnGxYyDJExmnvtsVOt8F
	j1fdc0tzrMRd+rhrDPip25UcQ8HUP/A4KZbIGMCQ9/dFOLrxT5IN8wbcTCnQN6fEYEu/
	otZzBZam1NrvJ/ZRM+fLuuz3AJgv1+JJUieK0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=xW0hd8dEF9yeEqeKM7g1Rch4YyBVpBKtwFov6u6oLwc=;
	b=XaxOXfucRZCB31iotKShZGvG/ybwvLmkRnbDLt7qOtGYCLFk4YuLm9cX9dDas1A126
	uD3eMB9lZRPXzzUFbzhnrdLCekTvQ9vP8BKpci/KSrVkmeS4TjZMTY/CB+RKnxWAkcrX
	oafcgbwMqZBtC26qfhXWXuTdtM7LWKqVRXFYUAGu/7uGn84SeTJqfnhUPALSa8J5HmzC
	C5ZgjWrcQCFkBjNf92f9Fb9fejeU6iYVhcq1sFmOZ1tgUCtc9LLFlGSeuuZYWssS0zXZ
	mraVQutm5Tt4KRMsAEbJPjHU3X/mlaOAaA+Ts10nEIrVCBIAWMZC8vib8NbwCi1m3Pop
	ln/w==
X-Gm-Message-State: ALoCoQnjwfJjje7EZZ7BLB/F3Couo8CohZ6vya/XtlD8qWEaU5/1mG9hoplRtT43fd3v39AJ/nW8
MIME-Version: 1.0
X-Received: by 10.42.208.70 with SMTP id gb6mr5544508icb.89.1406313791369;
	Fri, 25 Jul 2014 11:43:11 -0700 (PDT)
Received: by 10.107.149.73 with HTTP; Fri, 25 Jul 2014 11:43:11 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1407251345130.8665@localhost>
References: <alpine.LFD.2.11.1407251345130.8665@localhost>
Date: Fri, 25 Jul 2014 11:43:11 -0700
Message-ID: <CA+gsK-peRS+T3zOXKo-zERm=vrWewAfEEhrT_jPphpfgtJimBg@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: dev manual definition of "Image" is totally wrong
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
X-List-Received-Date: Fri, 25 Jul 2014 18:43:17 -0000
Content-Type: multipart/alternative; boundary=20cf303ea812fa38c404ff08f19a

--20cf303ea812fa38c404ff08f19a
Content-Type: text/plain; charset=UTF-8

>
>   here:
>
>
> http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#yocto-project-terms
>
> the definition of "Image" refers to the generated artifacts of a
> build, whereas the standard usage (as typified by the link) more
> correctly refers to things like core-image-minimal.
>

The term "image" is somewhat overloaded and if not detailed context
dependent. Image at least could be a "kernel image" or a "root file system
image". In the context of YP the term typically refers to a root file
system image of which core-image-minimal is an instance.

:rjs

--20cf303ea812fa38c404ff08f19a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">=C2=A0 here:<br>
<br>
<a href=3D"http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.ht=
ml#yocto-project-terms" target=3D"_blank">http://www.yoctoproject.org/docs/=
latest/dev-manual/dev-manual.html#yocto-project-terms</a><br>
<br>
the definition of &quot;Image&quot; refers to the generated artifacts of a<=
br>
build, whereas the standard usage (as typified by the link) more<br>
correctly refers to things like core-image-minimal.<br></blockquote><div><b=
r></div><div>The term &quot;image&quot; is somewhat overloaded and if not d=
etailed context dependent. Image at least could be a &quot;kernel image&quo=
t; or a &quot;root file system image&quot;. In the context of YP the term t=
ypically refers to a root file system image of which core-image-minimal is =
an instance.</div>
<div><br></div><div>:rjs</div></div>
</div></div>

--20cf303ea812fa38c404ff08f19a--
