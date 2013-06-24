Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ee0-f41.google.com (mail-ee0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6ECAE006B5
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2013 22:41:12 -0700 (PDT)
Received: by mail-ee0-f41.google.com with SMTP id d17so5774319eek.0
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2013 22:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=584LgZ6QQscYzCFB/GHCNilr3D09m7Uke4f2T5JBeSw=;
	b=enCS+ESP1CfWoRwbkZikfyplkKCGyk1wyIb6nFulTt9qGeZ4ezjHbpQRiQAEMaX0RC
	EJKRXhfqQKX1TMV7OEySywP9iJq9zClhQBIctgXM2SA7WOS/cs2yhrPEzpaON2hmbg6V
	bbEc8ZXlrZwxR9Rq/rlc9RlKpjo5zYxelErRw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=584LgZ6QQscYzCFB/GHCNilr3D09m7Uke4f2T5JBeSw=;
	b=Pgmy766wWekOpKEaghyHQI9x1g7xGzMapHb90c5uLaja43QPGxwswjTK/iT57gvCRa
	9tjK27IvX08s/uM8D+Osiw3cC2axdCPDHLecriOulgKJLKLl/YzF/XAmS3MFvmHiUYg1
	7UaOn4dHX7QPj6MZjVF93g+rEkc9cu5PCq6FnLw0R5wo1r/zVawlp8A/Dvw1x5KtWfxB
	t4RA9bVU0vhBF+KyK+Ysup6LVPnlj/mawhTeS0zb02ulw9jXKNtlOhAlwHjuIUUwmBZI
	9W0ahggqYPE1ExNvzWhrH18g51hn/KQGlv9ZLEdKissxL2z6oKF45hL6mhfPVib/mZUB
	gDjQ==
MIME-Version: 1.0
X-Received: by 10.14.219.2 with SMTP id l2mr21903390eep.109.1372052471881;
	Sun, 23 Jun 2013 22:41:11 -0700 (PDT)
Received: by 10.223.160.197 with HTTP; Sun, 23 Jun 2013 22:41:11 -0700 (PDT)
In-Reply-To: <CALmOhg=h=j+uHiPdGShjZwtL97jsnhz1v6T4GRfcge0jJypTKQ@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF50C1A@ORSMSX101.amr.corp.intel.com>
	<CDE892AD.36CA0%david.c.stewart@intel.com>
	<000001ce6de8$70639de0$512ad9a0$@annabooks.com>
	<CALmOhg=h=j+uHiPdGShjZwtL97jsnhz1v6T4GRfcge0jJypTKQ@mail.gmail.com>
Date: Sun, 23 Jun 2013 22:41:11 -0700
Message-ID: <CA+gsK-orLA13kBxTSj-E451GQKKdy8L6hUHQxKQgFqg-VNiK8Q@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Trevor Woerner <trevor.woerner@linaro.org>
X-Gm-Message-State: ALoCoQmQX5iuYWYn6sjoQihlnib96h4s+5GdhCfkZBbkHNWFP/6f5arqNI4ibUFhNagl5ogVWB8n
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail
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
X-List-Received-Date: Mon, 24 Jun 2013 05:41:15 -0000
Content-Type: multipart/alternative; boundary=047d7b6041a03353e704dfdfdcc6

--047d7b6041a03353e704dfdfdcc6
Content-Type: text/plain; charset=ISO-8859-1

Hi Trever et al:



> If I were writing a book about Yocto/OE,


This is a project I am currently working on, a book about the Yocto
Project. The goal is to enable readers to do practical projects with YP. As
the subject matter for the project described in the book I have chosen a
home automation project. Reason being, it interests me personally and it
uses different devices such as a UI-less controller, remotes with touch
screens etc.

I have gotten a lot of feedback from the YP training class I have developed
and been teaching for the Linux Foundation. I am putting this out here to
solicit more feedback from the community on what you think a book on YP
should include. For instance as an advanced topic I included a chapter on
how to run YP on AWS EC2 and I will be adding Autobuilder to it too.


> in the first chapter I would
> have the readers build their own filesystem/kernel from scratch (I
> can't decide if I would also have them build their own cross-compiler
> from scratch or if I'd cheat and let them use crosstool-NG).


I thought about that too but I found it distracting. It's like "let me show
you the hard way with crosstool-ng and buildroot and then I show you a
better way with YP." What I am doing though is an intro into Bitbake: how
to use just Bitbake to build something. That proved valuable during the
training classes. It's like a HelloWorld (and I published that before on
this mailing list) introducing the concepts of Bitbake with it's layers,
recipes, syntax etc.


Cheers,
Rudi

--047d7b6041a03353e704dfdfdcc6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Trever et al:<div class=3D"gmail_extra"><br><br><div cl=
ass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
If I were writing a book about Yocto/OE,</blockquote><div><br></div><div>Th=
is is a project I am currently working on, a book about the Yocto Project. =
The goal is to enable readers to do practical projects with YP. As the subj=
ect matter for the project described in the book I have chosen a home autom=
ation project. Reason being, it interests me personally and it uses differe=
nt devices such as a UI-less controller, remotes with touch screens etc.</d=
iv>
<div><br></div><div>I have gotten a lot of feedback from the YP training cl=
ass I have developed and been teaching for the Linux Foundation. I am putti=
ng this out here to solicit more feedback from the community on what you th=
ink a book on YP should include. For instance as an advanced topic I includ=
ed a chapter on how to run YP on AWS EC2 and I will be adding Autobuilder t=
o it too.=A0</div>
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"> in the first chapter I would<=
br>
have the readers build their own filesystem/kernel from scratch (I<br>
can&#39;t decide if I would also have them build their own cross-compiler<b=
r>
from scratch or if I&#39;d cheat and let them use crosstool-NG).</blockquot=
e><div><br></div><div>I thought about that too but I found it distracting. =
It&#39;s like &quot;let me show you the hard way with crosstool-ng and buil=
droot and then I show you a better way with YP.&quot; What I am doing thoug=
h is an intro into Bitbake: how to use just Bitbake to build something. Tha=
t proved valuable during the training classes. It&#39;s like a HelloWorld (=
and I published that before on this mailing list) introducing the concepts =
of Bitbake with it&#39;s layers, recipes, syntax etc.</div>
<div><br></div><div><br></div><div>Cheers,</div><div>Rudi</div></div>
</div></div>

--047d7b6041a03353e704dfdfdcc6--
