Return-Path: <anoojgopi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A985FE007DB; Wed, 27 Aug 2014 07:13:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (anoojgopi[at]gmail.com)
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
	*      [74.125.82.47 listed in list.dnswl.org]
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FE46E007B9
	for <yocto@yoctoproject.org>; Wed, 27 Aug 2014 07:13:01 -0700 (PDT)
Received: by mail-wg0-f47.google.com with SMTP id b13so281674wgh.30
	for <yocto@yoctoproject.org>; Wed, 27 Aug 2014 07:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=M5L640atmxoEnsIGCs/F6i0uj5lbraLAOcrS5oE6qb4=;
	b=Xs/RC0Z30R/9kY5t2FJH9X9MdptI/z8bgS79KiXFyPJ8OJ8gWclA/+C0xdXZYZ7wI7
	NTABLX3LHwglGY+ryG6Yr7GBbKXyMQItsQ7nB8qK6LE49PH81E8mhAHL+em+TqQFex92
	gD2r0S/+YPRi6LRIrMRBnI1GhhH2ZTnRVqWZ16sHin+R/XI97rns8sy/tOowZ1h6OVrT
	hI+pwIwktFN6sbJ7w5BSiUbZWe5oOsQweMHRbEfwbHOSqRzDXLoeWz3y5Pde0lGYyqNB
	o6izZ4RDwjfXFzU0i4C1SfVsSyFSgAnpstUZIB+Y7GwUJVQCawwBpx9YEx1KPhXhKWBN
	H8ZA==
MIME-Version: 1.0
X-Received: by 10.180.86.8 with SMTP id l8mr28422114wiz.18.1409148778558; Wed,
	27 Aug 2014 07:12:58 -0700 (PDT)
Received: by 10.194.19.193 with HTTP; Wed, 27 Aug 2014 07:12:58 -0700 (PDT)
In-Reply-To: <23114885.AlUfQMMlDH@localhost.localdomain>
References: <CALkREYA7nN3sL2ALk4JCOt=NrhYFPpd=gAS_pzMe2OMURXDVNg@mail.gmail.com>
	<23114885.AlUfQMMlDH@localhost.localdomain>
Date: Wed, 27 Aug 2014 16:12:58 +0200
Message-ID: <CALkREYBf0t6hydAj4CZXoMRe6QJQ6R0Yvd92e1+zBSDQ3oUrUw@mail.gmail.com>
From: Anooj Gopi <anoojgopi@gmail.com>
To: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build dts alone
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
X-List-Received-Date: Wed, 27 Aug 2014 14:13:12 -0000
Content-Type: multipart/alternative; boundary=f46d044303f861d50f05019d0422

--f46d044303f861d50f05019d0422
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you very much... devshell is really cool.

It would be nice if we could mention this info some where in
http://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html



On Wed, Aug 27, 2014 at 4:05 PM, Maciej Borzecki <
maciej.borzecki@open-rnd.pl> wrote:

> On Wednesday 27 of August 2014 15:57:40 Anooj Gopi wrote:
> > Hello,
> >
> > After changing the kernel dts file (directly in work directory) I would
> > like to build just the dtb file from yocto (without rebuilding entire
> > virtual/kernel target). Is it possible to do so?
> First:
> bitbake -c devshell virtual/kernel
>
> Within the shell:
> make dtbs
>
> Or just build particular dtb if you know the name.
>
> --
>
> Maciej Borz=C4=99cki
> Senior Software Engineer Open-RnD Sp. z o.o.
> www.open-rnd.pl, Facebook, Twitter
> mobile: +48 telefon, fax: +48 42 657 9079
>
> Niniejsza wiadomo=C5=9B=C4=87 wraz z za=C5=82=C4=85cznikami mo=C5=BCe zaw=
iera=C4=87 chronione prawem lub
> poufne informacje i zosta=C5=82a wys=C5=82ana wy=C5=82=C4=85cznie do wiad=
omo=C5=9Bci i u=C5=BCytku os=C3=B3b,
> do
> kt=C3=B3rych zosta=C5=82a zaadresowana. Je=C5=9Bli wiadomo=C5=9B=C4=87 zo=
sta=C5=82a otrzymana przypadkowo
> zabrania si=C4=99 jej kopiowania lub rozsy=C5=82ania do os=C3=B3b trzecic=
h. W takim
> przypadku
> uprasza si=C4=99 o natychmiastowe zniszczenie wiadomo=C5=9Bci oraz poinfo=
rmowanie
> nadawcy o zaistnia=C5=82ej sytuacji za pomoc=C4=85 wiadomo=C5=9Bci zwrotn=
ej. Dzi=C4=99kujemy.
>
> This message, including any attachments hereto, may contain privileged or
> confidential information and is sent solely for the attention and use of
> the
> intended addressee(s). If you are not an intended addressee, you may
> neither
> use this message nor copy or deliver it to anyone. In such case, you shou=
ld
> immediately destroy this message and kindly notify the sender by reply
> email.
> Thank you.
>

