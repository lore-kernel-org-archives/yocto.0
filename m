Return-Path: <aaron.biver@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52FD5E00D16; Thu, 28 Mar 2019 09:52:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (aaron.biver[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
	[209.85.167.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20E39E00AB0
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 09:52:07 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id a28so1735522lfo.7
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 09:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=Ezp4YJmFDi6dXSth/Q6dWg2wqxRcWRj4qtqoQ7XAjl8=;
	b=O/flCjd9Yp7BiLpgFbTfPyR87eRV986Plu3IOkgBhNeRxQFOM9qRqfVhxmCSS5/ueO
	Z7LBd1YyOFXXd6D+fNa0XgJ+GiUoRbhuSlDFdiieA8/xSgZqIRxsruRcCHaC0f1mN44G
	h3aLM7OpTWwfS+6g71hJDyZNS/Ot2br0V0XjYCuXbRr8h7tDvRqP+RLE6qyOUyyF7UaY
	v2Uh0v7ykkUEv8oA8BTAlyYauqW+OHorW/Ff5Yo4OkuRqXgBqgTivMFhh4DzjDsSCEQ3
	QAlgSrgew6AlFCYrDUkwPPNJ7gYbvCBG6EdiGK2b56EVir6Ji7jxBuqTsXq/n3yefUDq
	sJYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=Ezp4YJmFDi6dXSth/Q6dWg2wqxRcWRj4qtqoQ7XAjl8=;
	b=qVuOuCx+tErjguwSxkDT+zrJOlf78oLjOvQqeQqfD1VbSqyBvTKUq9L7/HJ1ZmrM+k
	OgYQ02hJmdUCBT4Yn/tpbqGlLDltNyTNne+ynFoKeuqhRRoNXFoUcesdVDhfpjGaDGV1
	qQFuTvtcYUWIvnuOJYHIJyROZgG5mgQLJzJoP9XqAUlZL84oG7fFdcTyLZs14rKrEf3/
	D9fRUK9TUnE8N01ILj2cd11nPkDpgnVEFg3GLb9TTGl9a/QwnV19okeRBAMTDI9VoWgH
	4AC3MwAGuP0ql/okwAILBPp+uOJETpKK5Tbn+W7oCtOGdrgkRb4t+pbo/92xJ0Pplvra
	spGw==
X-Gm-Message-State: APjAAAVox9/2/L5lG/Lc3kXeku7VPMyxdMsBZoCdwLQjXLfVSFQXjJ+D
	UBxxGWJRuntJaFFogk/nGXytbkpgPbPX0f0/peQJbkCV
X-Google-Smtp-Source: APXvYqxu4+liFmBar9lLUrYpcduey49An5Cp/QHjl5KgmjBvGyRFsjXcQshaN4gqTJOr1s6HisJPih6xuSH3MRAUzCc=
X-Received: by 2002:a19:4f06:: with SMTP id d6mr22247484lfb.125.1553791926086; 
	Thu, 28 Mar 2019 09:52:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAMd7AX-pAObJ38twArWYpif7OCb5Z_mQmnfgRe7GxrnMXv-1mQ@mail.gmail.com>
	<20190328173042.5a4d9f0b@posteo.de>
In-Reply-To: <20190328173042.5a4d9f0b@posteo.de>
From: A <aaron.biver@gmail.com>
Date: Thu, 28 Mar 2019 12:51:54 -0400
Message-ID: <CAMd7AX_J0w+iwWN8w8To1FmzxdEro0sz7xWOT2TUZNBmpcexJw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Basic Yocto+CMake Usage question
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
X-List-Received-Date: Thu, 28 Mar 2019 16:52:09 -0000
Content-Type: multipart/alternative; boundary="000000000000cf313605852a5f90"

--000000000000cf313605852a5f90
Content-Type: text/plain; charset="UTF-8"

Thank you for the quick suggestion.

Unfortunately, I tried setting OECMAKE_FIND_ROOT_PATH_MODE_LIBRARY to
"ONLY", "NEVER", and "BOTH" separately, and none of the above worked.  I
must be doing something fundamentally wrong.

Any other suggestions?


On Thu, Mar 28, 2019 at 12:30 PM Patrick Boettcher <
patrick.boettcher@posteo.de> wrote:

> Hi
>
> On Thu, 28 Mar 2019 12:20:43 -0400
> A <aaron.biver@gmail.com> wrote:
>
> > I'm having issues with a yocto build that is combining recipes that
> > should depend on each other, and I need a sanity check.  Is this an
> > ok forum for stupid user questions?
> >
> > The main idea is to have one recipe install some prebuilt libraries,
> > and have another cmake-based recipe use those libraries.
> >
> > As a caveat, this is a native version of the build that I seem to be
> > having trouble with, but I assume that is mostly irrelevant:
> >
> > In ProjectA, the meat of the matter is a do_install that copies
> > ProjectA*.so into STAGING_LIBDIR.  I don't recall why I chose that
> > instead of ${D}${libdir}... is it ok this way?
> > In ProjectB, I'd like CMake's find_library() to find Project A's
> > libraries, and I seem to be having trouble.
> >
> > How would you approach this?  The recipe for Project B contains
> > "inherit cmake" and some variables I pass in with an EXTRA_OECMAKE
> > and an EXTRA_OECMAKE-native.
> >
> > I also have there:
> > DEPENDS += "ProjectA"
> > DEPENDS_class-native = "ProjectA-native"
> >
> > However,in ProjectB's find_library() call, I am uncertain how to
> > direct it to find those libraries - what PATHS or HINTS or whatever?
>
> I was having similar problems with this (a dependency for zeromq in my
> case).
>
>   DEPENDS = "zeromq" # build dependency
>
> I had to add the following variable to my recipes:
>
>   OECMAKE_FIND_ROOT_PATH_MODE_PROGRAM = "BOTH"
>
> this, iiuc, tells cmake that in case of cross-compiling (via a
> toolchain-file) that it shall also look in the sysroot for header
> and library-files when doing find_library(). Not sure if it will work
> with all find_package()-modules.
>
> It worked, I haven't investigated further why, but I should have.
>
> HTH.
> --
> Patrick.
>

--000000000000cf313605852a5f90
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you for the quick suggestion.<div><br><div>Unfortuna=
tely, I tried setting OECMAKE_FIND_ROOT_PATH_MODE_LIBRARY to &quot;ONLY&quo=
t;, &quot;NEVER&quot;, and &quot;BOTH&quot; separately, and none of the abo=
ve worked.=C2=A0 I must be doing something fundamentally wrong.</div><div><=
br></div></div><div>Any other suggestions?</div><div><br></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar =
28, 2019 at 12:30 PM Patrick Boettcher &lt;<a href=3D"mailto:patrick.boettc=
her@posteo.de">patrick.boettcher@posteo.de</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">Hi<br>
<br>
On Thu, 28 Mar 2019 12:20:43 -0400<br>
A &lt;<a href=3D"mailto:aaron.biver@gmail.com" target=3D"_blank">aaron.bive=
r@gmail.com</a>&gt; wrote:<br>
<br>
&gt; I&#39;m having issues with a yocto build that is combining recipes tha=
t<br>
&gt; should depend on each other, and I need a sanity check.=C2=A0 Is this =
an<br>
&gt; ok forum for stupid user questions?<br>
&gt; <br>
&gt; The main idea is to have one recipe install some prebuilt libraries,<b=
r>
&gt; and have another cmake-based recipe use those libraries.<br>
&gt; <br>
&gt; As a caveat, this is a native version of the build that I seem to be<b=
r>
&gt; having trouble with, but I assume that is mostly irrelevant:<br>
&gt; <br>
&gt; In ProjectA, the meat of the matter is a do_install that copies<br>
&gt; ProjectA*.so into STAGING_LIBDIR.=C2=A0 I don&#39;t recall why I chose=
 that<br>
&gt; instead of ${D}${libdir}... is it ok this way?<br>
&gt; In ProjectB, I&#39;d like CMake&#39;s find_library() to find Project A=
&#39;s<br>
&gt; libraries, and I seem to be having trouble.<br>
&gt; <br>
&gt; How would you approach this?=C2=A0 The recipe for Project B contains<b=
r>
&gt; &quot;inherit cmake&quot; and some variables I pass in with an EXTRA_O=
ECMAKE<br>
&gt; and an EXTRA_OECMAKE-native.<br>
&gt; <br>
&gt; I also have there:<br>
&gt; DEPENDS +=3D &quot;ProjectA&quot;<br>
&gt; DEPENDS_class-native =3D &quot;ProjectA-native&quot;<br>
&gt; <br>
&gt; However,in ProjectB&#39;s find_library() call, I am uncertain how to<b=
r>
&gt; direct it to find those libraries - what PATHS or HINTS or whatever?<b=
r>
<br>
I was having similar problems with this (a dependency for zeromq in my<br>
case).<br>
<br>
=C2=A0 DEPENDS =3D &quot;zeromq&quot; # build dependency<br>
<br>
I had to add the following variable to my recipes:<br>
<br>
=C2=A0 OECMAKE_FIND_ROOT_PATH_MODE_PROGRAM =3D &quot;BOTH&quot;<br>
<br>
this, iiuc, tells cmake that in case of cross-compiling (via a<br>
toolchain-file) that it shall also look in the sysroot for header<br>
and library-files when doing find_library(). Not sure if it will work<br>
with all find_package()-modules.<br>
<br>
It worked, I haven&#39;t investigated further why, but I should have.<br>
<br>
HTH.<br>
--<br>
Patrick.<br>
</blockquote></div>

--000000000000cf313605852a5f90--
