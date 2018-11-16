Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43637E00C81; Fri, 16 Nov 2018 04:13:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.50 listed in list.dnswl.org]
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F982E00C72
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2018 04:13:09 -0800 (PST)
Received: by mail-wm1-f50.google.com with SMTP id p2-v6so20815279wmc.2
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2018 04:13:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Z3duZN/Q9KIH/fYW6fpFfnZ0IxSmux5fSmIWG3xFTQE=;
	b=XtGxMoyGvMbSxwE/vbG1otK1akZZCrNuGrE9p3imQzUWqjZw+/V9SC0P/ibPlT0hSv
	93Ay8MehlIxV7G+pVgtleFp8FzwAScEnK3IBjgSmFHAAz21J66sXy0h82oGPIsKqgtiR
	LlTc137TMeVtXP8luLCsYUBl2gr5Fk1pB0bx5D17jRHZipJHSLaGf8JTuwAUXAbnYkdC
	Um68bu+4keSwdzx/1HU7OLwhjTPSBczvf4R93Bm46sx9Bf6G4hVQr0fM0C8KsvZecotA
	tl2V9CetLyrs6eXNzhPce6bzdR/sv6dEYnS7fpmXumOdcy2/uGTdBIqFs37q1aX0YPX5
	nkIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Z3duZN/Q9KIH/fYW6fpFfnZ0IxSmux5fSmIWG3xFTQE=;
	b=Ffvy1cwdXSj4clJt3uZzm0KMEZd047IazwMwtBWjZCMZJFhBmYF8iSKS2vdOI1Dl0q
	XnyUHa5wntkYRqXTs34TGpoh2ejW5PfK/e43yr9Q9WZcjj7r7vHILxPnUUHUU1SvoO/x
	OQ4XNtRsAgqx+j5b/X4itRZtovKiRa9inQa4c92nZAH1Y+pfC6691nlA3qh744MjV3h8
	GNiTP0bdZyUIewliNrARoDxJTxbxlQPkfQBApJnBCQvlL0HDr/n3M0QsuYUT7dw0TrLo
	k3egIu2W+vaevxH3SeKZmYdtgt0DCqs4q01r0RFc9HFZpq/zpuJWkBNqs3ECPMpmWCw8
	2UBA==
X-Gm-Message-State: AGRZ1gKpk9e4CHLL6Nz1nwzV5AU4Vvzy+bIV9ZYavCn55e3MDjHmsuP3
	Z9WFPAxqXvJLzLQ3DvXuFxhVL5WYsD5lW7S6DUk=
X-Google-Smtp-Source: AJdET5cGEVcU3g05d05h4JTzgNEb0/TckfEs4ACKspo2tlKPTMNZGMpLCkdQQn7ywmsbapIqiI8SpdOJes638GwMEyc=
X-Received: by 2002:a1c:b513:: with SMTP id
	e19-v6mr8244944wmf.114.1542370388356; 
	Fri, 16 Nov 2018 04:13:08 -0800 (PST)
MIME-Version: 1.0
References: <20181115192353.24791-1-JPEWhacker@gmail.com>
	<CAJTo0LZ5d5BtByCAOYB-WPr1P+NZ+u-XmnX4GTd6DEnJN+E9zw@mail.gmail.com>
In-Reply-To: <CAJTo0LZ5d5BtByCAOYB-WPr1P+NZ+u-XmnX4GTd6DEnJN+E9zw@mail.gmail.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Fri, 16 Nov 2018 06:12:57 -0600
Message-ID: <CAJdd5GbTU+7-CJaBZ0_3wohMUfEb1d+ES0=s0jvmNpgXTRaEew@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-mingw][PATCH 0/4] Add oeqa test cases
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
X-List-Received-Date: Fri, 16 Nov 2018 12:13:10 -0000
Content-Type: multipart/alternative; boundary="0000000000001c35a1057ac717e7"

--0000000000001c35a1057ac717e7
Content-Type: text/plain; charset="UTF-8"

