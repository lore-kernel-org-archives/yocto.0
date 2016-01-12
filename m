Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D410BE00AB9; Tue, 12 Jan 2016 07:44:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
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
	*      [209.85.223.178 listed in list.dnswl.org]
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A85E2E00A9C
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 07:43:56 -0800 (PST)
Received: by mail-io0-f178.google.com with SMTP id 1so340404317ion.1
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 07:43:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=pbNOEm+LiF6dIKfs2pFGpLtAh1eqByHrkyHbROgEz28=;
	b=a9KKBfEJDuKJNHK/fGs5fFTi2SdYptQKwL5jAvoDqagrYzIuShYiGeA7BBHXxHFLS4
	FXEGz73cH9qMUCZxgDyOvrtdI+NefqZ3a+mlB1yyDgRGvKl2ya3EVlL3skJLWLpiK2Dv
	ICNI3rEHgXifPVMF79wjcdkqZR9YG7FzgGO3c59Lj79gy76T1pkpVMzoypqGSt/lw3kv
	mlpgmRy5AUGd/3+3Bb+Vw6h/6sOM7F238V2FJJ7op3DLL0uQyKsWbD9qah+jOqxyll90
	DowlWIn5FJdlqmEzInVSrKWJmcQtRINzuYd152YPWSnENw/0p+eQb+LyTVkalB98+alR
	j4Uw==
MIME-Version: 1.0
X-Received: by 10.107.9.197 with SMTP id 66mr119380764ioj.121.1452613435754;
	Tue, 12 Jan 2016 07:43:55 -0800 (PST)
Received: by 10.79.114.66 with HTTP; Tue, 12 Jan 2016 07:43:55 -0800 (PST)
In-Reply-To: <CALLyC8SxkUjzRKBO1qAxpqS4mys_jCT212RrL1A8V5PP6JsDgg@mail.gmail.com>
References: <CALLyC8SxkUjzRKBO1qAxpqS4mys_jCT212RrL1A8V5PP6JsDgg@mail.gmail.com>
Date: Tue, 12 Jan 2016 09:43:55 -0600
Message-ID: <CAOsp8o_ESB9_qdOomLDN2a77SCGvnFEwSYHwPWv2uVca327DrQ@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: Vivek Per <pervivek@gmail.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Where root password is defined by default
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
X-List-Received-Date: Tue, 12 Jan 2016 15:44:01 -0000
Content-Type: multipart/alternative; boundary=001a113ebb5cd58fa9052924ebb6

--001a113ebb5cd58fa9052924ebb6
Content-Type: text/plain; charset=UTF-8

I see an example of setting the root password in the extrausers class
documentation -

http://www.yoctoproject.org/docs/2.0/ref-manual/ref-manual.html#ref-classes-extrausers

This sets the password to 1876*18:

     inherit extrausers
     EXTRA_USERS_PARAMS = "\
         usermod -P 1876*18 root; \
         "


On Tue, Jan 12, 2016 at 5:58 AM, Vivek Per <pervivek@gmail.com> wrote:

> Hi,
>      Where root password is defined by default. How can we change it
>
> Thanks and regards
>       Vivek
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113ebb5cd58fa9052924ebb6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I see an example of setting the root password in the extra=
users class documentation -<div><br></div><div><a href=3D"http://www.yoctop=
roject.org/docs/2.0/ref-manual/ref-manual.html#ref-classes-extrausers">http=
://www.yoctoproject.org/docs/2.0/ref-manual/ref-manual.html#ref-classes-ext=
rausers</a><br></div><div><br></div><div>This sets the password to 1876*18:=
</div><div><pre class=3D"" style=3D"overflow:auto;color:rgb(51,51,51)">    =
 inherit extrausers
     EXTRA_USERS_PARAMS =3D &quot;\
         usermod -P 1876*18 root; \
         &quot;</pre></div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Tue, Jan 12, 2016 at 5:58 AM, Vivek Per <span dir=3D"lt=
r">&lt;<a href=3D"mailto:pervivek@gmail.com" target=3D"_blank">pervivek@gma=
il.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"=
ltr">Hi,<div>=C2=A0 =C2=A0 =C2=A0Where root password is defined by default.=
 How can we change it</div><div><br></div><div>Thanks and regards</div><spa=
n class=3D"HOEnZb"><font color=3D"#888888"><div>=C2=A0 =C2=A0 =C2=A0 Vivek<=
/div></font></span></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a113ebb5cd58fa9052924ebb6--
