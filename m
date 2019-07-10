Return-Path: <onureser12@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21B24E00C46; Wed, 10 Jul 2019 00:04:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (onureser12[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D2F4E006EE
	for <yocto@yoctoproject.org>; Wed, 10 Jul 2019 00:04:36 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id s7so2401863iob.11
	for <yocto@yoctoproject.org>; Wed, 10 Jul 2019 00:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=B4d8z7wlGplr9Sl1vZ2DSN2mGpC31ycjQTVnfSJGNmI=;
	b=uwtlt2kSZFwCg0+toeYwzVsttAcZHBjwSsqgH2zN0Bjij1SHtyNqyMyBZZvwHUgcx7
	g4s9jbX7Ux5zjv6f+cU4Am/bILt5SJsSsKQgsvsTSKFHZlaHpmqWocmcAy+aFth2/5OE
	TTAFM0b17SM44sxaNKjYlnQLiflSPcqGcn5wkc5Bc105w1SYkzA4512EsWBw+wu2vjVq
	X7MffTiA8fTrk8aCsiSsFcOloBtsO1ElWDxGr07jrqsOXu9KAHOoKAShoCgr1a8WZ+mU
	giP8dEGSVlkg430eJzQfEH4dTg65QsFGFSHF67IbyRQEp6BHvu+ft2dbJxQdZfpuZ+iG
	6AKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=B4d8z7wlGplr9Sl1vZ2DSN2mGpC31ycjQTVnfSJGNmI=;
	b=fQAuypwF/L4O6YEJ8GvghRa1PJmqcq69orJPcQjpCaUl2W8lUVQeJJhYlLazt4fbJW
	rVSqUj7inZjnJvVfa1lfoz80ULf6k9WR+8n6NDEE7xHA8FlBWAh8Y5aP1h5NpBz7m38r
	tPxt3I7eZaCTKCbtn0/8lLeJ/JXtPmMH9OUgqzYcbioFTXZVLvrx7HQqnYIcpB5FbZjd
	3IHcZ273Dvr7o16OIj+Kf0zynNQVGe7SFrtf+5KzFHkkKeXlAIvqMaT5xzAzsSSL7lce
	wDxZsbhOdNJmE8ITSdstBT14/TQHVX8CEcdHMqDSgTE6teN6uvWpgQcopPUNqs9D8UgR
	5HIQ==
X-Gm-Message-State: APjAAAVxnKBv3vJ82diAXEkq9zrL0E7CA5H1SLYYRSjvZIQVlA+p/Q/7
	pkC6wr02PDz/YViyXjDUf1U5bQ+YrUI5c4jFByI=
X-Google-Smtp-Source: APXvYqwYUWoZhdccFoVGNLW4V7++ms6cZ6pDym5KWqCSV+wWKUWHiNMjDuHZ8MAWcO0kY8hTEtiDz28OFzGx6qqZQ3g=
X-Received: by 2002:a5e:c705:: with SMTP id f5mr16840452iop.113.1562742275828; 
	Wed, 10 Jul 2019 00:04:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAG+Ob8ZcYRYaFcyFopckNiTMR8ZTJW5vcM1cO+DZM7-0aR3+rA@mail.gmail.com>
	<CAGAf8LzyVbxJ--aDihMZyokOo+Sn18s=4vQvX91Y5jBpvbc_Bg@mail.gmail.com>
	<CAG+Ob8YYxVf4d9LEjL5Z9KEm3zP4xBMHr-H46rqumXOLLJAZyA@mail.gmail.com>
	<CAGAf8Lx0gUQorBVBGUCURDXW6JexowXTWsfAcdu+DMxTRrb2vQ@mail.gmail.com>
	<CAG+Ob8bWkY+zhVbhfDUu_mfrpA-DNvVb4K-vfu=3BuhGsp_Akw@mail.gmail.com>
	<CAGAf8LxRTZwp0t1F=ZLZgESPK6Q=34uyw5gu_orUcXzj1r7FEw@mail.gmail.com>
In-Reply-To: <CAGAf8LxRTZwp0t1F=ZLZgESPK6Q=34uyw5gu_orUcXzj1r7FEw@mail.gmail.com>
From: Onur Eser <onureser12@gmail.com>
Date: Wed, 10 Jul 2019 10:04:23 +0300
Message-ID: <CAG+Ob8adeHW4tNWD=GFdEySPmhRKFwNS8FQjpSC1LGEkt1e=WQ@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Meta-Qt5] "Unknown Module: declarative" Error While Creating Toolchain
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
X-List-Received-Date: Wed, 10 Jul 2019 07:04:37 -0000
Content-Type: multipart/alternative; boundary="00000000000039f273058d4e4ae0"

--00000000000039f273058d4e4ae0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I have tried the thud branch as Zoran suggested. Faced exactly the same
issue.
Any other suggestions?
Output: https://paste.ee/p/PupWr#Epvqnw9FoasgQEBhIXqQ8hH7veMcRybX
I have built a system with qt5 recipes, but cannot create a toolchain
for it since a week ago. Am I retarded?

Have a lovely day!
Onur

Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, 9 Tem 2019 Sal, 12:47
tarihinde =C5=9Funu yazd=C4=B1:

> One thing on my prio list is to buy very powerful 16 or 32 INTEL core
> 6950 or + server. Maybe AMD Ryzen 32 or 64 core (most likely). This
> almost eliminates this build problem... But in the current situation I
> am presently, I could not even buy extra bubble gum. ;-)
>
> I have only my HP Elite Book 840 G1 which has 4 HW threads (2C +
> 2HYP), and I have the same problem for YOCTO. To build any YOCTO build
> goes forever (the extras is that I have 500GB SSD there, which makes
> it much faster).
>
> But, nevertheless, the newer, the better... Hopefully! Toradex YOCTO
> gurus may hop to this thread, and help...
>
> Zoran
> _______
>
> On Tue, Jul 9, 2019 at 11:12 AM Onur Eser <onureser12@gmail.com> wrote:
> >
> > Zoran,
> >
> > I know you are not a Qt Layers expert. I am trying to describe my
> problem to experts via common mails, so they will not missunderstand my
> issue.
> > Oh lord, whole new building... I am not a time traveller, but I can say
> that I will wait for 10 hours or something for that to build, and it will
> fail because of something else.
> > The worst part is, it gives the error on the FINAL STEP. After hours an=
d
> hours and hours.
> > Anyway, I will try thud branch. Wish me luck.
> >
> > Others can still offer solutions, I will keep this build too.
> > Onur
>

