Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25DEDE00D8A; Wed, 18 Sep 2019 07:02:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (lefevre.da[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E255BE00C9B
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2019 07:02:05 -0700 (PDT)
Received: by mail-qk1-f173.google.com with SMTP id q203so8156465qke.1
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2019 07:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=D8OXPfd3LdLySQxDKNr4HDf0ll3Ct2eHaadnIEsaSSg=;
	b=QJKM7aOwcn9RuoYa2+nz2cHcMciR9c0cyc5PWwdv0X//zYSmCFL7lZfRqFM4ZjlIZK
	/fp273klTLRRX/myyMz80FkNT/GBos4/yyBiP8VspTDFzFWcXyabqPs7YI5OPbzPTYo0
	0/Qz07ZoXxMRupiIZ3tqeqm7RfoxQKjkxppbe+zSirDiB86GlamugCxu4I2MyODpUHsN
	h8WlFagmnGuOgOTBVaOgigoM9SHYu7sztL87KTqxkDp/bBUGpPui6ptKnpOVY9i89+Su
	0pULhUi6l7at4Gz36ipMAD5tWUYmRcZklkI7qNY6nd0aWDU7ARww2G1zaJLBf5koM8N5
	HIaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=D8OXPfd3LdLySQxDKNr4HDf0ll3Ct2eHaadnIEsaSSg=;
	b=h4NaefkMVPNr/YTPymF05TS++BEezgI6WB/ZZUSV7wolxIXzGUeaKKrB1mqPYeVDbF
	0KOG5y7ORxLdfB0mXZpBycz12280hMEZRHZC5pzAjXkezOVwNOOlvlb3tpwsXQMFYZOw
	gkwZmCGLyXSelWIZOy1brkKbBoSX8tEv8RellZ+AjXXX67pe/+ixE+lFKB8/FpLc6LTy
	bXkuNJA3By4EiH/jIyknT5RTJjwyAi8HpQvbjKX5Hn+I7c6JyDH3b9gHzXh64Use/901
	NN88uhBeRURD56YSZIG50JBUteb5/5Qt5imK0ADkJh2nQBeSqXbnGWu95JqyMxa0AREN
	Kseg==
X-Gm-Message-State: APjAAAWVR+4fPEq9u3owJuI89FZ2OLtk2/d1kulZA2AnJnS9zRYEN7jI
	h/ZJbmV6uOSw0gtEXXePizdcnUFpj/ne5RpLtg==
X-Google-Smtp-Source: APXvYqy6CMkkS6V3MMlQqU/JcvVd/xEcZ1sxxetLJf+Xb2yYBZaKonbt4w820n0vhdDNa22CSeNMNBo0yC4Pdq/w9QM=
X-Received: by 2002:a37:9f93:: with SMTP id i141mr3758829qke.304.1568815325224;
	Wed, 18 Sep 2019 07:02:05 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FhBv9bStUZ1kMrmxRh7AnxbxT9Uth8Jh1wWtiQ-a9e7SXKPA@mail.gmail.com>
	<20190918084441.GU6154@hiutale>
In-Reply-To: <20190918084441.GU6154@hiutale>
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Wed, 18 Sep 2019 17:01:54 +0300
Message-ID: <CA+FhBv8kvYmebm8sgpiEK=M-JZo=io3j9FzQpRcYUjxSMfhb1A@mail.gmail.com>
To: Mikko.Rapeli@bmw.de
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Changing HOST_CC_ARCH temporarily in recipe
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
X-List-Received-Date: Wed, 18 Sep 2019 14:02:07 -0000
Content-Type: multipart/alternative; boundary="0000000000002da4630592d448f0"

--0000000000002da4630592d448f0
Content-Type: text/plain; charset="UTF-8"

Yeah that's true and that's how I fixed it =)

Thanks,
-Damien

On Wed, Sep 18, 2019 at 11:44 AM <Mikko.Rapeli@bmw.de> wrote:

> Hi,
>
> On Wed, Sep 18, 2019 at 11:26:29AM +0300, Damien LEFEVRE wrote:
> > Hi,
> >
> > I have a package which requires to first build a x64 binary which is then
> > used to compile the target platform binaries.
> >
> > The way I got away with it was to build that host binary from
> > do_configure_prepend() and then continue with the build procedure.
> >
> > I recently upgraded to GCC7 + warrior and now building the host binary
> > from do_configure_prepend fails due to this error:
> > testCCompiler.c:1:0: error: bad value (armv8-a+crc) for -march= switch
> >
> > I figured that the arch switch (building for tegra) is defined
> > in HOST_CC_ARCH as:
> > -march=armv8-a+crc -fstack-protector-strong  -D_FORTIFY_SOURCE=2 -Wformat
> > -Wformat-security -Werror=format-security
> >
> > If I clear HOST_CC_ARCH in my recipe file, do_configure_prepend succeeds
> > but of course the rest of the build will fail.
> >
> > So i'm trying to do something like this:
> > do_configure_prepend(){
> >     export HOST_CC_ARCH_BACKUP="${HOST_CC_ARCH}"
> >     HOST_CC_ARCH=""
> >     echo "HOST_CC_ARCH before cmake: ${HOST_CC_ARCH}"
> >     CC="${BUILD_CC}" CXX="${BUILD_CXX}" CCFLAGS="${BUILD_CFLAGS}"
> >  CXXFLAGS="${BUILD_CPPFLAGS} -std=c++11" LDFLAGS="${BUILD_LDFLAGS}" cmake
> > ${S}
> >     make
> >     HOST_CC_ARCH="${HOST_CC_ARCH_BACKUP}"
> > }
> >
> > There I still get:
> > HOST_CC_ARCH before cmake:  -march=armv8-a+crc -fstack-protector-strong
> >  -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security
> >
> > So HOST_CC_ARCH doesn't get updated.
> >
> > How can I temporarily reset HOST_CC_ARCH?
>
> Only clean way to do this is to split the recipe into two parts:
>
>  * native for the build time tooling
>
>  * target for the target only build, which depends on the native build
>    time tooling
>
> Everything else is a hack :)
>
> Hope this helps,
>
> -Mikko

