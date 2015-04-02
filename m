Return-Path: <gmshastri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 772A1E00930; Thu,  2 Apr 2015 01:41:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gmshastri[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05D79E008DC
	for <yocto@yoctoproject.org>; Thu,  2 Apr 2015 01:41:42 -0700 (PDT)
Received: by obvd1 with SMTP id d1so119324257obv.0
	for <yocto@yoctoproject.org>; Thu, 02 Apr 2015 01:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ubuIJ+CtwhdPjjR0DIardObEjc/TOZcfWKZeDMH2LyY=;
	b=Mv38U2gmOaO8XVXT7VHr/iDPoKrjcbQoXUSvxoJofsn0Gj2DRGyhtdyg+v6J3PV0kg
	z+nm20nEtcLE2Q+aJxtDsPh5gS+tMIMbQULCepxFQ7p0Ijkao81okru3I/rwj1pc5t++
	E/ZPaeH8BaLmaw7TVhUnY3fhI7aocmffiXSiWpEJbtyTrrKaHOJ9IyFCDtH0Yg1cYw/v
	Mb+M8dm2916JCg8cifASnpU9NE0h3K04LkVP7TeI3qBQgeefsM4tW2M62PEbbeaJPT9g
	zBHGeIu3UnJjdSUt2qK6YeSBJVrH+N/BYlOvSlBZHVcWI+yWIxrbq5+QGwqV4wXMGG6q
	RVGw==
MIME-Version: 1.0
X-Received: by 10.60.34.193 with SMTP id b1mr45729412oej.19.1427964101761;
	Thu, 02 Apr 2015 01:41:41 -0700 (PDT)
Received: by 10.202.215.138 with HTTP; Thu, 2 Apr 2015 01:41:41 -0700 (PDT)
In-Reply-To: <32F178E268CB074583CFD7DC1AE3FB8026567305@DE1-SVMSX-006.corp.LOCAL>
References: <32F178E268CB074583CFD7DC1AE3FB8026567305@DE1-SVMSX-006.corp.LOCAL>
Date: Thu, 2 Apr 2015 14:11:41 +0530
Message-ID: <CAE_REAtdbhNT8HrDjDwb1Zk9g8igPLda8S2ZfX0-UMAW28OdWA@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: Lev Lehn <lev.lehn@kardex.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building crosswalk for armv7
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
X-List-Received-Date: Thu, 02 Apr 2015 08:41:45 -0000
Content-Type: multipart/alternative; boundary=089e01160c0409a2780512b9cd8a

--089e01160c0409a2780512b9cd8a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I do not have too much info about this, but I hope you have already some
fixes available from here for meta-crosswalk:

https://github.com/crosswalk-project/meta-crosswalk/commit/362674ee6f838aaf=
daeae5b8bb035615330d243e

//Gaurang Shastri

On Thu, Apr 2, 2015 at 1:34 PM, Lev Lehn <lev.lehn@kardex.com> wrote:

>  I=E2=80=99m having troubles building the crosswalk-project OE meta-layer=
 for an
> armv7 target.
>
>
>
> I followed the short instructions from here:
>
>
> https://www.yoctoproject.org/blogs/jefro/2014/crosswalk-now-available-yoc=
to-project
>
>
>
> However I=E2=80=99m getting this error in do_compile step from the crossw=
alk
> recipe:
>
>
>
> | /usr/bin/ld: skipping incompatible
> /usr/lib/gcc/x86_64-linux-gnu/4.7/libstdc++.so when searching for -lstdc+=
+
>
> | /usr/bin/ld: skipping incompatible
> /usr/lib/gcc/x86_64-linux-gnu/4.7/libstdc++.a when searching for -lstdc++
>
>
>
> So it seems to use
>
> -wrong linker
>
> -wrong path to libs
>
>
>
> Any ideas how I can fix this?
>
>
>
> Thanks in advance,
>
>
> *Lev*
>
> ------------------------------
>
> Kardex Software GmbH
> Sitz: W=C3=B6rth a.R., Deutschland
> Amtsgericht Landau HRB 30060
> UST-IDNR. DE 812560748
> Gesch=C3=A4ftsf=C3=BChrer: Rolf M=C3=B6ssner, J=C3=BCrgen Schnatterer
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--089e01160c0409a2780512b9cd8a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br></div><div><br></div>I do not have too mu=
ch info about this, but I hope you have already some fixes available from h=
ere for meta-crosswalk:<br><br><a href=3D"https://github.com/crosswalk-proj=
ect/meta-crosswalk/commit/362674ee6f838aafdaeae5b8bb035615330d243e">https:/=
/github.com/crosswalk-project/meta-crosswalk/commit/362674ee6f838aafdaeae5b=
8bb035615330d243e</a><br><br></div>//Gaurang Shastri<br></div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Apr 2, 2015 at 1:34 PM=
, Lev Lehn <span dir=3D"ltr">&lt;<a href=3D"mailto:lev.lehn@kardex.com" tar=
get=3D"_blank">lev.lehn@kardex.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">





<div link=3D"blue" vlink=3D"purple" lang=3D"DE">
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99m having troubles bui=
lding the crosswalk-project OE meta-layer for an armv7 target.<u></u><u></u=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I followed the short instructio=
ns from here:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"https://www.yoctopro=
ject.org/blogs/jefro/2014/crosswalk-now-available-yocto-project" target=3D"=
_blank">https://www.yoctoproject.org/blogs/jefro/2014/crosswalk-now-availab=
le-yocto-project</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">However I=E2=80=99m getting thi=
s error in do_compile step from the crosswalk recipe:<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black" lang=3D"EN-US">| /usr/bi=
n/ld: skipping incompatible /usr/lib/gcc/x86_64-linux-gnu/4.7/libstdc++.so =
when searching for -lstdc++<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black" lang=3D"EN-US">| /usr/bi=
n/ld: skipping incompatible /usr/lib/gcc/x86_64-linux-gnu/4.7/libstdc++.a w=
hen searching for -lstdc++<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black" lang=3D"EN-US"><u></u>=
=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black" lang=3D"EN-US">So it see=
ms to use<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black" lang=3D"EN-US">-wrong li=
nker<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black" lang=3D"EN-US">-wrong pa=
th to libs<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black" lang=3D"EN-US"><u></u>=
=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black" lang=3D"EN-US">Any ideas=
 how I can fix this?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black" lang=3D"EN-US"><u></u>=
=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black" lang=3D"EN-US">Thanks in=
 advance,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black" lang=3D"EN-US">=C2=A0
<br>
<b>Lev</b></span><span lang=3D"EN-US"><u></u><u></u></span></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
Kardex Software GmbH<br>
Sitz: W=C3=B6rth a.R., Deutschland<br>
Amtsgericht Landau HRB 30060<br>
UST-IDNR. DE 812560748<br>
Gesch=C3=A4ftsf=C3=BChrer: Rolf M=C3=B6ssner, J=C3=BCrgen Schnatterer<br>
</font>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--089e01160c0409a2780512b9cd8a--