--00000000000039f273058d4e4ae0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello everyone,</div><div><br></div><div>I have tried=
 the thud branch as Zoran suggested. Faced exactly the same issue.</div><di=
v>Any other suggestions?</div><div>Output: <a href=3D"https://paste.ee/p/Pu=
pWr#Epvqnw9FoasgQEBhIXqQ8hH7veMcRybX" target=3D"_blank">https://paste.ee/p/=
PupWr#Epvqnw9FoasgQEBhIXqQ8hH7veMcRybX</a></div><div>I have built a system =
with qt5 recipes, but cannot create a toolchain</div><div>for it since a we=
ek ago. Am I retarded?</div><div><br></div><div>Have a lovely day!</div><di=
v>Onur<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsavljev=
ic@gmail.com">zoran.stojsavljevic@gmail.com</a>&gt;, 9 Tem 2019 Sal, 12:47 =
tarihinde =C5=9Funu yazd=C4=B1:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">One thing on my prio list is to buy very powerful 16 or 32 =
INTEL core<br>
6950 or + server. Maybe AMD Ryzen 32 or 64 core (most likely). This<br>
almost eliminates this build problem... But in the current situation I<br>
am presently, I could not even buy extra bubble gum. ;-)<br>
<br>
I have only my HP Elite Book 840 G1 which has 4 HW threads (2C +<br>
2HYP), and I have the same problem for YOCTO. To build any YOCTO build<br>
goes forever (the extras is that I have 500GB SSD there, which makes<br>
it much faster).<br>
<br>
But, nevertheless, the newer, the better... Hopefully! Toradex YOCTO<br>
gurus may hop to this thread, and help...<br>
<br>
Zoran<br>
_______<br>
<br>
On Tue, Jul 9, 2019 at 11:12 AM Onur Eser &lt;<a href=3D"mailto:onureser12@=
gmail.com" target=3D"_blank">onureser12@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Zoran,<br>
&gt;<br>
&gt; I know you are not a Qt Layers expert. I am trying to describe my prob=
lem to experts via common mails, so they will not missunderstand my issue.<=
br>
&gt; Oh lord, whole new building... I am not a time traveller, but I can sa=
y that I will wait for 10 hours or something for that to build, and it will=
 fail because of something else.<br>
&gt; The worst part is, it gives the error on the FINAL STEP. After hours a=
nd hours and hours.<br>
&gt; Anyway, I will try thud branch. Wish me luck.<br>
&gt;<br>
&gt; Others can still offer solutions, I will keep this build too.<br>
&gt; Onur<br>
</blockquote></div>

--00000000000039f273058d4e4ae0--