On Fri, Nov 16, 2018, 5:50 AM Burton, Ross <ross.burton@intel.com wrote:

> I see the cover letter but no patches or link to a branch...
>

Ya, I was a dummy and forgot to say send all in git send-email, then it
timed out. I have to make other changes anyway because of feedback from
Richard.


> Ross
> On Thu, 15 Nov 2018 at 19:24, Joshua Watt <jpewhacker@gmail.com> wrote:
> >
> > Adds the testing framework for tying tests for the MinGW SDK into the
> > oeqa SDK test framework.
> >
> > The SDK tests can be run using the standard SDK test command:
> >
> >  bitbake -c testsdk <image>
> >
> > All testing is done using Wine in lieu of having access to an actual
> > Windows machine. Wine is required to be installed on the host machine.
> >
> > Joshua Watt (4):
> >   Add SDK test case framework
> >   Add .gitignore
> >   classes/toolchain-scripts-mingw32: Update variables
> >   oeqa/sdkmingw: Add test cases
> >
> >  .gitignore                                  |   3 +
> >  classes/testsdk-mingw.bbclass               | 101 ++++++++++++++++++++
> >  classes/toolchain-scripts-mingw32.bbclass   |   4 +-
> >  conf/machine-sdk/i686-mingw32.conf          |   1 +
> >  conf/machine-sdk/include/mingw32-common.inc |   6 ++
> >  conf/machine-sdk/x86_64-mingw32.conf        |   1 +
> >  lib/oeqa/sdkmingw/__init__.py               |   0
> >  lib/oeqa/sdkmingw/case.py                   |  52 ++++++++++
> >  lib/oeqa/sdkmingw/cases/__init__.py         |   0
> >  lib/oeqa/sdkmingw/cases/binutils.py         |  57 +++++++++++
> >  lib/oeqa/sdkmingw/cases/gcc.py              |  49 ++++++++++
> >  lib/oeqa/sdkmingw/cases/gdb.py              |  20 ++++
> >  lib/oeqa/sdkmingw/context.py                |  66 +++++++++++++
> >  lib/oeqa/sdkmingw/files/testsdkmakefile     |   4 +
> >  14 files changed, 363 insertions(+), 1 deletion(-)
> >  create mode 100644 .gitignore
> >  create mode 100644 classes/testsdk-mingw.bbclass
> >  create mode 100644 lib/oeqa/sdkmingw/__init__.py
> >  create mode 100644 lib/oeqa/sdkmingw/case.py
> >  create mode 100644 lib/oeqa/sdkmingw/cases/__init__.py
> >  create mode 100644 lib/oeqa/sdkmingw/cases/binutils.py
> >  create mode 100644 lib/oeqa/sdkmingw/cases/gcc.py
> >  create mode 100644 lib/oeqa/sdkmingw/cases/gdb.py
> >  create mode 100644 lib/oeqa/sdkmingw/context.py
> >  create mode 100644 lib/oeqa/sdkmingw/files/testsdkmakefile
> >
> > --
> > 2.19.1
> >
>

