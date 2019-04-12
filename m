Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE548E00AB0; Thu, 11 Apr 2019 19:14:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
	[209.85.222.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEC10E00A84
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 19:14:06 -0700 (PDT)
Received: by mail-qk1-f182.google.com with SMTP id g1so4768656qki.5
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 19:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ixvmmFNHUXtzhxx36pnHXpGr+BO2TWim8WCKGhOWXTk=;
	b=PJ1MC04OWkf2GMFCcHtPK6AD5qVJSR0dcQL7sYDVqxWfykRrSk08HNg4h1OT4M+w4i
	L3pM6huVMOlXh48aa+m32NnICJ5uFMtJt8Hu5gOqntSVXuyv9rSbn2XaPoIa9GW3Qudn
	ToH8BnJsvNKruuQmbUKPhT9BRvAGhIzcT71iW28mXHWUre9RbwtgVlyUT1QpHLBaQfRr
	lPAsWb5JYegZMZIfLjI8OIi7T85/jExO74B3eC4PyrKpfzFGxKm3Et/8AHELrjAO3azK
	Gr2zFrFHMUGVjlC1ikvkU9BSywn9j36wSsegndqHVcVtX0Qm4zMaNTKBa9xsp+I9VT9q
	G80Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ixvmmFNHUXtzhxx36pnHXpGr+BO2TWim8WCKGhOWXTk=;
	b=rPL3z3fsyVFmDC7R0WceUAqv/AuF/PN4QD+C27M2ipx/1MjG2VgPpe4FTBEctSprwz
	mUVZqDn3pnT2dLFcIIX/wnbaOc7eUnNcQb1OGFwV/OsXM4hZrmawe4MndIpuaXBTg4tj
	JONsI/vRy1AG1DcU8PK40XI1VMiYXSQxf3zFVVdcaupvToQNcLMiMOY2kvv62O2RwK7/
	KYnFaRe5URkHQwgvMrNn4uvaI/JyxNfJORcx21OpeE3CjqaoKE/PCdDBwNFLhy1178Mj
	MTqUQvg9ojUC/IodR+dapTRhqf447C+7dOQAaVEEeXgg5mTQoQPhF2fpQ3KQpKbB8ala
	swWA==
X-Gm-Message-State: APjAAAVEbbT7091J4ZtFlNWPkRm35rA1zdP1QosYooH+RgKfMbQAEOv7
	Arkam/tHz3oHFaPEpy0MbMfJb8hIMh1mesZWUd8=
X-Google-Smtp-Source: APXvYqzjZ6Wq8U+br+yRlXY0Vtxf0vbNyOg3f8PyqgPD1b2UStpIVq0HMQm6slNfSqeRzTtHlOltYF4q6XGEgD824QU=
X-Received: by 2002:a37:a208:: with SMTP id l8mr42833263qke.210.1555035245870; 
	Thu, 11 Apr 2019 19:14:05 -0700 (PDT)
MIME-Version: 1.0
References: <2e1ac0d1-94d5-4e1f-4b84-ea71685244e3@faresoftware.it>
In-Reply-To: <2e1ac0d1-94d5-4e1f-4b84-ea71685244e3@faresoftware.it>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 11 Apr 2019 19:13:55 -0700
Message-ID: <CAMKF1sroULsNWmV09Wpcbap-CEm2_T-Jh5zYSUG7gUGdtc1r6A@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: yocto@yoctoproject.org
Subject: Re: Stripping debug symbols
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
X-List-Received-Date: Fri, 12 Apr 2019 02:14:08 -0000
Content-Type: multipart/alternative; boundary="00000000000071818e05864bdb2e"

--00000000000071818e05864bdb2e
Content-Type: text/plain; charset="UTF-8"

Build should strip it automatically what does your build recipe look like

On Thu, Apr 11, 2019 at 1:37 AM Mauro Ziliani <mauro@faresoftware.it> wrote:

> Hi all.
>
> I worked on my project woth Krogoth, gcc 5.3.0, on imx6dlsabresd board.
>
> My application is build with cmake 3.4.3, shipped with BSP.
>
>
> I'd like to strip debug symbols from the final binary, but if I prepend
> the strip parameter in CMAKE_{C,CXX}_FLAGS_RELEASE in my CMakeLists.txt,
> bitbake give me errors.
>
>
> What is the right path to follow to strip final binary?
>
> With debug info the binary is 109MB, without 5MB
>
>
> Best regards,
>
>  Mauro
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000071818e05864bdb2e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div dir=3D"auto">Build should strip it automatically what d=
oes your build recipe look like=C2=A0</div><div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 11, 2019 at 1:37 AM M=
auro Ziliani &lt;<a href=3D"mailto:mauro@faresoftware.it">mauro@faresoftwar=
e.it</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi all.<br>
<br>
I worked on my project woth Krogoth, gcc 5.3.0, on imx6dlsabresd board.<br>
<br>
My application is build with cmake 3.4.3, shipped with BSP.<br>
<br>
<br>
I&#39;d like to strip debug symbols from the final binary, but if I prepend=
<br>
the strip parameter in CMAKE_{C,CXX}_FLAGS_RELEASE in my CMakeLists.txt,<br=
>
bitbake give me errors.<br>
<br>
<br>
What is the right path to follow to strip final binary?<br>
<br>
With debug info the binary is 109MB, without 5MB<br>
<br>
<br>
Best regards,<br>
<br>
=C2=A0Mauro<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--00000000000071818e05864bdb2e--
