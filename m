Return-Path: <gmshastri@gmail.com>
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64D91E016DE
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 02:20:52 -0700 (PDT)
Received: by mail-la0-f43.google.com with SMTP id el20so375689lab.16
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 02:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=AxHNzs98H/gab+f7OaBse75m0/DyAqmdHJQyMApzYco=;
	b=SuSuzr+QpWIev/JZlquikGMv7MbPMaFfhTMslZX+KmhEE69Q2C7Ioq503EfUZvvHz9
	PnnXj/vR0vsbpL+gRyee1wOvP6iHt6CrLRCAXxlG0UyBTtG7EUVDPC3SYK7QyFO1LW9M
	cTw9qttXXxyNTRZaL1OadbgkLlrwEpSXgiJ66R7B6DkthcT6XAV5eLOXnUI2AQL4SZVA
	XfA5AakmeTLfbUyZhsS+zl8CxnT3zp4/+w4nIeOxMaCaP5i1EyATaJouJnqz40ELRrbR
	Fy2KQkNkaSuefJeXKkk9lamsCcf6KzQyEEhw8kNf5wJ7mm4bpquG1ErPt6ef680bbN4o
	pTow==
MIME-Version: 1.0
X-Received: by 10.152.7.105 with SMTP id i9mr1675795laa.9.1382088051348; Fri,
	18 Oct 2013 02:20:51 -0700 (PDT)
Received: by 10.114.62.115 with HTTP; Fri, 18 Oct 2013 02:20:51 -0700 (PDT)
In-Reply-To: <AF0985D076EB244693F2CCD71AAB10BC2C605CF998@BLRINMSMBX01.bglrodc.lntinfotech.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C605CF998@BLRINMSMBX01.bglrodc.lntinfotech.com>
Date: Fri, 18 Oct 2013 14:50:51 +0530
Message-ID: <CAE_REAst0sx+V5dsuiXicm-k0BBcMc3fkYbZH5paXcA3Y6+m4Q@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: Amit Kumar <Amit.Kumar@lntinfotech.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to enable LTP support in "core-image-basic"
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
X-List-Received-Date: Fri, 18 Oct 2013 09:20:55 -0000
Content-Type: multipart/alternative; boundary=001a11c27d80595ccf04e90073ef

--001a11c27d80595ccf04e90073ef
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Adding

IMAGE_FEATURES +=3D "splash ssh-server-openssh ltp"  in core-image-basic.bb

will enable ltp in your final image. Make sure you have added all
required layers :)

//Gaurang Shastri



On Fri, Oct 18, 2013 at 12:47 PM, Amit Kumar <Amit.Kumar@lntinfotech.com>wr=
ote:

>  Hi,****
>
>            I wants to use the LTP test suite provided by yocto project.
> But I don=92t know how to enable it for =93core-image-basic=94.****
>
> Can anyone help me to enable the LTP in =93core-image-basic=94?****
>
> ** **
>
> ** **
>
> Thanks & Regards****
>
> Amit K****
>
> ------------------------------
> The contents of this e-mail and any attachment(s) may contain confidentia=
l
> or privileged information for the intended recipient(s). Unintended
> recipients are prohibited from taking action on the basis of information =
in
> this e-mail and using or disseminating the information, and must notify t=
he
> sender and delete it from their system. L&T Infotech will not accept
> responsibility or liability for the accuracy or completeness of, or the
> presence of any virus or disabling code in this e-mail"
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11c27d80595ccf04e90073ef
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Adding <br><pre><code>IMAGE_FEATURES +=3D &quot;splash ssh=
-server-openssh ltp&quot;  in <a href=3D"http://core-image-basic.bb">core-i=
mage-basic.bb</a><br><br></code></pre><pre><code>will enable ltp in your fi=
nal image. Make sure you have added all required layers :)<br>
<br></code></pre><pre><code>//Gaurang Shastri<br></code></pre></div><div cl=
ass=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Fri, Oct 18, 2013=
 at 12:47 PM, Amit Kumar <span dir=3D"ltr">&lt;<a href=3D"mailto:Amit.Kumar=
@lntinfotech.com" target=3D"_blank">Amit.Kumar@lntinfotech.com</a>&gt;</spa=
n> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div link=3D"blue" vlink=3D"purple" lang=3D"KO">
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
I wants to use the LTP test suite provided by yocto project. But I don</spa=
n>=92<span lang=3D"EN-US">t know how to enable it for
</span>=93<span lang=3D"EN-US">core-image-basic</span>=94<span lang=3D"EN-U=
S">.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Can anyone help me to enable th=
e LTP in </span>
=93<span lang=3D"EN-US">core-image-basic</span>=94<span lang=3D"EN-US">?<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks &amp; Regards<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Amit K</span><span lang=3D"EN-U=
S"><u></u><u></u></span></p>
</div>
<br>
<hr>
<font color=3D"Black" face=3D"Arial" size=3D"3">The contents of this e-mail=
 and any attachment(s) may contain confidential or privileged information f=
or the intended recipient(s). Unintended recipients are prohibited from tak=
ing action on the basis of information
 in this e-mail and using or disseminating the information, and must notify=
 the sender and delete it from their system. L&amp;T Infotech will not acce=
pt responsibility or liability for the accuracy or completeness of, or the =
presence of any virus or disabling code
 in this e-mail&quot;<br>
</font>
</div>

<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a11c27d80595ccf04e90073ef--