--f46d044303f861d50f05019d0422
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><br></div>Thank you very much... devshell is rea=
lly cool.<br><br></div>It would be nice if we could mention this info some =
where in<br><a href=3D"http://www.yoctoproject.org/docs/current/kernel-dev/=
kernel-dev.html">http://www.yoctoproject.org/docs/current/kernel-dev/kernel=
-dev.html</a><br>
<br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On =
Wed, Aug 27, 2014 at 4:05 PM, Maciej Borzecki <span dir=3D"ltr">&lt;<a href=
=3D"mailto:maciej.borzecki@open-rnd.pl" target=3D"_blank">maciej.borzecki@o=
pen-rnd.pl</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On W=
ednesday 27 of August 2014 15:57:40 Anooj Gopi wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; After changing the kernel dts file (directly in work directory) I woul=
d<br>
&gt; like to build just the dtb file from yocto (without rebuilding entire<=
br>
&gt; virtual/kernel target). Is it possible to do so?<br>
</div></div>First:<br>
bitbake -c devshell virtual/kernel<br>
<br>
Within the shell:<br>
make dtbs<br>
<br>
Or just build particular dtb if you know the name.<br>
<br>
--<br>
<br>
Maciej Borz=C4=99cki<br>
Senior Software Engineer Open-RnD Sp. z o.o.<br>
<a href=3D"http://www.open-rnd.pl" target=3D"_blank">www.open-rnd.pl</a>, F=
acebook, Twitter<br>
mobile: +48 telefon, fax: <a href=3D"tel:%2B48%2042%20657%209079" value=3D"=
+48426579079">+48 42 657 9079</a><br>
<br>
Niniejsza wiadomo=C5=9B=C4=87 wraz z za=C5=82=C4=85cznikami mo=C5=BCe zawie=
ra=C4=87 chronione prawem lub<br>
poufne informacje i zosta=C5=82a wys=C5=82ana wy=C5=82=C4=85cznie do wiadom=
o=C5=9Bci i u=C5=BCytku os=C3=B3b, do<br>
kt=C3=B3rych zosta=C5=82a zaadresowana. Je=C5=9Bli wiadomo=C5=9B=C4=87 zost=
a=C5=82a otrzymana przypadkowo<br>
zabrania si=C4=99 jej kopiowania lub rozsy=C5=82ania do os=C3=B3b trzecich.=
 W takim przypadku<br>
uprasza si=C4=99 o natychmiastowe zniszczenie wiadomo=C5=9Bci oraz poinform=
owanie<br>
nadawcy o zaistnia=C5=82ej sytuacji za pomoc=C4=85 wiadomo=C5=9Bci zwrotnej=
. Dzi=C4=99kujemy.<br>
<br>
This message, including any attachments hereto, may contain privileged or<b=
r>
confidential information and is sent solely for the attention and use of th=
e<br>
intended addressee(s). If you are not an intended addressee, you may neithe=
r<br>
use this message nor copy or deliver it to anyone. In such case, you should=
<br>
immediately destroy this message and kindly notify the sender by reply emai=
l.<br>
Thank you.<br>
</blockquote></div><br></div>

--f46d044303f861d50f05019d0422--
