Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 320CFE007DA; Mon, 26 Mar 2018 05:42:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2248FE009DC
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 05:42:29 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id 141so23061051iou.12
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 05:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UXSsbyyuE27MPDD80qUSSpHYFHGqrKJqT7145VHBFd8=;
	b=IgIsG4jrHnf6Nq+xf6RpzqqPsGfhzaEh5F0PXHV5OIdj/kZDBoSKtrMjQvvBBaEIux
	T64rCkmm6q4hA4njYY7ffclXYSUqauQ48ZzqVysuR/2NWXIyMzOOhCu6+89r7KsoJyri
	ICafZdePUtjVY0LbwMijAt3BWbHePLpL1XuGYcC5hx/X+iUudSLnltDeJBwAVqLOemMo
	95xBLra7XoA3i9Xj5UF4RP96o8db1OK63HvUlsIX8SI3gj0eE8xrZPun/RLbQ5wXUUma
	IrCDVXawZ324TxJUEDzyN5nVgGDElsDljNEoqyu1CvifQJNIS0ZBgw5gPwzewzhQPGUH
	n0nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UXSsbyyuE27MPDD80qUSSpHYFHGqrKJqT7145VHBFd8=;
	b=VXas5AYUHj+EQAem3uILNlkTTHAYzDKCalyutc0BzLpSfMjqoJOex9pwlGFxNICJXW
	qEQ+yq9NPMjN0rJOTqXjj6pWsaMH/vN/GnrCa5Lumcb/yw/vqrcE6aVG9I+u4kIzLUQB
	DkgEhw8MBjEjRbfnEo/xeipbUdtPlcbtYj5Ay4BwS6hc6yxRUe6iuQlxIdG+QWjqbJUM
	C/VFU4olHNFfRWRE7DgK1iUfxvQnjrblJAsoH2C2x1pd47Ikl80yM/pAavz1EEUtPiJz
	QNjfbNvwmsCyFqp0z2EUkJsigDlKPFWuP0q5p3R28D0Jqp+nDdGZ2d0zxCus/DjCU4Qo
	UVPQ==
X-Gm-Message-State: AElRT7GEr4AkOCr5ax0+CSm0vH7hW+ntDg8RFCoPv7smmdllx9xqClVz
	zA8lYTS5fzYICSpuAApjMcI0Dg5JjQND4We9YTo=
X-Google-Smtp-Source: AG47ELtePveyFXAy2/mWb0WB2peB6fRoNmG35Ie/9KQfGwJeEplltVX5549U8KYq/fFY3MKXPiwCy6Dgv+9lMuO4r1g=
X-Received: by 10.107.5.199 with SMTP id 190mr41753663iof.107.1522068149284;
	Mon, 26 Mar 2018 05:42:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.176.144 with HTTP; Mon, 26 Mar 2018 05:42:08 -0700 (PDT)
In-Reply-To: <CAAXOrvb_PiV0T00=okLNpcUgEdNfQ1Qs6NnA_kDC+yqJHV8pkw@mail.gmail.com>
References: <CAAXOrvb_PiV0T00=okLNpcUgEdNfQ1Qs6NnA_kDC+yqJHV8pkw@mail.gmail.com>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Mon, 26 Mar 2018 14:42:08 +0200
Message-ID: <CAB2nKc9HK3mdFnTVdwWq1wASyTi=WQi940KsZ98+WiABt0f8kg@mail.gmail.com>
To: HuaFu 8386 <huafu8386@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: How to build two different kernel
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
X-List-Received-Date: Mon, 26 Mar 2018 12:42:31 -0000
Content-Type: multipart/alternative; boundary="001a113ee65c5cb8540568501bd1"

--001a113ee65c5cb8540568501bd1
Content-Type: text/plain; charset="UTF-8"

Hi ,

You can look at the following patch
https://patchwork.openembedded.org/patch/142675

Best regards,
Vincent

2018-03-22 5:47 GMT+01:00 HuaFu 8386 <huafu8386@gmail.com>:

> Hi,
>
> I want to build two different images with two different kernel configs,
> one for debug version and one for production version, like
> bitbake debug_image
> bitbake product_image
>
> Any idea how can I do that?
>
> Thanks,
> Danny
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113ee65c5cb8540568501bd1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi ,<div><br></div><div>You can look at the following patc=
h=C2=A0<a href=3D"https://patchwork.openembedded.org/patch/142675">https://=
patchwork.openembedded.org/patch/142675</a></div><div><br></div><div>Best r=
egards,</div><div>Vincent</div></div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">2018-03-22 5:47 GMT+01:00 HuaFu 8386 <span dir=3D"ltr">=
&lt;<a href=3D"mailto:huafu8386@gmail.com" target=3D"_blank">huafu8386@gmai=
l.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi=
,<div><br></div><div>I want to build two different images with two differen=
t kernel configs, one for debug version and one for production version, lik=
e</div><div>bitbake debug_image</div><div>

<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:sm=
all;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;text-decoration-style=
:initial;text-decoration-color:initial">bitbake product_image</div><div sty=
le=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font=
-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;text-decoration-style:initial=
;text-decoration-color:initial"><br></div><div style=3D"color:rgb(34,34,34)=
;font-family:arial,sans-serif;font-size:small;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px;text-decoration-style:initial;text-decoration-color:in=
itial">Any idea how can I do that?</div><div style=3D"color:rgb(34,34,34);f=
ont-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-=
ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:norma=
l;word-spacing:0px;text-decoration-style:initial;text-decoration-color:init=
ial"><br></div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-ser=
if;font-size:small;font-style:normal;font-variant-ligatures:normal;font-var=
iant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;tex=
t-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration-style:initial;text-decoration-color:initial">Thanks,</div><div st=
yle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;fon=
t-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-=
weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px;text-decoration-style:initia=
l;text-decoration-color:initial">Danny</div><br class=3D"m_4887446046118073=
824gmail-Apple-interchange-newline">

<br></div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a113ee65c5cb8540568501bd1--
