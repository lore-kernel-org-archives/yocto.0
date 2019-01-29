Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 837F3E00CE5; Tue, 29 Jan 2019 09:41:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
	[209.85.208.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DA3EE00CDF
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 09:41:48 -0800 (PST)
Received: by mail-ed1-f53.google.com with SMTP id g22so16660716edr.7
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 09:41:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=JNoeB7WM+Ne1ZaPas9Y4oNaZo3VWE6akfx4+eXGcNF8=;
	b=l0bm4UC83by5sJLqk44DB6KBQO8H4QGyETh3PAtDphWnOvBALzJiab6P2gWeVMvZKr
	LbS59xJH2qL8vbjeAIPXc3uX9xtgq54tRkpmtXp5ONpbQCsxdkCxTyeBI6+KD8brmUhC
	F+9pLgpIf0Mk/RKwdktN1PGsVtS7rrdqixIGW3ACqUri0tzdFxpxv4zQENx8gv17VvC7
	l3acMZVBQVw/l6uzEYiInwrzNzsvKMeoMIAtRaSgToyRS6mKyjIGFdeNpDTG8iKN5lOE
	LoYOIBfJnpYWvXSiG6EPLEyPISpaJJu1BINuaXRrteIaLr9/+S7eGFMuNx8Rif4WdY9z
	5ihg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=JNoeB7WM+Ne1ZaPas9Y4oNaZo3VWE6akfx4+eXGcNF8=;
	b=NxZuA3tU9oh40nEcLFDLd3PAg+lUs8n/KlAXp/apWLDh11YP9tYHmhHSie2s/siZKi
	NjGHTQhoVWdIuiSCLZSlP9/LZhynIenUIId8/OEFC7wV6LwkDjgOSWscA9kqXiYYz+YR
	J2hQ+AXz/LYo7YArHEr6yBoy2Ms9vP4cRVlated3POhCynUah/sXAbo/wB1HbeFcygl7
	PIyJROYpCuWSJhOU+DufrUKX1oyC/BsDmLYi5URfj/E8A7YXktV9bOJEDleEGKCLvqSp
	+suV5QAVESdNxOgMwU+1mh3b5BUuhVed3T3vIwMZASlEYlTf+gXVd5VxK1/hRj7t9kjn
	qVIw==
X-Gm-Message-State: AJcUukeklKp70P1km4ZPYy8uXv5bfF18XhnmtlFZSs4PzMfLOP24+ZxL
	J5DIixOnxypvB73iERlJVmwb4/rkzMxf0QcFr3XgyH7X
X-Google-Smtp-Source: ALg8bN4ucNxhCDBUB3VKv83wjajkAu8xcvsVNv/tU7CdNEVdYSgb4fHTkJIiI2wGfA9sHA+HnIiMJeMO155k8vy/UN4=
X-Received: by 2002:a17:906:45c1:: with SMTP id
	z1mr10842099ejq.79.1548783707342; 
	Tue, 29 Jan 2019 09:41:47 -0800 (PST)
MIME-Version: 1.0
References: <CACsVzKgafiE9ioPpiLMHLu-1WDEx=AtP7wZAUBNJENinJCnmKA@mail.gmail.com>
In-Reply-To: <CACsVzKgafiE9ioPpiLMHLu-1WDEx=AtP7wZAUBNJENinJCnmKA@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Tue, 29 Jan 2019 09:41:35 -0800
Message-ID: <CAFNP8Ovq63gjWpTi0N-2RbtwHcsL+CjSWqtYH+zOg-WCimR_Lw@mail.gmail.com>
To: Antonio Santagiuliana <santantonioswap@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: (No subject)
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
X-List-Received-Date: Tue, 29 Jan 2019 17:41:49 -0000
Content-Type: multipart/alternative; boundary="000000000000b5d01405809c4e9a"

--000000000000b5d01405809c4e9a
Content-Type: text/plain; charset="UTF-8"

Hi,

Have you tried adding the feature through MACHINE_FEATURES variable? (
https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#ref-features-machine
and
https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#var-MACHINE_FEATURES
).

A developer can probably provide more detailed information Antonio.

Thanks,
Scott

On Tue, Jan 29, 2019 at 8:12 AM Antonio Santagiuliana <
santantonioswap@gmail.com> wrote:

> Hi,
> I am missing the steps required to add to an image the support for an RTC
> plugged in to I2C1 interface, with autostart.
> is there a page with instructions ?
> thank you
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000b5d01405809c4e9a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi, <br></div><div>=
<br></div><div>Have you tried adding the feature through MACHINE_FEATURES v=
ariable? (<a href=3D"https://yoctoproject.org/docs/2.6/ref-manual/ref-manua=
l.html#ref-features-machine">https://yoctoproject.org/docs/2.6/ref-manual/r=
ef-manual.html#ref-features-machine</a> and <a href=3D"https://yoctoproject=
.org/docs/2.6/ref-manual/ref-manual.html#var-MACHINE_FEATURES">https://yoct=
oproject.org/docs/2.6/ref-manual/ref-manual.html#var-MACHINE_FEATURES</a>).=
</div><div><br></div><div>A developer can probably provide more detailed in=
formation Antonio.</div><div><br></div><div>Thanks, <br></div><div>Scott<br=
></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Tue, Jan 29, 2019 at 8:12 AM Antonio Santagiuliana &l=
t;<a href=3D"mailto:santantonioswap@gmail.com">santantonioswap@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr">Hi,=C2=A0<br><div>I am missing the steps required to add to a=
n image the support for an RTC plugged in to I2C1 interface, with autostart=
.</div><div>is there a page with instructions ?=C2=A0</div><div>thank you</=
div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000b5d01405809c4e9a--