--0000000000002da4630592d448f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yeah that&#39;s true and that&#39;s how I fixed it =3D)<di=
v><br></div><div>Thanks,</div><div>-Damien</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 18, 2019 at 11:=
44 AM &lt;<a href=3D"mailto:Mikko.Rapeli@bmw.de">Mikko.Rapeli@bmw.de</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
On Wed, Sep 18, 2019 at 11:26:29AM +0300, Damien LEFEVRE wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; I have a package which requires to first build a x64 binary which is t=
hen<br>
&gt; used to compile the target platform binaries.<br>
&gt; <br>
&gt; The way I got away with it was to build that host binary from<br>
&gt; do_configure_prepend() and then continue with the build procedure.<br>
&gt; <br>
&gt; I recently upgraded to GCC7 + warrior and now building the host binary=
<br>
&gt; from do_configure_prepend fails due to this error:<br>
&gt; testCCompiler.c:1:0: error: bad value (armv8-a+crc) for -march=3D swit=
ch<br>
&gt; <br>
&gt; I figured that the arch switch (building for tegra) is defined<br>
&gt; in HOST_CC_ARCH as:<br>
&gt; -march=3Darmv8-a+crc -fstack-protector-strong=C2=A0 -D_FORTIFY_SOURCE=
=3D2 -Wformat<br>
&gt; -Wformat-security -Werror=3Dformat-security<br>
&gt; <br>
&gt; If I clear HOST_CC_ARCH in my recipe file, do_configure_prepend succee=
ds<br>
&gt; but of course the rest of the build will fail.<br>
&gt; <br>
&gt; So i&#39;m trying to do something like this:<br>
&gt; do_configure_prepend(){<br>
&gt;=C2=A0 =C2=A0 =C2=A0export HOST_CC_ARCH_BACKUP=3D&quot;${HOST_CC_ARCH}&=
quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0HOST_CC_ARCH=3D&quot;&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0echo &quot;HOST_CC_ARCH before cmake: ${HOST_CC_ARC=
H}&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0CC=3D&quot;${BUILD_CC}&quot; CXX=3D&quot;${BUILD_CX=
X}&quot; CCFLAGS=3D&quot;${BUILD_CFLAGS}&quot;<br>
&gt;=C2=A0 CXXFLAGS=3D&quot;${BUILD_CPPFLAGS} -std=3Dc++11&quot; LDFLAGS=3D=
&quot;${BUILD_LDFLAGS}&quot; cmake<br>
&gt; ${S}<br>
&gt;=C2=A0 =C2=A0 =C2=A0make<br>
&gt;=C2=A0 =C2=A0 =C2=A0HOST_CC_ARCH=3D&quot;${HOST_CC_ARCH_BACKUP}&quot;<b=
r>
&gt; }<br>
&gt; <br>
&gt; There I still get:<br>
&gt; HOST_CC_ARCH before cmake:=C2=A0 -march=3Darmv8-a+crc -fstack-protecto=
r-strong<br>
&gt;=C2=A0 -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dforma=
t-security<br>
&gt; <br>
&gt; So HOST_CC_ARCH doesn&#39;t get updated.<br>
&gt; <br>
&gt; How can I temporarily reset HOST_CC_ARCH?<br>
<br>
Only clean way to do this is to split the recipe into two parts:<br>
<br>
=C2=A0* native for the build time tooling<br>
<br>
=C2=A0* target for the target only build, which depends on the native build=
<br>
=C2=A0 =C2=A0time tooling<br>
<br>
Everything else is a hack :)<br>
<br>
Hope this helps,<br>
<br>
-Mikko</blockquote></div>

--0000000000002da4630592d448f0--