--0000000000001c35a1057ac717e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Fri, Nov 16, 2018, 5:50 AM Burton, Ross &lt;<a href=3D"mailto:ross.burto=
n@intel.com">ross.burton@intel.com</a> wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">I see the cover letter but no patches or link to a branch...<br>=
</blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">Ya, =
I was a dummy and forgot to say send all in git send-email, then it timed o=
ut. I have to make other changes anyway because of feedback from Richard.</=
div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote=
"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">
<br>
Ross<br>
On Thu, 15 Nov 2018 at 19:24, Joshua Watt &lt;<a href=3D"mailto:jpewhacker@=
gmail.com" target=3D"_blank" rel=3D"noreferrer">jpewhacker@gmail.com</a>&gt=
; wrote:<br>
&gt;<br>
&gt; Adds the testing framework for tying tests for the MinGW SDK into the<=
br>
&gt; oeqa SDK test framework.<br>
&gt;<br>
&gt; The SDK tests can be run using the standard SDK test command:<br>
&gt;<br>
&gt;=C2=A0 bitbake -c testsdk &lt;image&gt;<br>
&gt;<br>
&gt; All testing is done using Wine in lieu of having access to an actual<b=
r>
&gt; Windows machine. Wine is required to be installed on the host machine.=
<br>
&gt;<br>
&gt; Joshua Watt (4):<br>
&gt;=C2=A0 =C2=A0Add SDK test case framework<br>
&gt;=C2=A0 =C2=A0Add .gitignore<br>
&gt;=C2=A0 =C2=A0classes/toolchain-scripts-mingw32: Update variables<br>
&gt;=C2=A0 =C2=A0oeqa/sdkmingw: Add test cases<br>
&gt;<br>
&gt;=C2=A0 .gitignore=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =
=C2=A03 +<br>
&gt;=C2=A0 classes/testsdk-mingw.bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0| 101 ++++++++++++++++++++<br>
&gt;=C2=A0 classes/toolchain-scripts-mingw32.bbclass=C2=A0 =C2=A0|=C2=A0 =
=C2=A04 +-<br>
&gt;=C2=A0 conf/machine-sdk/i686-mingw32.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 =C2=A01 +<br>
&gt;=C2=A0 conf/machine-sdk/include/mingw32-common.inc |=C2=A0 =C2=A06 ++<b=
r>
&gt;=C2=A0 conf/machine-sdk/x86_64-mingw32.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
|=C2=A0 =C2=A01 +<br>
&gt;=C2=A0 lib/oeqa/sdkmingw/__init__.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A00<br>
&gt;=C2=A0 lib/oeqa/sdkmingw/case.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 52 ++++++++++<br>
&gt;=C2=A0 lib/oeqa/sdkmingw/cases/__init__.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0|=C2=A0 =C2=A00<br>
&gt;=C2=A0 lib/oeqa/sdkmingw/cases/binutils.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0|=C2=A0 57 +++++++++++<br>
&gt;=C2=A0 lib/oeqa/sdkmingw/cases/gcc.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 |=C2=A0 49 ++++++++++<br>
&gt;=C2=A0 lib/oeqa/sdkmingw/cases/gdb.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 |=C2=A0 20 ++++<br>
&gt;=C2=A0 lib/oeqa/sdkmingw/context.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 |=C2=A0 66 +++++++++++++<br>
&gt;=C2=A0 lib/oeqa/sdkmingw/files/testsdkmakefile=C2=A0 =C2=A0 =C2=A0|=C2=
=A0 =C2=A04 +<br>
&gt;=C2=A0 14 files changed, 363 insertions(+), 1 deletion(-)<br>
&gt;=C2=A0 create mode 100644 .gitignore<br>
&gt;=C2=A0 create mode 100644 classes/testsdk-mingw.bbclass<br>
&gt;=C2=A0 create mode 100644 lib/oeqa/sdkmingw/__init__.py<br>
&gt;=C2=A0 create mode 100644 lib/oeqa/sdkmingw/case.py<br>
&gt;=C2=A0 create mode 100644 lib/oeqa/sdkmingw/cases/__init__.py<br>
&gt;=C2=A0 create mode 100644 lib/oeqa/sdkmingw/cases/binutils.py<br>
&gt;=C2=A0 create mode 100644 lib/oeqa/sdkmingw/cases/gcc.py<br>
&gt;=C2=A0 create mode 100644 lib/oeqa/sdkmingw/cases/gdb.py<br>
&gt;=C2=A0 create mode 100644 lib/oeqa/sdkmingw/context.py<br>
&gt;=C2=A0 create mode 100644 lib/oeqa/sdkmingw/files/testsdkmakefile<br>
&gt;<br>
&gt; --<br>
&gt; 2.19.1<br>
&gt;<br>
</blockquote></div></div></div>

--0000000000001c35a1057ac717e7--
